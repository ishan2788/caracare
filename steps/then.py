from behave import then

from features.steps.helpers.actions import find_element_by_id, find_active_element_by_text, find_element_by_text


@then('user should see "{element}"')
@then('user sees "{element}"')
@then('sees "{element}"')
def step(context, element):
    find_active_element_by_text(context=context, element=element)


@then('user should see "{element}" in {seconds:d} seconds')
@then('user sees "{element}" in {seconds:d} seconds')
@then('see "{element}" in {seconds} seconds')
def step(context, element, seconds):
    find_active_element_by_text(
        context=context, element=element, seconds=seconds)


@then('user should see id "{element}"')
@then('user sees id "{element}"')
@then('sees id "{element}"')
def step(context, element):
    find_element_by_id(context=context, element=element)


@then('user should see id "{element}" in {seconds:d} seconds')
@then('user sees id "{element}" in {seconds:d} seconds')
@then('sees id "{element}" in {seconds:d} seconds')
def step(context, element, seconds):
    find_element_by_id(context=context, element=element, seconds=seconds)


@then('user don\'t see "{element}"')
@then('don\'t see "{element}"')
def step(context, element):
    found = False
    try:
        find_active_element_by_text(context=context, element=element)
        found = True
    except:
        pass
    assert not found, "Element found"


@then('user should see "{element}" as disabled')
@then('user sees "{element}" as disabled')
@then('sees "{element}" as disabled')
def step(context, element):
    element = find_element_by_text(
        context=context, element=element)
    assert not element.is_enabled(), "Element is enabled"


@then('user should see "{element}" as enabled')
@then('user sees "{element}" as enabled')
@then('sees "{element}" as enabled')
def step(context, element):
    element = find_active_element_by_text(context=context, element=element)
    assert element.is_enabled(), "Element is enabled"
