;; m.orazow
;; .emacs
;; Try to improve & master this power


;; set target directory for load-path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; setup package manager
(require 'package)
(setq package-enable-at-startup nil)

(unless (assoc-default "melpa" package-archives)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/")))
(unless (assoc-default "org" package-archives)
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t))
(unless (assoc-default "gnu" package-archives)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(setq use-package-verbose t)
(setq use-package-always-ensure t)

(unless (package-installed-p 'org-plus-contrib)
  (package-install 'org-plus-contrib))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

;; Configure Defaults

;; disable splash screen
(setq inhibit-startup-screen t)

;; disable menus
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; enable line and column numbering
(line-number-mode 1)
(column-number-mode 1)

;; show date and time in 24h format in modeline
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time-mode 1)

;; enable region highlighting
(setq tansient-mark-mode t)

;; enable global syntax highlighting
(global-font-lock-mode 1)

;; disable adding newlines to the end of file automatically
(setq next-line-add-newlines nil)

;; put autosave files (ie #foo#) and backup files (ie foo~) in one place
(setq auto-save-file-name-transforms
      '((".*" "~/.emacs.d/autosaves/\\1" t)))

(setq backup-directory-alist
      '((".*" . "~/.emacs.d/backups/")))

;; disable this annoying auto save while editing
(setq auto-save-default nil)

;; make visible leading and trailing whitespaces
(setq show-trailing-whitespace t)

(setq custom-file "~/.emacs.d/custom.el")
(if (file-exists-p custom-file)
  (load custom-file))

;; unset arrow keys -- do it!
(global-unset-key [left])
(global-unset-key [right])
(global-unset-key [up])
(global-unset-key [down])

;; use zenburn theme
(use-package zenburn-theme
             :ensure t
             :config (load-theme 'zenburn t))

;; Configure Org

;; load my org-mode configs, ~/.emacs.d/lisp/org-mode-configs.el
(load "org-mode-configs")
