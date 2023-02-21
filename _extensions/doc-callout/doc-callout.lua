return {
  ["doc-callout"] = function(args, kwargs, meta)
      local calloutHeader = pandoc.Header(2, "Test header")
      local calloutContent = pandoc.Inlines{"Some text ", pandoc.Emph("with part in italic")}
      
      local calloutDiv = {}
      calloutDiv["type"] = "note"
      calloutDiv["content"] = pandoc.Blocks{calloutHeader, calloutContent}
      
      calloutOut = quarto.Callout(calloutDiv)
      
      return calloutOut
  end
}