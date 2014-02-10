;; load-path
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/elisp/color-theme-6.6.0")

;; WindowSystemの時には、ツールバー、スクロールバーを表示しない
(when window-system
  (tool-bar-mode 0)
  (scroll-bar-mode 0))

;; C-tでWindow切り替え
(define-key global-map (kbd "C-t") 'other-window)

;; カラム番号も表示
(column-number-mode t)

;; フルパスを表示
(setq frame-title-format "%f")

;; color-theme
(when (require 'color-theme nil t)
  (color-theme-initialize)
  (color-theme-hober))
