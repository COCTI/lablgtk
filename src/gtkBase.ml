(* $Id$ *)

open Gaux
open Gobject
open Gtk
open Tags

module Tables = struct
  open Gpointer
  external get_tables :
    unit -> anchor_type variant_table *
        arrow_type variant_table *
        attach_options variant_table *
        button_box_style variant_table *
        curve_type variant_table *
        delete_type variant_table *
        direction_type variant_table *
        expander_style variant_table *
        icon_size variant_table *
        side_type variant_table *
        text_direction variant_table *
        justification variant_table *
        match_type variant_table *
        menu_direction variant_table *
        metric_type variant_table *
        movement_step variant_table *
        orientation variant_table *
        corner_type variant_table *
        pack_type variant_table *
        path_priority variant_table *
        path_type variant_table *
        policy_type variant_table *
        position variant_table *
        preview_type variant_table *
        relief_style variant_table *
        resize_mode variant_table *
        signal_run_type variant_table *
        scroll_type variant_table *
        selection_mode variant_table *
        shadow_type variant_table *
        state_type variant_table *
        submenu_direction variant_table *
        submenu_placement variant_table *
        toolbar_style variant_table *
        update_type variant_table *
        visibility variant_table *
        window_position variant_table *
        window_type variant_table *
        wrap_mode variant_table *
        sort_type variant_table *
        cell_type variant_table *
        toolbar_child variant_table *
        toolbar_space_style variant_table *
        spin_type variant_table *
        accel_flag variant_table *
        button_action variant_table *
        calendar_display_options variant_table *
        progress_bar_style variant_table *
        progress_bar_orientation variant_table *
        dest_defaults variant_table *
        target_flags variant_table *
        spin_button_update_policy variant_table *
        text_window_type variant_table *
        text_search_flag variant_table *
        tree_view_column_sizing variant_table *
        cell_renderer_mode variant_table *
        message_type variant_table *
        buttons variant_table *
        response variant_table *
        widget_flags variant_table *
        gravity variant_table *
        window_type_hint variant_table
        = "ml_gtk_get_tables"
  let anchor_type, arrow_type, attach_options, button_box_style,
    curve_type, delete_type, direction_type, expander_style, icon_size,
    side_type, text_direction, justification, match_type, menu_direction,
    metric_type, movement_step, orientation, corner_type, pack_type,
    path_priority, path_type, policy_type, position, preview_type,
    relief_style, resize_mode, signal_run_type, scroll_type, selection_mode,
    shadow_type, state_type, submenu_direction, submenu_placement,
    toolbar_style, update_type, visibility, window_position, window_type,
    wrap_mode, sort_type, cell_type, toolbar_child, toolbar_space_style,
    spin_type, accel_flag, button_action, calendar_display_options,
    progress_bar_style, progress_bar_orientation, dest_defaults, target_flags,
    spin_button_update_policy, text_window_type, text_search_flag,
    tree_view_column_sizing, cell_renderer_mode, message_type, buttons,
    response, widget_flags, gravity, window_type_hint = get_tables ()
end
    
module Object = struct
  let try_cast = Gobject.try_cast
  external destroy : [>`gtk] obj -> unit = "ml_gtk_object_destroy"
  let cast w : [`gtk] obj = try_cast w "GtkObject"
  external _ref_and_sink : [>`gtk] obj -> unit = "ml_gtk_object_ref_and_sink"
  let make ~classe params =
    let obj = Gobject.make ~classe params in _ref_and_sink obj;
    obj
  external get_flags : [>`gtk] obj -> int = "ml_GTK_OBJECT_FLAGS"
  let get_flag obj wf =
    (get_flags obj) land (Gpointer.encode_variant Tables.widget_flags wf) <> 0
  module Signals = struct
    open GtkSignal
    let destroy =
      { name = "destroy"; classe = `gtk; marshaller = marshal_unit }
  end
end

module Widget = struct
  let cast w : widget obj = Object.try_cast w "GtkWidget"
  external unparent : [>`widget] obj -> unit = "ml_gtk_widget_unparent"
  external show : [>`widget] obj -> unit = "ml_gtk_widget_show"
  external show_now : [>`widget] obj -> unit = "ml_gtk_widget_show_now"
  external show_all : [>`widget] obj -> unit = "ml_gtk_widget_show_all"
  external hide : [>`widget] obj -> unit = "ml_gtk_widget_hide"
  external hide_all : [>`widget] obj -> unit = "ml_gtk_widget_hide_all"
  external map : [>`widget] obj -> unit = "ml_gtk_widget_map"
  external unmap : [>`widget] obj -> unit = "ml_gtk_widget_unmap"
  external realize : [>`widget] obj -> unit = "ml_gtk_widget_realize"
  external unrealize : [>`widget] obj -> unit = "ml_gtk_widget_unrealize"
  external queue_draw : [>`widget] obj -> unit = "ml_gtk_widget_queue_draw"
  external queue_resize : [>`widget] obj -> unit = "ml_gtk_widget_queue_resize"
  external draw : [>`widget] obj -> Gdk.Rectangle.t option -> unit
      = "ml_gtk_widget_draw"
(*
  external draw_focus : [>`widget] obj -> unit
      = "ml_gtk_widget_draw_focus"
  external draw_default : [>`widget] obj -> unit
      = "ml_gtk_widget_draw_default"
*)
  external event : [>`widget] obj -> 'a Gdk.event -> bool
      = "ml_gtk_widget_event"
  external activate : [>`widget] obj -> bool
      = "ml_gtk_widget_activate"
  external reparent : [>`widget] obj -> [>`widget] obj -> unit
      = "ml_gtk_widget_reparent"
(*
  external popup : [>`widget] obj -> x:int -> y:int -> unit
      = "ml_gtk_widget_popup"
*)
  external intersect :
      [>`widget] obj -> Gdk.Rectangle.t -> Gdk.Rectangle.t option
      = "ml_gtk_widget_intersect"
  external set_can_default : [>`widget] obj -> bool -> unit
      = "ml_gtk_widget_set_can_default"
  external set_can_focus : [>`widget] obj -> bool -> unit
      = "ml_gtk_widget_set_can_focus"
  external grab_focus : [>`widget] obj -> unit
      = "ml_gtk_widget_grab_focus"
  external grab_default : [>`widget] obj -> unit
      = "ml_gtk_widget_grab_default"
  external set_name : [>`widget] obj -> string -> unit
      = "ml_gtk_widget_set_name"
  external get_name : [>`widget] obj -> string
      = "ml_gtk_widget_get_name"
  external set_state : [>`widget] obj -> state_type -> unit
      = "ml_gtk_widget_set_state"
  external set_sensitive : [>`widget] obj -> bool -> unit
      = "ml_gtk_widget_set_sensitive"
  external set_uposition : [>`widget] obj -> x:int -> y:int -> unit
      = "ml_gtk_widget_set_uposition"
  external set_usize : [>`widget] obj -> width:int -> height:int -> unit
      = "ml_gtk_widget_set_usize"
  external set_size_request : [>`widget] obj -> width:int -> height:int -> unit
      = "ml_gtk_widget_set_size_request"
  external add_events : [>`widget] obj -> Gdk.Tags.event_mask list -> unit
      = "ml_gtk_widget_add_events"
  external set_events : [>`widget] obj -> Gdk.Tags.event_mask list -> unit
      = "ml_gtk_widget_set_events"
  external set_extension_events :
      [>`widget] obj -> Gdk.Tags.extension_events -> unit
      = "ml_gtk_widget_set_extension_events"
  external get_toplevel : [>`widget] obj -> widget obj
      = "ml_gtk_widget_get_toplevel"
  external get_ancestor : [>`widget] obj -> g_type -> widget obj
      = "ml_gtk_widget_get_ancestor"
  external get_colormap : [>`widget] obj -> Gdk.colormap
      = "ml_gtk_widget_get_colormap"
  external get_visual : [>`widget] obj -> Gdk.visual
      = "ml_gtk_widget_get_visual"
  external get_pointer : [>`widget] obj -> int * int
      = "ml_gtk_widget_get_pointer"
  external is_ancestor : [>`widget] obj -> [>`widget] obj -> bool
      = "ml_gtk_widget_is_ancestor"
  external set_style : [>`widget] obj -> style -> unit
      = "ml_gtk_widget_set_style"
  external ensure_style : [>`widget] obj -> unit
      = "ml_gtk_widget_ensure_style"
  external get_style : [>`widget] obj -> style
      = "ml_gtk_widget_get_style"
  external modify_fg : [>`widget] obj -> state_type -> Gdk.Color.t -> unit
      = "ml_gtk_widget_modify_fg"
  external modify_bg : [>`widget] obj -> state_type -> Gdk.Color.t -> unit
      = "ml_gtk_widget_modify_bg"
  external modify_text : [>`widget] obj -> state_type -> Gdk.Color.t -> unit
      = "ml_gtk_widget_modify_text"
  external modify_base : [>`widget] obj -> state_type -> Gdk.Color.t -> unit
      = "ml_gtk_widget_modify_base"
  external modify_font : [>`widget] obj -> Pango.font_description -> unit
      = "ml_gtk_widget_modify_font"
  external get_pango_context : [>`widget] obj -> Pango.context
      = "ml_gtk_widget_get_pango_context"
  external create_pango_context : [>`widget] obj -> Pango.context
      = "ml_gtk_widget_create_pango_context"
  external render_icon : 
      [>`widget] obj -> string -> 
      Gtk.Tags.icon_size -> string option -> GdkPixbuf.pixbuf
      = "ml_gtk_widget_render_icon"
  external add_accelerator :
      ([>`widget] as 'a) obj -> sgn:('a,unit->unit) GtkSignal.t ->
      accel_group -> key:Gdk.keysym -> ?modi:Gdk.Tags.modifier list ->
      ?flags:accel_flag list -> unit
      = "ml_gtk_widget_add_accelerator_bc" "ml_gtk_widget_add_accelerator"
  external remove_accelerator :
      [>`widget] obj -> accel_group ->
      key:Gdk.keysym -> ?modi:Gdk.Tags.modifier list -> unit
      = "ml_gtk_widget_remove_accelerator"
  external set_accel_path :
      [>`widget] obj -> string -> accel_group -> unit
      = "ml_gtk_widget_set_accel_path"

(*
  external lock_accelerators : [>`widget] obj -> unit
      = "ml_gtk_widget_lock_accelerators"
  external unlock_accelerators : [>`widget] obj -> unit
      = "ml_gtk_widget_unlock_accelerators"
  external accelerators_locked : [>`widget] obj -> bool
      = "ml_gtk_widget_accelerators_locked"
*)
  external window : [>`widget] obj -> Gdk.window
      = "ml_GtkWidget_window"
  external parent : [>`widget] obj -> widget obj
      = "ml_gtk_widget_parent"
  external set_app_paintable : [>`widget] obj -> bool -> unit
      = "ml_gtk_widget_set_app_paintable"
  external allocation : [>`widget] obj -> rectangle
      = "ml_gtk_widget_allocation"
  external set_colormap : [>`widget] obj -> Gdk.colormap -> unit
      = "ml_gtk_widget_set_colormap"
  external set_visual : [>`widget] obj -> Gdk.visual -> unit
      = "ml_gtk_widget_set_visual"
  external set_default_colormap : Gdk.colormap -> unit
      = "ml_gtk_widget_set_default_colormap"
  external set_default_visual : Gdk.visual -> unit
      = "ml_gtk_widget_set_default_visual"
  external get_default_colormap : unit -> Gdk.colormap
      = "ml_gtk_widget_get_default_colormap"
  external get_default_visual : unit -> Gdk.visual
      = "ml_gtk_widget_get_default_visual"
  external push_colormap : Gdk.colormap -> unit
      = "ml_gtk_widget_push_colormap"
  external push_visual : Gdk.visual -> unit
      = "ml_gtk_widget_push_visual"
  external pop_colormap : unit -> unit
      = "ml_gtk_widget_pop_colormap"
  external pop_visual : unit -> unit
      = "ml_gtk_widget_pop_visual"
  module Signals = struct
    open GtkSignal
    let marshal f _ = function
      | `OBJECT(Some p) :: _ -> f (cast p)
      |	_ -> invalid_arg "GtkBase.Widget.Signals.marshal"
    let marshal_opt f _ = function
      | `OBJECT(Some obj) :: _ -> f (Some (cast obj))
      | `OBJECT None :: _ -> f None
      | _ -> invalid_arg "GtkBase.Widget.Signals.marshal_opt"
    let marshal_style f _ = function
      | `POINTER p :: _ -> f (Obj.magic p : Gtk.style option)
      | _ -> invalid_arg "GtkBase.Widget.Signals.marshal_style"
    external allocation_at_pointer : Gpointer.boxed -> rectangle
        = "ml_Val_GtkAllocation"
    let marshal_allocation f argv = function
      | `POINTER(Some p) :: _ ->
          f (allocation_at_pointer p)
      |	_ -> invalid_arg "GtkBase.Widget.Signals.marshal_allocation"
    let show =
      { name = "show"; classe = `widget; marshaller = marshal_unit }
    let hide =
      { name = "hide"; classe = `widget; marshaller = marshal_unit }
    let map =
      { name = "map"; classe = `widget; marshaller = marshal_unit }
    let unmap =
      { name = "unmap"; classe = `widget; marshaller = marshal_unit }
    let realize =
      { name = "realize"; classe = `widget; marshaller = marshal_unit }
    let state_changed =
      let marshal f = marshal_int
          (fun x -> f (Gpointer.decode_variant Tables.state_type x)) in
      { name = "state_changed"; classe = `widget; marshaller = marshal }
    let parent_set =
      { name = "parent_set"; classe = `widget; marshaller = marshal_opt }
    let size_allocate =
      { name = "size_allocate"; classe = `widget;
        marshaller = marshal_allocation }
    let style_set =
      { name = "style_set"; classe = `widget; marshaller = marshal_style }

    module Event = struct
      let marshal f argv = function
        | [`POINTER(Some p)] ->
	    let ev = GdkEvent.unsafe_copy p in
            Closure.set_result argv (`BOOL(f ev))
	| _ -> invalid_arg "GtkBase.Widget.Event.marshal"
      let any : ([>`widget], Gdk.Tags.event_type Gdk.event -> bool) t =
	{ name = "event"; classe = `widget; marshaller = marshal }
      let button_press : ([>`widget], GdkEvent.Button.t -> bool) t =
	{ name = "button_press_event"; classe = `widget;
          marshaller = marshal }
      let button_release : ([>`widget], GdkEvent.Button.t -> bool) t =
	{ name = "button_release_event"; classe = `widget;
          marshaller = marshal }
      let motion_notify : ([>`widget], GdkEvent.Motion.t -> bool) t =
	{ name = "motion_notify_event"; classe = `widget;
          marshaller = marshal }
      let delete : ([>`widget], [`DELETE] Gdk.event -> bool) t =
	{ name = "delete_event"; classe = `widget; marshaller = marshal }
      let destroy : ([>`widget], [`DESTROY] Gdk.event -> bool) t =
	{ name = "destroy_event"; classe = `widget; marshaller = marshal }
      let expose : ([>`widget], GdkEvent.Expose.t -> bool) t =
	{ name = "expose_event"; classe = `widget; marshaller = marshal }
      let key_press : ([>`widget], GdkEvent.Key.t -> bool) t =
	{ name = "key_press_event"; classe = `widget;
          marshaller = marshal }
      let key_release : ([>`widget], GdkEvent.Key.t -> bool) t =
	{ name = "key_release_event"; classe = `widget;
          marshaller = marshal }
      let enter_notify : ([>`widget], GdkEvent.Crossing.t -> bool) t =
	{ name = "enter_notify_event"; classe = `widget;
          marshaller = marshal }
      let leave_notify : ([>`widget], GdkEvent.Crossing.t -> bool) t =
	{ name = "leave_notify_event"; classe = `widget;
          marshaller = marshal }
      let configure : ([>`widget], GdkEvent.Configure.t -> bool) t =
	{ name = "configure_event"; classe = `widget;
          marshaller = marshal }
      let focus_in : ([>`widget], GdkEvent.Focus.t -> bool) t =
	{ name = "focus_in_event"; classe = `widget;
          marshaller = marshal }
      let focus_out : ([>`widget], GdkEvent.Focus.t -> bool) t =
	{ name = "focus_out_event"; classe = `widget;
          marshaller = marshal }
      let map : ([>`widget], [`MAP] Gdk.event -> bool) t =
	{ name = "map_event"; classe = `widget; marshaller = marshal }
      let unmap : ([>`widget], [`UNMAP] Gdk.event -> bool) t =
	{ name = "unmap_event"; classe = `widget; marshaller = marshal }
      let property_notify : ([>`widget], GdkEvent.Property.t -> bool) t =
	{ name = "property_notify_event"; classe = `widget;
          marshaller = marshal }
      let selection_clear : ([>`widget], GdkEvent.Selection.t -> bool) t =
	{ name = "selection_clear_event"; classe = `widget;
          marshaller = marshal }
      let selection_request : ([>`widget], GdkEvent.Selection.t -> bool) t =
	{ name = "selection_request_event"; classe = `widget;
          marshaller = marshal }
      let selection_notify : ([>`widget], GdkEvent.Selection.t -> bool) t =
	{ name = "selection_notify_event"; classe = `widget;
          marshaller = marshal }
      let proximity_in : ([>`widget], GdkEvent.Proximity.t -> bool) t =
	{ name = "proximity_in_event"; classe = `widget;
          marshaller = marshal }
      let proximity_out : ([>`widget], GdkEvent.Proximity.t -> bool) t =
	{ name = "proximity_out_event"; classe = `widget;
          marshaller = marshal }
    end
  end
end

module Container = struct
  let cast w : container obj = Object.try_cast w "GtkContainer"
  external coerce : [>`container] obj -> container obj = "%identity"
  external set_border_width : [>`container] obj -> int -> unit
      = "ml_gtk_container_set_border_width"
  external set_resize_mode : [>`container] obj -> resize_mode -> unit
      = "ml_gtk_container_set_resize_mode"
  external get_border_width : [>`container] obj -> int
      = "ml_gtk_container_get_border_width"
  external get_resize_mode : [>`container] obj -> resize_mode
      = "ml_gtk_container_get_resize_mode"
  external check_resize : [>`container] obj -> unit
      = "ml_gtk_container_check_resize"
  external add : [>`container] obj -> [>`widget] obj -> unit
      = "ml_gtk_container_add"
  external remove : [>`container] obj -> [>`widget] obj -> unit
      = "ml_gtk_container_remove"

  let setter ~cont ?border_width ?(width = -2) ?(height = -2) =
    cont (fun w ->
      may border_width ~f:(set_border_width w);
      if width <> -2 || height <> -2 then Widget.set_usize w ?width ?height)
  let set ?border_width =
    setter ?border_width ~cont:(fun f w -> f w)

  external foreach : [>`container] obj -> f:(widget obj-> unit) -> unit
      = "ml_gtk_container_foreach"
  let children w =
    let l = ref [] in
    foreach w ~f:(fun c -> l := c :: !l);
    List.rev !l
  (* Called by Widget.grab_focus *)
  external set_focus_child : [>`container] obj -> [>`widget] optobj -> unit
      = "ml_gtk_container_set_focus_child"
  external set_focus_vadjustment :
      [>`container] obj -> [>`adjustment] optobj -> unit
      = "ml_gtk_container_set_focus_vadjustment"
  external set_focus_hadjustment :
      [>`container] obj -> [>`adjustment] optobj -> unit
      = "ml_gtk_container_set_focus_hadjustment"
  module Signals = struct
    open GtkSignal
    let add =
      { name = "add"; classe = `container;
        marshaller = Widget.Signals.marshal }
    let remove =
      { name = "remove"; classe = `container;
        marshaller = Widget.Signals.marshal }
    let check_resize =
      { name = "check_resize"; classe = `container; marshaller = marshal_unit }
    let set_focus =
      { name = "set_focus"; classe = `container;
        marshaller = Widget.Signals.marshal_opt }
  end
end

module Item = struct
  let cast w : item obj = Object.try_cast w "GtkItem"
  external select : [>`item] obj -> unit = "ml_gtk_item_select"
  external deselect : [>`item] obj -> unit = "ml_gtk_item_deselect"
  external toggle : [>`item] obj -> unit = "ml_gtk_item_toggle"
  module Signals = struct
    open GtkSignal
    let select =
      { name = "select"; classe = `item; marshaller = marshal_unit }
    let deselect =
      { name = "deselect"; classe = `item; marshaller = marshal_unit }
    let toggle =
      { name = "toggle"; classe = `item; marshaller = marshal_unit }
  end
end

(* Clipboard provides high-level access to Selection *)
module Clipboard = struct
  external get : Gdk.atom -> clipboard = "ml_gtk_clipboard_get"
  external clear : clipboard -> unit = "ml_gtk_clipboard_clear"
  external set_text : clipboard -> string -> unit = "ml_gtk_clipboard_set_text"
  external wait_for_contents : clipboard -> target:Gdk.atom -> selection_data
      = "ml_gtk_clipboard_wait_for_contents"
  external wait_for_text : clipboard -> string option
      = "ml_gtk_clipboard_wait_for_text"
  external request_contents :
      clipboard -> target:Gdk.atom -> callback:(selection_data -> unit) -> unit
      = "ml_gtk_clipboard_request_contents"
  external request_text :
      clipboard -> callback:(string option -> unit) -> unit
      = "ml_gtk_clipboard_request_text"
end

(* Use of Selection is deprecated: rather use simpler Clipboard module *)
module Selection = struct
  external selection : selection_data -> Gdk.atom
      = "ml_gtk_selection_data_selection"
  external target : selection_data -> Gdk.atom
      = "ml_gtk_selection_data_target"
  external seltype : selection_data -> Gdk.atom
      = "ml_gtk_selection_data_type"
  external format : selection_data -> int
      = "ml_gtk_selection_data_format"
  external get_data : selection_data -> string
      = "ml_gtk_selection_data_get_data"       (* May raise Gpointer.null *)
  external set :
      selection_data ->
      typ:Gdk.atom -> format:int -> data:string option -> unit
      = "ml_gtk_selection_data_set"

  (* Create a memory-managed copy of the data *)
  external copy : selection_data -> selection_data
      = "ml_gtk_selection_data_copy"

  external owner_set :
    [>`widget] obj -> sel:Gdk.atom -> time:int32 -> bool
    = "ml_gtk_selection_owner_set"
  external add_target :
    [>`widget] obj -> sel:Gdk.atom -> target:Gdk.atom ->
    info:int -> unit
    = "ml_gtk_selection_add_target"
  external convert :
    [> `widget] obj -> sel:Gdk.atom -> target:Gdk.atom ->
    time:int32 -> bool
    = "ml_gtk_selection_convert"
  
  module Signals = struct
    open GtkSignal
    open Gobject.Closure
    let marshal_sel3 f argv = function
      | `POINTER(Some p) :: `INT info :: `INT time :: _ ->
          f (Obj.magic p : selection_data) ~info ~time:(get_int32 argv ~pos:3)
      | _ -> invalid_arg "GtkBase.Widget.Signals.marshal_sel3"
    let marshal_sel2 f argv = function
      | `POINTER(Some p) :: `INT time :: _ ->
          f (copy(Obj.magic p : selection_data)) ~time:(get_int32 argv ~pos:2)
      | _ -> invalid_arg "GtkBase.Widget.Signals.marshal_sel2"
    let selection_get =
      { name = "selection_get"; classe = `widget;
        marshaller = marshal_sel3 }
    let selection_received =
      { name = "selection_received"; classe = `widget;
        marshaller = marshal_sel2 }
  end
end

module DnD = struct
  external dest_set :
      [>`widget] obj -> flags:dest_defaults list ->
      targets:target_entry array -> actions:Gdk.Tags.drag_action list -> unit 
    = "ml_gtk_drag_dest_set"
  external dest_unset : [>`widget] obj -> unit
      = "ml_gtk_drag_dest_unset"
  external finish :
      Gdk.drag_context -> success:bool -> del:bool -> time:int32 -> unit
      = "ml_gtk_drag_finish"
  external get_data :
      [>`widget] obj -> Gdk.drag_context -> target:Gdk.atom -> time:int32 -> unit
      = "ml_gtk_drag_get_data"
  external get_source_widget : Gdk.drag_context -> widget obj
      = "ml_gtk_drag_get_source_widget"
  external highlight : [>`widget] obj -> unit = "ml_gtk_drag_highlight"
  external unhighlight : [>`widget] obj -> unit = "ml_gtk_drag_unhighlight"
  external set_icon_widget :
      Gdk.drag_context -> [>`widget] obj -> hot_x:int -> hot_y:int -> unit
      = "ml_gtk_drag_set_icon_widget"
  external set_icon_pixmap :
      Gdk.drag_context -> colormap:Gdk.colormap ->
      Gdk.pixmap -> ?mask:Gdk.bitmap -> hot_x:int -> hot_y:int -> unit
      = "ml_gtk_drag_set_icon_pixmap_bc" "ml_gtk_drag_set_icon_pixmap"
  external set_icon_default : Gdk.drag_context -> unit
      = "ml_gtk_drag_set_icon_default"
  external set_default_icon :
      colormap:Gdk.colormap -> Gdk.pixmap ->
      ?mask:Gdk.bitmap -> hot_x:int -> hot_y:int -> unit
      = "ml_gtk_drag_set_default_icon"
  external source_set :
      [>`widget] obj -> ?modi:Gdk.Tags.modifier list ->
      targets:target_entry array -> actions:Gdk.Tags.drag_action list -> unit
      = "ml_gtk_drag_source_set"
  external source_set_icon :
      [>`widget] obj -> colormap:Gdk.colormap ->
      Gdk.pixmap -> ?mask:Gdk.bitmap -> unit
      = "ml_gtk_drag_source_set_icon"
  external source_unset : [>`widget] obj -> unit
      = "ml_gtk_drag_source_unset"
(*  external dest_handle_event : [>`widget] -> *)
  module Signals = struct
    open GtkSignal
    open Gobject.Closure
    open Widget.Signals
    let marshal_drag1 f _ = function
      | `OBJECT(Some p) :: _ -> f (unsafe_cast p : Gdk.drag_context)
      |	_ -> invalid_arg "GtkBase.Widget.Signals.marshal_drag1"
    let marshal_drag2 f argv = function
      | `OBJECT(Some p) :: `INT time :: _ ->
	  f (unsafe_cast p : Gdk.drag_context) ~time:(get_int32 argv ~pos:2)
      |	_ -> invalid_arg "GtkBase.Widget.Signals.marshal_drag2"
    let marshal_drag3 f argv = function
      | `OBJECT(Some p) :: `INT x :: `INT y :: `INT time :: _ ->
	  let res = f (unsafe_cast p : Gdk.drag_context) ~x ~y 
	              ~time:(get_int32 argv ~pos:4)
	  in Closure.set_result argv (`BOOL res)
      |	_ -> invalid_arg "GtkBase.Widget.Signals.marshal_drag3"
    let drag_begin =
      { name = "drag_begin"; classe = `widget;
        marshaller = marshal_drag1 }
    let drag_end =
      { name = "drag_end"; classe = `widget;
        marshaller = marshal_drag1 }
    let drag_data_delete =
      { name = "drag_data_delete"; classe = `widget;
        marshaller = marshal_drag1 }
    let drag_leave =
      { name = "drag_leave"; classe = `widget;
        marshaller = marshal_drag2 }
    let drag_motion =
      { name = "drag_motion"; classe = `widget;
        marshaller = marshal_drag3 }
    let drag_drop =
      { name = "drag_drop"; classe = `widget; marshaller = marshal_drag3 }
    let drag_data_get =
      let marshal f argv = function
        | `OBJECT(Some p) :: `POINTER(Some q) ::
          `INT info :: `INT time :: _ ->
	    f (unsafe_cast p : Gdk.drag_context)
	      (Obj.magic q : selection_data) 
	      ~info ~time:(get_int32 argv ~pos:4)
	| _ -> invalid_arg "GtkBase.Widget.Signals.marshal_drag_data_get"
      in
      { name = "drag_data_get"; classe = `widget; marshaller = marshal }
    let drag_data_received =
      let marshal f argv = function
        | `OBJECT(Some p) :: `INT x :: `INT y :: `POINTER(Some q) ::
          `INT info :: `INT time :: _ ->
	    f (unsafe_cast p : Gdk.drag_context) ~x ~y
              (Obj.magic q : selection_data)
	      ~info ~time:(get_int32 argv ~pos:6)
	| _ -> invalid_arg "GtkBase.Widget.Signals.marshal_drag_data_received"
      in
      { name = "drag_data_received"; classe = `widget;
        marshaller = marshal }
  end
end
