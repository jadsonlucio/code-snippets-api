# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
    Snippet.create({
        author: Faker::Name.name,
        source: Faker::Internet.url(host: 'github.com'),
        language: Faker::ProgrammingLanguage.name,
        code_snippet: Faker::Lorem.sentence(word_count: 10),
        description: Faker::Lorem.sentence(word_count: 4),
        library: Faker::Movie.title,
        category: ['learning', 'bugfix', 'example', 'setup'].sample,
        difficulty: Faker::Number.within(range: 1..10),
        language_version: Faker::App.semantic_version,
        library_version: Faker::App.semantic_version,
        dependencies: Faker::App.name 
    })
end
