class NoOptionSelectedError(Exception):
    def __init__(self, no_opt_msg):
        super().__init__(no_opt_msg)


def valid_option_selected(number_chosen):
    if number_chosen == 0:
        raise NoOptionSelectedError('You must enter an answer.')
