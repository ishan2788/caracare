@ios @android @URS-232
@IBS-DE @IBD-DE @HB-DE
Feature: UC-232 - User accesses important articles inside toolkit
	As a user, I want to easily access a set of program related tools (e.g., food list, content, symptom checker, …)
	from the home screen and program screen.

	Actors:             All users except Control Group User
	- IBS - all user groups except Control group before conversion
	- IBD - all user groups except Control group
	- HB - all user groups except Control group

	Trigger:            User clicks on tool kit entry point
	- Home screen
	- Program Page.

	Success Scenario:   User accesses set of entry points linking user to parts of app conveniently combined in tool kit

	Acceptance Criteria:
	- Before finalizing the first questionnaire each user shall have access to 4 functionalities
	- IBS and HB: Symptom checker, Chat, Goal setting, Library
	- IBD: Disease status, Chat, Goal setting, Library
	- After completing T0 each user shall gain access to the Health report functionality
	- If user is enrolled in a specific nutrition module user shall gain access to the Food list functionality
	- Functions include deep links (for example to food list,, etc.) or to content (text articles, videos, audio content)

@URS-UC-232-01