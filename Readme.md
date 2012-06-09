# Open in TextWrangler or Sublime for Pathfinder #

__A simple ripoff__ of [pathfinder open in textmate](https://github.com/orta/pathfinder_open_in_textmate) and [pathfinder open in bbedit macvim](https://github.com/danmichaelo/pathfinder_open_in_bbedit_macvim) plugins, using _find and replace_ to make __Open in TextWrangler__ and __Open in Sublime Text 2__ plugins for PathFinder.

Why?
---
To make a repo, pretty much. Previously, I made the MacVim plugin open new tabs instead of new windows, by [forking](https://github.com/Angles/pathfinder_open_in_bbedit_macvim) the [pathfinder open in bbedit macvim](https://github.com/danmichaelo/pathfinder_open_in_bbedit_macvim) repo and [adding one line](https://github.com/Angles/pathfinder_open_in_bbedit_macvim/commit/65fe032c439528296356ecce0966c7b2d38ba66c) to the `OpenInMacVim.m` file,

    [args addObject:@"--remote-tab-silent"];

And, in perhaps the [smallest change possible](https://github.com/Angles/pathfinder_open_in_bbedit_macvim/commit/4769350eeffe3c299baebcea049d9ef0f03240a1), I put the letter  `m`  back, to hardcode the shortcut for _Open In MacVim_, using info from [this danmichaelo commit](https://github.com/danmichaelo/pathfinder_open_in_bbedit_macvim/commit/cf77f9f58769e767dc589e4dfe5876c1c258f0cb#macvim/OpenInMacVim.m).

### That was cool.

Then, tragically, I realized _find and replace_ required not even 1 line of code be changed. So I copied the [pathfinder open in bbedit macvim](https://github.com/danmichaelo/pathfinder_open_in_bbedit_macvim) BBEdit directory twice, once to _find and replace_ `BBEdit` to `TextWrangler`, another for `Sublime`. Why? I do not know.

Really, these two plugins belong in either [_my fork_](https://github.com/Angles/pathfinder_open_in_bbedit_macvim) of [pathfinder open in bbedit macvim](https://github.com/danmichaelo/pathfinder_open_in_bbedit_macvim), or no where. (There is no code here, yet).

So why make this repo "pathfinder open in stuff"?
---------
Learn [how to create a repo](https://help.github.com/articles/create-a-repo). Learn markdown. Besides ___no one will read this___ anyway.

The links:

* [pathfinder open in textmate](https://github.com/orta/pathfinder_open_in_textmate) plugin repo.

* [pathfinder open in bbedit macvim](https://github.com/danmichaelo/pathfinder_open_in_bbedit_macvim) plugin repo.

* [TextWrangler](http://www.barebones.com/products/TextWrangler/).

* [Sublime Text 2](http://www.sublimetext.com/).

* [Path Finder](http://www.cocoatech.com/).

---
___repo, repo, repo___!

