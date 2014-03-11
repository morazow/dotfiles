;; My org mode configs
;; I mainly use this for note taking, todos, blogs and etc.
;;

(require 'org)

;; Open every .org files with org-mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; Open agenda with C-c a keystroke
;; org-agenda lets you see all your 'todo' items in a weekly, daily fashion,
;; great when you don't know what to do next.
(define-key global-map "\C-ca" 'org-agenda)

;; this will add 'CLOSED' when a 'todo' changes into 'done', etc
(setq org-log-done 'time)

;; this is same as above, and will add 'CLOSING NOTE' 
;; when 'todo' state changes.
(setq org-log-done 'note)

;; org-agenda will look into these files for 'todo's
;; Can I customize this, depending on the hour of the day?
;; I don't want agenda to show me personal related stuff on 
;; my working hours. This would be great.
(setq org-agenda-files (list "~/Dropbox/Notes/personal.org"
                             "~/Dropbox/Notes/work.org"
                             "~/Dropbox/Notes/courses.org"))

;; Open needed org file using M-x <filename>
(defun personal ()
  (interactive)
  (find-file "~/Dropbox/Notes/personal.org"))

(defun work ()
  (interactive)
  (find-file "~/Dropbox/Notes/work.org"))

(defun courses ()
  (interactive)
  (find-file "~/Dropbox/Notes/courses.org"))
