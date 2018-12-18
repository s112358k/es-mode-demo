(require 'package)
(require 'org)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/" ))

(package-initialize)
(package-refresh-contents)
(package-install)
(package-install 'es-mode)


