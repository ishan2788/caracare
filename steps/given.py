from behave import given

from features.steps.helpers.actions import *
from features.steps.helpers.ghost_api import create_user, get_user_code
from features.steps.helpers.questionnaire.ibs_rct import rct_questionnaire


@given('user press on "{element}"')
@given('press on "{element}"')
@given('press "{element}"')
def step(context, element):
    tap_on_text(context=context, element=element)


@given('user press on id "{element}"')
@given('press on id "{element}"')
def step(context, element):
    tap_on_element_with_id(context=context, element=element)


@given('user has code of type "{code_type}" for study "{study_name}"')
@given('has code of type "{code_type}" for study "{study_name}"')
def step(context, code_type, study_name):
    context.code = get_user_code(study_name, code_type)


@given('user enter unique email into "{element}"')
@given('enter unique email into "{element}"')
@given('type unique email into "{element}"')
def step(context, element):
    user_enter_unique_email_into(context=context, element=element)


@given('enters access code into "{element}"')
def step(context, element):
    user_enter_access_code(context=context, element=element)


@given('user enter "{text}" into "{element}"')
@given('enter "{text}" into "{element}"')
@given('type "{text}" into "{element}"')
def step(context, text, element):
    send_keys_with_element_by_text(context=context, element=element, text=text)


@given('user enter the code into "{element}"')
@given('enter the code into "{element}"')
@given('type the code into "{element}"')
def step(context, element):
    send_keys_with_element_by_text(
        context=context, element=element, text=context.code)


@given('user scroll up')
@given('scroll up')
def step(context):
    scroll_up(context.driver)


@given('user scroll down')
@given('scroll down')
def step(context):
    scroll_down(context.driver)


@given('user scroll from top')
def step(context):
    scroll_from_top(context.driver)


@given('hide keyboard')
def step(context):
    hide_keyboard(context)


@given('user login')
def step(context):
    context.execute_steps('''
        Given press on "EINLOGGEN"
		And type his "email" into id "Login screen email input"
		And type his "password" into id "Login screen password input"
		And press on "Login screen signin button"
		And press on "Login screen signin button"
    ''')


@given('user wait for {seconds:d} seconds')
@given('wait for {seconds:d} seconds')
def step(context, seconds):
    time.sleep(seconds)


@given('user enter his "{prop}" into id "{element}"')
@given('enter his "{prop}" into id "{element}"')
@given('type his "{prop}" into id "{element}"')
def step(context, prop, element):
    send_keys_with_element_by_id(
        context=context, element=element, text=getattr(context, prop)
    )


@given('user enter "{text}" into id "{element}"')
@given('enter "{text}" into id "{element}"')
@given('type "{text}" into id "{element}"')
def step(context, text, element):
    send_keys_with_element_by_id(
        context=context, element=element, text=text
    )


@given('user enter his "{prop}" into "{element}"')
@given('enter his "{prop}" into "{element}"')
@given('type his "{prop}" into "{element}"')
def step(context, prop, element):
    send_keys_with_element_by_text(
        context=context, element=element, text=getattr(context, prop)
    )


@given('user enters the email code')
def step(context):
    enter_emailcode(context.driver)


@given('user enters the mobile otp')
def step(context):
    mobile_otp(context.driver)


@given('user should see "{element}"')
@given('user sees "{element}"')
@given('sees "{element}"')
def step(context, element):
    find_active_element_by_text(context=context, element=element)


@given('user don\'t see "{element}"')
@given('don\'t see "{element}"')
def step(context, element):
    found = False
    try:
        find_active_element_by_text(context=context, element=element)
        found = True
    except:
        pass
    assert not found, "Element found"


@given('user should see "{element}" in {seconds:d} seconds')
@given('user sees "{element}" in {seconds:d} seconds')
@given('see "{element}" in {seconds} seconds')
def step(context, element, seconds):
    find_active_element_by_text(
        context=context, element=element, seconds=seconds)


@given('user should see id "{element}"')
@given('user sees id "{element}"')
@given('sees id "{element}"')
def step(context, element):
    find_element_by_id(context=context, element=element)


@given('user should see id "{element}" in {seconds:d} seconds')
@given('user sees id "{element}" in {seconds:d} seconds')
@given('sees id "{element}" in {seconds:d} seconds')
def step(context, element, seconds):
    find_element_by_id(context=context, element=element, seconds=seconds)


@given('a user')
def step(context):
    context.user = {}


@given('in study "{study}"')
def step(context, study):
    context.user['study'] = study


@given('in week {week:d}')
def step(context, week):
    context.user['week'] = week


@given('in control group')
def step(context):
    context.user['is_control_group'] = True


@given('with fixture "{fixture}"')
def step(context, fixture):
    context.user['fixture'] = fixture


@given('with disease "{disease}"')
def step(context, disease):
    context.user['disease'] = disease


@given('create')
def step(context):
    login_credentials = create_user(**context.user)

    context.email = login_credentials['email']
    context.password = login_credentials['password']


@given('user open the app')
@given('user open app')
def step(context):
    context.driver.reset()


@given('user relaunch the app')
@given('user kill and reopen the app')
def step(context):
    package = context.driver.current_package
    context.driver.terminate_app(package)
    context.driver.activate_app(package)


@given('user swipe "{element}" right')
def step(context, element):
    scroll_element_right(context, element)


@given('user read article')
@given('read article')
def step(context):
    complete_article(context)


@given('user press on "{element}" {times:d} times')
def step(context, element, times):
    for i in range(times):
        tap_on_text(context, element)
        wait(1)


@given('user drags "{element}" up')
@given('drags "{element}" up')
def step(context, element):
    swipe_element_up(context, element)


@given('user refreshes their email')
def step(context):
    swipe_up(context.driver)


@given('rct user completes T0 Questionnaire')
def step(context):
    rct_questionnaire(context.driver)
