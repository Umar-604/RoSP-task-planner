(define (domain rosp-support)
  (:requirements :strips :typing)
  (:types room object robot person)
  (:predicates
    (at ?r - robot ?loc - room)
    (clean ?loc - room)
    (hungry ?p - person)
    (homework-done ?p - person)
    (has ?r - robot ?obj - object)
    (in ?obj - object ?loc - room)
  )

  (:action move
    :parameters (?r - robot ?from - room ?to - room)
    :precondition (at ?r ?from)
    :effect (and (not (at ?r ?from)) (at ?r ?to))
  )

  (:action pick-up
    :parameters (?r - robot ?obj - object ?loc - room)
    :precondition (and (at ?r ?loc) (in ?obj ?loc))
    :effect (has ?r ?obj)
  )

  (:action feed-child
    :parameters (?r - robot ?p - person)
    :precondition (and (has ?r food) (hungry ?p))
    :effect (not (hungry ?p))
  )

  (:action clean-room
    :parameters (?r - robot ?loc - room)
    :precondition (and (at ?r ?loc) (has ?r vacuum))
    :effect (clean ?loc)
  )

  (:action help-homework
    :parameters (?r - robot ?p - person ?loc - room)
    :precondition (and (at ?r ?loc) (has ?r book))
    :effect (homework-done ?p)
  )
)
