



## Draw a random sample from a distribution
  #- Size n = 10
  #- Normal(5, 1)
  # X ~ N(5,1)

samp <- rnorm(n = 10, mean = 5, sd = 1)
plot(samp)
hist(samp)
xbar = mean(samp)
print(xbar)

## Draw a random sample from a distribution
  #- Size n = 300
  #- Normal(5, 1) 
  #- X ~ N(5,1)
samp <- rnorm(n = 300, mean = 5, sd = 1)
xbar = mean(samp)
hist(samp)
abline(v = xbar, col = 'red')




## Put it in a loop
for(i in 1:50){
  samp <- rnorm(n = 300, mean = 5, sd = 1)
  xbar = mean(samp)
  hist(samp)
  abline(v = xbar, col = 'red')
  Sys.sleep(.5)
}


## OK, so what does the Central Limit Theorem tell us?
  #- It tells us about the distribution of all of the xbar's!
    #- States that Xbar (big X) is distributed Xbar ~ N(?,?)
    #- And the population mean of Xbar is the mean of X
    #- Xbar ~ N(5,?)
results = numeric()
for(j in 1:200){
 samp <- rnorm(n = 10, mean = 5, sd = 1)
 xbar <- mean(samp)
 print(xbar)
 results = c(results, xbar)  #--> adds on to the vector
 hist(results, xlim = c(3,7), breaks = 10)
 line <- readline() # puts in a pause
}


## Try it again, but with a larger sample size of 400
results = numeric()
for(j in 1:200){
  samp <- rnorm(n = 400, mean = 5, sd = 1)
  xbar <- mean(samp)
  print(xbar)
  results = c(results, xbar)  #--> adds on to the vector
  hist(results, xlim = c(3, 7), breaks = 10)
  line <- readline() # puts in a pause
}

## Try it again, but with a medium sample size of 100
## BUT A STRANGE DISTRIBUTION
results = numeric()
for(j in 1:200){
  samp <- runif(n = 100, min = 0, max = 10)
  xbar <- mean(samp)
  print(xbar)
  results = c(results, xbar)  #--> adds on to the vector
  hist(results, xlim = c(3, 7), breaks = 10)
  line <- readline() # puts in a pause
}


## What if we REALLY go crazy with the distribution?
results = numeric()
for(j in 1:300){
  samp <- runif(n = 100, min = 0, max = 10)^2
  xbar <- mean(samp)
  print(xbar)
  results = c(results, xbar)  #--> adds on to the vector
  hist(results, breaks = 10)
  line <- readline() # puts in a pause
}

