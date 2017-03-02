---
title: Participants Index
subtitle: Look who's participating in the project
layout: project
permalink: /participants/
---
{% assign participants = (site.participants | sort: 'order') %}
{% for participant in participants %}
  <h2>{{ participant.title}}</h2>
  {{ participant.description | truncatewords: 30 }}
  <br/>
  <p class="read-more"><a href="{{ participant.url }}" title="{{ participant.title }}">Read more about {{ participant.title }}</a></p>
  <br/>
{% endfor %}
