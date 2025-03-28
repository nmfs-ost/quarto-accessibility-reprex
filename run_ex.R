# Accessibility Feature to Quarto

# make rda files for a11y use
# asar::convert_output(output_file = "Report.sso",
#                      outdir = file.path(getwd(), "data"),
#                      model = "ss3",
#                      file_save = TRUE,
#                      savedir = file.path(getwd(), "data"),
#                      save_name = "petrale_convert_output"
#                      )
# output <- read.csv(file.path(getwd(), "data", "petrale_convert_output.csv"))
# stockplotr::exp_all_figs_tables(
#   dat = output,
#   ref_line = "msy",
#   ref_line_sb = "msy",
#   indices_unit_label = ""
#   )
# # make figures doc to copy into reprex
# asar::create_figures_doc(
#   subdir = getwd(),
#   rda_dir = getwd()
# )

# Reproducible example
quarto::quarto_render("accessibility_repex.qmd")

# Edit tex file
source("a11y-utils.R")
add_alttext("accessibility_reprex.tex", compile = FALSE)
add_tagging("accessibility_reprex.tex", compile = FALSE)

# Compile LaTeX file
# tinytex::lualatex()

# Tinkering with add_alttext
x = "accessibility_reprex.tex"
dir = getwd()
rda_dir = getwd()
alttext_csv_dir = getwd()

# test convert pdf to png then load in with alt text
img_file <- file.path(getwd(), "accessibility_reprex_files", "figure-pdf", "fig-landings-1.pdf")
pdftools::pdf_convert(
  img_file, 
  format = "png", 
  dpi = 300,
  filenames = file.path(getwd(), "accessibility_reprex_files", "figure-pdf", "fig-landings-1.png")
)
