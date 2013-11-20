---
layout: post
title: "&amp;nbsp; What Non-Breaking Spaces Are&nbsp;For"
tags:
  - html
  - responsive
  - markup
---

As a web developer I've always been familiar with non-breaking spaces or
`&nbsp;`. I'm most familiar with them from CMSs that blindly take in a user's
content and spit it back out with awful markup and littered with `&nbsp;`
everywhere. You sometimes also see them used several in succession to indent a
line of content as below.

```html
&nbsp;&nbsp;&nbsp;&nbsp;This is not how you should intent something.
```

Turns out that there is actually a legitimately powerful use. I was looking at
[Automattic's site](http://automattic.com) and found myself viewing their
source. Right in their `h1` I saw `&nbsp;` used not once but TWICE!

```html
<h1>We are passionate about making <em>the&nbsp;web</em> a better&nbsp;place.</h1>
```

"What a bunch of *newbs*," the kneejerk part of my brain said. But Automattic
is full of a lot of smart people so I knew there was no way they could have
done that accidentally.

Upon opening up the web dev tools on the right (where it should be) the
responsive CSS kicked in and the header wrapped onto another line. The `&nbsp;`
prevented "else." from getting widowed on the end! By using the `&nbsp;`
"something" and "else." are treated as one continuous word and will always wrap
together.

Naturally, if you look up [documentation about non-breaking
spaces](http://www.w3.org/TR/1999/REC-html401-19991224/struct/text.html#h-9.3.2.2)
you will find that is clearly states that is what will happen. Now go use that
handy element appropriately!

