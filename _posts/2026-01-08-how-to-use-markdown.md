---
title: How to Use Markdown
author: Slavetomints
date: 2026-01-08
categories: [Guides]
tags: [guide, markdown]
description: How to get started with Markdown
---

## Headings

There are 6 levels of headers, in order to make one, you add a `#` in front of the word, like this:

```md
## example
```

And it looks like this:

## example

The more `#`'s you add, the higher the level is. Only one `#` is equivalent to a `<h1>` in HTML. 4 `#`'s is equivalent to a `<h4>`.

```md
# Header 1
## Header 2
### Header 3
#### Header 4
##### Header 5
###### Header 6
```

# Header 1
## Header 2
### Header 3
#### Header 4
##### Header 5
###### Header 6

## Paragraphs


To have regular text, just start typing! you don't need anything special.

```md
To have regular text, just start typing! you don't need anything special.
```

## Italics / Bold / Underline / Etc

### Italics

*Put the text you want to be italicized between two asterisks*

```md
*Put the text you want to be italicized between two asterisks*
```

### Bold

**Put the text you want to be bolded between asterisks, with two on each side**

```md
**Put the text you want to be bolded between asterisks, with two on each side**
```

### Strikethrough

~~Put the text you want to be struck through between tildes, with two on each side~~

```md
~~Put the text you want to be struck through between tildes, with two on each side~~
```

## Blockquotes

> To type a block quote, just put a `>` in front of what you are typing similar to how you type a header. 
> > You can have multiple layers of block quotes by stacking `>`'s

```
> To type a block quote, just put a `>` in front of what you are typing similar to how you type a header. 
> > You can have multiple layers of block quotes by stacking `>`'s
```

## Lists

### Ordered Lists

For an ordered list, just put numbers in front of the list items as such:

1. One
2. Two
3. Three
4. Four

```md
1. One
2. Two
3. Three
4. Four
```

### Unordered Lists

An unordered list is the same idea as the ordered list, just replace the numbers with dashes (`-`).

- One
- Two
- Three
- Four

```md
- One
- Two
- Three
- Four
```

## Multi-Layer Lists

To add subitems to a list, simply indent the next entry

- One
  - Subitem
- Two
- Three
- Four

```md
- One
  - Subitem
- Two
- Three
- Four
```

## Code snippets

For `inline code`, simply surround the section you want with backticks.

```md
For `inline code`, simply surround the section you want with backticks.
```

For a code block, put three backticks on separate lines before and after the code.

```
Hi! This is a code block!
It looks pretty neat!
```
<br>
```md
`​`​`
Hi! This is a code block!
It looks pretty neat!
`​`​`
```

## Links

Links can be included as such:

```md
[text that you see](hxxps://linkhere)
```

[text that you see](https://nyx.slavetomints.com/posts/how-to-use-markdown#links)


## Images

If you want to include an image, see the following syntax:

```md
![Image alt text](/path/to/image.jpg)
```

![Image alt text](/assets/img/white-logo.svg)

## Horizontal Rules

If you want to break up some content, all you have to do is put three dashes side by side on their own line as such:

```md
---
```

---
