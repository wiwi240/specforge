# frozen_string_literal: true

students = [
  { name: 'Allen', scores: [14, 16, 15] },
  { name: 'Theo', scores: [10, 12, 11] },
  { name: 'Enzoulette', scores: nil }
]

def average_score(scores)
  return nil if scores.nil? || scores.empty?

  scores.sum.fdiv(scores.length).round(2)
end

def formatted_average(student)
  average = average_score(student[:scores])
  return "#{student[:name]}: no scores available" if average.nil?

  "#{student[:name]}: #{average}"
end

students.each do |student|
  puts formatted_average(student)
end
