##### Price VS RAM
library(dplyr)


### to remove devices with RAM in MB
data_price_vs_ram <- filter(data_price_vs_ram, !grepl("MB", Memory))

#making separate columns for price and memory
price_coln = data_price_vs_ram$Original.Price
memory_coln = data_price_vs_ram$Memory

#removing "GB" and converting it to number
memory_coln = strsplit(data_price_vs_ram$Memory,"GB")
memory_coln <- suppressWarnings((as.integer(memory_coln)))     



print(length(memory_coln))
print(length(price_coln))

plot(memory_coln,price_coln)


