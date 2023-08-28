def platform_is_android(context):
    return str(context.driver.capabilities['platformName']).lower() == "android"