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

	Background:
		Given a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And create
		And user open the app
		And user login

	@URS-UC-3460-4
	Scenario:"""
		- When user enters the Recipes section, the system shall show a list of recipes, separated by type of
		recipe/meal, and allow the user to select among these recipe sections and subtypes within each recipe section.
		- The system shall allow users to see a list of ingredients and prep work for each recipe. Each ingredient
		shall link to more information about that ingredient in its food item page
		- The system shall allow users to add each recipe to tracking diary via a link in each recipe, which adds a tracking food entry with pre-filled ingredients from the recipe
		- The system shall display a food list of the food items that comprise recipes through an entrypoint on the recipes page. The food items shall have similar items and recipes that use the food item listed for each item."""

		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Rezepte"
		And press on "Filter"
		Then sees "Weniger als 20 Minuten"
		And sees "Zwischen 20 und 40 Minuten"
		And sees "Mehr als  60 Minuten"
		And sees "Ohne Eier"
		And sees "Ballaststoffe"
		And sees "Laktosefrei"
		Given user press on "Ohne Eier"
		And press "Weniger als 20 Minuten"
		And press "Anwenden"
		Then user sees "Rührtofu"



