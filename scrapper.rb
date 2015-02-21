ENV['BUNDLE_GEMFILE'] = File.expand_path('../Gemfile', __FILE__)
require 'bundler'
Bundler.require

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.current_driver = :selenium_chrome
Capybara.app_host = 'http://www.urbandictionary.com/'



def html2definitions(html)
  html = Nokogiri::HTML(html)

  word_objects = html.xpath("//div[@class='def-panel']")
  word_objects_formatted = word_objects.map do |word_object|
    word_object.text.tr("[\n]+",'∆').split('∆')
  end
  word_objects_formatted.map! do |array|
    array.reject! { |string| string.empty? }
  end
  word_objects_formatted.map do |array|
    {
      word: "#{array[1]}",
      definition: "#{array[2]}",
      example: "#{array[3]}",
    }
  end
end

def scroll_to_bottom!
  Capybara.page.execute_script('window.scrollTo(0,10000000000)')
  sleep 1
end

Capybara.visit('http://www.urbandictionary.com/')
3.times{ scroll_to_bottom! }
p html2definitions(Capybara.page.html)






# def create_hash_formatted_objects(formatted_objects)
#     words = []
#     formatted_objects.each do |array|
#             words << {word: "#{array[1]}", definition: "#{array[2]}", example: "#{array[3]}" }
#     end
#     words
# end

# def format!(url = 'http://www.urbandictionary.com/')
#     word_objects_array = formate_page_html(get_page(url))
#     create_hash_formatted_objects(word_objects_array)
# end

# format!.first
