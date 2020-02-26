---
layout: post
author: Dan Kristiansen
tag: aau
lang: en
lang-ref: summaries
title: Autonomous News Extraction and Summarization
---

There exist summarization programs, which can create a single summary from a single article without user input. These can reduce the amount of text the user has to read while maintaining the key points. However, the user still needs to read multiple summaries, to understand all aspects of the event.

<h4>Document Extraction:</h4>
I used and implemented a docker library called Boilerpipe, which is a tool to remove Boilerplate from newsarticles extracted from the web. Such that, the extractor would only extract the content of the article, and hence, remove the boilerplate from the extracted text. 
When the textual content has been extracted from the webpage, it is stored in the database.  However, we only want one version of each article in the database since it otherwise may bias the clustering and multi-document summarization. We implemented a Near duplicate detection, such that, in the case of minor corrections we want to detect that two articles is the same article, and only keep the newer version.


<h4>Clustering</h4>
The clustering approach is a density-based clustering that uses Locality Sensitive Hashing to map the feature vectors of the documents into a lower-dimensional space, and then stores this in prefix trees, which allows for fast nearest neighbour finding. 

<h4>Summarization</h4>
<img src = "/images/sen_sim.png" class = "img-fluid">
The picture above depict the similarity between 10 sentences. To the left is the similarity sentence matrix, and to the right is the graph representation of the similarity with more the pronounced edges indicating higher similarity.


<h4>Architecture</h4>
The application is a full stack application implemented with docker and Gitlab CI.
<img src = "/images/Architecture_diagram.png" class = "img-fluid">