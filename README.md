# An Insider’s Guide on How to Survive and Thrive at Dev Bootcamp
![First Day of DBC Outfit](/blue-screen-of-death-tee.png)

This guide started as [a post in Medium](https://blog.andreacoravos.com/things-i-wish-i-knew-tips-and-tricks-for-devbootcamp-3271b516328b#.dqrhkq43q). We wanted to make the guide more interactive, so we're hosting it here on GitHub. 

We know that you're going to get a lot of tips and suggestions in the DBC course, and our goal is to avoid overlap. We want this to be the BEST tips that you didn't see in regular DBC documentation. This is a collection of the 1-2 tips that DBC grads learned that made them think: *mind. blown.*

Have one of those? Submit a pull-request and we can add it. Keep your tip pithy.

# Setting up your environment
+ Download **[the Spectacle App](https://www.spectacleapp.com/)**. This app helps your re-size windows with ease — and has great keyboard shortcuts. You’ll be grateful for it when you want to have your browser, text-editor, and terminal all open at the same time in a neat format.
+ Use **[f.lux](https://justgetflux.com/)**. This app changes the colors on your computer screen to match the time of day. At night, the computer looks warmer, and the app blocks blue light, which inhibits your melatonin production and disrupts your sleep. Your sleep will thank you when you use this app.
+ Check out **[iTerm2](https://www.iterm2.com/)** — a Mac replacement for terminal that has split panes, autocomplete, search, mouseless copy, and a whole bunch of other nifty features. Check out the [shortcuts](https://www.youtube.com/watch?t=93&v=KJEN-GFSkrU). And we love this [pro-tip](https://twitter.com/wesbos/status/626055204488658944).
+ **Sublime Text Hacks**. I won’t wade into Text Editor Wars, but for those of you using Sublime Text, here’s some clutch set-up features: (1) [Save on loss of focus](http://superuser.com/questions/366132/possible-for-sublime-text-2-to-save-on-loss-of-focus). (2) Download [Emmet.io](http://emmet.io/) for Sublime to manage your HTML&CSS workflow. (3) [Word. wrap. true](http://justinseeley.com/tutorials/quick-tip-enable-sublime-text-word-wrap/). (4). Turns out Sublime has a built-in spell checker! Sublime > Preferences > ‘Settings — User’. Add the following line: “spell_check”: true

## Phase 0
+ Start practicing the [shortcutFoo keyboard shortcuts for Sublime](https://www.shortcutfoo.com/app/dojos/sublime-text-2-mac). It doesn’t take a lot of time to get good at them, and you’ll save (literally) hours by the end of DBC if you start early.
+ Oh, **git**. A glorious way to manage version control. Here’s [Git in 600 words](https://maryrosecook.com/blog/post/git-in-six-hundred-words). How to [fix the 10 most common problems](https://www.codementor.io/git/tutorial/10-common-git-problems-fix). A [Git cheat sheet](https://shriyanguna.github.io/cheat_sheet/cheat_sheet.html).
+ Working with **CSS** convinced me that I am a back-end engineer. But, you must learn master the basics for Phase 0. Tim Cannady is a CSS guru, and found a few good pieces on [CSS positioning](https://css-tricks.com/absolute-relative-fixed-positioining-how-do-they-differ/). If you still struggle with this like me, please also enjoy [this cat meme](https://twitter.com/thomasfuchs/status/637430978366021632?ref_src=twsrc%5Etfw) of centering something in CSS.
+ **[Anki (Flash)cards](http://ankisrs.net/)**. Using [the Janki Method](https://lifehacker.com/5973887/the-janki-method-shortens-the-time-itll-take-you-to-learn-to-code) will shorten the time it takes you to master coding skills. Perhaps find a few friends in Phase 0 to build out a set of cards with you. Or share your Anki decks.
+ Play with **[Exercism.io](http://exercism.io/)**, which supports over a dozen programming languages including Ruby and JS. The system lets you fetch and submit challenges. Every challenge, once submitted, reveals hundreds of solutions and random participants review. Exercism provides countless small wins. The exercises are achievable mini-quests for newbies and experienced developers.

## Phase 1
+ Learn how to use [**Rbenv** to switch your Ruby versions](http://makandracards.com/makandra/21545-rbenv-how-to-switch-to-another-ruby-version-temporarily-per-project-or-globally) (temporarily, per project, or globally)
+ Save **[Rubular](http://rubular.com/)**, a go-to Ruby regular expression editor, in your browser favorites
+ The **[DevBootcamp talks](http://talks.devbootcamp.com/)** are excellent. They are event better at 1.5x or 2x. Download [this Chrome extension](https://chrome.google.com/webstore/detail/video-speed-controller/nffaoalbilbmmfgbnbgppjihopabppdk?hl=en) to speed up the videos.

## Phase 2
+ [**Front End Masters videos**](https://frontendmasters.com/courses/) — watch at 2x speed, get as much exposure as possible! All DBC students have 1 year free access. Ask a phase lead if you haven’t gotten a code.
+ Welcome to **Javascript**! Here’s a nifty [Ruby vs. Javascript syntax cheat-sheet](http://agentcooper.io/js-ruby-comparison/). MDN published an excellent [“re-introduction to JavaScript”](https://developer.mozilla.org/en-US/docs/Web/JavaScript/A_re-introduction_to_JavaScript) (JS tutorial)
+ **[Common methods for HTTP/1.1](https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html)** (w3.org) when working in Sinatra
+ Write great **tests**. [Your future self will thank you](https://mobile.twitter.com/benhamner/status/581471523728412672). This [RSpec powerpoint](http://jakegoulding.com/presentations/rspec-structure/#slide-0) has excellent tips on formatting and structure. Also, check out this [Carybara/Rspec/Selenium](http://www.opinionatedprogrammer.com/2011/02/capybara-and-selenium-with-rspec-and-rails-3/) quick tutorial.
+ Don’t accidentally drop your database. :) Check out [these **rake tasks**](https://stackoverflow.com/questions/10301794/difference-between-rake-dbmigrate-dbreset-and-dbschemaload).
+ **ScriptSrc**, the most current library script tags [just a mouse click away](http://scriptsrc.net/)
+ Look up “**man kill**” in terminal and it will show that -9 is a non-catchable, non-ignorable kill. This will be very helpful when you accidentally close terminal window while shotgun is running and it won’t start again. You’ll need to kill the shotgun process that is happening in the background. To do that, type in this: ```ps aux | grep shotgun | grep -v grep | awk ‘{print $2}’ | xargs kill -9```
+ You’ll want to add the code above as a **[Bash alias](https://www.digitalocean.com/community/tutorials/an-introduction-to-useful-bash-aliases-and-functions)**. Mine is called *killshotgun*. Bash aliases are awesome. Ask your peers what they have. *killrails* will be helpful for Phase 3. :)
+ Speaking of dot files, check out **[Super Topher’s](https://github.com/supertopher/dotfiles)** and **[Nathaniel Landau’s](https://natelandau.com/my-mac-osx-bash_profile/)** bash profiles.
**AJAX**. For everybody who’s ajaxing… I found out about [the “closest” selector](https://api.jquery.com/closest/) after calling .parent().parent().parent() way too many times. You can call li.closest(‘#id’) and it will look up the chain and find the nearest ‘#id’ in relation to what you called it on.
+Create moving webpages with **[Spritely.net](http://spritely.net/)**. No flash? No problem. It’s pure HTML & jQuery and you can sprite up your site with dynamic animations.

## Phase 3
+ Wahoo! You’re going to be working with teams. You’ll want to all agree on a **Git workflow**. Here’s [one we developed](https://gist.github.com/acoravos/4d011a3f6128260c2c57d37f8dc6a362).
+ Pick a few technologies that you’ll likely use in the working-world after school for your project. I focused on **React.js** — which I ended up using while I was working at Instacart. I liked this [React.js introduction for people who know just enough jQuery to get by](http://reactfordesigners.com/labs/reactjs-introduction-for-people-who-know-just-enough-jquery-to-get-by/)
+ If you want to build anything with maps, check out **[Mapbox](https://www.mapbox.com/)**. It’s like Google Maps but open source and has excellent documentation
+ **MashApe** has a [huge API marketplace](https://market.mashape.com/explore) that you can browse for project inspiration

## A few favorite blog posts from bootcamp
+ [Teresa's blog post for new Phase 1'ers](https://medium.com/u/34da797cd5bb)
+ [Why **Rails** and Not Sinatra or Node.js?](http://codefol.io/posts/Why-Rails-and-not-Sinatra-or-Node-js)
+ [What is a **client-side app** and why should I care?](http://iconof.com/blog/what-is-a-client-side-app-and-why-should-i-care/)
+ [How to **add a snooze button to gmail** no extensions required](http://lifehacker.com/5825634/how-to-add-a-snooze-button-to-gmail-no-extensions-required)

## Life after bootcamp
+ *Be a sponge, and never stop learning*. The world is moving too quickly for you to stay still. :)
+ Create a **Twitter list** of your favorite developers to stay on top of what’s happening in the field. Here’s [a starter list](https://twitter.com/iam_preethi).
+ Follow a few favorite **blogs**. [Coding Horror](https://blog.codinghorror.com/) is a great place to start.


## And just for fun… discoveries during bootcamp
+ Add [**HTTP Status Cats**](https://www.flickr.com/photos/girliemac/sets/72157628409467125) to your site
+ Play with a [**tearable cloth**](https://codepen.io/dissimulate/pen/KrAwx)
+ [**Wat**: A lightning talk by Gary Bernhardt from CodeMash 2012](https://www.destroyallsoftware.com/talks/wat)
+ [Watch **Star Wars Episode IV in ASCII** via Terminal](http://hints.macworld.com/article.php?story=20060406084728559). Paste this in terminal: ```telnet towel.blinkenlights.nl```
