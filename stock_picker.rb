

def stock_picker(prices)

	biggest_profit, buy, sell = 0, 0, 0
	new_prices = prices.dup
	prices.each do |x|
		new_prices.each do |y|
		profit = x - y
			if (profit < biggest_profit)
				biggest_profit = profit 
				sell = x
				buy = y
			end
		new_prices.delete(new_prices.first)
		end
	end
	buy = prices.index(buy)
	sell = prices.index(sell)
	print "#{sell}, #{buy}"
end


