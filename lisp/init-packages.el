;; cl - Common Lisp Extension
(require 'cl)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa_stable" . "http://elpa.emacs-china.org/melpa-stable/"))))



;; Add Packages
(defvar my/packages '(
                      ;; --- Auto-comletion ---
                      company
                      ;; --- Better Editor ---
                      hungry-delete;;快速删除回车
                      ;;smex;;M-x提示
                      swiper
                      counsel
                      smartparens
                      popwin
                      ;; --- Major Mode ---
                      js2-mode
                      ;; --- Minor Mode ---
                      nodejs-repl
                      exec-path-from-shell
                      ;; --- Themes ---
                      monokai-theme
                      ;; solarized-theme
                      ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))


;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))



;; 启动 hungry-delete 插件
;;(require 'hungry-delete)
(global-hungry-delete-mode)


;; 引号自动补全
(require 'smartparens-config)
(smartparens-global-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;; js-file 配置
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;; 开启全局 Company 补全
(global-company-mode t)


;; 启动主题
(load-theme 'monokai t)

;;(require popwin)
;;(popwin-mode t)



(provide 'init-packages)
