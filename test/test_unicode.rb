#encoding: utf-8

require 'webmock/test_unit'

require File.expand_path(File.dirname(__FILE__) + '/helper')

class TestVideo < Test::Unit::TestCase

  def setup
    @client = YouTubeIt::Client.new
  end

  def test_unicode
    result = YouTubeIt.esc("спят усталые игрушки")
    assert result == "спят+усталые+игрушки"
  end
end
