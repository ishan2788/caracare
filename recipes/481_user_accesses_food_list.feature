@ios @android @wip
@IBS-DE @IBD-DE @HB-DE
Feature: UC-481 - User accesses food list
	As a user I want to access food lists for specific indications
	so that I can navigate food items that are recommended by the program list.

	Actors:             Users who are enrolled in nutritional modules

	Trigger:            User enters personal food list.

	Success Scenario:   Food list is displayed to user and can be navigated

	Acceptance Criteria:
	- IBS Users + IBD low fodmap users + HB User: food list is stored per user, so user can make changes to his personal foods (change tags or mark as favourite)
	- there is one food list available for IBS users
	- there is one food list available for IBD users
	- there is one food list available for HB users
	- IBS Users + IBD low fodmap users + HB Users: food items in list view are sorted alphabetically within group (f.ex. within "Fruits": apple, pear, orange ..., after that section carrots")
	- IBS Users + IBD low fodmap users + HB Users: favourites in food list is accessible through tap and filters only those marked as favourite
	- IBS Users + IBD low fodmap users + HB User: long list will display untagged "normal foods" and favourites
	- IBS Users + IBD low fodmap users + HB User: when using filter / tabs, only those within category are accessible ("normal foods" and "favourites")

	Background:
		Given a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And with fixture "personalised_cbt_nutrition"
		And create
		And user open the app
		And user login


	@URS-UC-481-1
	Scenario: When user opens food list in program for the first time
		the system shall show introduction article on how to use the food list and disclaimer on risks of elimination diet.
		Then user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
