import os

apk = os.path.join(os.path.dirname(__file__), '../builds/caracare.apk')
apk = os.path.abspath(apk)

ios_app = os.path.join(os.path.dirname(__file__), '../builds/caracare.app')
ios_app = os.path.abspath(ios_app)

app_android_desired_caps = {
    "platformName": "Android",
    "automationName": "UiAutomator2",
    "autoGrantPermissions": True,
    'app': apk,
    "unicodeKeyboard": False,
    "appPackage": "com.gohidoc.caraeu",
    "newCommandTimeout": 3000,
    "uiautomator2ServerInstallTimeout": 500000,
}

app_ios_desired_caps = {
    "deviceName": "iPhone 14 Pro",
    "automationName": "XCUITest",
    "platformName": "ios",
    "bundleId": "com.gohidoc.caraeu",
    "platformVersion": "16.2",
    "autoAcceptAlerts": True,
    "app": ios_app,
    "newCommandTimeout": 3000,
}
