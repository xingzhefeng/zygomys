(assert (string? (sym2str 'abc)))
(assert (== "abc" (sym2str 'abc)))

(assert (symbol? (str2sym "abc")))
(assert (== 'abc  (str2sym "abc")))

;; require: longer version of req, to
;; illustrate a macro. The req macro in contrast is
;; defined in the gdsl program, so it is always
;; available.
(defmac require [sympath]
    ^(source (sym2str (quote ~sympath))))
