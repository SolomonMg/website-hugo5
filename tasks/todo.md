# Migrate blog posts to Substack (started 2026-11-03)

Decisions so far: filtered RSS import; CC BY-NC-ND 4.0 footer (text only, third-party images excluded) with "originally published at" link; 7 posts.

Posts: thoughts-on-election-2020, bluesky-quasi-decentralized-social-network, twitter-the-algorithm, exposure-to-ideologically-diverse-response, condor-data-release, impression-of-influence, state-media-llm.

- [x] Inventory posts, check Substack ToS (you keep copyright; Substack gets a perpetual, irrevocable, non-exclusive-by-omission license)
- [x] Build filtered feed with footer, strip HTML draft comments (script: scratchpad `build_substack_feed.py`)
- [x] Host feeds in secret gist https://gist.github.com/SolomonMg/c98ca8ba3c644431e3015f41d1bbda30 (smoke-test.xml = BlueSky + Twitter Algorithm; remaining.xml = other 5)
- [x] Minimal typo fixes in source (commit 093f598); re-rendered locally, feed rebuilt from _site/blog.xml
- [ ] Deploy typo fixes to the live site (your call; quarto-migration is 14 commits ahead of origin/main)
- [ ] User creates Substack publication (name + subdomain)
- [ ] Smoke test: import smoke-test.xml (2 posts), email sending OFF; check images/captions, embedded tweet, links, date, footer
- [ ] Import remaining.xml (5 posts)
- [ ] Fix publication dates by hand if the importer didn't keep them
- [ ] Delete the gist
- [ ] Optional: add matching CC notice to the site's copies
- [ ] Next: turn Twitter threads into posts

## Review
