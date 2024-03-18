
(defun roamJournalFile ()
  (setq folder "~/org/zettelKasten/journal/")
  (setq year (format-time-string "%Y"))
  (setq month (format-time-string "%b"))
  (setq file (concat year "" month ".org"))
  (setq target_file (expand-file-name file folder))
  )


(defun myRoamJournal ()
  (interactive)
  (setq time_epoch (format-time-string "%s"))
  (setq file_id (concat year "-" month "-" time_epoch))
  (setq target_file (roamJournalFile))
  (setq theme_string (concat ":PROPERTIES:
:ID: "file_id"
:END:
#+STARTUP: overview indent
#+TAGS:
#+TITLE: "(format-time-string "%Y")" "(capitalize (format-time-string "%B"))"

* What

* Is

* It

* Log
"))

  (if (file-exists-p target_file) (find-file target_file) (progn (write-region theme_string nil target_file) (find-file target_file))) 
  )





(defun myCreateShortFictionFile ()
  (setq title (read-string "Name: "))
  (setq name  (s-lower-camel-case title)) 
  (setq target_file (expand-file-name (format "%s-%s.org"
					      (format-time-string "%Y")
					      name)
				      "~/org/skrivande/kort/"))
  (find-file target_file)
  (setq created (concat "#+DATE: <" (format-time-string "%Y-%m-%d") ">\n"))
  (setq the_title (concat "#+TITLE: " title"\n"))
  (setq headern (concat  "\n* " title "\n"))
  (insert "#+TODO: TODO(t) PAUSE(p) | DONE(d) CANCELED(c)\n")
  (insert "#+CATEGORY: writings\n")
  (insert "#+TAGS: flashFiction\n")
  (insert created)
  (insert the_title)
  (insert "\n* Outline\n")
  (insert " - \n")
  (insert headern)
  (goto-char (org-find-exact-headline-in-buffer "Outline"))
  )


