;; My org mode configs
;; I mainly use this for note taking, todos, blogs and etc.
;;

(use-package org
  :ensure org-plus-contrib
  :mode ("\\.org\\'" . org-mode)
  :init
  ;; custom 'todo' keywords
  (setq org-todo-keywords
        (quote ((sequence "TODO(t)" "INPROGRESS(p)" "|" "DONE(d)"))))
  ;; Open every .org files with org-mode
  (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
  :bind
  (;; Open agenda with C-c a keystroke
   ;; org-agenda lets you see all your 'todo' items in a weekly, daily fashion, great when you
   ;; don't know what to do next.
   ("C-c a" . org-agenda)
   ("C-c c" . org-capture)
   ("C-c w" . org-refile))
  :config
  ;; org related useful packages

  (use-package org-bullets
               :ensure t
               :config
               (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

  (use-package org-agenda
               :ensure org-plus-contrib
               :init
               ;; org-agenda will look into these files for 'todo's Can I customize this,
               ;; depending on the hour of the day?  I don't want agenda to show me personal
               ;; related stuff on my working hours. This would be great.
               (setq org-agenda-files (list "~/Dropbox/Notes/org/resolution.org"
                                            "~/Dropbox/Notes/org/personal.org"
                                            "~/Dropbox/Notes/org/work.org"))
               ;; this will add 'CLOSED' when a 'todo' changes into 'done', etc
               (setq org-log-done 'time)
               ;; this is same as above, and will add 'CLOSING NOTE' when 'todo' state changes.
               (setq org-log-done 'note))

  (use-package org-drill
               :defer t
               :ensure org-plus-contrib
               :commands (org-drill)
               :config
               ;; add random noise
               (setq org-drill-add-random-noise-to-intervals-p t))

  ;; capture templates for: tasks and journal
  (setq org-capture-templates
        (quote (("j" "Journal" entry (file+datetree "~/Dropbox/Notes/org/journal.org")
                 "* %<%H:%M> - %^{Heading}  %^g\n  %?\n  Added: %U")
                ("g" "German" entry (file+headline "~/Dropbox/Notes/org/german.org" "German Learning")
                 "** %^{Word Type|Noun|Adjective|Adverb|Verb} :drill:\n  :PROPERTIES:\n  :DRILL_CARD_TYPE: twosided\n  :END:\n\n  Translate this word.\n\n*** German\n  %^{German word}\n\n*** English\n  %^{English word}\n\n*** Examples\n  %^{Examples}\n"))))
)

(provide 'init-org)
