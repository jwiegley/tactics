Ltac inv H := inversion H; subst; clear H.

Tactic Notation "limit" integer(n) :=
  let g := numgoals in
  guard g <= n + fail 1 "found" g "subgoals, expected only" n.
