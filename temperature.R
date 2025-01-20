

# Convert 'Months' to a factor to maintain the order
data$Months <- factor(data$Months, levels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", 
                                              "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))

# Load necessary libraries
library(ggplot2)
library(dplyr)

# Convert Year to factor for correct use in aesthetics
data$Year <- as.factor(data$Year)


#busby
combined_plot <- ggplot(data, aes(x = Months)) +
  # Bar graph for Precipitation, grouped by Year
  geom_bar(aes(y = Precipitation, fill = Year), 
           stat = "identity", 
           position = position_dodge(width = 0.8), 
           alpha = 0.7) +
  # Line graph for Temperature with points, grouped by Year
  geom_line(aes(y = Temperature, color = Year, group = Year), 
            size = 1.2, 
            position = position_dodge(width = 0.8)) +
  geom_point(aes(y = Temperature, color = Year), 
             shape = 16, 
             size = 3, 
             position = position_dodge(width = 0.8)) +
  scale_y_continuous(
    name = "Average Monthly Precipitation (inches)",
    sec.axis = sec_axis(~ ., name = "Average Monthly Soil Temperature (°C)") # Secondary axis for Temperature
  ) +
  labs(x = "Months") +
  theme_minimal() +
  theme(
    axis.text.x = element_text(hjust = 0.5, face = "bold", size = 12), # Center the text
    axis.text.y = element_text(face = "bold", size = 14),
    axis.title.x = element_text(face = "bold", size = 14),
    axis.title.y = element_text(face = "bold", size = 14),
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    panel.border = element_rect(color = "black", fill = NA, size = 1), # Add border around the plot
    legend.position = c(0.05, 0.95), # Legend inside top-left corner
    legend.justification = c(0, 1), # Align legend to top-left
    legend.title = element_text(size = 14, face = "bold"), # Legend title styling
    legend.text = element_text(size = 12), # Legend text styling
    legend.background = element_rect(fill = "white", color = "black"), # Add background and border
    legend.key = element_rect(fill = "white") # Transparent legend key
  ) +
  scale_fill_manual(values = c("2022" = "pink", "2023" = "lightblue", "2024" = "lightgreen")) +
  scale_color_manual(values = c("2022" = "red", "2023" = "blue", "2024" = "green")) +
  guides(
    fill = guide_legend(title = "Precipitation"),
    color = guide_legend(title = "Temperature")
  ) +
  scale_x_discrete(expand = expansion(add = c(0.5, 0.5))) # Ensure space for bars at the start and end

# Print the plot
print(combined_plot)

#carver

combined_plot <- ggplot(data, aes(x = Months)) +
  # Bar graph for Precipitation, grouped by Year
  geom_bar(aes(y = Precipitation, fill = Year), 
           stat = "identity", 
           position = position_dodge(width = 0.8), 
           alpha = 0.7) +
  # Line graph for Temperature with points, grouped by Year
  geom_line(aes(y = Temperature, color = Year, group = Year), 
            size = 1.2, 
            position = position_dodge(width = 0.8)) +
  geom_point(aes(y = Temperature, color = Year), 
             shape = 16, 
             size = 3, 
             position = position_dodge(width = 0.8)) +
  scale_y_continuous(
    name = "Average Monthly Precipitation (inches)",
    sec.axis = sec_axis(~ ., name = "Average Monthly Soil Temperature (°C)") # Secondary axis for Temperature
  ) +
  labs(x = "Months") +
  theme_minimal() +
  theme(
    axis.text.x = element_text(hjust = 0.5, face = "bold", size = 12), # Center the text
    axis.text.y = element_text(face = "bold", size = 14),
    axis.title.x = element_text(face = "bold", size = 14),
    axis.title.y = element_text(face = "bold", size = 14),
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    panel.border = element_rect(color = "black", fill = NA, size = 1), # Add border around the plot
    legend.position = c(0.05, 0.95), # Legend inside top-left corner
    legend.justification = c(0, 1), # Align legend to top-left
    legend.title = element_text(size = 14, face = "bold"), # Legend title styling
    legend.text = element_text(size = 12), # Legend text styling
    legend.background = element_rect(fill = "white", color = "black"), # Add background and border
    legend.key = element_rect(fill = "white") # Transparent legend key
  ) +
  scale_fill_manual(values = c("2020" = "pink", "2021" = "lightblue", "2022" = "lightgreen")) +
  scale_color_manual(values = c("2020" = "red", "2021" = "blue", "2022" = "green")) +
  guides(
    fill = guide_legend(title = "Precipitation"),
    color = guide_legend(title = "Temperature")
  ) +
  scale_x_discrete(expand = expansion(add = c(0.5, 0.5))) # Ensure space for bars at the start and end

# Print the plot
print(combined_plot)
