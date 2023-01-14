##brand vs Rating

# to make a dataset which combines and averages the rating for each Brand
data_brand_VS_rating = aggregate(Rating~Brand,data,mean)

#rounding off the data to 2 decimals
data_brand_VS_rating$Rating = round(data_brand_VS_rating$Rating,2)
#print(data_brand_VS_rating)

