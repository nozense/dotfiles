;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Machine specific settings for VPS - molndesk ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;
;; Dracula pro theme ;;
;;;;;;;;;;;;;;;;;;;;;;;

 (add-to-list 'custom-theme-load-path "~/org/draculaPRO/themes/emacs/")
   (load-theme 'dracula-pro-pro t)


;;;;;;;;;;;;;;;;;;
;;              ;;
;; DIV settings ;;
;;              ;;
;;;;;;;;;;;;;;;;;;

;; Have a problem with dracula-theme in MATE-terminal, TMP-FIX

(set-face-attribute 'org-hide nil :foreground "#666" :background "#444")

;; No indent in org on server

(setq org-startup-indented nil)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                               ;; 
;; publish SETTINGS for NOZEN.SE ;;
;;                               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Load the publishing system
(require 'ox-publish)
;; Remove de "validate"-link from output
(setq org-html-validation-link nil)
;; Make htmlize output css-classes (insted of inline)
;; To make it possible to style in CSS
(setq org-html-htmlize-output-type 'css)
;; Define the publishing project
(setq org-publish-project-alist
      '(
        ("nozense-notes"
         :base-directory "~/org/nozen.se"
         :base-extension "org"
         :publishing-directory "/var/www/nozen.se/"
         :recursive t
         :html-toplevel-hlevel 1
         :with-toc t
         :with-title t
         :with-creator t
         :section-numbers nil
         :with-email t
         :auto-sitemap t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :htmlized-source t
         :auto-preamble t
         )
        ("nozense-static"
         :base-directory "~/org/nozen.se"
         :base-extension "css\\|png\\|woff\\|woff2"
         :publishing-directory "/var/www/nozen.se/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("nozense" :components ("nozense-notes" "nozense-static"))
        ))

;;;;;;;;;
;;     ;;
;; END ;;
;;     ;;
;;;;;;;;;
