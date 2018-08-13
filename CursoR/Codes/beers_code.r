
# Beers on the wall

max=100

for(i in rev(2:max)){
	str1<-c(i," bottles of beer on the wall, ",i," bottles of beer.")
	str2<-c("Take one down and pass it around, ",(i-1), " bottles of beer on the wall." )
	print(paste0(str1, collapse=""))
	print(paste0(str2, collapse=""))
	cat("\n\n")
	
}

cat(paste0(c("1 bottle of beer on the wall, 1 bottle of beer.\n Take one down and pass it around, no more bottles of beer on the wall. \n\n No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more,",max,"bottles of beer on the wall."), collapse=" ") )
