---
layout: post
title: "A checklist for programming languages"
---

This post is inspired by [@Charlotteis' tweet](https://twitter.com/Charlotteis/status/724172097115815936).
It sounds like a pretty good idea to just write some things down that help
you climb along the (imaginary) language learning ladder. This should work for
every language out there. Except for maybe Brainfuck. Also, this is purely from
my perspective, so yours may differ by a bit. Still, I hope you can learn
something from this.

<h3>Get a feel for the syntax</h3>

This is probably the most important step and nothing after this will work if
you haven't done this correctly. You want to get to know the syntax of the
language. This can be easier if it's a language that has a syntax close to one
you already know, for example, many languages share syntax that comes from C.
I frequently use [learnxinyminutes](http://learnxinyminutes.com) for this. It
provides short tours of a language's syntax and primary features and it really
helps. It's a terrible way to learn a language whole, but it's really useful for
only the syntax.

<h3>Learn basic data operations</h3>

This means things like mapping over an array, learning the different data
structures there are (if a language has vectors, arrays, lists - learn them all!),
stuff you will need on a daily basis when working with that language. This saves
you a lot of time later on, as you don't have to google for 'how to create
array in x'.

<h3>Learn the basics of the standard library</h3>

__This is very important!__ It's essential to learn the basics of your language's
standard library as it can help you A LOT later on when you ask yourself
'how do I do this thing?' and there's a function for that in the standard library.
Take for example Rust. I've gotten the hang of it and wanted to jump right into
developing something with it. However, I was stumped by how little I understood
the standard library because I didn't bother to learn the basics of it before.
Of course, sometimes the standard library is way too big to learn all of, so just
focus on the basics. A couple of String methods here, some dynamic memory
allocation there, and so on.

This should also cover things like debugging, which, at its simplest form, is
just printing out to the console or some other output.

<h3>Write a small project</h3>

With all that you've gathered, you can now start a small project to help you
gain the practical knowledge that you need in order to advance on the path of
mastery. For me, this is usually a website or some kind of command-line tool,
but it can be anything, really! This is also a good opportunity to check out
your language's library ecosystem and get familiar with i.e. a web framework.

While doing this, be sure to implement tests for your project. Testing is very
important for a good and stable project and a healthy workflow, so take a look
at some testing frameworks (some languages come with one preinstalled), and
learn how to use one. Don't worry, most times it's just asserting equality,
which is equivalent to `thing == other_thing`.

<h3>Where to go from here</h3>

From this point on, I'd recommend that you just collect some ideas, see how you
can implement them in your language. Maybe an API that gives you a random hip
phrase? Maybe a GUI that helps you organize shopping lists? The world awaits
your contribution!
