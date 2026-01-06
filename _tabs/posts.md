---
layout: default
permalink: /posts/
order: 1
---

# Posts

<ul class="post-list">
  {% for post in site.posts %}
    <li class="post-item">
      <h2>
        <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      </h2>
      <time datetime="{{ post.date | date_to_xmlschema }}">
        {{ post.author }} - {{ post.date | date: "%B %d, %Y" }}
      </time>
      {% if post.description %}
        <p>{{ post.description | strip_html }}</p>
      {% endif %}
    </li>
  {% endfor %}
</ul>

