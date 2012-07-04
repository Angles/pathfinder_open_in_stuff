# Open in TextWrangler or Sublime for Pathfinder #

__A simple ripoff__ of [pathfinder open in textmate](https://github.com/orta/pathfinder_open_in_textmate) and [pathfinder open in bbedit macvim](https://github.com/danmichaelo/pathfinder_open_in_bbedit_macvim) plugins, using _find and replace_ to make __Open in TextWrangler__ and __Open in Sublime Text 2__ plugins for PathFinder.

Tragically, I realized _find and replace_ required not even 1 line of code be changed manually. So I copied the [pathfinder open in bbedit macvim](https://github.com/danmichaelo/pathfinder_open_in_bbedit_macvim) BBEdit directory twice, once to _find and replace_ `BBEdit` to `TextWrangler`, another for `Sublime`. Why? I do not know.

## Update for change

 _I changed_ ___something___ a little, using `URLs` and `Bundle Ids`. This obligatory code example _should_ have [color](https://github.com/blog/832-rolling-out-the-redcarpet) now:

``` Objective-C
[ws openURLs:URLArray withAppBundleIdentifier:@"com.sublimetext.2" options:NSWorkspaceLaunchAsync 
additionalEventParamDescriptor:nil launchIdentifiers:nil];
```

But, __release this array?__ Forget about it:

``` Objective-C 
NSMutableArray *URLArray = [NSMutableArray arrayWithCapacity:[items count]];
// then some stuff, for example
[URLArray addObject:[item URL]]
```

Since ___no one will see this this hack job___, it doesn't matter.

### Install

Get compiled plugin from [downloads](https://github.com/Angles/pathfinder_open_in_stuff/downloads), and move into `~/Library/Application Support/Path Finder/PlugIns`. _(same basic instructions as for [danmichaelo](https://github.com/danmichaelo) plugins, he knows what he's doing and his plugins work, but I'm a complete noob_).

## Stuff you'll never read

One letter changes are cool.
---------

One letter, cool. In perhaps the [smallest change possible](https://github.com/Angles/pathfinder_open_in_bbedit_macvim/commit/4769350eeffe3c299baebcea049d9ef0f03240a1), I put the letter  `m`  back, to hardcode the shortcut for _Open In MacVim_, using info from [this danmichaelo commit](https://github.com/danmichaelo/pathfinder_open_in_bbedit_macvim/commit/cf77f9f58769e767dc589e4dfe5876c1c258f0cb#macvim/OpenInMacVim.m).

One line, excessive. I made the MacVim plugin open new tabs instead of new windows, by [forking](https://github.com/Angles/pathfinder_open_in_bbedit_macvim) the [pathfinder open in bbedit macvim](https://github.com/danmichaelo/pathfinder_open_in_bbedit_macvim) repo and [adding one line](https://github.com/Angles/pathfinder_open_in_bbedit_macvim/commit/65fe032c439528296356ecce0966c7b2d38ba66c) to the `OpenInMacVim.m` file,

    [args addObject:@"--remote-tab-silent"];

Why, oh why!?
---
To make a repo, pretty much.

Why make "pathfinder open in stuff"?
---------
Do this: [how to create a repo](https://help.github.com/articles/create-a-repo), and this: markdown. Besides ___no one will read this___ anyway. Did I repeat something?

Links:

* [pathfinder open in textmate](https://github.com/orta/pathfinder_open_in_textmate) plugin repo.

* [pathfinder open in bbedit macvim](https://github.com/danmichaelo/pathfinder_open_in_bbedit_macvim) plugin repo.

* [TextWrangler](http://www.barebones.com/products/TextWrangler/).

* [Sublime Text 2](http://www.sublimetext.com/).

* [Path Finder](http://www.cocoatech.com/).

---
___repo, repo, repo___!

