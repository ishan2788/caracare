@ios @android @URS-2337
@IBS-DE @IBD-DE @HB-DE
Feature: UC-2337 - User has access to goal setting and reminders
	As a user, I want to set goals for what I want to achieve with Cara Care’s program
    So that I can be motivated to continue and complete the program
    As a user, I want to set challenges for myself related to my symptoms or diagnoses
    So that I can achieve behavioral change

	Actors:    All users except Control Group User
        - IBS - all user groups except Control group before conversion
        - IBD - all user groups except Control group
        - HB - all user groups except Control group

	Trigger: User opens goal setting entry point via the tool kit

	Success Scenario: User can set and save goals and goal reminders

	Acceptance Criteria:
    - Users can set goals and reminders
    - Users can input their own goals if desired
    - users can select from a pre-set goal with copy from Cara Care if desired
    - Users can update goals and reminders

@URS-UC-2337-01