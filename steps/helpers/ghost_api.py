import requests


URL = 'https://eu-prod.cara.care'

TOKEN = '6d86763b067ec953a49ddbd950e3c6a4'


def get_user_code(study_name, code_type):
    response = requests.post(
        URL + '/clinical-trials/qa-access-code/',
        headers={'Ghost-Token': TOKEN},
        json={
            'study_name': study_name,
            'code': code_type,
        },
    )
    response.raise_for_status()

    return response.json()['access_code']


def create_user(**params):
    """
    Create a new user and return their login credentials. The following params
    can be specified:

    - diseases → A list of disease subtypes. The default value is ['IBS'].
    - fixture → The ID of the set of pre-defined IBS T0 questionnaire answers
      to apply for the user. The default value is 'ibs_hypnosis_nutrition'.
    - is_control_group → A boolean indicating whether to place the user in the
      study's control group. The default value is False.
    - study → The name of the study to place the user in. Set this to a falsy
      value if you want to create a DiGA user. The default value is ''.
    - week → An integer specifying to which week to fast-forward the user to.
      Set this to -1 if you do not want to place the user in a programme. The
      default value is -1.

    All the params are optional.
    """
    response = requests.post(
        URL + '/auth/generate-user/',
        headers={'Ghost-Token': TOKEN},
        json=params,
    )
    response.raise_for_status()

    return response.json()


def confirm_email(username, email):
    response = requests.post(
        URL + '/auth/confirm-email/',
        headers={'Ghost-Token': TOKEN},
        json={
            'email': email,
            'username': username,
        },
    )
    response.raise_for_status()
