;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Machine specific settings for station - nozenseLinux ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;
;; Dracula pro theme ;;
;;;;;;;;;;;;;;;;;;;;;;;

 (add-to-list 'custom-theme-load-path "~/org/draculaPRO/themes/emacs/")
   (load-theme 'dracula-pro-buffy t)

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



;; music


(use-package emms
  :config
  (emms-all)
  (setq emms-player-list '(emms-player-vlc)
	emms-info-functions '(emms-info-native)))



;;;;;;;;;
;;     ;;
;; END ;;
;;     ;;
;;;;;;;;;
