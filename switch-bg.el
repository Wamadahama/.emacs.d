(defun switch-bg ()
  (interactive)
  ;; use a property “state”. Value is t or nil
  (if (get 'switch-bg 'state)
      (progn
	(moe-dark)
	(put 'switch-bg 'state nil))
    (progn
      (moe-light)
      (put 'switch-bg 'state t))))
