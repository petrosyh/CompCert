(* *********************************************************************)
(*                                                                     *)
(*              The Compcert verified compiler                         *)
(*                                                                     *)
(*          Xavier Leroy, INRIA Paris-Rocquencourt                     *)
(*      Bernhard Schommer, AbsInt Angewandte Informatik GmbH           *)
(*                                                                     *)
(*  Copyright Institut National de Recherche en Informatique et en     *)
(*  Automatique.  All rights reserved.  This file is distributed       *)
(*  under the terms of the INRIA Non-Commercial License Agreement.     *)
(*                                                                     *)
(* *********************************************************************)

val safe_remove: string -> unit
   (** Remove the given file if it exists *)

val temp_file: string -> string
    (** Generate a temporary file wiht the given suffix that is removed on exit *)

val output_filename: ?final:bool -> string -> string -> string -> string
   (** Determine names for output files.  We use -o option if specified
       and if this is the final destination file (not a dump file).
       Otherwise, we generate a file in the current directory. *)

val output_filename_default: string -> string
   (** Return either the file specified by -o or the given file name *)

val ensure_inputfile_exists: string -> unit
   (** Test whether the given input file exists *)
