(TeX-add-style-hook "TR8"
 (lambda ()
    (LaTeX-add-bibliographies
     "tr8")
    (LaTeX-add-labels
     "sec:rationale"
     "sec:installation")
    (TeX-run-style-hooks
     "url"
     "latex2e"
     "art10"
     "article"
     "")))

