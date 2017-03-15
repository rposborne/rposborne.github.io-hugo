+++
description = ""
date = "2015-11-12T09:52:03-04:00"
title = "Historical data from Papertrail logs"
author = ""
tags = ["ruby","paper_trail"]
categories = ["code"]

+++

We use paper_trail quite often, it’s a wonderful gem and generally part of our standard suite for business apps, we primarily use it for audit logging, today we needed to get data out of this history.

There are quite a few ways to do this, from having daily server backups or parsing logs. They all have there quirks, so does this solution.  In this example we want to playback and take a snapshot of our orders table, let’s say value grouped by status.

__ DO NOT USE ON PRODUCTION__

<script src="//gist.github.com/rposborne/70cc6a7d02d28107fd9e.js"></script>
