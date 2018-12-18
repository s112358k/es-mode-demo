(package-initialize)
(require 'org)

(autoload 'es-mode "es-mode.el"
  "Major mode for editing Elasticsearch queries" t)
(add-to-list 'auto-mode-alist '("\\.es$" . es-mode))
(add-hook 'es-result-mode-hook 'hs-minor-mode)

(setq es-default-url "http://172.17.0.1:9200/")

(org-babel-do-load-languages
 'org-babel-load-languages
 '((elasticsearch . t)))
