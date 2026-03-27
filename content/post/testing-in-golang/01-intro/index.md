---
title: "Testing in Golang - An Introduction"
slug: testing-in-golang-01
description: An introduction to my approach of testing a Golang application.
date: 2024-10-23T21:13:36-04:00
image: cover.jpg
math: 
license:
hidden: false
comments: true
draft: false
categories: [Testing in Golang, programming]
tags: [golang, testing, tutorial]
---
I've been thinking of writing this series of articles for a while now, without ever fully committing. This being my first written post ever written ([Hello, World!]({{< ref "/post/hello-world" >}}) really doesn't count), it took me some time to get over the hurdle of feeling enough confidence to put my thoughts out there on the www.

A whole year, yikes!

This will be a series of posts where I will go over my thoughts on how to approach testing in Golang. This is meant both to inform, and to allow me to put my jumbled thoughts on the concept into the written word to hopefully clear up my own understanding of testing.

## Some history...

In my experience writing code nowadays, around half of what I write relates to testing. I've had the chance of working on some greenfield projects with top of the line tests written by Go veterans, but part of my current work involves developing against a monolithic app initially started back in... 2016? The original devs were not necessarily experts, and a lot of the standards we are used to nowadays weren't established back then. So it's understandable that the way the application is architected and the test coverage tend to not be up to more recent standards.

One of the greatest challenges we face in testing that legacy codebase is that the code was not initially written with dependency injection in mind, making it very hard to create unit tests that don't need a bunch of setup for dependencies. In a way, we end up with very little unit tests and mostly some freaky unit-integration test hybrid that takes a while to run and is horrible to write and to maintain --  something straight out of a [Cronenburg](https://en.wikipedia.org/wiki/David_Cronenberg) work.

Given the growing size of the application, various dev teams and the sheer number of initiatives spawning from thin air, some of the parts of the monolith have started to split out into their own self-contained services. This includes the one I'm working on, and is in fact my current project. 

This has given me a lot of time to think about just how _I_ believe the application should be architected. This, combined with some code coverage metrics needing to be increased across the organization, has forced me to really think about how to best transfer existing tests and increase them in a logical manner.

## What to expect
Here's a few topics I want to go over in this series.

### Writing code that wants to be tested
Tests, particularly unit tests, are difficult to write if the code is not built with them in mind.

When code is built with a few key ideas in mind, there won't be a need for complex generated mocks. Spoiler: it's dependency injection all the way down!

Also, I'll briefly touch on how to tackle modifying an existing codebase to start introducing the appropriate patterns without requiring heavy refactoring right away. This idea is primarily built around the concept of creating "seams" without your code base. Martin Fowler has a great article about it [here](https://martinfowler.com/bliki/LegacySeam.html), and he does a better job explaining it than I ever could so you may just want to read that instead.

### The types of automated tests and their boundaries

I will primarily discuss unit and integration tests. What's the difference between them, and why they both have their place.

I may also decide to write about smoke tests and performance tests as an opportunity to learn more about these approaches myself.

### Maybe more!

Off the top of my head, some more ideas:
* Nifty testing-related packages you might want to add to your projects
* Code-coverage tooling
* Why you may or may not want to leverage AI for writing your tests
* An a-to-z example of writing tests for a small HTTP API


## Closing note
Putting your writing out to the world is scary, and has a way of making you doubt your professional knowledge and your literary skills both. I don't consider myself an expert in the field (or any field for that matter), and English is not my first language. I hope that, in a way, it might make my writing a bit more approachable to some. 

> Cover Photo by <a href="https://unsplash.com/@nci?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">National Cancer Institute</a> on <a href="https://unsplash.com/photos/man-reading-papers-in-front-of-computer-pCqzMe04s8g?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>
   