---
layout: default
---
<header>
  <h1>{{ page.title }}</h1>
  <p>{{ page.date | date: "%B %d, %Y" }} – Written by {{ page.author }}</p>
</header>

<div id="post-container">
  <article>
    {{ content }}
  </article>
  <aside>
    <h2>Table of Contents</h2>
    {{ content | toc_only }}
  </aside>
</div>
