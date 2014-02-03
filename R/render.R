render <-
    function                            # simple string-interpolation
(
    tmpl                                # template-string
   ,repl                                # replacement assoc-list
   ,varChar = "$"                       # variable-symbol
)
{
    Reduce(
        function(s, n)
    {
        gsub(paste("\\", varChar, n, "\\", varChar, sep = ""),
             repl[[n]], s)
    }
        ,names(repl)
        ,tmpl
        )
}
