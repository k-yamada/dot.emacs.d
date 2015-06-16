;; grep-find
(defadvice grep-find (around inhibit-read-only activate)
  ""
  (let ((inhibit-read-only t))
    ad-do-it))
