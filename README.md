# PascalPDX.org

The website source code for <http://www.pascalpdx.org>.

If you've found a problem with the site (missing content, typos, etc...), please either fork this repository and send a pull request or [create an issue](/pascalpdx/pascalpdx.org/issues).

The website is built with [Hugo](http://hugo.spf13.com), a static site generator written in Golang.


## Development

First, you're going to want to create a fork of this project on Github. Then, checkout the fork on your local machine.

To develop using the site, just download the Hugo binary in your platform (Mac, Win, Linux) and run:

    ./preview

...in this directory. Running that starts up a development server that watches for changes and reloads the site every time a file is changed.

Any changes to the `static`, `content`, and `layouts` directories will automatically be compiled into the `public` dir.

Site content is found in the `content` directory and is written in Markdown.


## Deployment

In order to deploy to this repository, you'll need commit access. Create an [issue](https://github.com/pascalpdx/pascalpdx.org/issues/) if you want commit access.


### Deploying Changes

Making a change in this repo and pushing changes has multiple steps, so we have a convenience utility that does this for you found in `deploy.sh` which you can use like this:

    ./publish

... which builds your changes, commits the code and pushes the updates to both github repos.


## License

Content released under the [Creative Commons Share-Alike 2.5 License](http://creativecommons.org/licenses/by-sa/2.5/).


## Credits
Modified for PascalPDX by @lokkju and @bitassassin

Created by [Dana Woodman](http://danawoodman.com).

Thanks to [Hugo](http://hugo.spf13.com) for making this easy for us.
