@ios @android @URS-2013
@IBS-DE @IBD-DE @HB-DE
Feature: UC-2013 - User accesses tool kit to easily have shortcuts to often-accessed features
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

	@URS-UC-2013-01
	@URS-UC-2013-01-IBS1
	@wip
	Scenario: When user has not completed certain modules, questionnaires or articles tied to a tool,
		system shall show hide the tools until they are unlocked.
		IBS: Register - Symptom checker, Chat, Goal setting, Library

		Given user open the app
		And a user
		And with disease <disease>
		And in study <study>
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
	# + Manual testing

	@URS-UC-2013-01
	@URS-UC-2013-01-IBS2
	@wip
	Scenario: When user has not completed certain modules, questionnaires or articles tied to a tool,
		system shall show hide the tools until they are unlocked.
		IBS: T0 Questionnaire completion without Foodlist - Symptom checker, Chat, Goal setting, Library, Report

		Given user open the app
		And a user
		And with disease <disease>
		And in study <study>
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
	# + Manual testing

	@URS-UC-2013-01
	@URS-UC-2013-01-IBS3
	@wip
	Scenario: When user has not completed certain modules, questionnaires or articles tied to a tool,
		system shall show hide the tools until they are unlocked.
		IBS: T0 Questionnaire completion with Foodlist - Symptom checker, Chat, Goal setting, Library, Report, Foodlist

		Given user open the app
		And a user
		And with disease <disease>
		And in study <study>
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
	# + Manual testing

	@URS-UC-2013-01
	@URS-UC-2013-01-IBD1
	@wip
	Scenario: When user has not completed certain modules, questionnaires or articles tied to a tool,
		system shall show hide the tools until they are unlocked.
		IBD: Register - Disease Monitoring, Chat, Goal setting, Library

		Given user open the app
		And a user
		And with disease <disease>
		And in study <study>
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
	# + Manual testing

	@URS-UC-2013-01
	@URS-UC-2013-01-IBD2
	@wip
	Scenario: When user has not completed certain modules, questionnaires or articles tied to a tool,
		system shall show hide the tools until they are unlocked.
		IBD: T0 Questionnaire completion without Foodlist - Disease Monitoring, Chat, Goal setting, Library, Report

		Given user open the app
		And a user
		And with disease <disease>
		And in study <study>
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
	# + Manual testing

	@URS-UC-2013-01
	@URS-UC-2013-01-IBD3
	@wip
	Scenario: When user has not completed certain modules, questionnaires or articles tied to a tool,
		system shall show hide the tools until they are unlocked.
		IBD: T0 Qestionnaire completion with Foodlist - Disease Monitoring, Chat, Goal setting, Library, Report, Foodlist

		Given user open the app
		And a user
		And with disease <disease>
		And in study <study>
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds

	# + Manual testing

	@URS-UC-2013-01
	@URS-UC-2013-01-HB1
	@wip
	Scenario: When user has not completed certain modules, questionnaires or articles tied to a tool,
		system shall show hide the tools until they are unlocked.
		HB: Register - Symptom checker, Chat, Goal setting, Library

		Given user open the app
		And a user
		And with disease <disease>
		And in study <study>
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
	# + Manual testing

	@URS-UC-2013-01
	@URS-UC-2013-01-HB2
	@wip
	Scenario: When user has not completed certain modules, questionnaires or articles tied to a tool,
		system shall show hide the tools until they are unlocked.
		HB: T0 Questionnaire completion without Foodlist - Symptom checker, Chat, Goal setting, Library, Report

		Given user open the app
		And a user
		And with disease <disease>
		And in study <study>
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
	# + Manual testing

	@URS-UC-2013-01
	@URS-UC-2013-01-HB3
	@wip
	Scenario: When user has not completed certain modules, questionnaires or articles tied to a tool,
		system shall show hide the tools until they are unlocked.
		HB: T0 Qestionnaire completion with Foodlist - Symptom checker, Chat, Goal setting, Library, Report, Foodlist

		Given user open the app
		And a user
		And with disease <disease>
		And in study <study>
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
	# + Manual testing

	@URS-UC-2013-02
	@wip
	Scenario: When user has not completed certain modules, questionnaires or articles tied to a tool,
		system shall show hide the tools until they are unlocked.
		Given user open the app
		And a user
		And with disease <disease>
		And in study <study>
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds

	# + Manual testing

	@URS-UC-2013-03
	@wip
	Scenario: When user has not completed certain modules, questionnaires or articles tied to a tool,
		system shall show hide the tools until they are unlocked.
		Given user open the app
		And a user
		And with disease <disease>
		And in study <study>
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds

	# + Manual testing


	@URS-UC-2013-04
	Scenario Outline: For all IBS and HB users, system shall show symptom check entry point,
		that links user to symptom check.

		Given user open the app
		And a user
		And with disease <disease>
		And in study <study>
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Tool Kit"
		Then user sees "Symptom-Check"
		Given user press on "Symptom-Check"
		And user press on "Symptom Check"
		Then user sees "Alarmsymptome"
		Given press on "Erbrechen von Blut"
		And press "Weiter"
		And press "Sichern und fortfahren"
		Then sees "Suche eine Ärztin oder einen Arzt auf"
		Given user press on "Verstanden"
		Given user press on " Artikel lesen"
		And press "Close"

		Examples:
			| disease | study |
			| "IBS" | "🧑‍💻 Test Doctors – IBS" |

	@URS-UC-2013-05
	Scenario: For all users, system shall show chat function entry point,
		that links user to in-app chat.
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Tool Kit"
		Then user sees "Toolkit Chat"
		Given user press on "Toolkit Chat"
		Then user sees "Willkommen zum Cara Care Chat"
		Given user press on "Back"

	@URS-UC-2013-07
	Scenario: For all users, system shall show library entry point that links user to specific articles and audios.
		Given user sees "DEIN NÄCHSTER SCHRITT: "
		And press on "Tool Kit"
		Then user sees "Bibliothek"
		Given user press on "Bibliothek"
		And sees "Für dich wichtige Inhalte"
		And sees "Deine Funktionen in der App"
		Given user press on "Deine Funktionen in der App"
		Then user sees "ARTIKEL | 7 MIN."
		Given user press on "Close"

	@URS-UC-2013-06
	Scenario: For all users, system shall show health report entry point,
		which shall be locked until user has completed first questionnaire,
		after which it is unlocked and links user to their latest health report from intake questionnaire.
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Tool Kit"
		Then user don't see "Bericht"
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 2
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Tool Kit"
		Then user sees "Bericht"
		Given user press on "Bericht"
		Then user sees "Vielen Dank für deine Ehrlichkeit und Geduld!"
		Given user press on "Ergebnisse"
		Then user sees "Dein Symptom-Score"

	@URS-UC-2013-08
	Scenario: For all users, system shall show goal setting entry point that opens the goal setting feature.
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Tool Kit"
		Then user sees "Ziele"
		Given user press on "Ziele"
		Then user sees "Lege deine Ziele fest und beginne mit der Veränderung"

