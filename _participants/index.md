---
layout: project
title: Participants
subtitle: Look who's participating in the project
---
{% for participant in site.data.participants %}
  <h2>{{participant.name}}</h2>
  {{participant.description}}
{% endfor %}
