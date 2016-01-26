def stock_picker (stocks)
	
	array_length = stocks.length 
	highest_profit = 0
	profit = 0
	buy = 0
	sell = 0
	sell_day = 0
	buy_day = 0
	
	array_length.times do |x|
			i = x
		while i < array_length do
			buy = stocks[x-1]
			sell = stocks[i]
			profit = sell - buy
			
			if highest_profit < profit
				highest_profit = profit
				buy_day = stocks.index(buy)
				sell_day = stocks.index(sell)
				

				end
			i = i + 1
		end
	end

	puts "Buy on day #{buy_day} and sell on day #{sell_day} and you will make #{highest_profit} dollars"
	
end

stock_picker([17,3,6,9,15,8,6,1,10])

