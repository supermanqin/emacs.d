;;my emacs.d private configuration
(setq debug-on-error t)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;require
(require 'init-misc)
(require 'init-elget)
(require 'init-elpa)
(require 'init-themes)
(require 'init-evil)
(require 'init-keybinding)
