from features.steps.helpers.actions import *


def rct_questionnaire(driver):
    go_next(driver, case=0)
    send_keys(driver, index=2, path="android.widget.EditText", keys="29")
    driver.hide_keyboard('swipeDown')
    go_next(driver, case=0)
    time.sleep(5)

    send_keys(driver, index=2, path="android.widget.EditText", keys="180")
    driver.hide_keyboard('swipeDown')
    go_next(driver, case=0)
    time.sleep(5)

    send_keys(driver, index=2, path="android.widget.EditText", keys="100")
    driver.hide_keyboard('swipeDown')
    go_next(driver, case=0)
    time.sleep(5)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "männlich"])')
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "das Reizdarmsyndrom verstehen"])')
    go_next(driver, case=0)

    go_next(driver, case=0)

    swipe_down(driver)
    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Unter keinem dieser Symptome"])')
    go_next(driver, case=0)

    swipe_down(driver)
    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nichts davon trifft zu"])')
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nein"])')
    go_next(driver, case=0)

    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Keines"])')
    go_next(driver, case=0)

    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nein"])')
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nein"])')
    go_next(driver, case=0)

    time.sleep(3)
    go_next(driver, case=0)

    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Keine der genannten"])')
    go_next(driver, case=0)

    time.sleep(3)
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nein"])')
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nein."])')
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nein"])')
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nein"])')
    go_next(driver, case=0)

    scroll_right(driver)
    time.sleep(2)
    go_next(driver, case=0)

    scroll_right(driver)
    time.sleep(2)
    go_next(driver, case=0)

    time.sleep(5)
    go_next(driver, case=0)

    path = '(//android.widget.TextView[@text = "Überhaupt nicht"])'
    next_path = '(//android.widget.TextView[@text = "Weiter"])'
    newfinder(driver, path, next_path)

    go_next(driver, case=0)

    newfinder(driver, path, next_path)

    go_next(driver, case=0)

    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)

    path = '(//android.widget.TextView[@text = "Ich gehe derzeit keiner Beschäftigung nach."])'
    click_element(driver, index=1, path=path)
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "kein Urlaub"])')
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nein"])')
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "keine Veranstaltung"])')
    go_next(driver, case=0)

    path = '(//android.widget.TextView[@text = "Nein, ich erkenne da keinen Zusammenhang."])'
    click_element(driver, index=1, path=path)
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nein"])')
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nein"])')
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Keine bestimmte"])')
    go_next(driver, case=0)

    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)

    path = '(//android.widget.TextView[@text = "Ich koche nicht und esse meistens auswärts."])'
    click_element(driver, index=1, path=path)
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nein"])')
    go_next(driver, case=0)

    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Keine der genannten"])')
    go_next(driver, case=0)

    time.sleep(3)
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text ="Nein, ich bin hörend."])')
    go_next(driver, case=0)

    path = '(//android.widget.TextView[@text = "Ja, ich würde gerne meine Ernährung mithilfe des Programms ' \
           'umstellen."]) '
    click_element(driver, index=1, path=path)
    go_next(driver, case=0)

    go_next(driver, case=0)

    go_next(driver, case=0)

    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Audio-geführte Hypnose"])')
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Fisch"])')
    go_next(driver, case=0)

    path = '(//android.widget.TextView[@text = "Ja, ich habe eine ärztlich diagnostizierte Fischallergie"])'
    click_element(driver, index=1, path=path)
    go_next(driver, case=0)

    path = '(//android.widget.TextView[@text = "Ja, gegen Pollen"])'
    click_element(driver, index=1, path=path)
    go_next(driver, case=0)

    path = '(//android.widget.TextView[@text = "Birke und andere Baumpollen"])'
    click_element(driver, index=1, path=path)
    go_next(driver, case=0)

    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Auf keine"])')
    go_next(driver, case=0)

    time.sleep(3)
    swipe_down(driver)
    time.sleep(3)

    path = '(//android.widget.TextView[@text = "Ich habe keine Allergie und keine Beschwerden"])'
    click_element(driver, index=1, path=path)
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Ja, Laktoseintoleranz"])')
    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Ja, Fruktoseintoleranz"])')
    go_next(driver, case=0)

    go_next(driver, case=0)

    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Nein"])')
    go_next(driver, case=0)

    scroll_right(driver)
    go_next(driver, case=0)

    path = '(//android.widget.TextView[@text = "Sehr schwierig"])'
    newfinder(driver, path, next_path)

    for count in range(5):
        send_keys(driver, index=2, path="android.widget.EditText",
                  keys="10")
        driver.hide_keyboard('swipeDown')
        go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Ja"])')
    go_next(driver, case=0)

    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Homöopathie"])')
    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Ayurveda"])')
    go_next(driver, case=0)

    for count in range(6):
        click_element(driver, index=1,
                      path='(//android.widget.TextView[@text = "Ja"])')
        go_next(driver, case=0)

    swipe_down(driver)
    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "Andere"])')
    go_next(driver, case=0)

    for count in range(4):
        click_element(driver, index=1,
                      path='(//android.widget.TextView[@text = "Nein"])')
        go_next(driver, case=0)

    # click_element(driver, index=1, path='(//android.widget.TextView[@text = "Ergebnisse"])')
    # click_element(driver, index=1,
    #               path='(//android.widget.TextView[@text = "BESTÄTIGEN"])')
    click_element(driver, index=1,
                  path='(//android.widget.TextView[@text = "WEITER"])')
    time.sleep(50)
