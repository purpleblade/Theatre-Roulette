
set.seed(1)
plays <-rnorm(13, mean = 2, sd = .25)


y <-vector()
for (i in 1:1000){
hat<-sample(plays, replace=TRUE)
counter <-1
     while (length(unique(hat))<13) {
          hat<-(c(hat,sample(plays,1, replace=TRUE)))
          counter <<-counter+1
     }
y <-c(y,sum(hat))
}
print(summary(y))
print(str(y))
plays
