module PageHelper
  def title(link)
    link[(link.rindex '/')+1..-1].upcase.gsub('_',' ')
  end
end
