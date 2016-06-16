require 'json'
path = File.join(File.dirname(__FILE__), '../data/products.json')
file = File.read(path)
products_hash = JSON.parse(file)

# Print today's date

puts "                     _            _       "
puts "                    | |          | |      "
puts " _ __  _ __ ___   __| |_   _  ___| |_ ___ "
puts "| '_ \\| '__/ _ \\ / _` | | | |/ __| __/ __|"
puts "| |_) | | | (_) | (_| | |_| | (__| |_\\__ \\"
puts "| .__/|_|  \\___/ \\__,_|\\__,_|\\___|\\__|___/"
puts "| |                                       "
puts "|_|                                       "
puts

# For each product in the data set:
  # Print the name of the toy
  # Print the retail price of the toy
  # Calculate and print the total number of purchases
  # Calculate and print the total amount of sales
  # Calculate and print the average price the toy sold for
  # Calculate and print the average discount (% or $) based off the average sales price

unique_brands = []

products_hash["items"].each do |item|
  # Gather / calculate the required product data
  retail_price = item["full-price"].to_f
  total_purchases = item["purchases"].length
  total_sales = item["purchases"].map { |purchase| purchase["price"] }.reduce(:+)
  avg_price = (total_sales / total_purchases).round(2)
  avg_discount = ((1 - (avg_price / retail_price)) * 100).round(1)

  # Print the product report
  puts item["title"]
  puts "-" * 20
  puts "Retail Price: $#{retail_price}"
  puts "Total Purchases: #{total_purchases}"
  puts "Total Sales: $#{total_sales}"
  puts "Average Price: $#{avg_price}"
  puts "Average Discount: #{avg_discount}%"
  puts "-" * 20
  puts

  # Save unique brands for later processing
  unique_brands.push(item["brand"]) unless unique_brands.include?(item["brand"])
end

puts " _                         _     "
puts "| |                       | |    "
puts "| |__  _ __ __ _ _ __   __| |___ "
puts "| '_ \\| '__/ _` | '_ \\ / _` / __|"
puts "| |_) | | | (_| | | | | (_| \\__ \\"
puts "|_.__/|_|  \\__,_|_| |_|\\__,_|___/"
puts ""

# For each brand in the data set:
  # Print the name of the brand
  # Count and print the number of the brand's toys we stock
  # Calculate and print the average price of the brand's toys
  # Calculate and print the total revenue of all the brand's toy sales combined

unique_brands.each do |brand|
  brand_items = products_hash["items"].select { |item| item["brand"] == brand }

  # For each item matching the current brand, calculate the data for the report
  total_inventory = 0
  total_revenue = 0
  total_retail = 0
  item_count = brand_items.length

  # Get total numbers for all the items in this brand
  brand_items.each do |item|
    total_inventory += item["stock"]
    total_revenue += item["purchases"].map { |purchase| purchase["price"] }.reduce(:+)
    total_retail += item["full-price"].to_f
  end

  # Calculate the average product price for the brand
  avg_price = (total_retail / item_count).round(2)

  # Print the summary report for the brand
  puts brand
  puts "-" * 20
  puts "Number of Products: #{total_inventory}"
  puts "Average Product Price: $#{avg_price}"
  puts "Total Sales: $#{total_revenue.round(2)}"
  puts "-" * 20
  puts
end
