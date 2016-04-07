# ToyCity Report Generator, Part 1
​
## Project Overview
​
For this project, we’re going to build a data-crunching sales report generator. Imagine that we run an online retailer “ToyCity” that sells the best toys in all the world. Things are not going well for ToyCity.  Children just aren’t playing with real toys anymore.
​

As a consequence, we’re going to have to start scaling back the number of products we sell. Our boss wants us to toy around with the sales data to garner some insights: which products are selling best, which brand earns us the most money, etc.
​

Our boss will provide a file with all the sales data. Your assignment is to write Ruby code that reads the sales data in, analyzes it, and prints out a generated report. Eventually we’ll save the resulting report to a new file, but in this first iteration we’ll print the report to the terminal.
​

## Completing this Project
​
You should have completed all the necessary steps for finishing this project in ToyCity Report Generator, Part 1. Before submitting, ensure your program does the following:
​
* Outputs basic information for each product, including its name, retail price, and total number of purchases.
* Outputs the total sales, average price, and average discount for each product.
* Outputs the number of toys in stock, average price per toy, and total sales volume for each brand.
​
Remember, you should **not** modify any of the existing code we have provided for you.
​

## Submitting Your Project
​
Before submitting your project for evaluation, we recommend that you check that each of the following is true:
​
* Your program runs without any errors
* You are proud of your project and its output
* You completed your project according to the instructions
* You checked your project against the [rubric](https://review.udacity.com/#!/projects/5604025048/rubric "rubric")
* Clarify what it is to have a dynamic report generator
* Create a zip file with your project
For instructions on how to do this, [Click Here](https://docs.google.com/document/d/1jPCDXBuD4xV8PsGLa5K9Fpn_9lSCTrXeOWcUKQGnATU/pub "Instructions on creating a zip file") .
​

When you feel ready to submit, use the blue 'Submit Project' button!
​

The result of running your report generator code will look something like this. Please see rationale for each calculation:
​

### Product Output
​
* Name => The name of the product
* Retail price => The retail price as listed for that product
* Total purchases => The total number of purchases for that project
* Total Sales => The sum of all individual items sold. This is the sum of the purchase price for each product. In the case of "LEGO Iron Man vs. Ultron": We sold two products. One was sold for $17.99 and the other for 18.99. The result is $36.98
* Average Price => Total Sales / number of purchases
* Average Discount => Retail Price - Average Price

**Average Discount for each product may be in percent form or a dollar amount.**
​
* Average Discount Percentage => (Average Discount / Retail Price) * 100
​

### Brand Output:
​
* Brand Name => Name of Brand
* Number of Products => Number of Products that are in stock for that product. In the case of Lego: Lego has 55 products in stock. 55 "LEGO Iron Man vs. Ultron" and 0 "LEGO Firehouse Headquarters"
* Average Product Price => The "full-price" of each product associated with this brand summed up / the number of products for that brand
* Total Sales => Each one of the "purchases" associated with this brand summed
​

Terminal output will look something like this:
​
```
Today's Date: 03/01/2016
                     _            _       
                    | |          | |      
 _ __  _ __ ___   __| |_   _  ___| |_ ___
| '_ \| '__/ _ \ / _` | | | |/ __| __/ __|
| |_) | | | (_) | (_| | |_| | (__| |_\__ \
| .__/|_|  \___/ \__,_|\__,_|\___|\__|___/
| |                                       
|_|                                       
​
LEGO Iron Man vs. Ultron
********************
Retail Price: $22.99
Total Purchases: 2
Total Sales: $36.98
Average Price: $18.49
Average Discount: $4.5
Average Discount Percentage: 19.57%
********************
​
Nano Block Empire State Building
********************
Retail Price: $49.99
Total Purchases: 2
Total Sales: $68.98
Average Price: $34.49
Average Discount: $15.5
Average Discount Percentage: 31.01%
********************
​
LEGO Firehouse Headquarters
********************
Retail Price: $199.99
Total Purchases: 2
Total Sales: $379.98
Average Price: $189.99
Average Discount: $10.0
Average Discount Percentage: 5.0%
​
 _                         _     
| |                       | |    
| |__  _ __ __ _ _ __   __| |___
| '_ \| '__/ _` | '_ \ / _` / __|
| |_) | | | (_| | | | | (_| \__ \
|_.__/|_|  \__,_|_| |_|\__,_|___/
​
LEGO
********************
Number of Products: 55
Average Product Price: $111.49
Total Sales: $416.96
​
NANO BLOCKS
********************
Number of Products: 12
Average Product Price: 49.99
Total Sales: $68.98
```
