class MakeSnippet
  def make_snippet(text)
      snippet = text.split(" ")
       if snippet.length > 5
        return "#{snippet[0..4].join(" ")}..."
       else
         return snippet.join(" ")
       end
  end
end
