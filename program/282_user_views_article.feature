@ios @android @wip
@IBS-DE @IBD-DE @HB-DE
Feature: 282 - User views article
	As a user I want to read a long article
	so that I can learn more on topics in programs.

	Actors:  All users
	IBS - all user groups except Control group before conversion before conversion before conversion
	IBD - all user groups except Control group
	HB - all user groups except Control group

	Trigger: User opens content card type article

	Success Scenario: User reads article and goes to next page and completes article

	Acceptance Criteria:
	- As a user with IBS I shall be able to access article intro chapter
	- As a user with IBD I shall be able to proceed to next chapters
	- As a user with HB I shall be able to proceed to the summary
	- System shall mark article as read (on backend and frontend) when user finished the summary page

	Background:
		Given a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And create
		And user login

	@URS-UC-282-01
	Scenario:  When user opens article card system shall show article intro chapter as specified by designs, with Image,
		Type of content,Reading time, Title, Subtitle, Introduction text, Next button

		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "10 Fakten über Cara Care für Reizdarm"
		And wait for 3 seconds
		And user should see "ARTIKEL"
		And user should see "8 MIN"
		And user should see "10 Fakten über Cara Care für Reizdarm"
		And user should see "Herzlich willkommen bei Cara Care für Reizdarm - wie schön, dass du da bist! Erfahre in diesem Artikel, worauf unser Therapieansatz beruht und was dich die nächsten 12 Wochen erwartet."
		And user should see "Kapitel 1"
		And user should see "Article image"

	@URS-UC-282-02
	Scenario:  When user clicks on next button show the next article chapter or final summary as specified by content management.
		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "10 Fakten über Cara Care für Reizdarm"
		And wait for 3 seconds
		And read article
		And user press on "Fertig! 🎉"
		And user press on "ÜBERSPRINGEN"
		And user should see "Deine Funktionen in der App"
		And user press on "Deine Funktionen in der App"
		And wait for 3 seconds
		And user press on "Kapitel 1"
		And user press on "Kapitel 2"
		And user press on "Kapitel 3"
		And user press on "Kapitel 4"
		And user press on "Kapitel 5"
		And user press on "Kapitel 6"
		And user press on "Kapitel 7"
		And user press on "Kapitel 8"
		And user press on "Fertig! 🎉"
		And user press on "ÜBERSPRINGEN"
		And user should see "Basiswissen"

	@URS-UC-282-03
	Scenario:  When user finalizes the summary page, navigate user back to the content card entry point (home screen or program page) and mark the article as completed
		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "10 Fakten über Cara Care für Reizdarm"
		And wait for 3 seconds
		And read article
		And user press on "Fertig! 🎉"
		And user press on "ÜBERSPRINGEN"
		And user should see "Deine Funktionen in der App"
		And user press on "Deine Funktionen in der App"
		And wait for 3 seconds
		And user press on "Kapitel 1"
		And user press on "Kapitel 2"
		And user press on "Kapitel 3"
		And user press on "Kapitel 4"
		And user press on "Kapitel 5"
		And user press on "Kapitel 6"
		And user press on "Kapitel 7"
		And user press on "Kapitel 8"
		And user press on "Fertig! 🎉"
		And user press on "ÜBERSPRINGEN"
		And user press on "Programm"
		And wait for 3 seconds
		And user press on "Programm | Vorbereitung"
		And user should see "10 Fakten über Cara Care für Reizdarm"
		And user should see "Article completed mark"
