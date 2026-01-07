---
layout: default
permalink: /categories/
order: 2
---

<h1>Categories</h1>

<div class="categories-list">
  {% for category in site.categories %}
    {% assign category_name = category[0] %}
    <li>
      <a href="{{ '/categories/' | append: category_name | downcase | append: '/' | relative_url }}">
        {{ category_name }} ({{ category[1].size }})
      </a>
    </li>
  {% endfor %}
</div>
