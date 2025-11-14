require "json"
require "http/client"

class EmojiHub
  API_PATH = "api"
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://emojihub.yurace.pro")
    @http_client = HTTP::Client.new(uri)
  end

  def get_random_emoji() : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/random", headers: @headers).body)
  end

  def get_all_emojis() : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/all", headers: @headers).body)
  end

  def get_categories() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/categories", headers: @headers).body)
  end

  def get_groups() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/groups", headers: @headers).body)
  end

  def search_emoji(query : String) : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/search?q=#{query}", headers: @headers).body)
  end

  def get_similar_emojis(emoji_name : String) : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/similar/#{emoji_name}", headers: @headers).body)
  end
end
