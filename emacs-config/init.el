(dolist (dir '(
               "funcs"
               "advices"
               "aliases"
               "post-package-load"))
  (dolist (el (directory-files (format "%s/%s" (file-name-directory load-file-name) dir) t "\.el$"))
    (load-file el)))
