# Load necessary library
if(!require("readr")) install.packages("readr")
if(!require("zip")) install.packages("zip")

# Unzip the folder
zipfile <- "Employee_Profile.zip"
unzip(zipfile, exdir = "Employee_Profile")

# Read the CSV file
csv_file <- list.files("Employee_Profile", pattern = "*.csv", full.names = TRUE)
employee_data <- read_csv(csv_file)

# Display the data
print(employee_data)
