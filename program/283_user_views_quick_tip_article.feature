@ios @android @wip
@IBS-DE @IBD-DE @HB-DE
Feature: 283 - User views article
	As a user I want to read a quick tip article
	so that I can receive actionable tips on specific topics in programs.

	Actors:  All users
	IBS - all user groups except Control group before conversion before conversion
	IBD - all user groups except Control group
	HB - all user groups except Control group

	Trigger: User opens content card type article

	Success Scenario: User reads short article and goes to next page and completes quick tip article

	Acceptance Criteria:
	- As a user with IBS I shall be able to access the first tip chapter
	- As a user with IBD I shall be able to proceed to next chapters
	- System shall mark article as read (on backend and frontend) when user finished the summary page

	Background:
		Given a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And create
		And user login

	@URS-UC-283-01
	Scenario:  When user opens content card type quick tip article system shall show the first tip chapter form as specified by designs, with Image,
		Content card title,Tip title, Tip text, progress bar, next page/finish button

		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "10 Fakten über Cara Care für Reizdarm"
		And user press on "10 Fakten über Cara Care für Reizdarm"
        And user should see "Herzlich willkommen bei Cara Care für Reizdarm - wie schön, dass du da bist! Erfahre in diesem Artikel, worauf unser Therapieansatz beruht und was dich die nächsten 12 Wochen erwartet."
		And user should see "Article image"
		And user should see "Kapitel 1"

	@URS-UC-283-02
	Scenario:  When user performs next page action show the next tip chapter as specified by content management.
		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "10 Fakten über Cara Care für Reizdarm"
		And wait for 3 seconds
		And read article
		And user press on "Fertig! 🎉"
		And user press on "ÜBERSPRINGEN"
		And user should see "Deine Funktionen in der App"

	@URS-UC-283-03
	Scenario:  When user finalizes the summary page, navigate user back to the content card entry point (home screen or program page) and mark the article as completed
		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "10 Fakten über Cara Care für Reizdarm"
		And wait for 3 seconds
		And read article
		And user press on "Fertig! 🎉"
		And user press on "ÜBERSPRINGEN"
		And user press on "Programm"
		And wait for 3 seconds
		And user press on "Programm | Vorbereitung"
		And user should see "10 Fakten über Cara Care für Reizdarm"
		And user should see "Article completed mark"
