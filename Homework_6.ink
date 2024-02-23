Logan, Isaac, Tanya, Jackson, Spencer, Zuri, and Oakley are Tetrominos. They come from the sky. 

They don't want to go back. They want to stay on the floor. They want to stay together. 

-> play

== play ==

= next_move

{!So far so good. The world is your oyster. | Everything's fine. You have options. | Not too many choices, but you can make it through. | They're piling up, this might be your last chance... | You have one possible move left.}

* [Far left]
    -> piece
    
* [Left]
    -> piece
    
* [Middle]
    -> piece

* [Right]
    -> piece

* [Far right]
    -> piece
    
+ -> outcome.finish

= piece

The next tetromino falling is {~ Logan. {~ -> logan.good |-> logan.bad} | Isaac. {~ -> isaac.good | -> isaac.bad} | Tanya. {~ -> tanya.good | -> tanya.bad} | Jackson. {~ -> jackson.good | -> jackson.bad} | Spencer. {~ -> spencer.good | -> spencer.bad} | Zuri. {~ -> zuri.good | -> zuri.bad} | Oakley. { ~ -> oakley.good | -> oakley.bad} }


== logan ==

= good
* You find the perfect place for Logan, and give them a nice foothold on the others.
    -> play.next_move

// in case this happened before 
+ { logan } -> outcome
    
= bad
* Logan tries to help by lying down, but there's not much they can do... in a panic, they stand up and freeze, causing a major inconvenience. 
    -> play.next_move
// in case this happened before 
+ { logan } -> outcome

== isaac == 

= good
* Isaac is a god-send. You know exactly where to put him. Standing tall, he slides into place. He vaporizes four lines. All that dead weight, gone -- you'll be safe. For now. 
    -> play.next_move
// in case this happened before 
+ {isaac} -> outcome

= bad

* Somehow, you hesitate, and suddenly Isaac becomes stuck standing up right in the middle of the pile. Oh no. This is bad. 
    -> play.next_move
// in case this happened before 
+ {isaac} -> outcome

== tanya == 

= good
* You always know how to make Tanya useful. She may even be better at this than Isaac... Tanya settles nicely into place. It was like she was meant for that spot. 
    -> play.next_move
// in case this happened before 
+ {tanya} -> outcome
= bad
* Unfortunately, while turning Tanya around you manage to put her in the worst position possible, creating gaps and spaces underneath her that cannot be filled until you somehow clear a row. 
    -> play.next_move
// in case this happened before 
+ {tanya} -> outcome
    
== jackson == 

= good 
* You're smart and find a space for Jackson where he isn't a bother. 
    -> play.next_move
// in case this happened before 
+ {jackson} -> outcome
= bad 
* You mess up, and realize too late that the space you were trying to put Jackson in really should have been Logan's. 
    -> play.next_move
// in case this happened before 
+ {jackson} -> outcome

== spencer ==

= good
* Miraculously, Spencer clears a line, and you level up. 
    -> play.next_move
// in case this happened before 
+ {spencer} -> outcome
= bad 
* Terrible. Using Spencer, you accidentally block a space for Isaac, ruining your four-row-clearing plans. 
    -> play.next_move
// in case this happened before 
+ {spencer} -> outcome

== zuri ==

= good 

* Zuri comes down faster than you were expecting, but you succeed at not making her troublesome. 
    -> play.next_move
// in case this happened before 
+ {zuri} -> outcome
    
= bad 
* You try to help with Zuri, but there's not much she can do. 
    -> play.next_move
// in case this happened before 
+ {zuri} -> outcome

== oakley ==



= good 
Oakley, the oaf, never seems to have an obvious, satisfactory space. But you're going to pick a move anyway.

* Very nicely, you place Oakley into a corner. 
    -> play.next_move
// in case this happened before 
+ {oakley} -> outcome
= bad 
* That buffoon Oakley can't help, but you try (unsuccessfully) to get them out of the way. 
    -> play.next_move
// in case this happened before 
+ {oakley} -> outcome

== outcome == 

{& -> continue | -> falter}

= continue
You continue easily. All things considered, you're pretty good at this game. 
-> play.piece

= falter
You falter -- {you turn the piece every which way, but finally time runs out to move the piece and you're left in a compromised position. Oh well. At least you haven't lost yet. | you change your mind and move the piece somewhere else, but time is up for moving it, and you've found yourself in an unfortunate place. Luckily though, you haven't lost yet.} 
-> play.piece

= finish
You've played enough. 

They're too fast. They're falling so fast. Unable to keep up with each other, the tetrominos pile up back to the sky, and they drown. You lose.
-> END
