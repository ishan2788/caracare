@ios @android @wip
@IBS-DE @IBD-DE @HB-DE
Feature: 2339 - User completes article quiz (knowledge retention)
	As a  user,
	I want to have a sense of closure/achievement after articles
	So that I have reassurance that I understand and remember content correctly.

	As a  user
	I want to see how well I perform on
	So that I have a more challenging or gamified experience.

	Actors:  All users
	IBS - all user groups except Control group before conversion before conversion
	IBD - all user groups except Control group
	HB - all user groups except Control group

	Trigger: User completed article

	Success Scenario: Users answered quizzes and received results of answers.

	Acceptance Criteria:
	- Quiz intro modal is shown to the user after finishing the last chapter
	- User can decide to complete or skip the quiz
	- User shall get a immediate response if answered correctly or incorrectly
	- Backend shall store right and wrong answers per session
	- Quizzes can be done multiple times, when reading article again, quiz results shall be reset

	Background:
		Given a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 2
		And create
		And user open the app
		And user login
		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "Programm"
		And user scroll up
		And user scroll up
		And user wait for 3 seconds
		And user scroll up
		And user scroll up
		And user wait for 3 seconds
		And user scroll up
		And user scroll up
		And user wait for 3 seconds
		And user scroll up
		And user scroll up
		And user wait for 3 seconds
		And user scroll up
		And user scroll up
		And user wait for 3 seconds
		And user scroll up
		And user scroll up
		And user sees "Ziele setzen"
		And user press on "Ziele setzen"
		And read article

	@URS-UC-2339-01
	Scenario: When user has completed reading through article system shall show welcome to quizzes message with option to start quiz or
		skip quiz as specified in designs, if a quiz is available. option to indicate whether an article has been read, a progress bar,
		option to return to main article from key points (summary) option to close the article

		And user press on "Quiz starten"

	@URS-UC-2339-02
	Scenario: When user clicks to start quiz system shall show fill-in-the-gap quiz questions as specified by content management system

		And user press on "Quiz starten"
		And user should see "Motivation"

	@URS-UC-2339-03
	Scenario: When user clicks skip system shall skip quiz and go to article key take-aways.

		And user press on "Vielleicht später"

	@URS-UC-2339-04
	Scenario: When user clicks question answer system shall validate if question is right or wrong and show result as specified in designs.

		And user press on "Quiz starten"
		And user press on "Motivation"
		And user sees "Motivation"

	@URS-UC-2339-05
	Scenario: When user clicks next system shall continue to the next quiz as specified by content management system.

		And user press on "Quiz starten"
		And user press on "Motivation"
		And user press on "Nächste Frage"
		And user sees "Ziele"

	@URS-UC-2339-06
	Scenario: When user answered last quiz in set as specified by content management system system shall continue to quiz results as specified by designs.

		And user press on "Quiz starten"
		And user press on "Motivation"
		And user press on "Nächste Frage"
		And user press on "Ziele"
		And user press on "Nächste Frage"
		And user press on "SMART-Kriterien"
		And user sees "Ergebnis ansehen"

	@URS-UC-2339-07
	Scenario: When user clicks done on quiz results system shall go to article summary page.

		And user press on "Quiz starten"
		And user press on "Motivation"
		And user press on "Nächste Frage"
		And user press on "Ziele"
		And user press on "Nächste Frage"
		And user press on "SMART-Kriterien"
		And user press on "Ergebnis ansehen"
		And user press on "Fertig"
		And user sees "Ziele setzen"
