
# Vim For Everyone

A presentation for Vim Editor. It introduces Vim modes, shows basic navigation
controls, how to combine actions in normal mode and explains some basic
automation/repition tools.

Have a look at [my vim configuration](https://github.com/unused/.vim/) in case
you wanna figure out configuration and plugins I recommend.

## Summary of Commands Used

- `h`, `j`, `k`, `l` ... **left**, **down**, **up**, **right**, use instead
  of arrow keys

- `0` ... **beginning** of line
- `^` ... **start** of text
- `$` ... **end** of line

- `w` ... move one **w**ord
- `e` ... move to the **e**nd of a word
- `b` ... move **b**ack a word
- `x` ... **cross out**, delete character under cursor

- `f<char>` ... **f**ind character, in current line
- `F<char>` ... **f**ind character backwards
- `t<char>` ... find **t**o character, like find but stop before
- `T<char>` ... find **t**o backwards
- `r<char>` ... **r**eplace character with some other char

- `g` ... **g**o, e.g. `23g` go to line 23
- `gg` ... start of file
- `G` ... end of file

- `i` ... switch to **i**nsert mode
- `a` ... switch to insert mode, **a**ppend
- `I` ... **i**nsert at beginning of line
- `A` ... **a**ppend at the end of line
- `o` ... add new line and insert
- `O` ... add new line before current and insert

- `v` ... switch to visual mode
- `V` ... switch to visual line mode
- `<Ctrl+v>` ... switch to visual block mode

- `d` ... **d**elete, combine with navigation, like `dw`
- `D` ... **d**elete until end of line
- `dd` ... **d**elete line
- `c` ... **c**hange, delete, then switch to insert
- `C` ... **c**hange until end of line
- `cc` ... **c**hange line

- `.` ... repeat action
- `;` ... repeat find
- `q<char>` ... record automation
- `@<char>` ... run automation

- `/` ... switch to search
- `n` ... **n**ext search result

- `:quit`, `:q`, `ZZ` ... quit
- `:quit!`, `:q!` ... quit ignore unsaved changes
- `:write <filename>`, `:w <filename>` ... write to file
- `:write`, `:w` ... write changes
- `:edit <filename>`, `:e <filename>` ... edit (open) file

## Build Slides

In order to build the slides you need to setup some (pdf)latex environment
and install [pandoc](https://pandoc.org/).

```sh
$ make presentation # build presentation, slides.pdf
$ make watch # build on change
$ make clean # remove slides
```
