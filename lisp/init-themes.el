(setq color-theme-is-global t)
(require 'color-theme-sanityinc-tomorrow)
(require 'solarized-theme)

;;(load-theme 'solarized-dark t)
;;(load-theme 'sanityinc-tomorrow-bright t)
;;(load-theme 'sanityinc-tomorrow-blue t)
;;(load-theme 'sanityinc-tomorrow-day t)
;;(load-theme 'sanityinc-tomorrow-eighties t)
(setq my:current-theme 'sanityinc-tomorrow-night)
(setq my:themes '(sanityinc-tomorrow-night
                  sanityinc-tomorrow-blue
                  sanityinc-tomorrow-day
		  solarized-dark
                  sanityinc-tomorrow-bright
                  sanityinc-tomorrow-eighties))
(defun my:enable-theme (theme)
  (if my:current-theme (disable-theme my:current-theme))
  (setq my:current-theme theme)
  (load-theme theme t))

(defun my:rotate-left (a-list)
  (append (cdr a-list) (list (car a-list))))

(defun my:cycle-themes ()
  (interactive)
  (setq my:themes (append (cdr my:themes) (list (car my:themes))))
  (my:enable-theme (car my:themes)))

(my:enable-theme my:current-theme)

;;provide
(provide 'init-themes)
