---
layout: default
title: Home
---

# jekyll-theme-nyx

Nyx is a dark mode based Jekyll theme focused on readability, clean typography, and simple blogging. It is designed to work out-of-the-box as a RubyGem-based theme while still being easy to customize via SCSS.

---

## Installation

Add this line to your Jekyll site’s `Gemfile`:

```ruby
gem "jekyll-theme-nyx"
```

Then install the gem:

```sh
bundle install
```

Next, enable the theme in your _config.yml:

```yml
theme: jekyll-theme-nyx
```

Build or serve your site to verify everything works:

```sh
bundle exec jekyll serve
```

## Usage

This theme follows standard Jekyll conventions.

### Layouts

Nyx provides the following layouts:

- `default` – base layout
- `post` – blog post layout

You can select a layout per page or post:

```yml
layout: post
```

### Styling

All styles are written in SCSS and live under:

```
_sass/nyx/
```

The main entrypoint is:

```
assets/css/nyx.scss
```

If you want to override styles, you can:

- copy partials from `_sass/nyx/` into your own project
- or add custom styles after importing `nyx.scss`

### Includes

Reusable components live in `_includes/`, such as:

- `sidebar.html`

These can be overridden by copying them into your site’s `_includes/` directory.

## Development

To work on the theme locally:

```sh
bundle install
bundle exec jekyll serve
```

This repository includes a dummy Jekyll site for testing theme changes.

Useful tasks:

```sh
rake site    # build the dummy site
rake build   # build the gem
```

Built gems are placed in the pkg/ directory.

## Contributing 

Bug reports and pull requests are welcome on GitHub at https://github.com/Slavetomints/jekyll-theme-nyx. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/Slavetomints/jekyll-theme-nyx/blob/main/CODE_OF_CONDUCT.md). 

## License 

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT). 

## Code of Conduct 

Everyone interacting in the jekyll-theme-nyx project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Slavetomints/jekyll-theme-nyx/blob/main/CODE_OF_CONDUCT.md).