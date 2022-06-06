(setq doom-theme 'doom-tokyo-night) ;; Theme
(setq display-line-numbers-type t) ;; Line numbers
(setq doom-font (font-spec :family "CaskaydiaCove Nerd Font" :size 17) ;; Font family
      doom-variable-pitch-font (font-spec :family "CaskaydiaCove Nerd Font" :size 17))

(use-package! beacon)
(after! beacon (beacon-mode 1))

(setq org-directory "~/org/")

(after! org
  (remove-hook 'org-mode-hook #'auto-fill-mode)
  (setq company-global-modes '(not org-mode))
  )

(require 'org-bullets)(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))) ;; Custom bullet point icons

(use-package! python-black
  :after python
  :hook (python-mode . python-black-on-save-mode-enable-dwim))
