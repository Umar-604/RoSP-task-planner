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
