# Create data frame
day_or_night <- data.frame(
  num_cars = sample.int(n = 100, size = 1000, replace = TRUE),
  noise = rnorm(n = 1000, mean = 0, sd = 10)
)
day_or_night$is_day <- ifelse(day_or_night$num_cars + day_or_night$noise > 70, 1, 0) # Adjust threshold for day

# Build logistic regression model
day_or_night_model <- glm(
  is_day ~ num_cars,
  data = day_or_night,
  family = binomial()
)

# Summary of the model
summary(day_or_night_model)

# Predictions
day_or_night_predictions <- predict(day_or_night_model, type = "response")

# Plot predictions
plot(day_or_night$num_cars, day_or_night_predictions, 
     xlab = "Number of cars that were seen",
     ylab = "Estimated probability it is day",
     main = "Predicted probabilities",
     col = ifelse(day_or_night$is_day == 1, "red", "blue"))

# Slope estimation
slopes <- summary(day_or_night_model)$coefficients[, 1:2]
print(slopes)

# Save the model
saveRDS(day_or_night_model, file = "day_or_night_model.rds")

boxplot(num_cars ~ factor(is_day), data = day_or_night,
        xlab = "Day/Night", ylab = "Number of Cars",
        names = c("Night", "Day"),
        main = "Distribution of Car Counts During Day and Night")
