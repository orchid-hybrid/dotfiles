(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (dichromacy)))
 '(inhibit-startup-screen t)
 '(proof-electric-terminator-enable t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; My personal emacs stuff

(setq-default indent-tabs-mode nil)

(add-to-list 'load-path "~/Code/emacs/")

(load "paredit.el")
(add-hook 'lisp-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook #'enable-paredit-mode)
(put 'match 'scheme-indent-function 1)

(load "persistent-scratch.el")
(load-persistent-scratch)
(push #'save-persistent-scratch kill-emacs-hook)

(load "~/Code/emacs/tuareg/tuareg-site-file")

(load "~/Code/emacs/ProofGeneral-4.2/ProofGeneral-4.2/generic/proof-site.el")
