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

  (** Converts a string to a natural number or 0 if it does not make sense.
      - [s] is the string to convert
    *)
  Definition nat_of_string (s : string) : nat :=
    match int_of_string s with
    | Some s' => Z.to_nat (Z.of_int s')
    | _ => 0
    end.

End NumberRendering.
