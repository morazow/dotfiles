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

(setq
  use-package-verbose t
  use-package-always-ensure t)

(unless (package-installed-p 'org-plus-contrib)
  (package-install 'org-plus-contrib))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

;; disable splash screen
(setq inhibit-startup-screen t)

;; disable menus
;;(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

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

;; change font to Consolas font family on osx
;; taken from http://www.emacswiki.org/SetFonts, at the end of page.
(when (eq system-type 'darwin)
  ;; default Latin font (e.g. Consolas)
  (set-face-attribute 'default nil :family "Consolas")

  ;; default font size (point * 10)
  ;;
  ;; WARNING!
  ;; Depending on the default font, if the size is not supported very well, the frame will be
  ;; clipped so that the beginning of the buffer may not be visible correctly.
  (set-face-attribute 'default nil :height 165))

;; use color themes
;; This is emacs24 way of changin color-themes, just put your themes .el files into
;; 'custom-theme-load-path.
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/themes")
(load-theme 'zenburn t)

;; load my org-mode configs, ~/.emacs.d/lisp/org-mode-configs.el
(load "org-mode-configs")

(use-package org-bullets
             :ensure t
             :config
             (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; Org Mode
;;(require 'org-install)
;;(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;;(define-key global-map "\C-cl" 'org-store-link)
;;(define-key global-map "\C-cc" 'org-capture)
;;(define-key global-map "\C-cb" 'org-iswitchb)
;;(define-key global-map "\C-ca" 'org-agenda)
;;
;;;; Org Mode Customizations -- I must learn this better..
;;(setq org-agenda-files (quote ("~/Dropbox/Notes/org/gtd.org")))
;;(setq org-agenda-ndays 7)
;;(setq org-agenda-repeating-timestamp-show-all nil)
;;(setq org-agenda-restore-windows-after-quit t)
;;(setq org-agenda-show-all-dates t)
;;(setq org-agenda-skip-deadline-if-done t)
;;(setq org-agenda-skip-scheduled-if-done t)
;;(setq org-agenda-sorting-strategy (quote ((agenda time-up priority-down tag-up) (todo tag-up))))
;;(setq org-agenda-start-on-weekday nil)
;;(setq org-agenda-todo-ignore-deadlines t)
;;(setq org-agenda-todo-ignore-scheduled t)
;;(setq org-agenda-todo-ignore-with-date t)
;;(setq org-agenda-window-setup (quote other-window))
;;(setq org-fast-tag-selection-single-key nil)
;;(setq org-reverse-note-order nil)
;;(setq org-tags-column -78)
;;(setq org-tags-match-list-sublevels nil)
;;(setq org-time-stamp-rounding-minutes 5)
;;(setq org-use-fast-todo-selection t)
;;(setq org-use-tag-inheritance nil)
;;(setq org-agenda-include-diary nil)
;;(setq org-deadline-warning-days 7)
;;(setq org-timeline-show-empty-dates t)
;;(setq org-insert-mode-line-in-empty-file t)
;;(setq org-log-done t)
;;
;;(defun gtd()
;;  (interactive)
;;  (find-file "~/Dropbox/Notes/org/gtd.org"))
;;(global-set-key (kbd "C-c g") 'gtd)
;;
;;(add-hook 'org-agenda-mode-hook 'hl-line-mode)
;;
;;(setq org-agenda-custom-commands
;;	  '(("H" "Things To DO"
;;		 ((agenda)
;;		  (tags-todo "READING")
;;		  (tags-todo "LEARNING")
;;		  (tags-todo "BUY")
;;		  (tags-todo "WATCH")))
;;		("D" "Daily Action List"
;;		 ((agenda "" ((org-agenda-ndays 1)
;;					  (org-agenda-sorting-strategy
;;					   (quote ((agenda time-up priority-down tag-up))))
;;					  (org-deadline-warning-days 0)))))))
;;
