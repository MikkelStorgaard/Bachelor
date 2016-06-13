(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("geometry" "margin=1in")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "./kapitler/indledning"
    "./kapitler/typealiases"
    "./kapitler/structures"
    "./kapitler/signatures"
    "./kapitler/functors"
    "./kapitler/afslutning"
    "article"
    "art12"
    "graphicx"
    "import"
    "caption"
    "hyperref"
    "subcaption"
    "pgffor"
    "amssymb"
    "listings"
    "tcolorbox"
    "amsmath"
    "bussproofs"
    "inputenc"
    "dsfont"
    "relsize"
    "float"
    "courier"
    "geometry")
   (LaTeX-add-labels
    "subsec:abstract")
   (LaTeX-add-bibliographies
    "litteratur"))
 :latex)

