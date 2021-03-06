module Queue = Queue
module Block = Block
module Io = Io
module Group = Group
module Data = Data
module Time = Time

external dispatch_main : unit -> unit = "ocaml_dispatch_main"

external dispatch_async : Queue.t -> (unit -> unit) -> unit
  = "ocaml_dispatch_async"

external dispatch_sync : Queue.t -> (unit -> unit) -> unit
  = "ocaml_dispatch_sync"

let async = dispatch_async
let sync = dispatch_sync
let main = dispatch_main
