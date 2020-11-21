# Generated blog from Youtube
This is a quick blog generator for youtube channels.

# Requirements
ruby
youtube-dl
jekyll

# Generating
Download your youtube metadata with: `youtube-dl.exe https://www.youtube.com/channel/{your channel}/videos --skip-download --write-info-json -o '_data/%(title)s.%(ext)s'`

Generate blog posts: `ruby generate.rb`

Build: `jekyll build`