@ios @android @URS-481
@IBS-DE @IBD-DE @HB-DE
Feature: UC-481 - User has access to food list
	As a user
    I want to access food lists for specific modules
    so that I can navigate food items that are recommended by the program list.

	Actors:    Users who are enrolled in specific nutritional modules
        - IBS - Nutrition
        - IBD - Low-FODMAP diet
        - HB - Nutrition

	Trigger:  User enters personalized food list via the tool kit icon
	- Home screen
	- Program Page.

	Success Scenario: Food list is displayed to user and can be navigated

	Acceptance Criteria:
	- there is one food list available for IBS Nutrition users
    - there is one food list available for IBD low fodmap users
    - there is one food list available for HB nutrition users
    - Introduction modals are shown to the user during first time usage of the food list
    - food list is stored per user, so user can make changes to his personal foods (change tags or mark as favorite)
    - food items in list view are sorted alphabetically within group (f.ex. within "Fruits": apple, pear, orange ..., after that section carrots")
    - favorites in food list is accessible through tap and filters only those marked as favorite
    - long list will display untagged "normal foods" and favorites
    - when using filter / tabs, only those within category are accessible ("normal foods" and "favorites")

@URS-UC-481-01