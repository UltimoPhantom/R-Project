##brand vs Rating

Brand_coln = data$Brand
Discount_coln = round(100*(data$Original.Price-data$Selling.Price)/data$Original.Price,2)

data_brand_VS_Discount = cbind(Brand_coln,Discount_coln)
print(data_brand_VS_Discount)


# to make a dataset which combines and averages the rating for each Brand
data_brand_VS_Discount = aggregate(Discount_coln~Brand_coln,data_brand_VS_Discount,mean)
print(data_brand_VS_Discount)
#rounding off the data to 2 decimals
#data_brand_VS_rating$Rating = round(data_brand_VS_rating$Rating,2)
#print(data_brand_VS_rating)


data_brand_VS_Discount <- aggregate(Discount_coln ~ Brand, data, mean)
data$discount_coln <- with(data, ave(Discount_coln, Brand, FUN = function(x) mean(x)))

data_brand_VS_Discount$Discount_coln = round(data_brand_VS_Discount$Discount_coln,2)

print(data_brand_VS_Discount)