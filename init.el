(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
 (add-to-list 'package-archives
 	     '("gnu" . "https://elpa.gnu.org/packages/"))
(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(show-paren-mode 1)
(setq show-paren-style 'mixed)

(defun set-frame-height-to-screen-height ()
  "Set the height of the current frame to match the screen height."
  (interactive)
  (set-frame-height (selected-frame) (display-pixel-height)))

(add-hook 'after-init-hook 'set-frame-height-to-screen-height)


(set-face-attribute 'default nil :height 140) ; Adjust the height as desired



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(code-cells julia-snail julia-repl vterm tree-sitter-langs tree-sitter yasnippet-snippets yasnippet-classic-snippets eglot auctex tao-theme poet-theme faff-theme zerodark-theme alect-themes moe-theme base16-theme zenburn-theme color-theme-modern yasnippet flycheck company-irony company electric-spacing counsel ace-window org-bullets use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
