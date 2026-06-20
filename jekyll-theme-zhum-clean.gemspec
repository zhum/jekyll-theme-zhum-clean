# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-zhum-clean"
  spec.version       = "0.1.0"
  spec.authors       = ["Sergey Zhumatiy"]
  spec.email         = ["sergzhum@gmail.com"]

  spec.summary       = "A clean, self-contained technical-blog Jekyll theme with light/dark modes, an emerald accent, Inter typography, a tag cloud sidebar and bilingual (i18n) chrome."
  spec.homepage      = "https://github.com/zhum/jekyll-theme-zhum-clean"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.required_ruby_version = ">= 2.5.0"

  spec.add_runtime_dependency "jekyll", ">= 3.9", "< 5.0"
  # Liquid tags used by the theme templates:
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.0"   # {% seo %} in _includes/head.html
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"      # {% feed_meta %} in _includes/head.html
  # {% t %} translation tags in the layouts/includes:
  spec.add_runtime_dependency "jekyll-multiple-languages-plugin", "~> 1.7"

  spec.add_development_dependency "bundler", ">= 1.16"
  spec.add_development_dependency "rake", ">= 12.0"
end
