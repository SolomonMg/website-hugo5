---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "What can we learn from `The Algorithm,' Twitter's partial open-sourcing of it's feed-ranking recommendation system?"
subtitle: ""
summary: ""
authors: [Sol Messing]
tags: []
categories: []
date: 2023-04-03
# lastmod: 2015-11-15
featured: true
draft: false

math: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image: 
   caption: "Twitter comically deleting code that tracks Musk, Democrats, Republicans in DDG. Credit Colin Fraser."
   focal_point: "Smart"
   preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: [research]
---

Last Friday (2023-03-31) Twitter released what it calls “the algorithm,” which appears to be a highly redacted, incomplete part of code that governs the “for you” home timeline ranking system. And I saw nothing to suggest the parts of the code they put in the GitHub repository wasn’t authentic. 

It’s highly unusual for a tech company to open up a product at the core of its monetization strategy. The thinking is that the more engaging the content you show people right when they log in, the more likely they are to stick around. And the more you keep people logged in, the more they see ads. And the more data you can get to show them better ads! 

**Transparency, or a distraction from closing the API?**

Is this a step forward for transparency as Musk and Twitter would claim? I am skeptical. You can’t learn much from this release in and of itself---you need the underlying model features, parameters, and data to really understand the algorithm. Those combine into a system that's effectively different for everyone! So even if you had all that, you'd likely need to algorithmically audit the system to really get a handle on it. 

And Twitter made it [prohibitively expensive](https://www.wired.com/story/twitter-data-api-prices-out-nearly-everyone/) for external researchers to get that data through its API with the recent price updates ($500k/yr). So at the same time twitter is releasing this code, it’s made it incredibly difficult for research to *audit* this code

**What's in the code? Gossip and Rumors**

**Ukraine** There were some [initial reports](https://twitter.com/SolomonMg/status/1642845123531751425?s=20) that Twitter was downranking tweets about Ukraine. I looked at the code and can tell you those claims are wrong---twitter has an audio-only [Clubhouse](https://www.clubhouse.com) clone called Spaces and that code is for that product, not ordinary tweets on hometimeline. What's more, this is likely a label related only to **crisis misinformation**, as per Twitter's [Crisis Misinformation Policy](https://help.twitter.com/en/rules-and-policies/crisis-misinformation). 

{{< tweet id="1642560420392103936" user="SolomonMg" >}}

**Musk Metrics** One of the most interesting things we learned from the code is that Twitter created an entire suite of metrics about Elon Musk’s personal twitter experience. The code shows they fed those metrics to the experimentation platform (Duck Duck Goose, or DDG), which at least historically has been used to evaluate whether or not to ship products.

{{< tweet id="1641884551189512192" user="wongmjane" >}}

This episode is consistent with reporting that engineers are very concerned about how any features they ship [affect the CEOs personal experience on Twitter](https://www.theverge.com/2023/2/9/23593099/elon-musk-twitter-fires-engineer-declining-reach-ftc-concerns). And other [reporting has suggested that there may have been a Musk centric boost feature](https://arstechnica.com/tech-policy/2023/02/report-musk-had-twitter-engineers-boost-his-tweets-after-biden-got-more-views/) that shipped, and you would want exactly this kind of instrumentation to understand how that worked in practice.

**Republican, Democrat Metrics** We also learned that Twitter is logging similar metrics for lists of prominent Democrat and Republican accounts, [ostensibly to understand](https://www.yahoo.com/entertainment/twitters-recommendation-algorithm-is-now-on-github-200511112.html) whether any features that they ship affect those sets of accounts equally. Now we know that [conservative accounts tend to share more misinformation than liberal accounts on both Twitter](https://www.nature.com/articles/s41467-022-34769-6) and [on Facebook](https://www.science.org/doi/full/10.1126/sciadv.aau4586). And, [Musk has alleged that Democrats and Big Tech are colluding](https://www.washingtonpost.com/technology/2023/02/08/house-republicans-twitter-files-collusion/) to enforce policy violation unequally across parties. 

But if you have these ``partisan equality'' stats as part of your ship criteria, perhaps on equal footing with policy violation frequency, you can see how **this could really affect the types of health and safety features that actually make it to the site in production**.

This code was then comically removed via pull requests from Twitter. Because once you delete something on GitHub, it just goes away. Right? 

{{< tweet id="1641960748233662464" user="colin_fraser" >}}

**Twitter Blue Boost** What’s more, we sorta knew that Twitter Blue users get a boost in feed ranking, but the code make it clear that it could double your score among people who don't follow you, and quadruple it for those who do. 

{{< tweet id="1641878347557883910" user="beeonaposy" >}}

As [Jonathan Stray pointed out](https://twitter.com/jonathanstray/status/1642200687101501441), if this counts as a paid promotion, the FTC might require Twitter to label your tweets as ads. Now we kind of already knew this from Musks Twitter Blue announcement, but having evidence in the code might cross a different line for the FTC. 

**So what about the ackshual algorithm? What does this say about feed ranking?**

The code itself is there but it’s missing specifics---key parameters, feature sets, and model weights are absent or abstracted. And obviously the data. 

The most critical thing we learned about Twitter’s ranking algorithm is probably from a readme file that former Facebook Data Scientist [Jeff Allen](https://twitter.com/jeff4llen) found. If we take that at face value, a fav (twitter like) is worth half a retweet. A reply is worth 27 retweets, and a reply with a response from a tweets author is worth a whopping 75 retweets! 

{{< tweet id="1641901988047626241" user="jeff4llen" >}}

Now it’s not quite that simple---what about when a tweet is first posted and there’s no data? Twitter’s deep learning system (in the heavy ranker) will do some heavy lifting and predict the likelihood of each of these actions based on the tweet author, their network, any initial engagements, the tweet text, and thousands of signals and embeddings. 

Of course, what happens in the first few minutes when a tweet is posted deeply shapes who sees and engages with it downstream in the future. 

[And the way this is implemented in practice is that the model handles all cases, but as you get more and more real time data on a tweet, those real time features dominate everything else and push those probabilities close to 1, see [discussion here](https://twitter.com/SolomonMg/status/1642154005588504577?s=20).] 

Now I should point out that there are some spammy accounts claiming to have found ranking parameters in the code. They’re wrong, those are used to [retrieve tweets from your network for candidate generation only](https://github.com/twitter/the-algorithm/blob/7f90d0ca342b928b479b512ec51ac2c3821f5922/src/java/com/twitter/search/README.md). [Lucene](https://lucene.apache.org) is an open source search tool. 

{{< tweet id="1642563414970060800" user="SolomonMg" >}}

I should point out however, that some of the ``Earlybird'' code was at one point used in timeline ranking, and it appears that [it may be used in cr-mixer](https://github.com/twitter/the-algorithm/blob/7f90d0ca342b928b479b512ec51ac2c3821f5922/cr-mixer/server/src/main/scala/com/twitter/cr_mixer/similarity_engine/EarlybirdTensorflowBasedSimilarityEngine.scala), which is used in candidate generation for [out-of-network tweets](https://github.com/twitter/the-algorithm/blob/7f90d0ca342b928b479b512ec51ac2c3821f5922/cr-mixer/README.md).  

Interestingly, [Twitter appears to remove competitor URLs](https://github.com/twitter/the-algorithm/blob/main/home-mixer/server/src/main/scala/com/twitter/home_mixer/functional_component/filter/OutOfNetworkCompetitorURLFilter.scala), perhaps only for tweets that are outside of network (you don't follow the author).

**What else goes into the ``the Algorithm?''**

What gets ranked in the first place? The other piece here is the ``TikTok'' part of the ranking algorithm, which is also incomplete without the models/data/parameters/etc. What I mean is the code that takes content from across the platform and says “I’m going to put this into your queue for the heavy ranker to sort out.” 

Now on Twitter often that historically meant tweets posted by or replied to by accounts you follow. But, Twitter realized it could find a lot more content for that heavy ranker magic. 

There’s a complex system that inserts tweets into your queue for ranking. This is called **candidate generation** in the “recommendation system” subfield of applied computing. 

If you follow a lot of people on twitter like me, about **half** of the candidate tweets in twitter’s ranked “for you” timeline at any given time are from people you follow. 

Now, if you don’t follow a ton of people, or if you have a new account, you can run out of these tweets, and then Twitter will try to find additional candidates so that you have ranked content. If so, means that this system is going to govern what in your home timeline feed like TikTok---gathering content it predicts you’ll like from across the platform.

This takes place in [cr-mixer](https://github.com/twitter/the-algorithm/blob/7f90d0ca342b928b479b512ec51ac2c3821f5922/cr-mixer/README.md), and although some of the [high level function calls are there](https://github.com/twitter/the-algorithm/blob/7f90d0ca342b928b479b512ec51ac2c3821f5922/cr-mixer/server/src/main/scala/com/twitter/cr_mixer/candidate_generation/CandidateSourcesRouter.scala), much of the code and the models appear to be missing, and many files come with this warning at the top: ``This commit does not belong to any branch on this repository, and may belong to a fork outside of the repository.'' 

Twitter seems to have made some of the systems public underlying candidate generation public, including its [SimCluster model](https://github.com/twitter/the-algorithm/tree/7f90d0ca342b928b479b512ec51ac2c3821f5922/src/scala/com/twitter/simclusters_v2).  

BTW, I’d like to give a shout out to [Vicki Boykis](https://twitter.com/vboykis), and [Igor Brigadir](https://twitter.com/igorbrigadir) who are [doing amazing work to map out the codebase](https://github.com/igorbrigadir/awesome-twitter-algo) and unearth exactly what’s missing and what’s not. 

**Trust and Safety**

A lot of the code related to Trust and Safety is missing, presumably to prevent bad actors from learning too much and gaming those systems. However, there do seem to be some specifics about the kinds of things twitter considers borderline or violating that I don’t think were previously public.There are a bunch of safety parameters in the code, some of which are in Twitter’s policy documents, but some are not. 

There are entries like “HighCryptospamScore” that [appear in the code](https://github.com/twitter/the-algorithm/blob/7f90d0ca342b928b479b512ec51ac2c3821f5922/visibilitylib/src/main/scala/com/twitter/visibility/rules/DownrankingRules.scala), which may give scammers hints about how to craft tweets to get around detection systems.  The same is true for [code that contains links](https://github.com/twitter/the-algorithm/blob/7f90d0ca342b928b479b512ec51ac2c3821f5922/visibilitylib/src/main/scala/com/twitter/visibility/models/TweetSafetyLabel.scala#L115) to “UntrustedUrl,” “TweetContainsHatefulConductSlur” for low, medium and high severity. 

There’s also a reference to a “Do Not Amplify” [parameter in the code](https://github.com/twitter/the-algorithm/blob/7f90d0ca342b928b479b512ec51ac2c3821f5922/visibilitylib/src/main/scala/com/twitter/visibility/models/SpaceSafetyLabelType.scala#L26), which was discussed in the twitter files but seems not to be publicly documented in it’s policies. There are entries like “AgathaSpam,” which refers to a propriety embedding used across the codebase. Twitter also has a bunch of visibility rules hardcoded in Scala that might be useful to bad actors trying to game the system, outlining what rules are in play for all tweets, new users, user mentions, liked tweets, realtime spam detection, etc. Finally, some of the consequences for those violations are [spelled out in Scala](https://github.com/twitter/the-algorithm/blob/7f90d0ca342b928b479b512ec51ac2c3821f5922/visibilitylib/src/main/scala/com/twitter/visibility/rules/Action.scala) as well. 

Of course, it's really hard to know with certainly that any of this wasn't in public somehow before this release. 
