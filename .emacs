(custom-set-variables
 '(custom-enabled-themes (quote (wombat)))
 '(inhibit-startup-screen t))
(custom-set-faces)

(add-to-list 'load-path "~/.emacs.d/")

(global-linum-mode t)
(tool-bar-mode -1)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;(set-default-font "-outline-Consolas-normal-r-normal-normal-14-97-96-96-c-*-iso8859-1")

;; Org mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; IDO
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; C++
(c-add-style "mycpp" '("stroustrup"
		       (indent-tabs-mode . nil)        ; tabs to spaces
		       (c-basic-offset . 4)            ; tab == 4 spaces
		       (c-offsets-alist . ((inline-open . 0)
					   (brace-list-open . 0)
					   (statement-case-open . +)))))

(defun enable-mycpp-style ()
  (c-set-style "mycpp")
  (auto-fill-mode)
  (c-toggle-auto-hungry-state 1))

(add-hook 'c++-mode-hook 'enable-mycpp-style)


;; auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
