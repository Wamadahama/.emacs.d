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


;; Update packages 
(when (not package-archive-contents)
    (package-refresh-contents))

;; remove ugly
;(split-window-horizontally)
(set-default-font "Consolas-10")
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

;; Move the backup
(setq backup-directory-alist `(("." . "~/saves")))

;; Auto open webmode 
(add-to-list 'auto-mode-alist '("\\.asp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.aspx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.asp\\'" . web-mode))

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


;; Ido mode
(require 'ido)
(ido-mode t)

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

;; Line numbers
(setq global-linum-mode t)

;;theme
;(add-to-list 'custom-theme-load-path "~/.emacs.d/solarized-emacs")
;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;(load-theme 'solarized-light t)
;(setq solarized-distinct-fringe-background t)
;(setq solarized-high-contrast-mode-line t)

;; Powerline
;(require 'powerline)

;(load-theme 'silkworm t)
;; moe moe kyun kyun
(require 'moe-theme)
(setq moe-theme-highlight-buffer-id nil)
(moe-theme-set-color 'cyan)

(moe-dark)
;(powerline-moe-theme)

;; Sublimity
;(require 'sublimity)
;(require 'sublimity-scroll)
;(require 'sublimity-map) ;; experimental
;(require 'sublimity-attractive)
;(sublimity-mode 1)

;; text decoration
(require 'font-lock)

(global-hi-lock-mode nil)

;; Evil mode
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;; highlight words
;(add-hook 'prog-mode-hook (lambda () (idle-highlight-mode t)))

;;(setq inferior-lisp-program "clisp.exe")
;;(load "C:\\quicklisp\\slime-helper.el")

;; smart mode line
;; (sml/setup) Use in case of *nix :-)
;;(sml/setup)

;; Go programming environment 
;;(defun auto-complete-for-go ()
;;  (auto-complete-mode 1))
;;  (add-hook 'go-mode-hook 'auto-complete-for-go)

;;(with-eval-after-load 'go-mode
;;  (require 'go-complete))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("d5f17ae86464ef63c46ed4cb322703d91e8ed5e718bf5a7beb69dd63352b26b2" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "2cf7f9d1d8e4d735ba53facdc3c6f3271086b6906c4165b12e4fd8e3865469a6" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "b747fb36e99bc7f497248eafd6e32b45613ee086da74d1d92a8da59d37b9a829" default)))
 '(fci-rule-color "#073642")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-background-colors (quote ("#e8fce8" "#c1e7f8" "#f8e8e8")))
 '(hl-paren-colors (quote ("#40883f" "#0287c8" "#b85c57")))
 '(inhibit-startup-screen t)
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (2048-game speed-type fireplace powerline-evil sublimity zenburn-theme web-mode vimish-fold undo-tree solarized-theme smart-mode-line-powerline-theme skewer-mode silkworm-theme plan9-theme omnisharp moe-theme minimap markdown-mode+ macrostep leuven-theme idle-highlight-mode highlight-quoted goto-chg go-eldoc go-complete go-autocomplete gh font-lock+ exec-path-from-shell drag-stuff cyberpunk-theme)))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#839496" 0.2))
 '(sml/active-background-color "#98ece8")
 '(sml/active-foreground-color "#424242")
 '(sml/inactive-background-color "#4fa8a8")
 '(sml/inactive-foreground-color "#424242")
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
