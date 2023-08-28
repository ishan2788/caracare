@ios @android @URS-671
@IBS-DE @IBD-DE @HB-DE
Feature: UC-671 - User has access to food item detail page
	As a Cara user
    I want to be able to access details of food items
    so that I can see details of categories, labels and tags.

	Actors:    Users who are enrolled in specific nutritional modules
        - IBS - Nutrition
        - IBD - Low-FODMAP diet
        - HB - Nutrition

	Trigger:  User food item selected from food list view.

	Success Scenario: Users can see the food item detail page with further information on the item.

	Acceptance Criteria:
	- Display optional serving size ONLY if the field has been filled by the nutritionist team as serving size recommendation AND category is set to yellow.
    - If Category is YELLOW, and there is no serving size recommendation, display "moderat" or "moderate"
    - If Category is RED or GREEN, don't display optional serving size information, and display "gut" / "good" and "schlecht" / "bad"
    - User cannot update the Category in this view (until midnight in local time before the start of week 9 for IBS & IBD user and week 6 for HB User)
    - User shall be able to update the Category if functionality is enabled and new Category is saved
    - If a food item is favorited or un-favorited in a different view, display the correct setting in the food item detail view.
    - Unit of serving size recommendation is displayed in localized units (US vs metric) as defined by backend
    - System shall have space for description of food, which is left blank if not filled out by content team

    @URS-UC-671-01