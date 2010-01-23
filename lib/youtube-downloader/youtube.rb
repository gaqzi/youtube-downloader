#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
$KCODE = 'u'

require 'hpricot'
require 'htmlentities'

module Youtube
  class Video
    attr_accessor :title
    attr_accessor :video_id
    attr_accessor :id

    def initialize(url)
      get_download_url(url)
    end

    def to_s
      "http://youtube.com/get_video.php?t=#{id}&video_id=#{video_id}&fmt=18"
    end
    alias :url :to_s

    def empty?
      title.nil? and video_id.nil? and id.nil?
    end

    private
    def get_download_url(url)
      begin
        doc = Hpricot(open(url))
        doc.search('//head/script').each do |el|
          l = el.inner_html

          if x = l.match(/"t":\s+"([^"]+)/)
            @id = x[1]
          end

          if x = l.match(/"video_id":\s+"([^"]+)/)
            @video_id = x[1]
          end
        end

        @title = HTMLEntities.new.decode(doc.search('//title').inner_html.squeeze.match(/YouTube\s+-\s+(.*)/)[1])

        if empty?
          raise Exception, "Couldn't get the information to download this video, aborting..."
        end
      rescue Timeout::Error
        STDERR.puts "Timeout while connecting to: #{ARGV[0]}"
        STDERR.puts 'Retrying...'
        retry
      end
    end
  end
end
