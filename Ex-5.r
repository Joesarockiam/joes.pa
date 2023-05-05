sales <- read_excel("C:/Users/joesa/Documents/SEM-4/Predictive Analytics/sales_data.xlsx")
sales_model <- lm(sales ~ NO_OF_PRODUCTS + SALES, data = sales)