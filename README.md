# README

## Models
Movie Models
  - id (auto-increment PK)
  - title: string
  - year: int
  - duration: int
  - description: text
  - average_vote: decimal
  - production_company_id
  - Will also be part of the many to many with Genre

Product/Company Model
  - id
  - name: string

Genre Model
  - id
  - name: string
  - Will also be part of the many to many with Movie

Movie/Genre Model
  - movie_id: int
  - genre_id: int


## Routes

  GET /                           (Display the homepage)
  GET /characters                 (Displays all the characters)
  GET /character/:id              (Displays a single character)
  GET /episodes                   (Displays all the episodes)
  GET /episodes/:id               (Displays a single episode)
  GET /burgers                    (Displays all the burgers)
  GET /burgers/:id                (Displays a single burger)
  GET /stores                     (Displays all the stores)
  GET /store/:id                  (Displays a single store)


## Controllers

  Home Controller                  => index
  Characters Controller            => index, show
  Episodes Controller              => index, show
  Burgers Controller               => index, show
  Stores Controller                => index, show