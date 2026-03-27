# max-codes-things
Repository for my static site, https://maxcodesthings.com

Hosted on Cloudflare Pages. 

## Stack
 * Go 1.24 (to match Cloudflare Build System Version 3).
 * [Hugo 0.158.0+extended](https://github.com/gohugoio/hugo).
 * [hugo-theme-stack theme](https://github.com/CaiJimmy/hugo-theme-stack) v4.
 * Nix + direnv for reproducible dev setup.

## Common commands

 * `hugo mod tidy` - sets up the hugo-theme-stack dependency.
 * `hugo server` - starts up the local development server.
 * `hugo server -D` - same as above, but renders the draft posts.
 * `hugo new post/{post-name}/index.md` - creates a new post 
 * `hugo new category/{category-name}/_index.md` - creates a new category, useful if I want to include a description vs auto generated ones.

 ### On Hugo Version
On Cloudflare Pages, I need to set the Hugo Version as an environment variable.

Without sharing any direct links, here is how I was able to find this page most recently.

1. Under `Build` in the sidebar, expand the `Compute` group.
1. Choose `Workers and Pages`.
1. From there, choose my page under the right name.
1. In the top bar, go to `Settings`
1. From that section's sidebar, go to `Variables and Secrets`
1. Under `Variables and Secrets`...
1. Modify or create a plaintext variable with name `HUGO_VERSION` and value `extended_{hugo version}`
1. At the time of writing this, this would be `extended_0.158.0`.

`extended_` is required for SCSS support, which this theme requires