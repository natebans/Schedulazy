require "open-uri"

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home

  end

  def about
  end

  def test_search
    if params[:search].present?
      initial_text = "Travel memories you'll never forget"

      activity = params[:search]
      url = "https://www.getyourguide.com/"
      browser = Watir::Browser.new :chrome, options: { prefs: { 'intl' => { 'accept_languages' => 'EN'}}}
      browser.goto url
      browser.wait_until { browser.h1.text == initial_text }
      browser.input(name: 'q').send_keys(activity, :return)

      puts "waiting..."
      puts browser.h1.text
      browser.wait_until { browser.h1.text != initial_text }
      puts "found..."

      puts "searching..."
      results = browser.div(class: 'trip-item-activities')

      puts "list:"
      results.elements(class: 'vertical-activity-card__container gtm-trigger__card-interaction').each do |element|
        link = element.href.strip
        element.elements(class: 'vertical-activity-card__title').each do |el|
          puts el.text.strip
          puts link
        end
      end
    end
  end
end
