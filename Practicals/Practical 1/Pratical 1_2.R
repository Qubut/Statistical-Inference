animals <- data.frame(
  species = c("swift", "falcon", "goose", "starling", "cheetah", "horse", "hippo", 
              "man", "squirrel", "cat", "shark", "seahorse"),
  speed = c(200.00, 70.00, 70.00, 50.00, 70.00, 50.00, 30.00, 
            25.00, 12.00, 35.00, 40.00, 0.02),
  medium = factor(c("air", "air", "air", "air", "land", "land", 
                    "land", "land", "land", "land", "water", "water")),
  weight = c(0.02, 0.70, 2.20, 0.05, 50.00, 450.00, 2500.00, 
             80.00, 0.60, 4.00, 600.00, 0.10)
)

print(animals)


boxplot(animals$speed ~ animals$medium, 
        main = "Speed of Animals by Medium", 
        xlab = "Medium", 
        ylab = "Speed in km/h", 
        col = "lightgray", 
        border = "black"
)

aquatic<-animals[animals$medium=="water",]

print(aquatic)

print(table(animals$medium))
