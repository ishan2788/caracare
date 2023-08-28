@ios @android @wip
@IBS-DE @IBD-DE @HB-DE
Feature: 663 - User sees article summary
	As a user I want to see an article summary so that I can understand content at a glance.

	Actors:  All users
	IBS - all user groups except Control group before conversion before conversion
	IBD - all user groups except Control group
	HB - all user groups except Control group

	Trigger: User finishes last chapter in program article.

	Success Scenario: Article summary is read and finished.

	Acceptance Criteria:
	- If no summary content has been displayed by the content team, skip the summary slide and go straight to rating or next steps screen
	- On Article Summary, progress bar should always be 100%.
	- Show bullet icons for each take away point (max 4, min 1)

	Background:
		Given a user
		And with disease "IBS"
		And in study "🧑‍💻 Test Doctors – IBS"
		And in week 1
		And create
		And user login

	@URS-UC-663-01
	Scenario: The system shall provide user an article summary with the following options and content: headline ,key points (summary),
		option to indicate whether an article has been read, a progress bar, option to return to main article from key points (summary)
		option to close the article
		
		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "10 Fakten über Cara Care für Reizdarm"
		And wait for 3 seconds
		And user should see id "Article image"
		And user should see id "Close"
		And user should see "ARTIKEL"
		And user should see "8 MIN"
		And user should see "10 Fakten über Cara Care für Reizdarm"
		And user should see "Herzlich willkommen bei Cara Care für Reizdarm - wie schön"
		And user should see "Kapitel 1"

	@URS-UC-663-02
	Scenario:  If the user has read an article for the first time, the system shall provide the option to rate the article after closing the summary page.

		Then user should see "10 Fakten über Cara Care für Reizdarm" in 120 seconds
		Given user press on "10 Fakten über Cara Care für Reizdarm"
		And wait for 3 seconds
		And read article
		And user press on "Fertig! 🎉"
