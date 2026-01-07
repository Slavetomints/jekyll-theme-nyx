---
layout: default
permalink: /categories/
order: 2
---

<h1>Categories</h1>

<ul class="taxonomy-list categories-list">
  {% for category in site.categories %}
    {% assign name = category[0] %}
    <li class="taxonomy-item">
      <a href="{{ '/categories/' | append: name | downcase | append: '/' | relative_url }}">
        <span class="taxonomy-name">{{ name }}</span>
        <span class="taxonomy-count">{{ category[1].size }}</span>
      </a>
    </li>
  {% endfor %}
</ul>
