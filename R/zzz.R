remove_extension <- function(filename) {
    return(sub("(.+)(\\..+?$)", "\\1", filename))
}

md_weave <- function(file, ...) {
    outname <- paste0(remove_extension(file), ".html")
    input <- readLines(file)
    if ( any(grepl("css:", input)) ) {
        stylesheet <- trimws(sub("css: ", "", input[grepl("css:", input)]))
    } else {
        stylesheet <- getOption("markdown.HTML.stylesheet")
    }
    markdown::markdownToHTML(file, output = outname, stylesheet = stylesheet)
    invisible(outname)
}

md_tangle <- function(file, ...) {
    outname <- paste0(remove_extension(file), ".R")
    file.create(outname)
    invisible(outname)
}

.onLoad <- function(libname, pkgname) {
    tools::vignetteEngine("md",
                          package = pkgname,
                          pattern = "[.]md$",
                          weave = md_weave,
                          tangle = md_tangle
    )
}
