# Accessibility Feature to Quarto

# Reproducible example
quarto::quarto_render("accessibility_repex.qmd")

# Edit tex file
source("add_tagging.R")
add_tagging("accessibility_reprex.tex", compile = TRUE)

# Compile LaTeX file
# tinytex::lualatex()
