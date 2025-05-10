+++
date = {{ .Date }}
timezone = "America/Los_Angeles"

type = "media"
draft = true

slug = "{{ .File.ContentBaseName }}"

title = "{{ replace .File.ContentBaseName "-" " " | title | truncate 55 }}"
description = "{{ replace .File.ContentBaseName "-" " " | humanize | truncate 140 }}"

tags = ["photo"]

image = "{{ .File.ContentBaseName }}.jpg"
images = ["{{ .File.ContentBaseName }}.jpg"]

alt = "{{ replace .File.ContentBaseName "-" " " | humanize }}"
caption = "{{ replace .File.ContentBaseName "-" " " | humanize }}"

[location]
latitude = ""
longitude = ""
+++
{{< media-photo >}}