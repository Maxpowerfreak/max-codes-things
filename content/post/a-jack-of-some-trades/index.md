---
title: "A Jack of Some Trades"
description: 
date: 2026-04-16T21:37:21-04:00
image: cover.jpg
math: 
license: 
comments: true
draft: false
build:
    list: always    # Change to "never" to hide the page from the list
---

Today at work, I stayed in a bit later than usual. I've been busy leading a project that I'm quite proud of, but has kept me busy. We're in our last Sprint, and I'm expecting to have completed the rollout by Friday next week.

In this project, I currently have a recently hired dev working under me. His heart is in the right place, he's an alright programmer, and he's got the AI tooling to fill in the gaps. 

... or so I thought.

## A little late

Monday last week, we kicked off our three-week sprint. Of his tasks, he had two smaller carry-over that he was able to close early on the Tuesday. Then, another that I expect the average intermediate would need somewhere between 2-4 days, so I would've expected the task to be either completed the Friday or be ready to merge the Monday of this week.

Instead, we skip to today, where I was on my second pass of his PR review. The work needing more, and the developer finally admitting he was stuck and confused about what's next.

## The blame

Is he to blame, for not raising the flag earlier? That he was stuck or confused? That asking Claude did not fill in the blanks? Perhaps a little bit. 

Mostly, I blame myself. I should've checked in with him more. I need this project to go well.

I could give 10,000 excuses. 

### a few / 10,000 
My mental health, tumbling down a hill the longer I have to deal with copy-pasted AI findings from my colleagues in my PRs, that when questioned about they pull back on as they never spent the time to verify their veracity.

The inane number of tasks I assigned myself this Sprint, the pressure pushing my head under the water. Gasping, my metaphorical lungs stretched thin.

The distractions too many, the SEV1 incident catching my eye. Worried they will point the finger at my department again somehow and we'll be stuck with another few weeks of patching various things that were not on our list of priorities this year.

My dog, having explosive diarrhea in the middle of the night 3 nights in a row.

The rain, four days in with 2 to 3 more to go.

The yearly new budget recruiter spam on LinkedIn, making me picture grasses greener.

My care, my drive, the gasoline being pumped to my motor heart. Fading. Fading. Fading.

## The reality

I simply did not do my job well. That's okay, I'll learn, I'll move forward. I'll pull myself out of the slump and push forward again.

What was the issue? The developer was working in a realm he was unfamiliar with. He's not really a junior, but I'd qualify him as an early intermediate.

The task was to add to our E2E integration test suite after the bulk of our work was completed. This involved introducing two new containers, and gaining an understanding of the part of the code he had never touched. It's also an optional pipeline that we run twice a day and post the output to Slack to catch regressions.

What he told me is that all he's ever done was server-side programming work, nothing else. 

## What were my expectations?

In all the jobs I've had so far in my career, I needed to wear many hats, sometimes many at once. Sometimes I was QA, other times PM, sometimes team/project lead, often times programmer, and other times architect or database analyst and data engineer.

And that's not counting which layers of the code I've come to touch. Pretty much all of them at this point.

The gaps he listed to me were:

 - Never really worked with Docker before.
 - Did not have a good grasp of networking basics (this touched on Docker networking).
 - Had not used the Testify packages before (acceptable, that's details).
 - Never had to interact with a CI pipeline before, no matter the flavour.
 - Could not figure out how to debug our app as he only knew how to do it through Jetbrains.

With all my feelings about AI, I would've expected some of these gaps to be filled by a chatbot. 

But was the breadth of knowledge I expected simply too large our of an intermediate dev? I can't help but second guess myself. 

Have I worked with too many jacks of all trade in my career, even excluding myself, that it has come to taint what I should expect an average developer to know?

In his shoes, I expect the was an anxiety, a guilt perhaps at not being able to do better or more. Though I may be projecting, as that is how I would've felt in his position.

I can't count on that being the case though.

## A reflection

![I'm having a few of these nowadays.](reflection.jpg)

Lately, I've been thinking about my career. I am not yet 30, though that will come early next year, meaning that on the average timeline I have more than the entire length of my lifetime thus far left to work.

That's a depressing thought for sure, and I don't know if I'll make it that far, but I have to assume I will.

A week ago, I was discussing with another colleague about where this career will be in 2, 3, 5, 10 years. This other colleague is in his mid-40s, and much better positioned in life. His house is partially paid off, he's got kids and savings, and experience to fall back and the titles to make any job search easier.

I have to think about if my chosen career will still exist by the time I'm halfway through the rest of it. 

Is being good at many things what I should be doing? Should I be putting all my eggs in one basket and pick something to be a true expert in, and hope I've picked the right one? Or maybe I should switch to the management path? Become a tech or team lead and hope that managing humans will stay longer than managing agents? 

I don't know, and I'm getting too tired to think about it now. It's high time I stop writing this and get some sleep.

I'll need to find the answer eventually, before the world makes the decision for me. Before I become what I fear I'll be, useless to society.

Goodnight.

---

Cover by <a href="https://unsplash.com/@bvp?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">J. Schiemann</a> on <a href="https://unsplash.com/photos/green-pine-trees-on-snow-covered-mountain-under-blue-sky-during-daytime--P7-bUhPzHo?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
      
Second picture is one I took myself, during my trip to Japan. This was taken on a road near Jishi-in Temple, in Kyoto.