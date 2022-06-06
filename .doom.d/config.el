(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

(setq doom-font (font-spec :family "CaskaydiaCove Nerd Font" :size 17)
      doom-variable-pitch-font (font-spec :family "CaskaydiaCove Nerd Font" :size 17))

(setq doom-theme 'doom-tokyo-night)

(setq display-line-numbers-type t)

(setq org-directory "~/org/")

(require 'org-bullets)(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
