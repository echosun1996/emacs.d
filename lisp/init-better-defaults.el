(setq ring-bell-function 'ignore)

;; 显示行号
(global-linum-mode t)


(global-auto-revert-mode t)

;; 禁止 Emacs 自动生成备份文件
(setq make-backup-files nil)
(setq auto-save-default nil)

;; 显示最近打开过的文件
;;(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-item 10)

;; 默认启动括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode t)


(provide 'init-better-defaults)
