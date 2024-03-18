;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Machine specific settings for laptop - nozenlapz ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;
;; Dracula pro theme ;;
;;;;;;;;;;;;;;;;;;;;;;;

 (add-to-list 'custom-theme-load-path "~/org/draculaPRO/themes/emacs/")
   (load-theme 'dracula-pro-lincoln t)


;; Pyhton and lsp-mode
;; pip install python-language-server[all]
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (
         (python-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

;;;;;;;;;;;;;;;;;;;
;;               ;;
;; SLIME - cLisp ;;
;;               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Using: (https://lisp-lang.org/learn/getting-started/) ;;
;; SBCL                                                  ;;
;; Quicklisp                                             ;;
;; and SLIME                                             ;;
;;                                                       ;;
;; run slime before using (=                             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (load (expand-file-name "~/.quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
;; (setq inferior-lisp-program "sbcl")



;;;;;;;;;
;;     ;;
;; END ;;
;;     ;;
;;;;;;;;;
