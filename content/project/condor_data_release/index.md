---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Facebook Condor URLs Data Release"
summary: "Largest ever social science data set, released under differential privacy"
authors: []
tags: []
categories: []
date: 2020-05-18

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
links:
- name: Follow
  url: https://twitter.com/SolomonMg
  icon_pack: fab
  icon: twitter

url_code: ""
url_pdf: "/pdf/Facebook_DP_URLs_Dataset.pdf"
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---


On January 17, 2020 my team at Facebook launched one of the largest social science data sets ever constructed. It’s meant to facilitate research on misinformation from across the web, shared and spread on Facebook.

[Full details on the release here](/pdf/Facebook_DP_URLs_Dataset.pdf).

We also released the [URL santization framework](https://github.com/facebookresearch/URL-Sanitization), which I implemented (and which my SWE colleagues refactored). 

What makes this data release unprecedented is that it contains *exposure data* describing external links that billions of users saw and read while using the site.

The data set goes beyond URL-level data, breaking down exposure and interactions by month, country, age, gender, and in the U.S., political page affinity (see Barbera et al 2015).

The data contain two tables: (1) a “URL attributes” table describing the 38 million URLs in the data set, including how many times users tagged those posts as containing misinformation, harassment, etc. and (2) a “breakdown” table, which aggregates counts of actions taken on urls, broken out by user demographics and URL attributes.

The [technical documentation](/pdf/Facebook_DP_URLs_Dataset.pdf) reflects more work than most papers I've written: . This list of authors reflects the scale of this massive team effort, and that's before you include increadibly helpful advice we got from a number of computer scientists in the academy listed in the acknowledgements. 

Perhaps most importantly, this release provides guarantees about anonymity in an incredibly rigorous way--action-level differential privacy, while preserving more underlying signal in the data.

