class Eratos
  def self.get(x)
    
    # https://ja.wikipedia.org/wiki/%E3%82%A8%E3%83%A9%E3%83%88%E3%82%B9%E3%83%86%E3%83%8D%E3%82%B9%E3%81%AE%E7%AF%A9
    # Step 1
    searchList = Array.new(x-1) { |i| i+2}
    primeList = []

    # Step 2, 3
    rootX = (x ** 0.5)
    while searchList[0] < rootX
	    search = searchList[0]
	    searchList.delete_if { |item| (item % search) == 0 }
	    primeList.push search
	end

	# Step 4
	primeList += searchList

    primeList
  end
end

p Eratos.get(ARGV[0].to_i)
