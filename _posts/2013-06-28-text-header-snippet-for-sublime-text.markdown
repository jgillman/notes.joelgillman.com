---
layout: post
tags:
  - shortcut
  - snippet
  - sublime
  - sublime text
  - text
  - webdev
---

I was just playing around with snippets in Sublime Text for the first time (despite being a long time Sublime user). This was just for fun but it's useful and shows off how powerful the snippets can be.

```xml
<snippet>
  <content><![CDATA[##${1/./#/g}#
# ${1:header}
##${1/./#/g}#]]></content>
  <tabTrigger>thead</tabTrigger>
</snippet>
```

Just type `thead` and hit tab and you'll be presented with:

```text
#########
# header
#########
```

Not super special yet, but while `header` is still highlighted try typing in your text header and it auto-magically expands to the right width. I'm sure someone could add to it to make it accept hard returns as well!

```text
#########################
# always one step ahead!
#########################
```

