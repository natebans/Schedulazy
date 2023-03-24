class ItinerariesController < ApplicationController
  before_action :set_itinerary, only: [:show, :destroy]

  def index
    @itineraries = policy_scope(current_user.itineraries)
    # @itineraries = Itinerary.all

    @markers = @itineraries.geocoded.map do |itinerary|
      {
        lat: itinerary.latitude,
        lng: itinerary.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { itinerary: itinerary }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def new
    @itinerary = Itinerary.new
    authorize @itinerary
    @no_records = session[:no_records]
    session[:no_records] = nil
  end


  # to be fixed so it can use strong params!!!
  def create
    # @itinerary = Itinerary.new(itinerary_params)
    @itinerary = Itinerary.new(name: params[:name])
    @itinerary.user = current_user
    @itinerary.location = @itinerary.name
    activity_instances = []

    if params[:name].present?
      initial_text = "Travel memories you'll never forget"

      activity = params[:name]
      url = "https://www.getyourguide.com/"
      browser = Watir::Browser.new :chrome, options: { prefs: { 'intl' => { 'accept_languages' => 'EN'}}}
      browser.goto url
      browser.wait_until { browser.h1.text == initial_text }
      browser.input(name: 'q').send_keys(activity, :return)

      puts browser.h1.text
      browser.wait_until { browser.h1.text != initial_text }

      results = browser.div(class: 'trip-item-activities')
      banner = browser.div(class: 'new-intro-banner__wrapper')
      address = browser.div(class: 'new-intro-banner__content container')
      #banner = ''
      banner.elements(class: 'new-intro-banner__image-container').each do |ban|
        if ban.image.exist?
          banner = ban.image.src.strip
        end
      end
      address.elements(class: 'new-intro-banner__content-title').each do |add|
        address = add.text.strip
      end

      results.elements(class: 'vertical-activity-card__container gtm-trigger__card-interaction').each do |element|
        link = element.href.strip
        title = ''
        image = ''
        price = 0
        duration = ''
        category = ''

        element.elements(class: 'baseline-pricing__from').each do |el|
          price = el.text.strip.gsub(/[^\d\.]/, '').to_i
        end
        element.elements(class: 'vertical-activity-card__photo').each do |el|
          if el.image.exist?
            image = el.image.src.strip
          end
        end
        element.elements(class: 'vertical-activity-card__activity-type c-classifier-badge').each do |el|
          category = el.text.strip
        end


        element.elements(class: 'vertical-activity-card__title').each do |el|
          title = el.text.strip
        end
        element.elements(class: 'activity-attributes__attribute').each do |el|
          if el.text.include?("hour")
            duration = el.text.strip.gsub(/[^\d]/, '').to_i
          end
        end
        activity_instances << { title: title, link: link, photo: image, price: price, duration: duration, banner: banner, description: '', category: category, address: address}
      end
    end


    @itinerary = Itinerary.new(name: params[:name], user: current_user)
    authorize @itinerary

    @user = current_user
    if @itinerary.save!
      itinerary_activities = activity_instances.first(3)

      activities_ids = []
      itinerary_activities.each do |act|
        acti = Activity.create(Title: act[:title], link: act[:link], description: act[:description], photo: act[:photo], price: act[:price], duration: act[:duration], banner: act[:banner], category: act[:category], address: act[:address])
        acti.save!
        activities_ids << acti.id
      end

      activities_ids.each do |activity_id|
        activity_join = ItineraryActivityJoin.create!(itinerary_id: @itinerary[:id], activity_id: activity_id)
        activity_join.save!
      end

      redirect_to itinerary_path(@itinerary)
    else
      render :new, status: :unprocessable_entity, locals: { search_results: @search_results }
    end
    # @itinerary.activities = activity_instances


    # if !params[:name].empty? && !params[:category].nil?
    #   @activities = Activity.where(location: params[:name]).where(category: params[:category])
    # elsif !params[:name].empty? && params[:category].nil?
    #   @activities = Activity.where(location: params[:name])
    # elsif !params[:category].nil? && params[:name].empty?
    #   @activities = Activity.where(category: params[:category])
    # end
    # if @itinerary.save!
    #   @activities.each { |activity| ItineraryActivityJoin.create!(itinerary: @itinerary, activity: activity) }
    #   # ItineraryActivityJoin.create!(itinerary: @itinerary, activity: @activity)
    #   redirect_to itinerary_path(@itinerary)
    # else
    #   render :new, status: :unprocessable_entity, locals: { search_results: @search_results }
    # end
  end

  def show
    authorize @itinerary
  end

  def destroy
    authorize @itinerary
    @itinerary.destroy
    redirect_to itinerary_path
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:name, :start_date, :end_date, :description, :location, photos: [])
  end
end
