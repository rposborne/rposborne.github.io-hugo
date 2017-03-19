+++
date = "2017-03-19T13:16:27-04:00"
title = "Emacs per directory variables"
author = ""
tags = ["emacs", "vim", "spacemacs", "ruby"]
categories = ["code"]
+++

When using keyboard only text editors like vim and emacs, discovering what they can do and how to do it is by far the hardest thing.

When I professionally develop I like to use Rspec, but some projects I work will use minitest. My editor [SpaceMacs](1) supports a major Ruby mode that allows easy running and toggling between files and their specs, but to turn it on means ALWAYS using rspec aka no go. On spacemacs docs there is a "TIP" leading to the existing of per-directory variables for emacs. This allows us to switch ruby-test-runners per project.

This file should be made at the root level of your project.

```emacs-lisp
; .dir-locals.el

((ruby-mode (ruby-test-runner . rspec)))

```

When entering this project emacs will set the variable `ruby-test-runner` for the major mode [`ruby-mode`](3), and allow us to use [`rspec-mode`](2)

[1]: http://spacemacs.org/  "(spacemacs) a community-driven emacs distribution"
[2]: https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/ruby#rspec-mode
[3]: https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/ruby
