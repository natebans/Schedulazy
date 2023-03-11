require "open-uri"
require "nokogiri"

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home

  end

  def about
  end

  def test_search
    if params[:search].present?
      # activity = params[:search]
      # url = "https://www.headout.com/search/?q=#{activity}"

      # browser = Watir::Browser.new :chrome, headless: true
      # browser.goto url

      # puts "======URL======="
      # puts url
      # puts "============="

      # doc = Nokogiri::HTML.parse(browser.html)

      # puts doc.search(".product-card-wrap").length

      # browser.close

      activity = params[:search]
      url = "https://www.headout.com"

      # browser = Watir::Browser.new :chrome, headless: true
      browser = Watir::Browser.new
      browser.goto url

      browser.wait_until { browser.h1.text == "The world's best experiences curated just for you" }


      browser.input(id: 'universal-search-input').send_keys(activity, :return)

      puts "======SEARCHING======="
      browser.wait_until { browser.h2.text == "Showing results for #{activity}" }

      puts "======WAITED======="
      results = browser.div(class: 'search-grid-wrapper')

      puts results.elements(css: 'a').length

      results.elements(css: 'a').each do |element|
        puts element.text.strip
      end


      puts "======URL======="
      puts url
      puts "============="

      # doc = Nokogiri::HTML.parse(browser.html)

      # puts doc.search(".product-card-wrap").length

      # browser.close


      # html_doc.search(".notranslate collection-name").each do |element|
      #   puts element
      #   puts element.text.strip
      # end
    end

    return 'ok'
  end
end
