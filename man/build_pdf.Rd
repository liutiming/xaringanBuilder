% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pdf.R
\name{build_pdf}
\alias{build_pdf}
\title{Prints xaringan slides to a PDF file.}
\usage{
build_pdf(
  input,
  output_file = NULL,
  complex_slides = FALSE,
  partial_slides = FALSE,
  delay = 1
)
}
\arguments{
\item{input}{Path to Rmd or html file of xaringan slides.}

\item{output_file}{The name of the output file. If `NULL` (the default) then
the output filename will be based on filename for the input file.
If a filename is provided, a path to the output file can also be provided.}

\item{complex_slides}{For "complex" slides (e.g. slides with panelsets or
other html widgets or advanced features), set `complex_slides = TRUE`.
Defaults to `FALSE`. This will use the {chromote} package to iterate through
the slides at a pace set by the `delay` argument. Requires a local
installation of Chrome.}

\item{partial_slides}{Should partial (continuation) slides be
included in the output? If `FALSE`, the default, only the complete slide
is included in the PDF.}

\item{delay}{Seconds of delay between advancing to and printing
a new slide. Only used if `complex_slides = TRUE` or `partial_slides =
TRUE`.}
}
\description{
Prints xaringan slides to a PDF file.
}
\examples{
\dontrun{
# Build simple pdf from Rmd or html file
build_pdf("slides.Rmd")
build_pdf("slides.html")

# Build simple pdf from Rmd or html file and include
# partial (continuation) slides
build_pdf("slides.Rmd", partial_slides = TRUE)
build_pdf("slides.html", partial_slides = TRUE)

# Build "complex" xaringan slides to pdf from Rmd or html file
build_pdf("slides_complex.Rmd", complex_slides = TRUE)
build_pdf("slides_complex.html", complex_slides = TRUE)

# Build "complex" xaringan slides to pdf from Rmd or html file and include
# partial (continuation) slides
build_pdf(input = "slides_complex.Rmd",
          output_file = "slides_complex_partial.pdf",
          complex_slides = TRUE,
          partial_slides = TRUE)
build_pdf(input = "slides_complex.html",
          output_file = "slides_complex_partial.pdf",
          complex_slides = TRUE,
          partial_slides = TRUE)
}
}
