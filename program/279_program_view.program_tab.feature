@ios @android @URS-279 @wip
@IBS-DE @IBD-DE @HB-DE
Feature: UC-279 - Program View
	As a user I have access to my personalized 12 week program.

	Actors:
	All users except Control Group User

	IBS - all user groups except Control group before conversion

	IBD - all user groups except Control group

	HB - all user groups except Control group

	Trigger:  User opens the program page

	Success Scenario: Users have to see a personalized 12 week program

	Acceptance Criteria:
	- After registration the first phase shall be unlocked for the user
	- If user progresses to next phase/week, unlock new cards
	- If user finished program card, show tick mark
	- If user finished all cards of one module, show tick mark next to module
	- If user finished all cards in week, show tick mark next to week

	@URS-UC-279-01 @wip
	Scenario: User opens the program page and in week 0 phase 1
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 0 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Locked-Week"
		Given press on "Unlocked-Week-0"
		Then sees "10 Fakten über Cara Care für Reizdarm"
		And user sees "Diene Funktionen in der App"
		And user sees "Gesundheits-Fragebogen"

	@wip
	Scenario: User opens the program page and in week 1
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 1 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Unlocked-Week-1"
		And user sees "Locked-Week"
		Given press on "Unlocked-Week-0"
		Then sees "10 Fakten über Cara Care für Reizdarm"
		And user sees "Diene Funktionen in der App"
		And user sees "Gesundheits-Fragebogen"
		Given press on "Unlocked-Week-1"
		Then sees "Article-Card"

	@wip
	Scenario: User opens the program page and in week 2
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 2
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 2 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Unlocked-Week-1"
		And user sees "Unlocked-Week-2"
		And user sees "Locked-Week"
		Given press on "Unlocked-Week-0"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-1"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-2"
		Then sees "Article-Card"

	@wip
	Scenario: User opens the program page and in week 3
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 3
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 3 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Unlocked-Week-1"
		And user sees "Unlocked-Week-2"
		And user sees "Unlocked-Week-3"
		And user sees "Locked-Week"
		Given press on "Unlocked-Week-0"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-1"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-2"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-3"
		Then sees "Article-Card"

	@wip
	Scenario: User opens the program page and in week 4
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 4
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 4 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Unlocked-Week-1"
		And user sees "Unlocked-Week-2"
		And user sees "Unlocked-Week-3"
		And user sees "Unlocked-Week-4"
		And user sees "Locked-Week"
		Given press on "Unlocked-Week-0"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-1"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-2"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-3"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-4"
		Then sees "Article-Card"

	@wip
	Scenario: User opens the program page and in week 5
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 5
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 5 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Unlocked-Week-1"
		And user sees "Unlocked-Week-2"
		And user sees "Unlocked-Week-3"
		And user sees "Unlocked-Week-4"
		And user sees "Unlocked-Week-5"
		And user sees "Locked-Week"
		Given press on "Unlocked-Week-0"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-1"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-2"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-3"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-4"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-5"
		Then sees "Article-Card"

	@wip
	Scenario: User opens the program page and in week 6

		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week  6
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 6 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Unlocked-Week-1"
		And user sees "Unlocked-Week-2"
		And user sees "Unlocked-Week-3"
		And user sees "Unlocked-Week-4"
		And user sees "Unlocked-Week-5"
		And user sees "Unlocked-Week-6"
		And user sees "Locked-Week"
		Given press on "Unlocked-Week-0"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-1"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-2"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-3"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-4"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-5"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-6"
		Then sees "Article-Card"

	@wip
	Scenario: User opens the program page and in week 7
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 7
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 7 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Unlocked-Week-1"
		And user sees "Unlocked-Week-2"
		And user sees "Unlocked-Week-3"
		And user sees "Unlocked-Week-4"
		And user sees "Unlocked-Week-5"
		And user sees "Unlocked-Week-6"
		And user sees "Unlocked-Week-7"
		And user sees "Locked-Week"
		Given press on "Unlocked-Week-0"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-1"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-2"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-3"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-4"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-5"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-6"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-7"
		Then sees "Article-Card"

	@wip
	Scenario: User opens the program page and in week 8
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 8
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 7 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Unlocked-Week-1"
		And user sees "Unlocked-Week-2"
		And user sees "Unlocked-Week-3"
		And user sees "Unlocked-Week-4"
		And user sees "Unlocked-Week-5"
		And user sees "Unlocked-Week-6"
		And user sees "Unlocked-Week-7"
		And user sees "Unlocked-Week-8"
		And user sees "Locked-Week"
		Given press on "Unlocked-Week-0"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-1"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-2"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-3"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-4"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-5"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-6"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-7"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-8"
		Then sees "Article-Card"

	@wip
	Scenario: User opens the program page and in week 9
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 9
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 9 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Unlocked-Week-1"
		And user sees "Unlocked-Week-2"
		And user sees "Unlocked-Week-3"
		And user sees "Unlocked-Week-4"
		And user sees "Unlocked-Week-5"
		And user sees "Unlocked-Week-6"
		And user sees "Unlocked-Week-7"
		And user sees "Unlocked-Week-8"
		And user sees "Unlocked-Week-9"
		And user sees "Locked-Week"
		Given press on "Unlocked-Week-0"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-1"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-2"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-3"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-4"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-5"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-6"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-7"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-8"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-9"
		Then sees "Article-Card"

	@wip
	Scenario: User opens the program page and in week 10
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 10
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 10 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Unlocked-Week-1"
		And user sees "Unlocked-Week-2"
		And user sees "Unlocked-Week-3"
		And user sees "Unlocked-Week-4"
		And user sees "Unlocked-Week-5"
		And user sees "Unlocked-Week-6"
		And user sees "Unlocked-Week-7"
		And user sees "Unlocked-Week-8"
		And user sees "Unlocked-Week-9"
		And user sees "Unlocked-Week-10"
		And user sees "Locked-Week"
		Given press on "Unlocked-Week-0"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-1"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-2"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-3"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-4"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-5"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-6"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-7"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-8"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-9"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-10"
		Then sees "Article-Card"

	@wip
	Scenario: User opens the program page and in week 11
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 11
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 11 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Unlocked-Week-1"
		And user sees "Unlocked-Week-2"
		And user sees "Unlocked-Week-3"
		And user sees "Unlocked-Week-4"
		And user sees "Unlocked-Week-5"
		And user sees "Unlocked-Week-6"
		And user sees "Unlocked-Week-7"
		And user sees "Unlocked-Week-8"
		And user sees "Unlocked-Week-9"
		And user sees "Unlocked-Week-10"
		And user sees "Unlocked-Week-11"
		And user sees "Locked-Week"
		Given press on "Unlocked-Week-0"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-1"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-2"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-3"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-4"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-5"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-6"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-7"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-8"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-9"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-10"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-11"
		Then sees "Article-Card"

	@wip
	Scenario: User opens the program page and in week 12
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 12
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And user sees "DU BIST IN WOCHE 12 VON 12"
		And user sees "Unlocked-Week-0"
		And user sees "Unlocked-Week-1"
		And user sees "Unlocked-Week-2"
		And user sees "Unlocked-Week-3"
		And user sees "Unlocked-Week-4"
		And user sees "Unlocked-Week-5"
		And user sees "Unlocked-Week-6"
		And user sees "Unlocked-Week-7"
		And user sees "Unlocked-Week-8"
		And user sees "Unlocked-Week-9"
		And user sees "Unlocked-Week-10"
		And user sees "Unlocked-Week-11"
		And user sees "Unlocked-Week-12"
		Given press on "Unlocked-Week-0"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-1"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-2"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-3"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-4"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-5"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-6"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-7"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-8"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-9"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-10"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-11"
		Then sees "Article-Card"
		Given press on "Unlocked-Week-12"
		Then sees "Article-Card"

	@URS-UC-279-02 @wip
	Scenario: User sees article cards
		Given user open the app
		And a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 0
		And create
		Given user login
		Given user sees "DEIN NÄCHSTER SCHRITT: " in 120 seconds
		And press on "Program"
		Then user sees "Programm | Vorbereitung"
		And user sees "Tool Kit"
		And sees "10 Fakten über Cara Care für Reizdarm"
		And user sees "Diene Funktionen in der App"
		And user sees "Gesundheits-Fragebogen"

	@URS-UC-279-03 @wip
	Scenario: User sees unlocked article cards
		Given a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And create
		And user login
		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "10 Fakten über Cara Care für Reizdarm"
		And wait for 3 seconds
		And user should see "ARTIKEL"
		And user should see "8 MIN"
		And user should see "Completed-Article-Card"

	@URS-UC-279-04 @wip
	Scenario: User can see open program phase
		Given a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And create
		And user login
		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "10 Fakten über Cara Care für Reizdarm"
		And wait for 3 seconds
		And user should see "ARTIKEL"
		And user should see "8 MIN"
		And user should see "Program-Toggle-Button"
		Given 'Contet-Card' is visible
		And user pressses "Program-Toggle-Button"
		And user should not see "Content-card"

	@URS-UC-279-05 @wip
	Scenario: User can open content card view
		Given a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And create
		And user login
		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "10 Fakten über Cara Care für Reizdarm"
		And wait for 3 seconds
		And user should see "ARTIKEL"
		And user should see "8 MIN"
		And user should see "Completed-Article-Card"
		Given user presses on "Completed-Article-Card"
		And user should see "Article-Image"
		And user should see "Article-title"
		And user should see "Article-Content"

	@wip
	Scenario: User can toggle between content card and program view
		Given a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And create
		And user login
		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "10 Fakten über Cara Care für Reizdarm"
		And wait for 3 seconds
		And user should see "ARTIKEL"
		And user should see "8 MIN"
		And user should see "Program-Toggle-Button"
		Given 'Contet-Card' is not visible
		And user pressses "Program-Toggle-Button"
		And user should see "Content-card"
