---
layout: default
permalink: /tags/
order: 3
---

<h1>Tags</h1>

<div class="tags-list">
  {% for tag in site.tags %}
    {% assign tag_name = tag[0] %}
    <li>
      <a href="{{ '/tags/' | append: tag_name | append: '/' | relative_url }}">
        {{ tag_name }} ({{ tag[1].size }})
      </a>
    </li>
  {% endfor %}
</div>

