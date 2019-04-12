module CheckoutsHelper
  def time(data)
  data.strftime(" %A, %d %b %Y" )
  end
end
