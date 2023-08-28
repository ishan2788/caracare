@ios @android @URS-UC-3121
@IBS-DE @IBD-DE @HB-DE
Feature: UC-481 - User accesses food list
	As a new user
	I want to use a checkbox in the privacy policy
	so that I can give or revoke my consent to processing of personal data.

	As a backend user
	I want to be able to access consent given for each user
	so that I am able to see the date and version of the privacy policy.

	As an existing user
	I want to be able to see and access the privacy policy when it's updated
	so that I can read and revoke my consent to it.

	Actors:             All new User

	Trigger:            - Account creation and registration flow
	- First time login after an app update
	- Profile settings

	Success Scenario:   User is able to give and revoke consent to the privacy policy and terms of use

	Acceptance Criteria:
	- User can proceed the registration after accepting the mandatory consent to terms of use and privacy policy paragraph 10.1
	- User can proceed the registration with or without accepting the voluntary consent to privacy policy paragraph 10.2.
	- Consent is saved in the backend
	- Overview of given consent is shown  in the profile settings, so that the user can later change/revoke it

	@URS-UC-3121-01
	Scenario: When user first runs through registration Step 1 of Privacy Policy system shall force user to give mandatory confirmation to 2 separate consent boxes to agree to the terms of use and privacy policy on the registration screen.:
		terms and conditions
		data processing according to privacy policy (paragraph 10.1)
		If user gave consent to both,
		system shall enable the next button and continue to next step.
		Else user will not be able to continue the registration process

		Given user open the app
		And user press on "NEU STARTEN"
		Then user should see "Willkommen bei Cara Care!" in 120 seconds
		Given user press on "Cara Care für Reizdarm"
		And user press on "WEITER"
		And user press on "BESTÄTIGEN"
		And user press on "Ich bin mindestens 18 Jahre alt."
		And user press on "Ich bin unter 70 Jahre alt."
		And user press on "Ich bin nicht schwanger."
		And user press on "BESTÄTIGEN"
		And user scroll down
		And press "WEITER ZUR REGISTRIERUNG"
		And enter "test-user@test.com" into "E-Mail-Adresse"
		And enter "@Test-password12" into "Passwort"
		And enter "@Test-password12" into "Passwort erneut eingeben"
		And enter "77AAAAAAAAAAAAAX" into "Freischalt- oder Zugangscode"
		And user scroll down
		And user press on "Registration screen register button"
		Then user sees "Ich habe die Nutzungsbedingungen gelesen und akzeptiere sie."
		Given user press on "Ich habe die Nutzungsbedingungen gelesen und akzeptiere sie."
		And user press on "Ich habe die Datenschutzerklärung gelesen und stimm"
		Given user press on "Registration screen register button"
		Then  user sees "E-Mail Programm öffnen"

	@URS-UC-3121-06
	Scenario: After completion the registration the user has the option to view their privacy policy consent via the profile setting.

		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 2
		And create
		And user login
		And user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And user press on "Profil"
		And user scroll down
		And user press on "Datenschutz-Einwilligungen"
		Then user should see "Du hast Cara Care folgende Einwilligungen erteilt"

	@URS-UC-3121-07
	Scenario: The user can change/revoke their via the profile settings and changes should be stored accordingly in the backend. If the consent for privacy policy paragraph 10.1 is revoked by the user, a modal shall be shown before deleting the account.

		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 2
		And create
		And user login
		And user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And user press on "Profil"
		And user scroll down
		And user press on "Datenschutz-Einwilligungen"
		And user should see "Du hast Cara Care folgende Einwilligungen erteilt"
		And user press on "Mit dem Widerruf der Einwilligung der Nutzungsbedin"
		Then user should see "Wir empfehlen dir, deine Nutzungsdaten vor Löschung deines Accounts abzurufen"
