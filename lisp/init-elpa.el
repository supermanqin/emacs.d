;;add elpa
(require 'package)  
(add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa/") t) 
(add-to-list 'package-archives '("org" . "http://elpa.emacs-china.org/org/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.emacs-china.org/gnu/"))

;;require-package
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (if (boundp 'package-selected-packages)
            ;; Record this as a package the user installed explicitly
            (package-install package nil)
          (package-install package))
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(setq package-enable-at-startup nil)
(package-initialize)

(require-package 'fullframe)
(fullframe list-packages quit-window)

(require-package 'cl-lib)
(require 'cl-lib)

;;provide
(provide 'init-elpa)
