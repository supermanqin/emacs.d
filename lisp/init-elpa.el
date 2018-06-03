;;add elpa
(require 'package)  
(add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa/") t) 
(add-to-list 'package-archives '("org" . "http://elpa.emacs-china.org/org/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.emacs-china.org/gnu/"))

(package-initialize)
(setq el-get-sources
 '(
	(:name color-theme-sanityinc-tomorrow
          :description "Two pleasant medium-contrast Emacs color themes in light and dark flavours"
          :type github
          :pkgname "purcell/color-theme-sanityinc-tomorrow"
          :depends color-theme
          :prepare (add-to-list 'custom-theme-load-path default-directory))

	;;solarized rcp
	(:name solarized-emacs
       :description "Solarized for Emacs is an Emacs port of the Solarized theme for vim, developed by Ethan Schoonover."
       :website "https://github.com/bbatsov/solarized-emacs"
       :minimum-emacs-version "24"
       :type github
       :pkgname "bbatsov/solarized-emacs"
       :depends dash
       :prepare (add-to-list 'custom-theme-load-path
                             default-directory))
	
  )
)

(defvar viel:el-get-packages
    (append
      '(evil
      color-theme-sanityinc-tomorrow
      solarized-emacs)
      (mapcar 'el-get-source-name el-get-sources)))
    
(el-get 'sync viel:el-get-packages) 

;;provide
(provide 'init-elpa)
