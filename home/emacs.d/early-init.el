;; early-init.el -*- lexical-binding: t; -*-

;; Emacs 27+ introduced the early-init.el. It is loaded before the
;; package system and GUI is initialized, so here you can customize
;; variables that affect appearance or package initialization process.
;; On the other hand, the init.el file read after the GUI is
;; initialized.
;;
;; Here we set configuration options to enable faster Emacs startup.

;; References
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Early-Init-File.html
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Init-File.html#Init-File
;; https://github.com/hlissner/doom-emacs/blob/develop/docs/faq.org#how-does-doom-start-up-so-quickly

;; Package initialization happens before loading user's init file, but
;; after loading early-init file. Do not auto-initialize package
;; management system, initializing it at startup is expensive.
(setq package-enable-at-startup nil)
(advice-add #'package--ensure-init-file :override #'ignore)

;; Disable these GUI customization settings early so that they are not
;; initialized later.
(setq tool-bar-mode nil
      scroll-bar-mode nil)
(modify-all-frames-parameters '((vertical-scroll-bars)))

;; Optimizations from Doom Emacs
;;
;; Resizing the Emacs frame can be a terribly expensive part of changing
;; the font. By inhibiting this, we halve startup times, particularly
;; when we use fonts that are larger than the system default (which
;; would resize the frame).
(setq frame-inhibit-implied-resize t)

;; Prevent unwanted runtime builds in gccemacs (native-comp); packages
;; are compiled ahead-of-time when they are installed and site files are
;; compiled when gccemacs is installed.
(setq comp-deferred-compilation nil)

;; Ignore X resources; its settings would be redundant with the other
;; settings in this file and can conflict with later config
;; (particularly where the cursor color is concerned).
(advice-add #'x-apply-session-resources :override #'ignore)

;; Unset File Name Handler
;; Emacs consults this variable every time it reads a file, loads a
;; library, or when it uses certain functions from the file API
;; (`expand-file-name` or `file-truename`).
;; Emacs uses this to check if a special handler is needed to read a
;; file, but none of them are necessary at startup, so we temporarily
;; disable them.
(defvar mor/file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

;; Restore it later after startup as a last hook.
;;
;; Hooks work in Last In First Out fashion (LIFO), that is the latest
;; added hook will run first. Use optional depth parameter (in range
;; -100 ... 100) to set the priority. Higher number has lower priority.
(add-hook 'emacs-startup-hook
          (lambda () (setq file-name-handler-alist mor/file-name-handler-alist))
          100)
