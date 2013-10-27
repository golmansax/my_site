open Eliom_content.Html5.D (* Provides functions to create HTML nodes *)
(* @author holman
 *
 * Provides a point of contact
 *)

module Contact = struct
  class email name domain = object
    method get_human = Printf.sprintf "%s at %s" name domain
    method get_actual = Printf.sprintf "%s@%s.com" name domain
  end

  let footer_html () =
    let my_email = new email "golmansax" "gmail" in
    div [pcdata my_email#get_human]
    (*(Printf.sprintf "Email me: %s" my_email#get_human)]*)
end
