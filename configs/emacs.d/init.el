;; init.el -*- lexical-binding: t; -*-

;; Optimization from Doom Emacs -- A Quieter Startup
(advice-add #'display-startup-echo-area-message :override #'ignore)
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message user-login-name
      inhibit-default-init t
      initial-major-mode 'fundamental-mode
      initial-scratch-message nil
      mode-line-format nil)

;;
;; Optimizations from Doom Emacs -- Garbage Collection at Startup
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Garbage-Collection.html
;;

;; Temporarily increase garbage collection threshold to suppress it
;; during startup.
;; `most-positive-fixnum` is a maximum possible number 2^61 bytes.
(setq gc-cons-threshold most-positive-fixnum)

;; However, set back these settings to reasonable values after
;; initialization.
;; In addition, defer garbage collection while the minibuffer is active.
;; This helps heavy operation commands such as completion, ivy or helm,
;; by avoiding garbage collection pauses during minibuffer operations.
(defconst 30mb 31457280)

(defun mor/defer-garbage-collection ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun mor/restore-garbage-collection ()
  ;; Runs delayed, after 1 second so that immediate commands can
  ;; benefit.
  (run-at-time 1 nil (lambda () (setq gc-cons-threshold 30mb))))

(add-hook 'emacs-startup-hook #'mor/restore-garbage-collection 100)
(add-hook 'minibuffer-setup-hook #'mor/defer-garbage-collection)
(add-hook 'minibuffer-exit-hook #'mor/restore-garbage-collection)

;;
;; Load config.org Literate Configuration File
;;

;; Load newer configuration file, and tangle it if necessary.
(let* ((mor/config.org (expand-file-name "config.org" user-emacs-directory))
       (mor/config.el (expand-file-name "config.el" user-emacs-directory)))
  (if (and (file-exists-p mor/config.el)
           (file-newer-than-file-p mor/config.el mor/config.org))
    (load-file mor/config.el)
    (require 'org)
    (org-babel-load-file mor/config.org)))

;; Profile Emacs Startup
(add-hook 'emacs-startup-hook
          (lambda () (message "*** Loaded in %.2f seconds with %d garbage collections."
                              (float-time (time-subtract after-init-time before-init-time))
                              gcs-done))
          100)
