(add-to-list 'default-frame-alist '(fullscreen . maximized)) ;; Start Emacs in maximized window

(setq user-full-name "Ozzy Neto"
      user-mail-address "osn4@scarletmail.rutgers.edu")

(setq doom-theme 'doom-vibrant)

(setq display-line-numbers-type t)

(setq doom-font (font-spec :family "JetBrainsMono" :size 17 :weight 'regular)
      doom-variable-pitch-font (font-spec :family "JetBrainsMono" :size 17)
      doom-big-font (font-spec :family "JetBrainsMono" :size 20))
(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic))

(setq doom-modeline-icon (display-graphic-p))
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-major-mode-color-icon t)
(setq doom-modeline-buffer-state-icon t)
(setq doom-modeline-buffer-modification-icon t)

;; Org Bullets
(setq
    org-superstar-headline-bullets-list '("⁖" "◉" "○" "✸" "✿")
)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(after! org
  (setq org-directory "~/org/")
  (setq org-hide-emphasis-markers t))

(after! lsp-ui
  (setq lsp-ui-doc-enable t))

(setq lsp-clients-clangd-args '("-j=3"
                                "--background-index"
                                "--clang-tidy"
                                "--completion-style=detailed"
                                "--header-insertion=never"
                                "--header-insertion-decorators=0"))
(after! lsp-clangd (set-lsp-priority! 'clangd 2))

(setq +latex-viewers '(pdf-tools)) ;; Set pdf-tools as the default pdf viewer
