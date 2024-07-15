# sains-revealjs

Revealjs slide powered by Jekyll framework, enable you to serve your slide based on Sains themes.

The slide theme also included with official [reveal.js](https://revealjs.com/) themes.

Slide is based on markdown.

# Requirements

- Ruby 3.0 and above

# Uses

1. clone this repositories

    `git clone git@github.com:wslerry/sains-revealjs.git`

2. `cd sains-revealjs`
3. `bundle install`
4. `bundle exec jekyll serve`
5. Start editing your slide contents

    > 💡 **NOTE** :  edit in `_slides` folder only!

6. use `-next-` for *next* slide, or `-down-` for *sub-slide*

## Markdown Syntax

Kindly refer to this [link](https://www.markdownguide.org/basic-syntax/) for basic syntax of markdown.

| Markdown                 | HTML                        | Rendered Output |
| ------------------------ | --------------------------- | --------------- |
| `# Heading level 1`      | `<h1>Heading level 1</h1>`  | Heading level 1 |
| `## Heading level 2`     | `<h2>Heading level 2</h2>`  | Heading level 2 |
| `### Heading level 3`    | `<h3>Heading level 3</h3>`  | Heading level 3 |
| `#### Heading level 4`   | `<h4>Heading level  4</h4>` | Heading level 4 |
| `##### Heading level 5`  | `<h5>Heading level 5</h5>`  | Heading level 5 |
| `###### Heading level 6` | `<h6>Heading level 6</h6>`  | Heading level 6 |

Markdown applications don’t agree on how to handle a missing space between the number signs (`#`) and the heading name. For compatibility, always put a space between the number signs and the heading name.

| ✅ Do this                              | ❌ Don't do this                       |
| -------------------------------------- | ------------------------------------- |
| `          # Here's a Heading        ` | `          #Here's a Heading        ` |

You should also put blank lines before and after a heading for compatibility.

| ✅ Do this                                                    | ❌ Don't do this                                              |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `        Try to put a blank line before...         # Heading         ...and after a heading.        ` | `        Without blank lines, this might not look right.        # Heading        Don't do this!        ` |


To bold text, add two asterisks or underscores before and after a  word or phrase. To bold the middle of a word for emphasis, add two  asterisks without spaces around the letters.

| Markdown                     | HTML                                      | Rendered Output            |
| ---------------------------- | ----------------------------------------- | -------------------------- |
| `I just love **bold text**.` | `I just love <strong>bold text</strong>.` | I just love **bold text**. |
| `I just love __bold text__.` | `I just love <strong>bold text</strong>.` | I just love **bold text**. |
| `Love**is**bold`             | `Love<strong>is</strong>bold`             | Love**is**bold             |

To italicize text, add one asterisk or underscore before and after a  word or phrase. To italicize the middle of a word for emphasis, add one  asterisk without spaces around the letters.

| Markdown                               | HTML                                          | Rendered Output                      |
| -------------------------------------- | --------------------------------------------- | ------------------------------------ |
| `Italicized text is the *cat's meow*.` | `Italicized text is the <em>cat's meow</em>.` | Italicized text is the *cat’s meow*. |
| `Italicized text is the _cat's meow_.` | `Italicized text is the <em>cat's meow</em>.` | Italicized text is the *cat’s meow*. |
| `A*cat*meow`                           | `A<em>cat</em>meow`                           | A*cat*meow                           |

## Blockquotes

To create a blockquote, add a `>` in front of a paragraph.

```
> Dorothy followed her through many of the beautiful rooms in her castle.
```

The rendered output looks like this:

> Dorothy followed her through many of the beautiful rooms in her castle.

### Blockquotes with Multiple Paragraphs

Blockquotes can contain multiple paragraphs. Add a `>` on the blank lines between the paragraphs.

```
> Dorothy followed her through many of the beautiful rooms in her castle.
>
> The Witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood.
```

The rendered output looks like this:

> Dorothy followed her through many of the beautiful rooms in her castle.
>
> The Witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood.

### Nested Blockquotes

Blockquotes can be nested. Add a `>>` in front of the paragraph you want to nest.

```
> Dorothy followed her through many of the beautiful rooms in her castle.
>
>> The Witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood.
```

The rendered output looks like this:

> Dorothy followed her through many of the beautiful rooms in her castle.
>
> > The Witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood.

### Blockquotes with Other Elements

Blockquotes can contain other Markdown formatted elements. Not all  elements can be used — you’ll need to experiment to see which ones work.

```
> #### The quarterly results look great!
>
> - Revenue was off the chart.
> - Profits were higher than ever.
>
>  *Everything* is going according to **plan**.
```

The rendered output looks like this:

> #### The quarterly results look great!
>
> - Revenue was off the chart.
> - Profits were higher than ever.
>
> *Everything* is going according to **plan**.

## $\LaTeX$ Support

Latex sytax such as `$\LaTeX$` will give an output $\LaTeX$. Single `$` means no new line, while double `$$` will produce new line such as `$$ J(\theta_0,\theta_1) = \sum_{i=0} $$` and will produce $$ J(\theta_0,\theta_1) = \sum_{i=0} $$ .

Another \LaTeX example such as:
```
`\[\begin{aligned}
\dot{x} &amp; = \sigma(y-x) \\
\dot{y} &amp; = \rho x - y - xz \\
\dot{z} &amp; = -\beta z + xy
\end{aligned} \]`
```

## Slide example

Make sure to create a new file such as `myslide.html`, even though the file format is in `html` you need to use Markdown syntax for the rest of your slide contents.

example:

````markdown
---
layout: slide
thumbnail: thumb_reveal.jpg
title: Sains Theme for Reveal.js
description: >-
    Reveal.js sains theme powered by Jekyll
theme: sains
highlight: monokai
---
# Section 1

This is section 1.

Lorem ipsum dolor sit amet, consectetur adipiscing elit.

-down-

## 1.1 Subsection 1

```python
# Define the class
class Testing123():
    def __init__(self, var1, var2):
        self.var1 = var1
        self.var2 = var2
```

-down-

`$\LaTeX$` can be render in markdown slide by using command as:
```
`$$ J(\theta_0,\theta_1) = \sum_{i=0} $$`
```
and will produce
`$$ J(\theta_0,\theta_1) = \sum_{i=0} $$`

-down-

Another \LaTeX
`\[\begin{aligned}
\dot{x} &amp; = \sigma(y-x) \\
\dot{y} &amp; = \rho x - y - xz \\
\dot{z} &amp; = -\beta z + xy
\end{aligned} \]`

-next-

# Section 2

Try items without elements:
- Item A 
- Item B
- Item C

-down-

## Subsection 2.1

Try items with elements:
- Item A <!-- .element: class="fragment" data-fragment-index="1" -->
- Item B <!-- .element: class="fragment" data-fragment-index="2" -->
- Item C <!-- .element: class="fragment" data-fragment-index="3" -->

-next-

# Section 3

Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
Duis eu purus non ipsum venenatis viverra ac id enim. 
Maecenas pulvinar eleifend lacus, nec rutrum ipsum.

-down-

## Subsection 3.1

Lorem ipsum dolor sit amet, consectetur adipiscing elit. 

-down-

## Subsection 3.2

![Sample image](https://s3.amazonaws.com/static.slid.es/logo/v2/slides-symbol-512x512.png)

-next-

# Section 4

Lorem ipsum dolor sit amet, 
consectetur adipiscing elit.

-next-

# Section 5

This is section 5...

-down-

<!-- 
    .slide: 
        data-background-iframe="https://www.dailymail.co.uk/home/index.html"
        data-background-interactive
-->

-next-

## TESTING 123
ayam masak kicap

-next-

## TESTING 123
- point 2
- point 3
- point 4

-next-

# Slide 2
Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
````

# Themes

- beige
- black-contrast
- black
- blood
- dracula
- league
- moon
- night
- sains-anime
- sains-gradient
- sains
- serif
- simple
- sky
- solarized
- white_contrast_compact_verbatim_headers
- white-contrast
- white

# Configurations

Edit `your_slide.html` *YAML* front matters, such as:

```yaml
---
layout: slide
thumbnail: thumb_reveal.jpg
title: Sains Theme for Reveal.js
description: >-
    Reveal.js sains theme powered by Jekyll
theme: sains
highlight: monokai
---
```

`layout` means this slide will refer to slide layout to produce web page, `thumbnail` is an image in `assets/thumbnails` folder that you can use as a slide thumbnail in a front page, `title` is a slide’s main title, `description` is for slide’s description and this is optional variable, `theme` is slide’s theme name (refer to available themes listed above), and `highlight` is for script/code snipped highlight theme.

