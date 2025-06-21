(define (problem support-parents-problem)
  (:domain rosp-support)

  (:objects
    kitchen livingroom childroom - room
    robot1 - robot
    vacuum book food - object
    child1 - person
  )
  (:init
    (at robot1 kitchen)
    (in vacuum livingroom)
    (in book childroom)
    (in food kitchen)
    (hungry child1)
  )
