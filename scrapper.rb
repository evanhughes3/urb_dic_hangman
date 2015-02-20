require 'nokogiri'
require 'pp'
require 'open-uri'

def get_page(website)
    Nokogiri::HTML(open(website))
end

def formate_page_html(page_html)
word_objects = page_html.xpath("//div[@class='def-panel']")
word_objects_formatted = word_objects.map {|word_object|  word_object.text.tr("[\n]+",'∆').split('∆')}
word_objects_formatted.map! {|array| array.reject! { |string| string.empty?} }
end

def create_hash_formatted_objects(formatted_objects)
    words = []
    formatted_objects.each do |array|
            words << {word: "#{array[1]}", definition: "#{array[2]}", example: "#{array[3]}" }
    end
    words
end

def format!(url = 'http://www.urbandictionary.com/')
    word_objects_array = formate_page_html(get_page(url))
    create_hash_formatted_objects(word_objects_array)
end

format!
