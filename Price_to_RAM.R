### price vs rom

# remove datas who' RAM not in GB
library(dplyr)
data_price_vs_rom <- filter(data, grepl("GB", Storage))

# extracting Price and RAM columns for the remaining datas
price_coln_2 = data_price_vs_rom$Original.Price
rom_coln = data_price_vs_rom$Storage

#removing "GB" and converting them to numbers
rom_coln = strsplit(data_price_vs_rom$Storage,"GB")
rom_coln <- suppressWarnings((as.integer(rom_coln)))  


#plot(price_coln_2,rom_coln)