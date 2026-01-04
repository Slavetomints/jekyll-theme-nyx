---
layout: default
---
<header>
  <h1>{{ page.title }}</h1>
  <p>{{ page.date | date: "%B %d, %Y" }} – Written by {{ page.author }}</p>
</header>
<main>
  {{ content }}
</main>

<script>
document.addEventListener("DOMContentLoaded", () => {
  document.querySelectorAll('div.highlighter-rouge').forEach(wrapper => {
    const parent = wrapper.parentNode;
    const inner = wrapper.querySelector('.highlight');
    if (inner && parent) {
      parent.replaceChild(inner, wrapper);
    }
  });
});
</script>
