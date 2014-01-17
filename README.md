# ChimeraArts.org

The website source code for <http://www.chimeraarts.org>.

If you've found a problem with the site (missing content, typos, etc...), please either fork this repository and send a pull request or [create an issue](/chimera/chimeraarts.org/issues).

The website is built with [Hugo](http://hugo.spf13.com), a static site generator written in Golang.


## Development

First, you're going to want to create a fork of this project on Github. Then, checkout the fork on your local machine. 

To develop using the site, just download the Hugo binary in your platform (Mac, Win, Linux) and run `hugo server --watch --source=./` in this directory. Running that starts up a development server that watches for changes and reloads the site every time a file is changed.

Any changes to the `static`, `content`, and `layouts` directories will automatically be compiled into the `public` dir. 

Site content is found in the `content` directory and is written in Markdown.


## Deployment

In order to deploy to this repository, you'll need commit access. Create an [issue](https://github.com/chimera/chimeraarts.org/issues/) if you want commit access.

### Git Subtree

This project contains a git subtree at `public`, so in order to update the compiled content, you must push your changes to the subtree. To create the subtree, run the following:

```bash
git subtree add --prefix public https://github.com/chimera/chimera.github.io.git master --squash
```

The subtree references the repository that contains the generated content for the site which is used by Github Pages. Pushing changes to that repo will automatically trigger a rebuild of the site.


### Deploying Changes

Making a change in this repo and pushing changes has multiple steps, so we have a convenience utility that does this for you found in `deploy.sh` which you can use like this:

```bash
./deploy.sh 'fixing a typo'
```

... which builds your changes, commits the code and pushes the updates to both github repos. 


## License

Content released under the [Creative Commons Share-Alike 2.5 License](http://creativecommons.org/licenses/by-sa/2.5/).


## Credits

Created by [Dana Woodman](http://danawoodman.com).

Thanks to [Hugo](http://hugo.spf13.com) for making this easy for us.
