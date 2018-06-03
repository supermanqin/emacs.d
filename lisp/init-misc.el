
;;gui setting
(tool-bar-mode 0) 
(menu-bar-mode 0) 
(scroll-bar-mode 0) 

;;startup animation
(setq inhibit-startup-message t)

;;display time
(display-time-mode 1) ;; 常显 
(setq display-time-24hr-format t) ;;格式 
(setq display-time-day-and-date t) ;;显示时间、星期、日期

;; all backups goto ~/.backups instead in the current directory
(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))

;;fullscreen
(defun switch-fullscreen nil
  (interactive)
  (let* ((modes '(nil fullboth fullwidth fullheight))
         (cm (cdr (assoc 'fullscreen (frame-parameters) ) ) )
         (next (cadr (member cm modes) ) ) )
    (modify-frame-parameters
     (selected-frame)
     (list (cons 'fullscreen next)))))

(define-key global-map [f5] 'switch-fullscreen)

;;provide feature
(provide 'init-misc)
