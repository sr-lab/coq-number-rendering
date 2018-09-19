Require Import Coq.Numbers.DecimalString.
Require Import Coq.QArith.QArith.
Require Import Coq.Strings.String.

Import NilEmpty.

Close Scope Q_scope.

(** Provides conversion functions from numbers to strings.
  *)
Section NumberRendering.

  Local Open Scope string_scope.

  (** Converts a binary number in Z to a string.
      - [z] is the number to convert
    *)
  Definition z_to_string (z : Z) : string :=
    string_of_int (Z.to_int z).

  Local Open Scope Q_scope.

  (** Converts a rational number in Q to a string.
      - [q] is the number to convert
   *)
  Definition q_to_string (q : Q) : string :=
    match q with
    | n # d => (z_to_string n) ++ " # " ++ (z_to_string (Zpos d))
    end.

  Local Close Scope Q_scope.

  Local Close Scope string_scope.

End NumberRendering.
