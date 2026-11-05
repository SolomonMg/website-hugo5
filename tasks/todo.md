# Migrate blog posts to Substack (started 2026-11-03)

Decisions so far: filtered RSS import; CC BY-NC-ND 4.0 footer (text only, third-party images excluded) with "originally published at" link; 7 posts.

Posts: thoughts-on-election-2020, bluesky-quasi-decentralized-social-network, twitter-the-algorithm, exposure-to-ideologically-diverse-response, condor-data-release, impression-of-influence, state-media-llm.

- [x] Inventory posts, check Substack ToS (you keep copyright; Substack gets a perpetual, irrevocable, non-exclusive-by-omission license)
- [x] Build filtered feed with footer, strip HTML draft comments (script: scratchpad `build_substack_feed.py`)
- [x] Host feeds in secret gist https://gist.github.com/SolomonMg/c98ca8ba3c644431e3015f41d1bbda30 (smoke-test.xml = BlueSky + Twitter Algorithm; remaining.xml = other 5)
- [x] Minimal typo fixes in source (commit 093f598); re-rendered locally, feed rebuilt from _site/blog.xml
- [ ] Deploy typo fixes to the live site (your call; quarto-migration is 14 commits ahead of origin/main)
- [x] Publication created: https://solmessing.substack.com
- [x] Smoke test: import smoke-test.xml (2 posts), email sending OFF; check images/captions, embedded tweet, links, date, footer
- [x] Import remaining.xml (5 posts); all 7 live with footers and images (verified via /feed 2026-11-05)
- [x] Original dates preserved by importer (no manual fix needed)
- [x] Delete the gist
- [ ] Optional: add matching CC notice to the site's copies
- [ ] Next: turn Twitter threads into posts

## Review

# Deploy website-hugo5 to live site (2026-11-05)

Decision: website-hugo5 is the single source; its workflow publishes to SolomonMg/SolomonMg.github.io.

- [x] Port June live-only fixes (ML Commons Affiliate label, mobile banner crop) (dfd9615)
- [x] Substack link in navbar + CV header; rebuild CV.pdf (9d8b9ba)
- [ ] Rewrite publish.yml: render, push _site to SolomonMg.github.io gh-pages via deploy key
- [ ] Create write deploy key on SolomonMg.github.io; private half as ACTIONS_DEPLOY_KEY secret on website-hugo5; delete local key files
- [ ] Fast-forward main to quarto-migration, push; confirm workflow pushes gh-pages
- [ ] Switch SolomonMg.github.io Pages source to gh-pages branch; disable its own publish workflow
- [ ] Verify live: CV mentions DeepMind + Substack, navbar Substack icon, typo fixes
