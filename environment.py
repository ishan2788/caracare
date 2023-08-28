from appium import webdriver

from app_config import app_ios_desired_caps, app_android_desired_caps


def before_all(context):
    caps = app_android_desired_caps
    if "ios" in str(context._config.tags):
        caps = app_ios_desired_caps
    context.driver = webdriver.Remote(
        "http://127.0.0.1:4723/wd/hub", desired_capabilities=caps)


def after_all(context):
    context.driver.quit()
