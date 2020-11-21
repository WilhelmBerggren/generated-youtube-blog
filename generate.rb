require "json"
require "date"

Dir.glob("_data/*.json") do |my_text_file|
  file = open(my_text_file)
  json = file.read

  parsed = JSON.parse(json)

  date = Date.strptime(parsed["upload_date"], "%Y%m%d")
  parsed_date = date.strftime("%Y-%m-%d")

  filename = parsed_date + "-" + parsed["title"]
  content = %{---
layout: post
title: #{parsed["title"]}
date:  #{parsed_date}
---
#{parsed["description"]}
[![alt text](#{parsed["thumbnail"]} "thumbnail")](#{parsed["webpage_url"]})
  }

  File.write('_posts/' + filename + '.md', content)
end