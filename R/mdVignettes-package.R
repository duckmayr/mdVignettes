#' mdVignettes
#'
#' mdVignettes provides a vignette engine for markdown vignettes.
#'
#' To use the vignette engine, add
#'
#' \preformatted{
#'     Suggests: mdVignettes
#'     VignetteBuilder: mdVignettes
#' }
#'
#' to your DESCRIPTION file, and add YAML front matter:
#'
#' \preformatted{
#'     ---
#'     title: "<Your Vignette Title Here>"
#'     author: "<Your Name Here>"
#'     date: "<Date Here>"
#'     output: html_document
#'     vignette: >
#'       \%\VignetteIndexEntry{<Your Vignette Title Here>}
#'       \%\VignetteEngine{mdVignettes::md}
#'       \%\VignetteEncoding{UTF-8}
#'     ---
#' }
#'
#' If you would prefer to include your own custom CSS stylesheet
#' (rather than use the default stylesheet from the \code{markdown} package),
#' you can do the following:
#'
#' \preformatted{
#'     ---
#'     title: "<Your Vignette Title Here>"
#'     author: "<Your Name Here>"
#'     date: "<Date Here>"
#'     output:
#'       html_document:
#'         css: <Your stylesheet filename here>
#'     vignette: >
#'       \%\VignetteIndexEntry{<Your Vignette Title Here>}
#'       \%\VignetteEngine{mdVignettes::md}
#'       \%\VignetteEncoding{UTF-8}
#'     ---
#' }
#'
#' @name mdVignettes
#' @docType package
#' @author  JB Duck-Mayr
#' @importFrom markdown markdownToHTML
NULL
