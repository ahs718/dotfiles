(doom! :input
       :completion
       company           ; the ultimate code completion backend
       vertico           ; the search engine of the future

       :ui
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a splash screen for Emacs
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       modeline          ; snazzy, Atom-inspired modeline, plus API
       ophints           ; highlight the region an operation acts on
       (popup +defaults)   ; temporary windows
       tabs              ; a tab bar for Emacs
       treemacs          ; a project drawer, like neotree
       vc-gutter         ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       workspaces        ; tab emulation, persistence & separate workspaces

       :editor
       (evil +everywhere)
       file-templates
       fold
       snippets

       :emacs
       dired             ; making dired pretty [functional]
       electric          ; smarter, keyword-based electric-indent
       undo              ; persistent, smarter undo
       vc                ; version-control

       :term
       vterm             ; the best terminal emulation in Emacs

       :checkers
       syntax

       :tools
       (eval +overlay)     ; run code, run (also, repls)
       lookup              ; navigate your code and its documentation
       lsp               ; M-x vscode
       magit             ; a git porcelain for Emacs

       :os
       (:if IS-MAC macos)  ; improve compatibility with macOS

       :lang
       (cc +lsp)
       emacs-lisp
       json
       (java +lsp)
       javascript
       lua
       markdown
       org
       python
       sh
       web

       :config
       (default +bindings +smartparens))
