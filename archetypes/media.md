---
title: "{{ replace .File.ContentBaseName "-" " " | title }}…"
date: {{ .Date }}
timezone: "America/Los_Angeles"
draft: true
slug: "{{ .File.ContentBaseName }}"
description: "{{ replace .File.ContentBaseName "-" " " | title }}"
tags: ['photo', 'Instagram']
image: "{{ .File.ContentBaseName }}.jpg"
images:
  - "{{ .File.ContentBaseName }}.jpg"
location:
  latitude: ""
  longitude: ""
---
<figure>
  <img src="/media/{{ .File.ContentBaseName }}/{{ .File.ContentBaseName }}.jpg" alt="{{ replace .File.ContentBaseName "-" " " | title }}">
  <figcaption>{{ replace .File.ContentBaseName "-" " " | title }}</figcaption>
</figure>