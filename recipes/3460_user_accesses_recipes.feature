@ios @android @URS-3460
@IBS-DE @IBD-DE @HB-DE
Feature: UC-3460 - User accesses recipes
	As a Cara Care user, I want to be able to see and find recipes so that I can make recipes for foods that are interesting to me and for my diet

	As a Cara Care user, I want to be able to filter recipes based on intolerances and ingredients so that I can see recipes most relevant for my diet

	As a Cara Care user, I want to see a list of food list ingredients that comprise the recipes so that I can learn more about ingredients

	Actors:             All users

	Trigger:            User clicks on Recipes entrypoint.

	Success Scenario:   User sees Recipes section in app with lists of recipes

	Acceptance Criteria:
	- user can see grouped recipes by type and subtype
	- user can filter recipes by intolerance/allergies and diet, and preparation time
	- user can search recipes by name
	- user can see ingredient details and instructions on each recipe
	- user can add each recipe to tracking
	- user can favorite recipes and see list of favorites
	- user can see food list and food items from recipe page

	@URS-UC-3460-1
	Scenario: When user enters the Recipes section, the system shall show a list of recipes, separated by type of
		recipe/meal, and allow the user to select among these recipe sections and subtypes within each recipe section.

		Given a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And create
		And user open the app
		And user login
		And user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Rezepte"
		Then user sees "Alle Rezepte für Frühstück"
		And sees "FRÜHSTÜCK"
		And sees "BROT UND BRÖTCHEN"
		Given user scroll up
		Then sees "Smoothies"

	@URS-UC-3460-05
	@URS-UC-3460-7
	Scenario: The system shall display a food list of the food items that comprise recipes through an entrypoint on the recipes page.
		The food items shall have similar items and recipes that use the food item listed for each item.

		Given user press on "Bananen Pancake mit Erdnussbutter"
		Then sees "Zutaten"
		And sees "1 Portion"
		And sees "1 Ei der Größe L"
		Given user press on "1 Banane"
		Then user sees "Kann man ersetzen durch"
		And sees "Rezepte mit Banane"

	@URS-UC-3460-6
	Scenario: The system shall allow users to add each recipe to tracking diary via a link in each recipe, which adds a tracking food entry with pre-filled ingredients from the recipe
		Given press "Back"
		And wait for 1 seconds
		And user scroll up
		Then user sees "WIE ZUBEREITEN?"
		Given user scroll up
		Then sees "ZUM EINTRAG HINZUFÜGEN"
		Given user press on "ZUM EINTRAG HINZUFÜGEN"
		Then user sees "Essen und weitere Getränke"
		And sees "ALLE SICHERN"
		Given press "ALLE SICHERN"
		Then user sees "Ein neuer Eintrag wurde hinzugefügt"
		And sees "Tracking"

	@URS-UC-3460-2
	Scenario: The system shall allow the user to search for recipes by name
		Given user wait for 2 seconds
		And press "Back"
		And type "Bana" into "Alle Rezepte durchsuchen"
		Then user sees "Bananen - Beeren Nice Cream"
