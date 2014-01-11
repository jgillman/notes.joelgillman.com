---
layout: post
title: "Make Small Commits"
description: ""
category: ""
tags: [git]
---

As a general rule of thumb, when you write code you want to keep it modular,
bite-sized, and easy to read. The end product is more methods that are smaller
in size. Each method then encapsulates a single action or idea that can be
easily understood.

The same idea should be applied to your commits.

Do not open a feature branch, do several hours of work, then commit one giant
commit. Doing so is a great way to make messy merge commits and potentially
blow away a lot of work (either yours or your coworkers).

{% image post {{page.path|filename}}/big-commits.png %}

_I swear this is a real commit. Name and avatar changed to protect the semi-innocent._

Make small commits that contain changes that make sense to go together. This
makes commit logs more digestible and helps you think of your changes not as
one giant change, but as a series of smaller changes towards a larger goal. It
also makes hunting down bugs way easier when you can track it to a single
commit. Digging through a massive commit with hundreds of changes is annoying
and difficult.

## Workflow Tools

I often have more than one commit's worth of work unstaged. Here's a few tools
that can help you visualize your working changes and commit smaller.

### Tig

Personally, I really love jonas's [tig](http://jonas.nitro.dk/tig/).
Specifically I use`tig status` to go through my changes, stage the parts that
make sense together, and commit only those.

### Git add -i

Git has a built-in "interactive add" mode: `git add --interactive` or `git add
-i` for short. The [git-add man
page](https://www.kernel.org/pub/software/scm/git/docs/git-add.html#_interactive_mode)
has more info on how to use that.

### Others

[Many other Git GUI](http://git-scm.com/downloads/guis) will let you achieve the same goal.

  [1]: https://lh5.googleusercontent.com/-SDFArjTvFyo/UtA3_cUr4iI/AAAAAAAAAGs/VBv3gf_1-sg/s0/big-commits.png
