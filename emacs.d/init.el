;; Add themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'monokai t)
;;(load-theme 'zenburn t)

;; Load default minor modes
(global-linum-mode t)

;; Allow hash to be entered  
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("67a0265e2497207f5f9116c4d2bfbbab4423055e3ab1fa46ea6bd56f7e322f6a" "fe230d2861a13bb969b5cdf45df1396385250cc0b7933b8ab9a2f9339b455f5c" default)))
 '(display-time-mode t)
 '(indent-tabs-mode nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages (quote (markdown-mode slime auctex)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Menlo")))))

;; MELPA package manager
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; enable SLIME for Lisp
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/local/bin/sbcl")

;; add LaTeX to PATH
(getenv "PATH")
(setenv "PATH"
	(concat "/Library/TeX/texbin" ":" (getenv "PATH")))
