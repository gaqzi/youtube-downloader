# -*- coding: utf-8; mode: ruby -*-
Gem::Specification.new do |s|
  s.name	= "youtube-downloader"
  s.version	= "1.1"
  s.date	= Time.now.strftime('%Y-%m-%d')
  s.summary	= "Downloads youtube videos and optionally rips audio"
  s.email	= "gaqzi@sanitarium.se"
  s.homepage	= "http://github.com/gaqzi/youtube-downloader"
  s.description = "Downloads youtube videos to your local harddrive and optionally rips the audio from the video."
  s.files	= ['bin/youtube-downloader', 'etc/youtube-downloader.conf',
                   'README', 'youtube-downloader.gemspec', 'lib/youtube-downloader/youtube.rb']
  s.bindir      = 'bin'
  s.executables = ['youtube-downloader']
  s.has_rdoc	= false
  s.add_dependency('hpricot', '>= 0.8.2')
  s.add_dependency('htmlentities')
  s.requirements << 'cURL, fetch or wget. A program to download files'
  s.requirements << 'ffmpeg, for ripping the audio'
end
