(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; Added by Pack;; Added by Packaage.el.  This must come before configurations of
;; installed pac;; installed packkages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; remove ugly
(split-window-horizontally)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(mouse-wheel-mode 1)

(setq initial-scratch-message "")
(setq startup-screen 1)
(setq visible-bell t)

(scroll-bar-mode 0)
(menu-bar-mode 0)
(tool-bar-mode 0)
(set-fringe-mode 0)

(cua-mode 1)

;; easier windows movement (<ALT> + ARROW KEYS)
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings 'meta))

;; highlight line in use
(global-hl-line-mode 1)
;; stop cursor blink
(blink-cursor-mode 0)
 ;; normal copy/cut/paste
(cua-mode 1)
 ;; auto complete another parenthesis when one is typed
(electric-pair-mode 1)
 ;; text wrapping
(global-visual-line-mode 1)
;; i-beam cursor

;; highlight parenthesis
(require 'paren)
(show-paren-mode t)
(setq show-paren-style 'expression)
; Smooth scroll
(setq scroll-step 3)

; Clock
(display-time)
;; scroll with mousewheel
(mouse-wheel-mode 1)

;;theme
(require 'moe-theme)
(setq moe-theme-highlight-buffer-id nil)
(moe-dark)
(moe-theme-set-color 'cyan)

;; text decoration
(require 'font-lock)
(global-hi-lock-mode nil)

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(setq inferior-lisp-program "clisp.exe")
(load "C:\\quicklisp\\slime-helper.el")

;; smart mode line
;; (sml/setup) Use in case of *nix :-)

;; Go programming environment 
(defun auto-complete-for-go ()
  (auto-complete-mode 1))
  (add-hook 'go-mode-hook 'auto-complete-for-go)

(with-eval-after-load 'go-mode
  (require 'go-complete))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (go-complete go-autocomplete auto-complete exec-path-from-shell go-eldoc smart-mode-line-powerline-theme go-mode highlight-quoted font-lock+ moe-theme slime ## undo-tree goto-chg))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )