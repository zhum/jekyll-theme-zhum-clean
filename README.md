# jekyll-theme-zhum-clean

A clean, self-contained technical-blog Jekyll theme — light/dark color modes, an
emerald accent, [Inter](https://rsms.me/inter/) typography, a sticky header with
language switcher, a tag-cloud sidebar, and sortable-table support. The theme
does **not** depend on minima; everything is provided by the gem.

## Installation

Add to your site's `Gemfile`:

```ruby
gem "jekyll-theme-zhum-clean"
```

And in `_config.yml`:

```yaml
theme: jekyll-theme-zhum-clean
```

Then `bundle`.

### Required plugins

The theme's templates use a few Liquid tags, so enable these plugins in
`_config.yml` (they're declared as gem runtime dependencies, so `bundle` pulls
them in):

```yaml
plugins:
  - jekyll-seo-tag                       # {% seo %} meta in the <head>
  - jekyll-feed                          # {% feed_meta %}
  - jekyll-multiple-languages-plugin     # {% t %} translation tags

languages:
  - en
  - ru
```

## Layouts

| Layout    | Use                                                        |
|-----------|------------------------------------------------------------|
| `default` | Base chrome: header (brand, nav, language switcher, dark-mode toggle), tag-cloud sidebar, footer. |
| `home`    | Extends `default`; adds the page heading and an optional post list. |

## Includes

| Include              | Purpose                                                       |
|----------------------|---------------------------------------------------------------|
| `head.html`          | `<head>`: theme-color, fonts, Font Awesome, no-flash dark-mode bootstrap, stylesheet link. |
| `tag_cloud.html`     | Tag chips with counts, built from page front-matter `tags`.   |
| `tag_index.html`     | Full tag index (for a Tags page).                             |
| `table_sorter.js`    | Loads jQuery + [tablesorter](https://mottie.github.io/tablesorter/) and initializes `$("table")`. Include it on any page with a sortable table. |
| `anime_resume.html`  | Renders the `anime_resume` collection (site-specific helper). |

## Styling

`assets/css/style.scss` holds the full theme. Design tokens live in `:root`
(and `:root[data-theme="dark"]`) as CSS custom properties — override them in
your own stylesheet to re-skin without forking:

```css
:root { --accent: #2563eb; --content-width: 1100px; }
```

Sortable-table sort indicators (▲ / ▼ / faint ↕) and a dark-mode toggle are
included.

## Dark mode

The toggle button (`#theme-toggle`) flips `data-theme` on `<html>` and persists
the choice to `localStorage`; the initial value respects
`prefers-color-scheme`. No configuration needed.

## Development

This directory is set up like a Jekyll site. Run `bundle install`, then
`bundle exec jekyll serve` and open <http://localhost:4000>.

When released, only the Git-tracked files in `_layouts`, `_includes`, `_sass`
and `assets` (plus `LICENSE`/`README`/`_config.yml`) are bundled into the gem —
see the regexp in `jekyll-theme-zhum-clean.gemspec`.

## License

[MIT](https://opensource.org/licenses/MIT).
