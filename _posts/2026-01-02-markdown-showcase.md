---
title: Markdown Showcase
author: Slavetomints
date: 2026-01-02
categories: [Demos]
tags: [demo, markdown]
description: Showcase of the how markdown looks on this site
---

## Headers

# Header 1

## Header 2

### Header 3

#### Header 4

##### Header 5

###### Header 6

## Text

Basic Text

*Italicized Text*

**Bolded Text**

***Italicized and Bolded Text***

### Paragraphs

Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.

Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.

Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.

## Blockquotes

> Blockquotes look like this!

or

> If they span multiple lines, 
> 
> they can look like this!

and

> You can also have
> > Nested blockquotes!

## Lists

### Ordered List

1. First
2. Second
  - Subitem
3. Third
4. Fourth
5. Fifth

### Unordered List

- First
- Second
  - Subitem
- Third
- Fourth
- Fifth

## Code Blocks

```
This is a code block
```

<br>

```rb
class Person
  attr_reader :name, :age
  def initialize(name, age)
    @name, @age = name, age
  end
  def <=>(person) # the comparison operator for sorting
    @age <=> person.age
  end
  def to_s
    "#{@name} (#{@age})"
  end
end

group = [
  Person.new("Bob", 33),
  Person.new("Chris", 16),
  Person.new("Ash", 23)
]

puts group.sort.reverse
```

## Images

![Nyx Logo](/assets/img/black-logo.svg)

## Links

[GitHub for this project](https://github.com/Slavetomints/jekyll-theme-nyx)

## Line Break

Before 

---

After