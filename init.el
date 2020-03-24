;; 配置国内源
;; (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
;;                          ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-org)
(require 'init-keybindings)
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)

;; 快速打开配置文件
;;(defun open-init-file()  (interactive)
;;  (find-file "~/.emacs.d/init.el"))






;; 自动删除选中
;;(delete-selection-mode t)

;; 默认全屏
;;(setq initial-frame-alist (quote ((fullscreen.maximized))))





;; smex not use
;;(require 'smex)
;;(smex-initialize)
;;(global-set-key (kbd "M-x") 'smex)


;;(setq enable-recursive-minibuffers t)


;; Always start smartparens mode in js-mode.
;;(add-hook 'js-mode-hook #'smartparens-mode)
;;(add-hook 'emacs-lisp-mode-hook #'smartparens-mode
