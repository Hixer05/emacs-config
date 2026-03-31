;; TODO: add to a shared .el
(let ((modules '("emacs-basic")))
  (dolist (module modules)
    (unless (file-exists-p (concat module ".el"))
      (org-babel-tangle-file (concat module ".org")))
    (load (concat module ".el"))))

(emacs-basic/configure)
(setq my/is-guix t)
