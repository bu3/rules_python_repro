import unittest
from projects.libs.examples.calculator.calculator import Calculator

class TestSum(unittest.TestCase):
  def test_sum(self):
    calculator = Calculator()
    self.assertEqual(calculator.add(1, 2), 3)

  def test_sum_negative(self):
    calculator = Calculator()
    self.assertEqual(calculator.add(-4, -12), -16)

if __name__ == '__main__':
  unittest.main()
