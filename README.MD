# hugo-docker

This is a simple image that I made to developer and maintain my own blog using [hugo](https://gohugo.io/). You can install and use in your machine but I had a lot of things instaled so I prefer to use a docker image. In the imahe also has a git and make file to simplify miy life.

## Pull the image 

`docker pull krismorte/hugo-docker`

## How to use

This is the way that I use. In the repository from my hugo blog I ran the follow command

`docker run -it --rm -p 1313:1313 -v $PWD:/src krismorte/hugo-docker`

I can use vscode to edit my blog and add new posts and after that I use the container to generete the pages

`#\scr hugo`

or to see the preview

`#\scr hugo server`