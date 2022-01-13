


original.population = rnorm(2000, 4, 2)
# original.population = rexp(20000, 1/15)
# var(original.population) #--> this would usually be unobserved (a greek letter)
# mean(original.population) #--> this would usually be unobserved (a greek letter)

hist(original.population)

#

n = 5

sample.one = sample(x = original.population, size = n)
mean.sample.one = mean(sample.one)  # sum(sample.one)/length(sample.one)
print(mean.sample.one)

# 

sample.two = sample(x = original.population, size = n)
mean.sample.two = mean(sample.two)
print(mean.sample.two)


#

sample.three = sample(x = original.population, size=n)
mean.sample.three = mean(sample.three)
print(mean.sample.three)

#

bar.x.n = c(mean.sample.one, mean.sample.two, mean.sample.three)
bar.x.n

hist(bar.x.n)

#

for(r in 4:1000){
  sample.r = sample(x = original.population, size=n)
  mean.sample.r = mean(sample.r)
  bar.x.n[r] = mean.sample.r
  
  if(r %% 5 == 0) {Sys.sleep(.05)
    hist(bar.x.n, col='green', main=paste0('r=', r), cex.main = 7, probability=T)
  }
}


#
mean(original.population)  #--> Would usually be unobserved!
var(original.population) #--> Would usually be unobserved!

var(original.population)/n  #---> CLT says the "sampling distribution" of the mean has a variance of sigma^2 / n and is Normally distributed

mean(bar.x.n)
var(bar.x.n)
