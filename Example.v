Require Import Coq.Strings.String.

Load NumberRendering.

Open Scope string_scope.

(* Showcase various casting functions. *)

Compute z_to_string 42.

Compute q_to_string (3 # 6).

(* Note that Z supports negatives. *)

Compute z_of_string "-42".

Compute n_of_string "42".

Compute pos_of_string "42".

Compute nat_of_string "42".
