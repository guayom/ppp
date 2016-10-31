---
title: Participants Index
subtitle: Look who's participating in the project
layout: project
permalink: /participants/
---
<ul>
  {% for participant in site.data.participants %}
    <li>{{ participant.name }}</li>
  {% endfor %}
</ul>
