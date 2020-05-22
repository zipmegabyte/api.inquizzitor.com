# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create( {email: 'leonardotsr@gmail.com', name: 'Leonardo Ribeiro'} )
quiz = Quiz.create( {title: 'Movie Quiz', user: user} )

Question.create( {
  question: 'Which one of these actors never played James Bond?',
  order: 0,
  quiz: quiz
} ) do |question|

  Answer.create([
    {answer: 'Roger Moore', order: 0, correct: false, question: question},
    {answer: 'George Clooney', order: 1, correct: true, question: question},
    {answer: 'Sean Connery', order: 2, correct: false, question: question},
    {answer: 'Timothy Dalton', order: 3, correct: false, question: question},
    {answer: 'Pierce Brosnan', order: 4, correct: false, question: question},
    {answer: 'Daniel Craig', order: 5, correct: false, question: question},
  ])
end

Question.create( {
  question: 'What is the first horror movie with a black lead actor?',
  order: 1,
  quiz: quiz
} ) do |question|

  Answer.create([
    {answer: 'Blacula', order: 0, correct: false, question: question},
    {answer: 'Tales from the Hood', order: 1, correct: false, question: question},
    {answer: 'Night of the Living Dead', order: 2, correct: true, question: question},
    {answer: 'Stephen King\'s It', order: 3, correct: false, question: question},
    {answer: 'Get Out', order: 4, correct: false, question: question},
    {answer: 'Vampire in Brooklyn', order: 5, correct: false, question: question},
  ])
end

Question.create( {
  question: 'Leo DiCaprio won his only Oscar for his role in:',
  order: 2,
  quiz: quiz
} ) do |question|

  Answer.create([
    {answer: 'The Wolf of Wall Street', order: 0, correct: false, question: question},
    {answer: 'The Great Gatsby', order: 1, correct: false, question: question},
    {answer: 'The Revenant', order: 2, correct: true, question: question},
    {answer: 'Shutter Island', order: 3, correct: false, question: question},
    {answer: 'Once Upon a Time... In Hollywood', order: 4, correct: false, question: question},
    {answer: 'Titanic', order: 5, correct: false, question: question},
  ])
end

Question.create( {
  question: 'Which one of these 2019 movies was not based  on a book?',
  order: 3,
  quiz: quiz
} ) do |question|

  Answer.create([
    {answer: 'Parasite', order: 0, correct: true, question: question},
    {answer: 'The Irishman', order: 1, correct: false, question: question},
    {answer: 'Little Women', order: 2, correct: false, question: question},
    {answer: 'The Two Popes', order: 3, correct: false, question: question},
    {answer: 'Jojo Rabbit', order: 4, correct: false, question: question},
    {answer: 'The Goldfinch', order: 5, correct: false, question: question},
  ])
end

Question.create( {
  question: 'Marlon Brando and Robert de Niro both won Oscars for playing the same character: Vito Corleone in The Godfather parts I and II. This has happened on only one other occasion. Name the character and the two actors.',
  order: 4,
  quiz: quiz
} )
