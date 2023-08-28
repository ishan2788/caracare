from datetime import datetime, time
from appium.webdriver.common.appiumby import AppiumBy
import time
from selenium.common.exceptions import NoSuchElementException, \
    StaleElementReferenceException, \
    InvalidElementStateException
from selenium.webdriver.support import expected_conditions as pause
from selenium.webdriver.support.ui import WebDriverWait
from appium.webdriver.common.touch_action import TouchAction

from features.steps.helpers.ghost_api import get_user_code
from features.steps.helpers.emails import generate_unique_email
from features.steps.helpers.platform import platform_is_android

timeout = 60
temp = True


def find_element_by_id(context, element, seconds=timeout):
    WebDriverWait(context.driver, seconds).until(
        pause.presence_of_element_located(
            (AppiumBy.ACCESSIBILITY_ID, element)))
    return context.driver.find_element(AppiumBy.ACCESSIBILITY_ID, element)


def find_active_element_by_exact_text_android(context, element,
                                              seconds=timeout):
    path = "//*[(@content-desc=\"" + element + \
           "\" or @text=\"" + element + "\" or @label=\"" + \
           element + "\") and @enabled=\"true\"]"
    WebDriverWait(context.driver, seconds).until(
        pause.presence_of_element_located((AppiumBy.XPATH, path)))
    return context.driver.find_element(AppiumBy.XPATH, path)


def find_active_element_by_text_contains_android(context, element,
                                                 seconds=timeout):
    path = "//*[(contains(@content-desc,\"" + element + \
           "\") or contains(@text,\"" + element + "\")) and @enabled=\"true\"]"
    WebDriverWait(context.driver, seconds).until(
        pause.presence_of_element_located((AppiumBy.XPATH, path)))
    return context.driver.find_element(AppiumBy.XPATH, path)


def find_element_by_exact_text_android(context, element, seconds=timeout):
    path = "//*[(@content-desc=\"" + element + \
           "\" or @text=\"" + element + "\")]"
    WebDriverWait(context.driver, seconds).until(
        pause.presence_of_element_located((AppiumBy.XPATH, path)))
    return context.driver.find_element(AppiumBy.XPATH, path)


def find_element_by_text_contains_android(context, element, seconds=timeout):
    path = "//*[(contains(@content-desc,\"" + element + \
           "\") or contains(@text,\"" + element + "\"))]"
    WebDriverWait(context.driver, seconds).until(
        pause.presence_of_element_located((AppiumBy.XPATH, path)))
    return context.driver.find_element(AppiumBy.XPATH, path)


def find_element_by_text_android(context, element, seconds=timeout):
    try:
        return find_element_by_exact_text_android(context, element, seconds)
    except:
        return find_element_by_text_contains_android(context, element, seconds)


def find_active_element_by_text_android(context, element, seconds=timeout):
    try:
        return find_active_element_by_exact_text_android(context, element,
                                                         seconds)
    except:
        return find_active_element_by_text_contains_android(context, element,
                                                            seconds)


def find_active_element_by_exact_text_ios(context, element, seconds=timeout):
    path = '(label == "' + element + '" AND index == 0)'
    WebDriverWait(context.driver, seconds).until(
        pause.presence_of_element_located((AppiumBy.IOS_PREDICATE, path)))
    return context.driver.find_element(AppiumBy.IOS_PREDICATE, path)


def find_active_element_by_text_contains_ios(context, element,
                                             seconds=timeout):
    path = '(label CONTAINS "' + element + '" AND index == 0)'
    WebDriverWait(context.driver, seconds).until(
        pause.presence_of_element_located((AppiumBy.IOS_PREDICATE, path)))
    return context.driver.find_element(AppiumBy.IOS_PREDICATE, path)


def find_element_by_exact_text_ios(context, element, seconds=timeout):
    path = '(label == "' + element + '" AND index == 0)'
    WebDriverWait(context.driver, seconds).until(
        pause.presence_of_element_located((AppiumBy.IOS_PREDICATE, path)))
    return context.driver.find_element(AppiumBy.IOS_PREDICATE, path)


def find_element_by_text_contains_ios(context, element, seconds=timeout):
    path = '(label CONTAINS "' + element + '" AND index == 0)'
    WebDriverWait(context.driver, seconds).until(
        pause.presence_of_element_located((AppiumBy.IOS_PREDICATE, path)))
    return context.driver.find_element(AppiumBy.IOS_PREDICATE, path)


def find_element_by_text_ios(context, element, seconds=timeout):
    try:
        return find_element_by_exact_text_ios(context, element, seconds)
    except:
        return find_element_by_text_contains_ios(context, element, seconds)


def find_active_element_by_text_ios(context, element, seconds=timeout):
    try:
        return find_active_element_by_exact_text_ios(context, element, seconds)
    except:
        return find_active_element_by_text_contains_ios(context, element,
                                                        seconds)


def find_active_element_by_text(context, element, seconds=timeout,
                                tryScrolling=0):
    try:
        if platform_is_android(context):
            return find_active_element_by_text_android(context, element,
                                                       seconds)
        return find_active_element_by_text_ios(context, element, seconds)
    except Exception as e:
        if (tryScrolling < 2):
            scroll_up(context.driver, tryScrolling * 100)
            return find_active_element_by_text(context, element, 0,
                                               tryScrolling + 1)
        raise e


def find_element_by_text(context, element, seconds=timeout, tryScrolling=0):
    try:
        if platform_is_android(context):
            return find_element_by_text_android(context, element, seconds)
        return find_element_by_text_ios(context, element, seconds)
    except Exception as e:
        if (tryScrolling < 2):
            scroll_up(context.driver, tryScrolling * 100)
            return find_active_element_by_text(context, element, 0,
                                               tryScrolling + 1)
        raise e


def find_active_element_by_text_contain(context, element, seconds=timeout,
                                        tryScrolling=0):
    try:
        if platform_is_android(context):
            return find_active_element_by_text_contains_android(context,
                                                                element,
                                                                seconds)
        return find_active_element_by_text_contains_ios(context, element,
                                                        seconds)
    except Exception as e:
        if (tryScrolling < 2):
            scroll_up(context.driver, tryScrolling * 100)
            return find_active_element_by_text_contain(context, element, 0,
                                                       tryScrolling + 1)
        raise e


def tap_on_element_with_id(context, element):
    WebDriverWait(context.driver, timeout).until(
        pause.presence_of_element_located(
            (AppiumBy.ACCESSIBILITY_ID, element)))
    context.driver.find_element(AppiumBy.ACCESSIBILITY_ID, element).click()


def tap_on_text(context, element):
    find_active_element_by_text(context, element).click()


def user_have_code_of(context, group, type):
    context.code = get_user_code(group, type)


def user_enter_unique_email_into(context, element):
    context.email = generate_unique_email(context)
    send_keys_with_element_by_text(context, element, context.email)


def user_enter_access_code(context, element):
    send_keys_with_element_by_text(context, element, context.code)


def user_enter_unique_email_into_id(context, element):
    context.email = generate_unique_email(context)
    send_keys_with_element_by_id(context, element, context.email)


def send_keys_with_element_by_id(context, element, text):
    target = find_element_by_id(context, element)
    target.click()
    target.send_keys(text)


def hide_keyboard(context):
    context.driver.hide_keyboard('tapOut')
    time.sleep(1)


def send_keys_with_element_by_text(context, element, text):
    target = find_active_element_by_text(context, element)
    target.click()
    target.send_keys(text)


def reinstall_app(context):
    context.driver.remove_app(context.app_package)
    context.driver.install_app(context.app_path)
    context.driver.launch_app()


def scroll_element_right(context, text):
    el = find_active_element_by_text(context, text)
    loc = el.location
    x_scroll = loc['x'] + 100
    time.sleep(2)
    context.driver.swipe(loc['x'], loc['y'], x_scroll, loc['y'])


def complete_article(context, max_trials=12):
    time.sleep(1)
    for i in range(max_trials):
        try:
            try:
                if find_active_element_by_text(context, 'Fertig! 🎉', 1, 2):
                    break
            except:
                pass
            scroll_up(context.driver, 5, 0.8)
            find_active_element_by_text_contain(
                context, 'Kapitel ' + str(i + 1), 1, 2).click()
            time.sleep(1)
        except Exception as e:
            print(e)
            pass


#### REFERENCES ####
now = datetime.now()
ct = now.strftime("%d%m%y%H%M%S")
user_name = "ishan" + "+" + ct + "@cara.care"
name = "ishan" + "+" + ct
password = "Caracare@123"
code = "CARADIGATEST1234"
i = 0
j = 0


def wait_for_element(driver, index, path):
    switcher = {
        0: AppiumBy.ACCESSIBILITY_ID,
        1: AppiumBy.XPATH,
        4: AppiumBy.CLASS_NAME,
        3: AppiumBy.NAME,
    }
    WebDriverWait(driver, timeout).until(
        pause.presence_of_element_located((switcher.get(index), path)))


def click_on_element_id(driver, path):
    driver.find_element(AppiumBy.ACCESSIBILITY_ID, path).click()


def click_element(driver, index, path):
    try:
        wait_for_element(driver, index, path)
        if index == 0:
            driver.find_element(AppiumBy.ACCESSIBILITY_ID, path).click()
        elif index == 1:
            driver.find_element(AppiumBy.XPATH, path).click()
        elif index == 2:
            driver.find_element(AppiumBy.CLASS_NAME, path).click()
        elif index == 3:
            driver.find_element(AppiumBy.NAME, path).click()
    except StaleElementReferenceException:
        time.sleep(10)
        print("StaleElementReferenceException seen in Send keys", path)
        click_element(driver, index, path)
    except InvalidElementStateException:
        time.sleep(10)
        print("StaleElementReferenceException seen in Send keys", path)
        click_element(driver, index, path)


def send_keys(driver, index, path, keys):
    try:
        if index == 0:
            WebDriverWait(driver, timeout).until(
                pause.presence_of_element_located(
                    (AppiumBy.ACCESSIBILITY_ID, path)))
            driver.find_element(AppiumBy.ACCESSIBILITY_ID,
                                path).send_keys(keys)
        elif index == 1:
            WebDriverWait(driver, timeout).until(
                pause.presence_of_element_located((AppiumBy.XPATH, path)))
            driver.find_element(AppiumBy.XPATH, path).send_keys(keys)
        elif index == 2:
            WebDriverWait(driver, timeout).until(
                pause.presence_of_element_located((AppiumBy.CLASS_NAME, path)))
            driver.find_element(AppiumBy.CLASS_NAME, path).send_keys(keys)
        elif index == 3:
            WebDriverWait(driver, timeout).until(
                pause.presence_of_element_located((AppiumBy.NAME, path)))
            driver.find_element(AppiumBy.NAME, path).send_keys(keys)
    except StaleElementReferenceException:
        time.sleep(10)
        print("StaleElementReferenceException seen in Send keys", path, keys)
        send_keys(driver, index, path, keys)
    except InvalidElementStateException:
        print("InvalidElementStateException seen in Send keys", path, keys)
        send_keys(driver, index, path, keys)


def go_next(driver, case):
    if case == 0:
        path = '(//android.widget.TextView[@text = "Weiter"])'
        WebDriverWait(driver, 60).until(pause.presence_of_element_located((AppiumBy.XPATH, path)))
        driver.find_element(AppiumBy.XPATH, path).click()
    elif case == 1:
        path = '(//android.widget.TextView[@text = "WEITER"])'
        WebDriverWait(driver, 60).until(pause.presence_of_element_located((AppiumBy.XPATH, path)))
        driver.find_element(AppiumBy.XPATH, path).click()
    time.sleep(3)


def swipe_up(driver):
    window = driver.get_window_size()
    v_start_x = window['width'] * 0.5
    v_start_y = window['height'] * 0.8
    v_end_x = window['width'] * 0.5
    v_end_y = window['height'] * 0.4
    driver.flick(v_end_x, v_end_y, v_start_x, v_start_y)


def scroll_up(driver, toY=10, fromY=0.5):
    window = driver.get_window_size()
    x = window['width'] * 0.5
    y = fromY * window['height']
    actions = TouchAction(driver)
    actions.press(x=x, y=y).wait(1000).move_to(x=x, y=toY).release().perform()


def scroll_down(driver):
    window = driver.get_window_size()
    x = window['width'] * 0.5
    y = window['height'] * 0.1
    toY = window['height'] * 0.8
    actions = TouchAction(driver)
    actions.press(x=x, y=y).wait(1000).move_to(x=x, y=toY).release().perform()


def scroll_from_top(driver):
    window = driver.get_window_size()
    x = window['width'] * 0.5
    y = 0
    actions = TouchAction(driver)
    actions.press(x=x, y=y).wait(200).move_to(x=x, y=10).release().perform()


def swipe_down(driver):
    try:
        dimension = driver.get_window_size()
        v_start_x = dimension['width'] * 0.5
        v_start_y = dimension['height'] * 0.8
        v_end_x = dimension['width'] * 0.2
        v_end_y = dimension['height'] * 0.2
        driver.flick(v_start_x, v_start_y, v_end_x, v_end_y)
    except InvalidElementStateException:
        swipe_down(driver)
    except StaleElementReferenceException:
        swipe_down(driver)


def swipe_left(driver):
    dimension = driver.get_window_size()
    x = dimension['width'] * 0.9
    y = dimension['height'] * 0.5
    actions = TouchAction(driver)
    actions.press(x=x, y=y).wait(200).move_to(x=10, y=y).release().perform()


def scroll_right(driver):
    dimension = driver.get_window_size()
    path = '(//android.widget.TextView[@text = "0"])'
    el = driver.find_element(AppiumBy.XPATH, path)
    loc = el.location
    x_scroll = dimension['width'] * 0.9
    time.sleep(2)
    WebDriverWait(driver, 60).until(
        pause.presence_of_element_located((AppiumBy.XPATH, path)))
    driver.find_element(AppiumBy.XPATH, path)
    driver.swipe(loc['x'], loc['y'], x_scroll, loc['y'])


def swipe_element_up(driver, path):
    element = driver.find_element(AppiumBy.XPATH, path)
    location = element.location
    size = element.size
    x = location['x'] + size['width'] / 2
    y = location['y'] + size['height'] / 2
    actions = TouchAction(driver)
    actions.press(x=x, y=y).wait(200).move_to(x=10, y=10).release().perform()


def validate(driver, path):
    driver.implicitly_wait(5)
    try:
        for count in range(3):
            swipe_down(driver)
            time.sleep(2)
        driver.find_element(AppiumBy.XPATH, path).is_displayed()
        return True
    except NoSuchElementException:
        return False


def wait(driver, path):
    global i
    try:
        check = False
        while not check:
            i = i + 1
            if i == 10:
                print("Element Not Found " + str(i) + " " + path)
                i = 0
                break
            check = driver.find_element(AppiumBy.XPATH, path).is_displayed()
            if check:
                i = 0
                break
    except NoSuchElementException:
        print("No Such Element --> wait method " + str(i) + " " + path)
        wait(driver, path)
    except StaleElementReferenceException:
        print("StaleElementReferenceException --> wait method " + str(
            i) + " " + path)
        wait(driver, path)


def find(driver, path, next_path):
    try:
        np = True
        print(next_path)
        f_check = validate(driver, path)
        while np:
            if f_check:
                try:
                    driver.find_element(AppiumBy.XPATH, path).click()
                    wait(driver, next_path)
                    driver.find_element(AppiumBy.XPATH, next_path).click()
                    f_check = validate(driver, path)
                except StaleElementReferenceException:
                    print(
                        "StaleElementReferenceException inside find method questionnaire (if loop) -->",
                        path)
                    pass
            else:
                np = False
    except NoSuchElementException:
        print(
            "In Method (find)-->Questionnaire Script-->NoSuchElement Exception seen for" + path + next_path)
        find(driver, path, next_path)
    except StaleElementReferenceException:
        print(
            "In Method (find)-->Questionnaire Script-->StaleElementException seen for" + path + next_path)
        find(driver, path, next_path)


def next_click(driver, path):
    try:
        np = True
        value = 0
        f_check = validate(driver, path)
        while np:
            if f_check:
                driver.find_element(AppiumBy.XPATH, path).click()
                f_check = validate(driver, path)
                value = value + 1
            if value == 5:
                np = False
            else:
                np = False

    except StaleElementReferenceException:
        print("In method Next Click Exception seen for" + path)
        next_click(driver, path)


def element_visible(path, driver):
    global j
    try:
        check = True
        while check:
            j = j + 1
            check = driver.find_element(AppiumBy.XPATH, path).is_displayed()
            driver.find_element(AppiumBy.XPATH, path).click()
            if j == 3:
                j = 0
                break
    except NoSuchElementException:
        j = 0
        return
    except StaleElementReferenceException:
        print("StaleElementReferenceException in method element_visible", path)
        element_visible(path, driver)


def read_article(driver, path):
    try:
        np = True
        f_check = validate(driver, path)
        while np:
            if f_check:
                driver.implicitly_wait(10)
                driver.find_element(AppiumBy.XPATH, path).click()
                time.sleep(2)
                # swipe_right(driver)
                f_check = validate(driver, path)
            else:
                np = False

    except StaleElementReferenceException:
        print("StaleElementReferenceException in method read article", path)
        read_article(driver, path)


def record_execution(driver):
    print(driver)


def stop_recording(driver):
    print(driver)


def enter_emailcode(driver):
    time.sleep(1)
    swipe_up(driver)
    time.sleep(2)
    swipe_up(driver)
    time.sleep(5)

    path = '(//android.widget.TextView[@text = "[Cara C…] Bestätige deine ' \
           'E-Mail-Adresse"])'
    click_element(driver, index=1, path=path)
    email_code = check_integer(driver)
    driver.back()

    if email_code:
        pass
    else:
        path = '(//android.widget.TextView[@text = "[Cara C…] Bestätige ' \
               'deine E-Mail-Adresse"])'
        click_element(driver, index=1, path=path)
        email_code = check_integer(driver)
        driver.back()
        driver.back()

    driver.activate_app('com.gohidoc.caraeu')
    time.sleep(2)

    driver.find_element(AppiumBy.XPATH, "//*[@text='|']").click()
    driver.find_element(AppiumBy.XPATH, "//*[@text='|']").click()
    time.sleep(2)

    for p in range(len(email_code)):
        time.sleep(1)
        num = int(email_code[p]) + 7
        driver.press_keycode(num)


def check_integer(driver):
    time.sleep(2)
    swipe_down(driver)
    time.sleep(10)

    el = driver.find_elements(AppiumBy.CLASS_NAME, "android.widget.TextView")
    print(len(el))

    for p in range(len(el)):
        print(p, el[p].text)

    for m in range(len(el)):
        o = el[m].text
        if o.isdigit():
            return o


def mobile_otp(driver):
    otp = "123456"
    driver.find_element(AppiumBy.XPATH, "//*[@text='|']").click()
    driver.find_element(AppiumBy.XPATH, "//*[@text='|']").click()
    time.sleep(2)

    for z in range(6):
        time.sleep(1)
        key = int(otp[z]) + 7
        driver.press_keycode(key)


def newfinder(driver, path, next_path):
    global temp
    try:
        np = True
        while np:
            if temp:
                try:
                    time.sleep(5)
                    driver.find_element(AppiumBy.XPATH, path).click()
                    driver.find_element(AppiumBy.XPATH, next_path).click()
                    temp = True
                except StaleElementReferenceException:
                    print("StaleElementReferenceException inside find method "
                          "questionnaire (if loop) -->", path)
                    pass
            else:
                np = False
    except NoSuchElementException:
        print("In Method (find)-->Questionnaire Script-->NoSuchElement "
              "Exception seen for" + path + next_path)
        return

    except StaleElementReferenceException:
        print(
            "In Method (find)-->Questionnaire Script-->StaleElementException seen for" + path + next_path)
        newfinder(driver, path, next_path)
