# Accessibility Feature to Quarto

# Reproducible example
quarto::quarto_render("accessibility_repex.qmd")

# Edit tex file
source("a11y-utils.R")
add_alttext("accessibility_reprex.tex", compile = FALSE)
add_tagging("accessibility_reprex.tex", compile = TRUE)

# Compile LaTeX file
# tinytex::lualatex()
