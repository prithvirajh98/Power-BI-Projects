# Amazon Prime Video Dashboard - Tasks Documentation

## Task 1: Comparing Total Shows by Release Year (This Year vs Last Year)
	• Objective: Display a visual comparison of total shows released in the two most recent years available in the dataset.
	• Implementation:
		○ Created a bar chart visual showing the count of shows for 2020 and 2021.
		○ Applied a filter to limit the data to the years 2020 and 2021.

## Task 2: Average Shows Per Country (Excluding Drama)
	• Objective: Display the average number of shows per country while excluding shows listed under the "Drama" genre.
	• Implementation:
		○ Created a card visual to display the calculated average.
		○ Used the DAX measure:
		AverageShowsPerCountry_ExcludingDrama = 
		AVERAGEX(
		    SUMMARIZE(
		        FILTER('amazon_prime_titles', NOT(CONTAINSSTRING('amazon_prime_titles'[listed_in], "Drama"))),
		        'amazon_prime_titles'[country],
		        "ShowCount", COUNT('amazon_prime_titles'[show_id])
		    ),
		    [ShowCount]
		)

## Task 3: Grouping Ratings into "Young Audience" and "Mature Audience"
	• Objective: Categorize shows into "Young Audience" (under 18+) and "Mature Audience" (18+ and above) based on their rating.
	• Implementation:
		○ Added a calculated column with the following DAX formula:
		Audience Category = 
		SWITCH(
		    TRUE(),
		    amazon_prime_titles[rating] IN {"TV-Y", "TV-Y7", "TV-G", "TV-PG", "TV-14", "13+", "7+"}, "Young Audience",
		    amazon_prime_titles[rating] IN {"TV-MA", "18+", "R", "NR", "NC-17"}, "Mature Audience",
		    "Unknown"
		)
		○ Created a bar chart visual to display the distribution of shows across audience categories.
Overall Enhancements:
	• All visuals were added to the "Tasks" page of the dashboard for easy review.
	• Filters and slicers were applied where necessary to enhance interactivity and user experience.

 ## Dashboard Image
 
 ![image](https://github.com/user-attachments/assets/acc31843-46e9-4e5d-a150-942492118b08)


