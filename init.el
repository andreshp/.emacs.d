;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MY EMACS INIT.EL FILE
;; AUTHOR: ANDRÉS HERRERA POYATOS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; We use =package= to add packages repositories and installing =use-package=.
;; I recommend the following introduction to =package=:
;; http://batsov.com/articles/2012/02/19/package-management-in-emacs-the-good-the-bad-and-the-ugly/
(require 'package)

;; Adds the most used packages archives.
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

;; Allows packages to be used in the init file. This behaviour is needed to use =use-package=.
;; You can obtain an explanation in phils' answer to
;; http://stackoverflow.com/questions/11127109/emacs-24-package-system-initialization-problems
(package-initialize)
(setq package-enable-at-startup nil)

;; Bootstrap =use-package=.
;; You can find a good explanation about how and why using =use-package= in
;; http://www.lunaryorn.com/posts/my-emacs-configuration-with-use-package.html
;; A updated and more complete guide of =use-package= can be found in
;; https://github.com/jwiegley/use-package/
(unless (package-installed-p 'use-package)
        (package-refresh-contents)
        (package-install 'use-package))

;; When compiling =use-package= will be added to emacs code. This is possible because use-package.el is no longer needed at run time.
(eval-when-compile (require 'use-package))
;;(require 'diminish)                ;; uncomment if you use :diminish
;;(require 'bind-key)                ;; uncomment if you use any :bind variant

;; Adds the code found in myinit.org to emacs configuration.
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(font-use-system-font t)
 '(package-selected-packages
   (quote
    (sage-shell-mode visual-fill-column use-package solarized-theme smart-tabs-mode pdf-tools parsebib paradox org-gnome org-gcal org-bullets org-beautify-theme nyan-mode multiple-cursors multi-term material-theme magit magic-latex-buffer linum-relative key-chord gap-mode f elpy cdlatex calfw-gcal calfw biblio better-defaults auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 102 :width normal :foundry "PfEd" :family "Source Code Pro")))))
