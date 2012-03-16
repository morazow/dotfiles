;; m.orazow
;; _emacs
;; Try to improve & master this power


;; set target directory for load-path
(add-to-list 'load-path "~/.emacs.d")

;; disable splash screen
(custom-set-variables '(inhibit-startup-screen t))

;; disable menus
(menu-bar-mode -1)
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

;; Put autosave files (ie #foo#) and backup files (ie foo~) in one place
(custom-set-variables
 '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
 '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; make visible leading and trailing whitespaces
(setq show-trailing-whitespace t)


;; Org Mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-cb" 'org-iswitchb)
(define-key global-map "\C-ca" 'org-agenda)

;; Org Mode Customizations -- I must learn this better..
(setq org-agenda-files (quote ("~/Dropbox/Notes/org/gtd.org")))
(setq org-agenda-ndays 7)
(setq org-agenda-repeating-timestamp-show-all nil)
(setq org-agenda-restore-windows-after-quit t)
(setq org-agenda-show-all-dates t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-sorting-strategy (quote ((agenda time-up priority-down tag-up) (todo tag-up))))
(setq org-agenda-start-on-weekday nil)
(setq org-agenda-todo-ignore-deadlines t)
(setq org-agenda-todo-ignore-scheduled t)
(setq org-agenda-todo-ignore-with-date t)
(setq org-agenda-window-setup (quote other-window))
(setq org-fast-tag-selection-single-key nil)
(setq org-reverse-note-order nil)
(setq org-tags-column -78)
(setq org-tags-match-list-sublevels nil)
(setq org-time-stamp-rounding-minutes 5)
(setq org-use-fast-todo-selection t)
(setq org-use-tag-inheritance nil)
(setq org-agenda-include-diary nil)
(setq org-deadline-warning-days 7)
(setq org-timeline-show-empty-dates t)
(setq org-insert-mode-line-in-empty-file t)
(setq org-log-done t)

(defun gtd()
  (interactive)
  (find-file "~/Dropbox/Notes/org/gtd.org"))
(global-set-key (kbd "C-c g") 'gtd)

(add-hook 'org-agenda-mode-hook 'hl-line-mode)

(setq org-agenda-custom-commands
	  '(("H" "Things To DO"
		 ((agenda)
		  (tags-todo "READING")
		  (tags-todo "LEARNING")
		  (tags-todo "BUY")
		  (tags-todo "WATCH")))
		("D" "Daily Action List"
		 ((agenda "" ((org-agenda-ndays 1)
					  (org-agenda-sorting-strategy
					   (quote ((agenda time-up priority-down tag-up))))
					  (org-deadline-warning-days 0)))))))

;; Remember Mode, inspired by (members.optusnet.com.au/~charles57/GTD/remember.html)
(add-to-list 'load-path "~/.emacs.d/remember/")
(autoload 'remember "remember" nil t)
(autoload 'remember-region "remember" nil t)

(setq org-directory "~/Dropbox/Notes/org/")
(setq org-default-notes-file "~/Dropbox/Notes/org/.tmp_notes")
(setq remember-annotation-functions '(org-remember-annotation))
(setq remember-handler-functions '(org-remember-handler))
(add-hook 'remember-mode-hook 'org-remember-apply-template)
(define-key global-map "\C-cr" 'org-remember)

;; Remember Mode Templates
(setq org-remember-templates
	  '(("Todo" ?t "* TODO %^{Brief Description} %^g\n%?\nAdded: %U" "~/Dropbox/Notes/org/gtd.org" "Tasks")
		("Note" ?n "** %^{Head Line} %U %^g\n%i%?" "~/Dropbox/Notes/org/notes.org")
		("Book" ?b "** %^{Book Title} %t :BOOK: \n%[~/Dropbox/Notes/org/.tmp_book.txt]\n" "~/Dropbox/Notes/org/notes.org")
		("Film" ?f "** %^{Film Title} %t :FILM: \n%[~/Dropbox/Notes/org/.tmp_film.txt]\n" "~/Dropbox/Notes/org/notes.org")
		("Someday" ?s "** %^{Someday Heading} %U\n%?\n" "~/Dropbox/Notes/org/someday.org")
		("Vocab" ?v "** %^{Word?}\n%?\n" "~/Dropbox/Notes/org/vocab.org")))

