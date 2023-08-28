@android
Feature: UC-3611 -- Update this Use case and get it from the Product team
	As a user,
	I want to register my account on the Caracare app
	so that I can enjoy all the benefits of the IBS therapy

	Actors: All users.

	Trigger: User installs the app

	Success scenario: User is able to create their account successfully.

	Acceptance criteria:
	- User shall be able to confirm their email address.
	- User shall be able to validated her access code.
	- User should be able to Set up two factor authentication.

	Background:
		Given a user
		And user open the app

	@Please-add-URS-ID'S
		@Please-add-URS-ID'S
	Scenario Outline:
		Given user sees "NEU REGISTRIEREN" in 120 seconds
		And user press on "NEU REGISTRIEREN"
		Then user sees "Vorbedingungen prüfen"

		Given user press on "JA"
		Then user sees "Auswahl des Medizinprodukts"

		Given user press on "Reizdarm"
		Then user sees "Cara Care für Reizdarm"

		Given user press on "AUSWAHL BESTÄTIGEN"
		Then user sees "Kontraindikationen prüfen"

		Given user press on "contradiction check screen checkBox diagnosis"
		Then user sees "Ich bin mindestens 18 Jahre alt."

		Given user press on "contradiction check screen checkBox minAge"
		And user press on "contradiction check screen checkBox maxAge"
		And user press on "contradiction check screen checkBox pregnancy"
		And user press on "BESTÄTIGEN"
		Then user sees "Schritt 4 | 8:"

		Given user enter "E2E Automation" into "registration screen nickname text input"
		And user has code of type <code_type> for study <study>
		And user enter unique email into "registration screen email text input"
		And user enter "Caracare@123" into "registration screen password text input"
		And hide keyboard

		And user press on "registration screen password terms of use check box"
		And user press on "registration screen password privacy policy check box"
		And user press on "WEITER"
		Then user sees "Account erstellen" in 60 seconds

		Given user press on "email verification screen open email app button"
		And user sees "[Cara C…] Bestätige deine E-Mail-Adresse" in 60 seconds
		And user refreshes their email
		And user enters the email code
		And user press on "email verification screen verify button"

		Given user sees "recovery code screen informed check box" in 60 seconds
		And user press on "recovery code screen informed check box"
		And user press on "recovery code screen continue button"

		Given user sees "JETZT NICHT" in 60 seconds
		And user press on "JETZT NICHT"

		Given user sees "technical tracking consent checkbox" in 60 seconds
		And user press on "technical tracking consent checkbox"
		And user press on "technical tracking consent continue button"

		Given user sees "code entry screen input code text input" in 60 seconds
		And enters access code into "code entry screen input code text input"
		And hide keyboard
		And user wait for 5 seconds
		And user press on "WEITER"

		Given user sees "phone entry screen phone text input" in 60 seconds
		And user enter "17627516657" into "phone entry screen phone text input"
		And hide keyboard
		And user press on "WEITER"

		Given user sees "phone verification screen resend button" in 60 seconds
		And user enters the mobile otp
		And user press on "phone verification screen verify button"

		Given user sees "study confirmation screen informed check box" in 60 seconds
		And user press on "study confirmation screen informed check box"
		And user wait for 5 seconds
		And user press on "WEITER"

		Given user sees "study intro screen continue button" in 60 seconds
		And user press on "study intro screen continue button"
		And user wait for 10 seconds

		Given user sees "Weiter"
		And user wait for 20 seconds
		And rct user completes T0 Questionnaire

		Examples:
			| code_type | study |
			| "Intervention" | "🧑‍💻 Test RCT IBS" |
			| "Control" | "🧑‍💻 Test RCT IBS" |
