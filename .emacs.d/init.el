;; load-path
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/elisp/color-theme-6.6.0")

;;
(setq inhibit-startup-messaget t)

;; ターミナル以外はツールバー、スクロールバーを非表示
(when window-system
  ;; tool-barを非表示
  (tool-bar-mode 0)
  ;; scroll-barを非表示
  (scroll-bar-mode 0))

;; CocoaEmacs以外はメニューバーを非表示
(unless (eq window-system 'ns)
  ;; menu-barを非表示
  (menu-bar-mode 0))

;; keyset
(global-set-key "\C-h" 'backward-delete-char) ;C-h as BackSpace
(global-set-key "\M-?" 'help-for-help)        ;M-? as help

;; "C-t" でウィンドウを切り替える。初期値はtranspose-chars
(define-key global-map (kbd "C-t") 'other-window)

;; http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz
(when (require 'color-theme nil t)
  ;; テーマを読み込むための設定
  (color-theme-initialize)
  ;; テーマhoberに変更する
  (color-theme-hober))

;; カラム番号も表示
(column-number-mode t)

;; ファイルサイズを表示
(size-indication-mode t)

;; タイトルバーにファイルのフルパスを表示
(setq frame-title-format "%f")

;; フレームの設定
(setq default-frame-alist
      (append (list
	       ;; サイズ・位置
               '(width . 140)	; 横幅(文字数)
               '(height . 68)	; 高さ(行数)
               '(top . 0)	; フレーム左上角 y 座標
               '(left . 600)	; フレーム左上角 x 座標
               )
              default-frame-alist))

;; beep
(setq visible-bell nil)

;; 
(cd "~")

