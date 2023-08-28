@ios @android @wip
@IBS-DE @IBD-DE @HB-DE
Feature: UC-37 - New User Registration
	As a new user
	I want to register a new account
	so that I can begin using the health care application.

	Actors:             New users

	Trigger:            User installs and opens the app and views the registration screen.

	Success Scenario:   Users should be able to see the registration flows.

	Acceptance Criteria:
	//TODO: Add acceptance criteria

	@URS-UC-37-1
	Scenario: New users should see an option to register.
		Given user open the app
		Then user should see "NEU STARTEN"
		Given user press on "NEU STARTEN"
		Then user should see "Willkommen bei Cara Care!"
