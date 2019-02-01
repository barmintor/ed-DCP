---
layout: narrative
title: "David Copperfield"
author: Charles Dickens
toc:
- Part I
- Part II
---
{% for entry in page.toc %}
{% assign part = site.data.parts[entry] %}
<a id='{{page.toc[i] | downcase | replace: " ", "-"}}'>{{entry}}</a>
{% for a_page in (part[0]..part[1]) %}
{% assign page_name = "0000" | append: a_page | slice: -5, 5 | prepend: "page" | append: ".md" | prepend: "pages/" %}
<div class="page">
<p class="page-number small" style="color: #841212;float:right">{{ a_page | plus: 1 }}</p>
<div class="page-text">
{% include {{ page_name }} %}
</div>
<hr style="clear:right"/>
</div>
{% endfor %}
{% endfor %}
