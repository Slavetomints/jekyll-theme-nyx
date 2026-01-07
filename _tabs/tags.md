---
layout: default
permalink: /tags/
order: 3
---

<h1>Tags</h1>

<ul class="taxonomy-list tags-list">
  {% for tag in site.tags %}
    {% assign name = tag[0] %}
    <li class="taxonomy-item">
      <a href="{{ '/tags/' | append: name | append: '/' | relative_url }}">
        <span class="taxonomy-name">{{ name }}</span>
        <span class="taxonomy-count">{{ tag[1].size }}</span>
      </a>
    </li>
  {% endfor %}
</ul>
