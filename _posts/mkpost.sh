#!/bin/bash
DATE=`date +%Y-%m-%d`
echo "---
layout: post
author: Dan Kristiansen
tag: 
lang: en
lang-ref: $1
title: 
---" > $DATE-$1".md"

code $DATE-$1".md"


echo "---
layout: post
author: Dan Kristiansen
tag: 
lang: da-DK
lang-ref: $1
title: 
---" > $DATE-$1"DK.md"

code $DATE-$1"DK.md"
