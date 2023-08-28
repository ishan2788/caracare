@ios @android @wip
@IBS-DE @IBD-DE @HB-DE
Feature: 533 - Program choice flow
	As a new Cara Care user I want to be able to pick one of three medical devices
	during the signup flow:
	- IBD
	- IBS
	- Heartburn

	Actors:  All new users

	Trigger: User selected Register new account on the welcome screen

	Success Scenario: New users are able to pick one program, confirm (or not)
	that they have a diagnosis, tick required boxes and create an account.

	Acceptance Criteria:
	- As a user with IBS I shall be able to select the IBS program
	- As a user with IBD I shall be able to select the IBD program
	- As a user with HB I shall be able to select the HB Program

	@URS-UC-533-01
	Scenario:  When a new app user opens the app for the first time, the system should give
		them the possibility to sign in or register.

		Given user open app
		And user should see "NEU STARTEN"
		And user should see "EINLOGGEN"

	@URS-UC-533-02
	Scenario:  New app users shall be able to choose between different medical devices.

		Given user open the app
		And user press on "NEU STARTEN"
		Then user should see "Willkommen bei Cara Care!"
		And user should see "Cara Care für Reizdarm"
		And user should see "Cara Care für CED"
		And user should see "Cara Care für Sodbrennen"

	@URS-UC-533-03
	Scenario:  New app users should be informed about the aim and content of the selected program.

		Given user open the app
		And user press on "NEU STARTEN"
		Then user should see "Willkommen bei Cara Care!"
		Given user press on "Cara Care für Reizdarm"
		And user should see "Cara Care für Reizdarm ist ein zertifiziertes Medizinpro"

	@URS-UC-533-04
	Scenario:  New app users should be able to confirm that they have a diagnosis
		for the focus of their selected program.

		Given user open the app
		And user press on "NEU STARTEN"
		Then user should see "Willkommen bei Cara Care!"
		Given user press on "Cara Care für Reizdarm"
		And user should see "Cara Care für Reizdarm ist ein zertifiziertes Medizinpro"
		And user press on "WEITER"
		And user should see "Hinweis"
		And user should see "BESTÄTIGEN"

	@URS-UC-533-05
	Scenario:  New app users should be able to confirm that they are between 18 and 70 years of age, and
		in case of IBS users should be able to additionally confirm that they are not pregnant.

		Given user open the app
		And user press on "NEU STARTEN"
		Then user should see "Willkommen bei Cara Care!" in 120 seconds
		Given user press on "Cara Care für Reizdarm"
		And user should see "Cara Care für Reizdarm ist ein zertifiziertes Medizinpro"
		And user press on "WEITER"
		And user should see "Hinweis"
		And user sees "BESTÄTIGEN"
		And user press on "BESTÄTIGEN"
		And user press on "Ich bin mindestens 18 Jahre alt"
		And user press on "Ich bin unter 70 Jahre alt"
		And user press on "Ich bin nicht schwanger"
		And user press on "BESTÄTIGEN"
		Then user should see "Erhalte Zugang zu Cara Care für Reizdarm"

	@URS-UC-533-06 @wip
	Scenario:  In the case of IBD and HB users, new app users should be able to select their sub-diagnosis.

		Given user open the app
		And user press on "NEU STARTEN"
		Then user should see "Willkommen bei Cara Care!" in 120 seconds
		Given user press on "Cara Care für Reizdarm"
		And user should see "Cara Care für Reizdarm ist ein zertifiziertes Medizinpro"
		And user press on "WEITER"
		And user should see "Hinweis"
		And user sees "BESTÄTIGEN"
		And user press on "BESTÄTIGEN"
		And user press on "Ich bin mindestens 18 Jahre alt"
		And user press on "Ich bin unter 70 Jahre alt"
		And user press on "Ich bin nicht schwanger"
		And user press on "BESTÄTIGEN"
		Then user should see "Erhalte Zugang zu Cara Care für Reizdarm"
		Given user press on "WEITER ZUR REGISTRIERUNG"
		And type his "test-user@test.com" into "E-Mail-Adresse"
		And type his "@Test-password12" into "Passwort"
		And type his "@Test-password12" into "Passwort erneut eingeben"
		And type his "77AAAAAAAAAAAAAX" into "Die App wird für dich konfiguriert"
		And user press on "Ich habe die Nutzungsbedingungen gelesen und akzeptiere sie"
		And user press on "Ich habe die Datenschutzerklärung gelesen und stimm"
		And user press on "Registrieren"
		Given user sees "E-Mail Programm öffnen"
		And user press on "E-Mail Programm öffnen"
		And user sees "Nutzung der App verfolgen und verbessern"
		And user press on "Ich erlaube die Verarbeitung meiner Nutzungsdaten zum Zwecke der dauerhaften"
		And user press on "WEITER"
		And user should see "Gastritis oder Duodenitis"
		And user should see "Gastroösophageale Refluxkrankheit"
		And user should see "Funktionelle Dyspepsie"

	@URS-UC-533-07 @wip
	Scenario:  New app users should be informed about the next steps they can take in the program.

		Given user sees "Gastritis oder Duodenitis"
		And user press on "Gastritis oder Duodenitis"
		And user press on "Gastroösophageale Refluxkrankheit"
		And user press on "Funktionelle Dyspepsie"
		And user press on "BESTÄTIGEN"
		Given user should see "Wie möchtest du genannt werden?"
		And user enter "Test-Name" into "Name"
		And user press on "WEITER"
		And user should see "Die deutsche Mobilfunknummer"
		And user enter "+49 000 000000" into "+49 000 000000"
		And user press on "WEITER"
		And user should see "So geht es weiter"
		And user should see "Um mit der Nutzung von Cara Care zu beginnen"
