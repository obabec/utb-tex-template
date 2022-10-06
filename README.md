# utb-tex-template
Template for theses at Thomas Bata University

## Usage
In the begining of the `utb_template.tex` you can see couple of custom properties, you should change all these to correct values.
Once all properties are set to correct values you can set name of your project in `Makefile` (your .tex name has to be the same as PROJECT variable in makefile)

## Build
Makefile allows 2 ways how to complete the project.
First option is just `make all` which compiles the project and generates pdf file.
Second is `make pack` that basically takes all the sources and compress them to zip file that can be moved to another machine.
For the pack you can set name of the archive in Makefile.

## Language selection
In general template can be used for both czech and english with relitelively low amount of modiifactions needed.
In order to change language from czech to english follow these steps:
1. Change babel to english
2. Change `bibstylename` property to `enplain`
3. Change `refname` property to corresponding english word such as References



## Vlna
I strongly suggest to use some "vlna" script that is able to add all concrete spaces for your document such as [Martykans vlna](https://martykan.github.io/vlna-js/) or other.
