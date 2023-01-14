data = read.csv("Flipkart_Mobiles.csv")
#print(data)


#Removing the rows with Rating as NA
data_rating_vs_discount = subset(data,Rating!=0)
#print(data_rating_vs_discount)
#print(length(data_rating_vs_discount))

#adding discount row to the remaining rows
Discount.Percent = round(100*(data_rating_vs_discount$Original.Price-data_rating_vs_discount$Selling.Price)/data_rating_vs_discount$Original.Price,2)
data_rating_vs_discount = cbind(data_rating_vs_discount,Discount.Percent)
#print(data)

#Removing negative discount rows
data_rating_vs_discount = subset(data_rating_vs_discount,Discount.Percent>=0)

print(data_rating_vs_discount)
print(data_rating_vs_discount$Rating)

# print(min(data_rating_vs_discount$Rating))
# print(max(data_rating_vs_discount$Rating))
# print(min(Discount.Percent))
# print(max(Discount.Percent))

plot(x = data_rating_vs_discount$Rating,y = data_rating_vs_discount$Discount.Percent,main = "Discount VS Rating")