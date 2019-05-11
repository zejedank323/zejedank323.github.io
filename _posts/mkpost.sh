#!/bin/bash
DATE=`date +%Y-%m-%d`
echo "---
layout: post
author: Dan Kristiansen
tag: 
language: 
title: 
---" > $DATE-$1".md"
vscode $DATE-$1".md"