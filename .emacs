(setq custom-file "~/.emacs.custom.el")

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode)
(add-to-list 'default-frame-alist `(font . "Iosevka-15"))
(fido-mode 1)
(setq make-backup-files nil)
(setq auto-save-default nil)

(eval-when-compile
  (require 'use-package))

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(add-to-list 'load-path "~/.emacs.local/")
(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

(load-file custom-file)
