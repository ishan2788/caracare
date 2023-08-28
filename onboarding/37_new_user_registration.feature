@ios @android @URS-37
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
		And user sees "Willkommen bei Cara Care!"
		Then user should see "NEU STARTEN"

	@URS-UC-37-2
	Scenario: Existing users should be able to login to their account.
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds

	@URS-UC-37-3
	Scenario: Existing Users should be able to reset password
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And create
		Given press on "EINLOGGEN"
		And type his "email" into id "Login screen email input"
		And type "password" into id "Login screen password input"
		And press on "PASSWORT VERGESSEN?"
		And press on "PASSWORT VERGESSEN?"
		And wait for 1 seconds
		Given user press on "Login srceen reset password email button"
		Then sees "Dein Passwort wird zurückgesetzt. Bitte prüfe deine Emails."
