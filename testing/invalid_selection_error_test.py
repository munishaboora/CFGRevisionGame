from unittest import TestCase, main
from CFGRevisionGame.client.invalid_selection_error import valid_option_selected


# testing valid_option_selected function from invalid_selection_error.py file
class TestValidOptionSelected(TestCase):

    def test_valid_option_selected(self):
        self.assertRaises(Exception, valid_option_selected, 0)


if __name__ == "__main__":
    main()
