setwd ("/Users/rental/Desktop/biocomputing/lectures/IBC_Exercise_07")
# Exercise 07

#Part 1
#write function to return oddrows of dataframe
iris = read.csv("iris.csv")

OddRows <-function(dataframe) {
  rows <-nrow(dataframe)
  oddindex <- seq(1,rows,2)
  oddrows <- dataframe[oddindex,]
  return(oddrows)
}
  #examples with iris
  OddRows(iris)
  
#Part 2 
# return the number of observations for a given species 
  Observations <-function(dataframe, myspecies){
    mysub <-dataframe[dataframe$Species == myspecies,]
    speciesObs <-nrow(mysub)
    return(speciesObs)
  }
  #example with iris and "setosa"
  Observations(iris, "setosa")
  
# return a dataframe for flowers with Sepal.Width greater than a value specified by the function 
  WideSepal<-function (dataframe,width) {
    wide <-dataframe[dataframe$Sepal.Width > width,]
    return(wide)
  }
  #example with iris and Sepal Width >3.5
  WideSepal(iris, 3.5)

# write the data for a given species into a csv file 
  Speciescsv<-function(dataframe,species){
    myspecies<-dataframe[dataframe$Species == species,]
    filename <- paste(species,".csv", sep = "")
    write.csv(myspecies, file = filename)
  }
  
  #example with iris and setosa
  Speciescsv(iris, "setosa")
    

