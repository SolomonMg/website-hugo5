---
# Leave the homepage title empty to use the site title
title:
date: 2022-10-24
type: landing

sections:


  - block: v1/about
    id: about
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin

  - block: collection
    id: featured
    content:
      title: Featured Publications
      filters:
        folders:
          - publication
        featured_only: true
    design:
      columns: '2'
      
  - block: collection
    id: posts
    content:
      title: Recent Posts
      subtitle: ''
      text: ''
      # Choose how many pages you would like to display (0 = all pages)
      count: 2
      # Filter on criteria
      filters:
        folders:
          - post
        author: ""
        category: ""
        tag: ""
        exclude_featured: false
        exclude_future: false
        exclude_past: false
        publication_type: ""
      # Choose how many pages you would like to offset by
      offset: 0
      # Page order: descending (desc) or ascending (asc) date.
      order: desc
    design:
      # Choose a layout view
      view: compact
      columns: '2'
      
  - block: portfolio
    id: projects
    content:
      title: Projects
      filters:
        folders:
          - project
    design:
      # Choose how many columns the section has. Valid values: '1' or '2'.
      columns: '2'
      view: showcase
      # For Showcase view, flip alternate rows?
      flip_alt_rows: false


  - block: markdown
    id: media
    content:
      title: Media
      text: |-
        ## Radio/Podcasts/Video


        - [X, formerly Twitter, to allow paid political advertising again](https://fox2now.com/news/national/x-formerly-twitter-to-allow-paid-political-advertising-again/) **NexStar Media Group** (Local TV stations in major U.S. metro areas)

        - [Meta's Threads, which is basically a Twitter clone, minimizes news and politics](https://www.npr.org/2023/07/13/1187435445/metas-threads-which-is-basically-a-twitter-clone-minimizes-news-and-politics) **NPR's Morning Edition, hosted by Steve Inskeep & Bobby Allyn** 

        - [Behold, The Algorithm (or, parts of it, sort of)](https://moderated-content.simplecast.com/episodes/mc-weekly-update-4-3-behold-the-algorithm-or-parts-of-it-sort-of) **Moderated Content, hosted by Alex Stamos & Evelyn Douek** 

        - [What can we learn from a $9 million social media advertising experiment? Differential Turnout and Early Voting](https://moderated-content.simplecast.com/episodes/mc-weekly-update-1-16-looking-at-the-evidence) **Moderated Content, hosted by Alex Stamos & Evelyn Douek** 

        - [CITP: Bringing Transparency to Digital Political Campaigns Symposium](https://mediacentral.princeton.edu/media/Bringing+Transparency+to+Digital+Political+Campaigns+Symposium+AM+Session/1_0ta6wiz0) **Center for Information Technology Policy (CITP) and the Center for the Study of Democratic Politics (CSDP)** 

        - [Should We Stop Paying Attention To Election Forecasts?](https://www.sciencefriday.com/segments/election-forecasts/) **NPR's Science Friday, hosted by Ira Flatow & Elah Feder** 

        - [Data Science across Academia, Industry, and Progressive Campaigns, with Dr. Solomon Messing](https://socialmediaandpolitics.simplecast.com/episodes/data-science-academia-tech-industry-progressive-campaigns-solomon-messing). **Social Media and Politics Podcast, hosted by Michael Bossetta** 

        - [Technology in Political Campaigns and Activism](https://www.youtube.com/watch?v=LW05yRGrwfQ) **2020 CODE@MIT - Fireside Panel, hosted by Dean Eckles**

        - [Using Trumps Tactics Against Him with The Leaders of Barometer](https://soundcloud.com/thegreatbattlefield/using-trumps-tactics-against-him-with-the-leaders-of-barometer). **The Great Battlefield Podcast, hosted by Nathaniel G. Pearlman** 

        - [A Look Beyond Traditional Audiences + Models with Solomon Messing](https://youtu.be/9ZRpDPcN7I0?t=85) **FWIW 2020 Debrief, hosted by ACRONYM**


        ## Op-Eds 

        - [What color is Obama? These researchers examined reactions when his skin looks darker](https://www.washingtonpost.com/news/monkey-cage/wp/2016/01/11/what-color-is-obama-these-researchers-examined-reactions-when-his-skin-looks-darker/). **Washington Post's Monkey Cage** 

        - [How election forecasts confuse Americans — and may lead them not to vote at all](https://www.washingtonpost.com/news/monkey-cage/wp/2018/03/22/how-election-forecasts-confuse-americans-and-may-lead-them-not-to-vote-at-all/). **Washington Post's Monkey Cage** 

        - [Election forecasts helped elect Trump in 2016. It could happen again in 2020](https://www.usatoday.com/story/opinion/2020/10/01/election-forecasts-can-wrong-you-still-need-vote-column/5857993002/). **USA Today**


        ## Media Clips

        - [What did Twitter’s ‘open source’ algorithm actually reveal? Not a lot.](https://www.engadget.com/what-did-twitters-open-source-algorithm-actually-reveal-not-a-lot-194652809.html?guccounter=1&guce_referrer=aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS8&guce_referrer_sig=AQAAAG2PG7lV-A6E94QOqjO595-njWZJCASAqqvXBXbYa1oLWPckv9OLZbLQXNCu5YJxTW7RQkQlGG9WHau6kzWUupUXvvoSj0vzoLijfbT9Q212X2-1JEtBbwYwSXf3xkH_kCTFbGJAUvaQxursj1uv4SabTQcVgOXkXBPp03aoQYIk). **Engadget** 

        - [From emergency alerts to Taylor Swift lyrics: Twitter risks alienating developers](https://www.nbcnews.com/tech/tech-news/twitter-api-musk-developers-rcna69024). **NBC News** 

        - [Twitter users say they haven't paid for their blue checks but still have them](https://www.npr.org/2023/04/03/1167828291/twitter-verification-blue-check-paid). **NPR News** 

        - [More Academics Take Flight From Twitter as Restrictions, Alternatives Grow](https://www.insidehighered.com/news/tech-innovation/2023/07/06/academics-take-flight-twitter-restrictions-alternatives-grow). **Inside Higher Ed** 

        - [Bluesky, championed by Jack Dorsey, was supposed to be Twitter 2.0. Can it succeed?](https://abcnews.go.com/Technology/wireStory/bluesky-championed-jack-dorsey-supposed-twitter-20-succeed-99875527). **ABC News** 

        - [Twitter curbs researcher access, sparking backlash in Washington](https://www.washingtonpost.com/politics/2023/02/03/twitter-curbs-researcher-access-sparking-backlash-washington/). **Washington Post** 

        - [How a Digital Ad Strategy That Helped Trump Is Being Used Against Him](https://www.nytimes.com/2020/04/28/us/politics/Facebook-Acronym-advertising.html). **New York Times** 

        - [Since Facebook helped elect Trump, some former employees are using similar digital tricks to give Democrats an edge in 2020](https://www.vanityfair.com/news/2020/04/trump-facebook-mastermind-james-barnes-working-against-him). **Vanity Fair** 

        - [Did Trump win in 2016 because people are bad at probability?](https://www.washingtonpost.com/politics/2020/02/28/did-trump-win-2016-because-people-are-bad-probability/) **Washington Post**

        - [This is how FiveThirtyEight is trying to build the right amount of uncertainty into its 2020 election data analysis](https://www.niemanlab.org/2020/07/this-is-how-fivethirtyeight-is-trying-to-build-the-right-amount-of-uncertainty-into-its-2020-election-data-analysis/). **NiemanLab** 

        - [Americans Don’t Understand Probabilities – and It Could Affect Election Turnout](https://nymag.com/intelligencer/2018/02/americans-dont-understand-election-probabilities.html).  **New York Magazine**

        - [Study Finds Election Forecasts Lower Voter Turnout](https://politicalwire.com/2018/02/06/election-forecasts-lower-voter-turnout/). **Political Wire**

        - [Kobe Bryant's 'light-skinned' remark hints at NBA's peculiar racial politics](https://www.theguardian.com/sport/2016/jan/06/kobe-bryant-steph-curry-light-skinned-remark-hints-at-nbas-peculiar-racial-politics). **The Guardian** 

        - [Study: 2008 McCain attack ads depicted Obama with darker skin tone](https://www.cbsnews.com/news/study-2008-mccain-attack-ads-darkened-obama-skin-tone/). **CBS News** 

        - [Obama’s skin looks a little different in these GOP campaign ads](https://www.washingtonpost.com/news/wonk/wp/2015/12/29/obamas-skin-looks-a-little-different-in-these-gop-campaign-ads/). **Washington Post** 

        - [Study: Campaign Ads with Dark-Skinned Black People Appeal to White Racism](https://atlantablackstar.com/2016/01/03/study-campaign-ads-with-dark-skinned-black-people-appeal-to-white-racism/). **Atlanta Black Star** 

        - [What can researchers find among the 32 million URLs Facebook just released to Social Science One?](https://www.poynter.org/fact-checking/2019/what-can-researchers-find-among-the-32-million-urls-facebook-just-released-to-social-science-one/) **Poynter** 

        - [Does Facebook drive political polarization? Data science and research](https://journalistsresource.org/studies/society/social-media/facebook-political-polarization-data-science-research/). **Harvard Shorenstein Center** 

        - [Maybe the Internet Isn’t Tearing Us Apart After All](https://www.wired.com/2017/05/maybe-internet-isnt-tearing-us-apart/). **Wired** 

        - [Two-thirds of links on Twitter come from bots. The good news? They’re mostly bland](https://www.vox.com/technology/2018/4/9/17214720/pew-study-bots-generate-two-thirds-of-twitter-links). **Vox**

        - [Most Links to Popular Sites on Twitter Come From Bots](https://www.wired.com/story/twitter-bots-links/). **Wired** 

        - [Twitter bots are getting busy making sure your tweet goes viral](https://www.fastcompany.com/40556233/twitter-bots-are-getting-busy-making-sure-your-tweet-goes-viral). **FastCompany** 

        - [Bots on Twitter share two-thirds of links to popular websites](https://techcrunch.com/2018/04/09/bots-on-twitter-share-two-thirds-of-links-to-popular-websites-pew/). **TechCrunch** 

        - [Twitter bots are behind 66% of tweeted links for most popular sites](https://venturebeat.com/2018/04/09/pew-twitter-bots-are-behind-66-of-tweeted-links-for-most-popular-sites/). **VentureBeat** 

        - [Twitter bots rampant in news, porn and sports links](https://www.usatoday.com/story/tech/news/2018/04/09/bots-rampant-twitter-study-says-network-tries-thwart-devious-tweets/492536002/). **USA Today**

        - [Report: Bots Promote 66 Percent of Twittersphere Links](https://observer.com/2018/04/report-bots-promote-66-percent-twittersphere-links/). **Observer**

        - [Think your articles are getting a lot of attention on Twitter? It could be a lot of posting by bots](https://www.niemanlab.org/2018/04/think-your-articles-are-getting-a-lot-of-attention-on-twitter-it-could-be-a-lot-of-posting-by-bots/). **NiemanLab** 


        - [New study finds 66% of shared links on Twitter came from bots](https://sports.yahoo.com/new-study-finds-66-shared-links-twitter-came-bots-140230916.html). **Yahoo News** 

        - [FiveThirtyEight Politics Podcast](https://fivethirtyeight.com/features/politics-podcast-whats-so-wrong-with-nancy-pelosi/). **FiveThirtyEight** 

        - [Clinton’s Achilles’ heel in 2016 may have been overconfidence](https://www.washingtonpost.com/news/politics/wp/2018/02/06/clintons-achilles-heel-in-2016-may-have-been-overconfidence/). **Washington Post** 

        - [Facebook reactions to posts by Democrats got a lot angrier after Trump was elected](https://qz.com/1161816/facebook-and-politics-reactions-to-posts-by-democrats-got-a-lot-angrier-after-trump-was-elected/). **Quartz** 

        - [Democrats are angrier than Republicans on Facebook](https://www.axios.com/democrats-are-angrier-than-republicans-on-facebook-1515110686-ba65f9e2-10c3-4b06-b31f-4588fbca9573.html). **Axios** 

        - [How politicians’ use of social media is reinforcing a partisan media divide](https://www.washingtonpost.com/news/politics/wp/2017/12/18/how-politicians-use-of-social-media-is-reinforcing-a-partisan-media-divide/). **Washington Post** 

        - [Lawmakers’ Facebook news feeds reflect political polarization](https://www.politico.com/story/2017/12/18/pew-study-social-media-political-polarization-302252). **Politico** 

        - [Republican lawmakers ‘go negative’ more often than Democrats, according to a first-of-its-kind analysis](https://www.washingtonpost.com/news/wonk/wp/2017/02/23/republican-lawmakers-go-negative-more-often-than-democrats-according-to-a-first-of-its-kind-analysis/). **Washington Post** 

        - [Republicans Disagree With You, and They Disagree Indignantly](https://www.motherjones.com/kevin-drum/2017/02/pew-republicans-disagree-and-they-disagree-indignantly/). **Mother Jones** 

        - [Q&A with Solomon Messing of Pew Research Center’s Data Labs](https://www.pewresearch.org/fact-tank/2017/02/23/qa-with-solomon-messing-of-pew-research-centers-data-labs/). **Pew Research Center** 

        - [Investigating the network: The top 10 articles from the year in digital news and social media research](https://www.niemanlab.org/2015/12/investigating-the-network-the-top-10-articles-from-the-year-in-digital-news-and-social-media-research/). **NiemanLab** 

        - [Facebook Use Polarizing? Site Begs to Differ](https://www.nytimes.com/2015/05/08/technology/facebook-study-disputes-theory-of-political-polarization-among-users.html). **New York Times** 

        - [Does Facebook's News Feed control your world view?](https://www.cbsnews.com/news/facebooks-news-feed-limits-your-world-view/). **CBS News** 

        - [Facebook tips news balance 'less than users do'](https://www.bbc.com/news/science-environment-32606724). **BBC News** 

        - [Don’t (just) blame Facebook: We build our own bubbles](https://arstechnica.com/science/2015/05/dont-just-blame-facebook-we-build-our-own-bubbles/). **Ars Technica** 

        - [It’s mainly your fault that you click on things you already agree with](https://www.washingtonpost.com/news/energy-environment/wp/2015/05/07/facebook-study-says-its-mainly-your-fault-not-theirs-that-you-read-things-you-already-agree-with/). **Washington Post** 


        - [It's The Frequency, Not The Size: Compromise & Credit Claiming in Congress](https://mischiefsoffaction.blogspot.com/2015/01/its-frequency-not-size-compromise.html). **Mischiefs of Faction (Vox)** 

        - [When it comes to policy, moderate politicians keep their mouths shut](https://news.stanford.edu/news/2012/september/politics-policy-pork-092412.html). **Stanford News** 

        ## Tweet threads I like
        {{< tweet id="1327649905234616321" user="SolomonMg" >}}
        {{< tweet id="1061703412100816896" user="SolomonMg" >}}
        {{< tweet id="841318057083572224" user="SolomonMg" >}}
        {{< tweet id="1311649795258421252" user="SolomonMg" >}}
        {{< tweet id="1277226059646337025" user="SolomonMg" >}}
        {{< tweet id="1017077780800995328" user="SolomonMg" >}}
        {{< tweet id="1321975224385052674" user="SolomonMg" >}}
        {{< tweet id="1164927631957143554" user="SolomonMg" >}}



  - block: markdown
    id: mybio
    content:
      title: Bio
      text: |-
        Sol Messing is a Research Associate Professor at New York University, with the Center for Social Media and Politics. Prior to joining NYU, Messing founded data science research teams at Pew Research Center, Acronym, and Twitter. He has industry experience working on recommender systems, complex experimentation, feature engineering/discovery, algorithm audits, and differential privacy. 

        Messing’s published work on politics and digital media spans advertising, elections, social media, and Congressional communication. His most widely cited work shows how [ranking and social signals dominate ideological signals](pdf/SocialNewsCommRes.pdf) in digital media, and how the networks we form more powerfully govern exposure to [ideologically diverse content than algorithmic bias or individal preference](pdf/Science-2015-Bakshy-1130-2.pdf). His research on Congress consists of numerous works on inter-party criticism and conflict among [members on social media](https://www.pewresearch.org/politics/2017/02/23/partisan-conflict-and-congressional-outreach/), as well as [journal articles](https://www.cambridge.org/core/journals/american-political-science-review/article/abs/how-words-and-money-cultivate-a-personal-vote-the-effect-of-legislator-credit-claiming-on-constituent-credit-allocation/7538BBE494CE31274DAE7F9F2E220F04) and a co-authored book, [*The Impression of Influence*](pdf/GrimmerWestwoodMessingBook.pdf) (Princeton University Press, 2014) about the impacts of credit-claiming on the voting public. He has also published work on the [consequences of election forecasts](publication/wlm-2019-projecting/) and digital alterations to [candidate images in advertising](pdf/HSVmetricsCampaignsDarknessPOQFINAL.pdf). Messing’s most recent work quantifies the impact of an entire digital Presidential advertising campaign in the 2020 election, in what is likely the largest [digital advertsing field experiments in politics](/publication/aggarwal-2023-2-million-experiment/). 

        During the 2020 election cycle, Messing was Chief Scientist at [ACRONYM](https://www.nytimes.com/2020/04/28/us/politics/Facebook-Acronym-advertising.html), where his team drove investment by (correctly) [modeling the electoral importance of Georgia](/post/what-the-polls-got-wrong-in-2020/), oversaw a meta-analytic [ML system to generate estimates of persuasive messaging impact](https://towardsdatascience.com/the-haha-ratio-learning-from-facebooks-emoji-reactions-to-predict-persuasion-effects-of-fcd9180ea5dd) leveraging hundreds of past experiments and online behavioral data, and conducted the largest ever [digital advertsing field experiment in politics](/publication/aggarwal-2023-2-million-experiment/).

        At Facebook, Messing led the technical effort to release a [differentially private data set reflecting more than an exabyte of media data](/project/condor_data_release/), helped to found the Civic Integrity and FORT groups, and worked on prototypes that blend ML and experimentation (heterogenous effect estimation and contextual bandits). 

        Messing founded the Data Lab at Pew Research Center, where his team conducted algorithmic audits of [Google Image searches](https://www.pewresearch.org/social-trends/2018/12/17/gender-and-jobs-in-online-image-searches/) and [news photos on Facebook](https://www.journalism.org/2019/05/23/men-appear-twice-as-often-as-women-in-news-photos-on-facebook/), used ML to [study inauthentic and automated behavior on Twitter](https://www.pewresearch.org/internet/2018/04/09/bots-in-the-twittersphere/), and used NLP to understand the role of ideology and [power structures](https://www.pewresearch.org/fact-tank/2017/08/21/highly-ideological-members-of-congress-have-more-facebook-followers-than-moderates-do/) embedded in how members of [congress use social media to communicate](https://www.pewresearch.org/politics/2017/02/23/partisan-conflict-and-congressional-outreach/). 

        Messing received his PhD in Communication from Stanford University in 2013, earning a Masters of Science in Statistics. He has served on the advisory board of Journal of Quantitative Description, served as the Assistant Editor of Political Communication, and founded the Journal of International Policy Solutions. 
  
        <!-- Some past work using [privacy tech](https://arxiv.org/abs/2002.04049) to [unlock research/ML](pdf/Facebook_DP_URLs_Dataset.pdf) in corporate data warehouses. 

        Accidentally fell into data science in 2006 when my team couldn't get budget for Stata and so got paid for 2 years to learn R. 
         -->

    design:
      columns: '2'

      
  - block: contact
    id: contact
    content:
      title: Contact
      subtitle:
      text: |-
        Contact me via the form below or at firstname.lastname at gmail dot com. 
      # Contact (add or remove contact options as necessary)
      # appointment_url: 'https://calendly.com/solmg/'
      contact_links:
        - icon: twitter
          icon_pack: fab
          name: DM Me
          link: 'https://twitter.com/SolomonMg'
    
      # Email form provider
      form:
        provider: formspree
        formspree:
          id: xnqgdkod

          # Enable CAPTCHA challenge to reduce spam?
          captcha: false
    design:
      columns: '2'
---
