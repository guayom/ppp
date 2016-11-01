---
title: Clusters
subtitle: How the project is pieced together
permalink: /clusters/
layout: project
---
{% for cluster in site.clusters %}
  <h2>{{ cluster.title}}</h2>
  {{ cluster.description | truncatewords: 30 }}
  <br/>
  <p class="read-more"><a href="{{ cluster.url }}" title="{{ cluster.title }}">Read more about {{ cluster.title }} cluster</a></p>
  <br/>
{% endfor %}
