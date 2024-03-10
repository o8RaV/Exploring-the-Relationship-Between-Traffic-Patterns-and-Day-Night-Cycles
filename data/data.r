# Day or Night Logistic Regression Model Documentation

# This script demonstrates building a logistic regression model to predict whether it's day or night based on the number of cars observed.

# Load required libraries
library(stats)

# 1. Create data frame

# Generate random data for the number of cars observed and random noise
day_or_night <- data.frame(
  num_cars = sample.int(n = 100, size = 1000, replace = TRUE),  # Number of cars observed
  noise = rnorm(n = 1000, mean = 0, sd = 10)  # Random noise
)

# 2. Determine if it's day or night based on the number of cars observed

# Define a threshold to determine if it's day or night
threshold <- 70

# Calculate the total observation (number of cars + noise) and assign 1 if it's day, 0 if it's night
day_or_night$is_day <- ifelse(day_or_night$num_cars + day_or_night$noise > threshold, 1, 0) 

# 3. Build logistic regression model to predict if it's day or night

# Fit a logistic regression model
day_or_night_model <- glm(
  is_day ~ num_cars,  # Dependent variable: Is it day or night? Predictors: Number of cars observed
  data = day_or_night,
  family = binomial()  # Binary logistic regression
)

# 4. Summary of the logistic regression model

# Print summary of the logistic regression model
summary(day_or_night_model)

# 5. Predictions based on the logistic regression model

# Generate predictions using the fitted logistic regression model
day_or_night_predictions <- predict(day_or_night_model, type = "response")

# 6. Plot predictions

# Plot the relationship between the number of cars observed and the estimated probability it's day
plot(day_or_night$num_cars, day_or_night_predictions, 
     xlab = "Number of cars observed",
     ylab = "Estimated probability it is day",
     main = "Predicted probabilities",
     col = ifelse(day_or_night$is_day == 1, "red", "blue"))

# 7. Slope estimation of the model

# Extract slope estimates from the logistic regression model
slopes <- summary(day_or_night_model)$coefficients[, 1:2]
print(slopes)

# 8. Save the logistic regression model

# Save the logistic regression model for future use
saveRDS(day_or_night_model, file = "day_or_night_model.rds")

coefficients <- coef(day_or_night_model)

# Save coefficients to a CSV file
write.csv(coefficients, file = "day_or_night_model_coefficients.csv", row.names = FALSE)

# 9. Boxplot showing the distribution of car counts during day and night

# Create a boxplot to visualize the distribution of car counts during day and night
boxplot(num_cars ~ factor(is_day), data = day_or_night,
        xlab = "Day/Night", ylab = "Number of Cars",
        names = c("Night", "Day"),
        main = "Distribution of Car Counts During Day and Night")
