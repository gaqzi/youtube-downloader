Gem::Specification.new do |s|
  s.name	= "youtube-downloader"
  s.version	= "0.6.2"
  s.date	= Time.now.strftime('%Y-%m-%d')
  s.summary	= "Downloads youtube videos and optionally rips audio"
  s.email	= "ba@sanitarium.se"
  s.homepage	= "http://github.com/ba/youtube-downloader"
  s.description = "Downloads youtube videos to your local harddrive and optionally rips the audio from the video."
  s.authors	= ["Björn Andersson"]
  s.files	= ['youtube-downloader', '.youtube-downloader', 'README']
  s.bindir      = '.'
  s.executables = ['youtube-downloader']
  s.has_rdoc	= false
end
