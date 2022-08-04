import unittest
from unittest import TestCase, main, mock
from client.main import new_game


new_game.start_game()
# print()
# class TestStartGame(TestCase):
#
#     def test_odd_number(self):
#         expected = 'Red'
#         result = new_game.start_game()
#         self.assertEqual(expected, result)
#
#     def test_even_and_grater_twenty(self):
#         expected = 'Blue'
#         result = red_or_blue(num=22)
#         self.assertEqual(expected, result)
#
#     def test_even_in_range_6_20(self):
#         expected = 'Red'
#         result = red_or_blue(num=12)
#         self.assertEqual(expected, result)
#
# class TestStdGrades(TestCase):
#
#     def test_calculate_average(self):
#         my_input = [
#             {'name': 'Jane', 'mark': 7},
#             {'name': 'Nitesh', 'mark': 6},
#             {'name': 'Aisha', 'mark': 8},
#             {'name': 'Zac', 'mark': '8'},
#         ]
#         expected = 7.25
#
#         result = average_exam_score(my_input)
#         self.assertEqual(expected, result)
#
#     def test_calculate_average_missing_mark(self):
#          my_input = [
#             {'name': 'Jane', 'mark': 7},
#             {'name': 'Nitesh', 'mark': 6},
#             {'name': 'Aisha', 'mark': 8},
#             {'name': 'Zac'},  # should be 5
#          ]
#          expected = 6.5
#
#          result = average_exam_score(my_input)
#          self.assertEqual(expected, result)
#
#     def test_calculate_average_invlaid_mark(self):
#          my_input = [
#             {'name': 'Jane', 'mark': 7},
#             {'name': 'Nitesh', 'mark': 11},
#             {'name': 'Aisha', 'mark': 8},
#             {'name': 'Zac', 'mark': 8},  # should be 5
#          ]
#          with self.assertRaises(ValueError):
#              average_exam_score(my_input)
#
#
#
#
#
# if __name__ == "__main__":
#     main()
#
#
#
#