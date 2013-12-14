module PresentationsHelper

  def dbl_linebreak_to_section(string)
    string.gsub("\n\n", '<br/>')
  end
end
