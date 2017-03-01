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
