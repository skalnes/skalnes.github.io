---
layout: archive
title: "Writing"
permalink: /writing/
author_profile: true
redirect_from:
  - /blog
---

{% include base_path %}

This is where I'd put my blog, if I had one


## Musings of a Madman

{% for post in site.posts limit:10 %}
  * [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%B %d, %Y" }}
{% endfor %}