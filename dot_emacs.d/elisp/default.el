;; Check the name of the machine and load machine-specific settings

(if (string= (system-name)
	     "nozenlapz-UX430UAR")
    (load "nozenlapz") 

  (if (string= (system-name)
	       "molndesk")
      (load "molndesk") 

    (if (string= (system-name)
		 "nozenseLinux")
	(load "nozenseLinux") nil)))



;;;;;;;;;;;;;;;;;;;;
;;                ;;
;; My own scripts ;;
;;                ;;
;;;;;;;;;;;;;;;;;;;;

;; (load "myElisp")
;; (global-set-key
;;  (kbd "C-c n j") 'myRoamJournal)
;; (global-set-key
;;  (kbd "C-c s")
;;  (lambda () (interactive)
 ;;   (myCreateShortFictionFile)))



;; Make a cusom agenda for non-schedueled todos
;; (setq org-agenda-custom-commands
;;       '(("c" . "Custom Agendas")
;;         ("cu" "Unscheduled TODO"
;;         ((todo ""
;;                ((org-agenda-overriding-header "\nUnscheduled TODO")
;;                 (org-agenda-skip-function '(org-agenda-skip-entry-if 'timestamp)))))
;;         nil
;;         nil)
;;	("cs" "skriver todo"  tags-todo "CATEGORY=\"writings\"")
;;	))

;;;;;;;;;;;;;;;;;;
;;              ;;
;; ORG-captures ;;
;;              ;;
;;;;;;;;;;;;;;;;;;

;; (setq log_file (roamJournalFile))
;; (if (file-exists-p log_file) nil (myRoamJournal))

;; (setq org-capture-templates
;;       '(("t" "TODO" entry (file+datetree "~/org/toDo/todo.org")
;;         "* TODO %?\n %i")
;;        ("l" "LOG" entry (file+headline log_file "Log")
;;         "* %U %? %i")
;;        ("q" "Quick" entry (file+headline "~/org/inbox.org" "InBox")
;;         "* %U %?\n %i")
;;        ("m" "TODO imorgon" entry (file+datetree "~/org/toDo/todo.org")
;;         "* TODO %?\nSCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"+1d\"))\n %i")))
