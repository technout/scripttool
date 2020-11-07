#############################################################################
# Generated by PAGE version 5.6
#  in conjunction with Tcl version 8.6
#  Nov 07, 2020 11:12:22 PM CET  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    tk_messageBox -title Error -message  "You must open project files from within PAGE."
    exit}


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Absolute
}




proc vTclWindow.top44 {base} {
    global vTcl
    if {$base == ""} {
        set base .top44
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 706x487+540+200
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1665 1020
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Script Tool v0.1"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    frame $top.fra45 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 464 -highlightcolor black -width 685 
    vTcl:DefineAlias "$top.fra45" "Frame1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra45
    label $site_3_0.lab46 \
        -activebackground #f9f9f9 -activeforeground black -anchor w \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black \
        -text {Welcome, select an action (edit it) and press run to execute:} 
    vTcl:DefineAlias "$site_3_0.lab46" "Label1" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but47 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command btn1click \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text {Directory listing} 
    vTcl:DefineAlias "$site_3_0.but47" "Button1" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but48 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command btn2click \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text {System info} 
    vTcl:DefineAlias "$site_3_0.but48" "Button2" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but49 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command btn3click \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text {View log} 
    vTcl:DefineAlias "$site_3_0.but49" "Button3" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but51 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command btn4click \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text {Find package} 
    vTcl:DefineAlias "$site_3_0.but51" "Button4" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but52 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command btn5click \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text Processes 
    vTcl:DefineAlias "$site_3_0.but52" "Button5" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but53 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command btn6click \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text Status 
    vTcl:DefineAlias "$site_3_0.but53" "Button6" vTcl:WidgetProc "Toplevel1" 1
    entry $site_3_0.ent46 \
        -background white \
        -font {-family {DejaVu Sans Mono} -size 12 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black \
        -insertbackground black -selectbackground blue \
        -selectforeground white -textvariable action_string -width 426 
    vTcl:DefineAlias "$site_3_0.ent46" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but50 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command runBtnClicked \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text Run 
    vTcl:DefineAlias "$site_3_0.but50" "btnRun" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.but50 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Run the command}
    }
    button $site_3_0.but45 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command saveBtnClicked \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text Save 
    vTcl:DefineAlias "$site_3_0.but45" "btnSave" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.but45 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Save command}
    }
    button $site_3_0.but46 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command defaultBtnClicked \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text Default 
    vTcl:DefineAlias "$site_3_0.but46" "btnLoadDefault" vTcl:WidgetProc "Toplevel1" 1
    bind $site_3_0.but46 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Load default commands\nWarning: all custom commands will be overwritten!}
    }
    vTcl::widgets::ttk::scrolledtext::CreateCmd $site_3_0.scr47 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 75 -highlightcolor black -width 125 
    vTcl:DefineAlias "$site_3_0.scr47" "Scrolledtext" vTcl:WidgetProc "Toplevel1" 1

    $site_3_0.scr47.01 configure -background white \
        -font "-family {DejaVu Sans Mono} -size 10" \
        -foreground black \
        -height 3 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground blue \
        -selectforeground white \
        -width 10 \
        -wrap none
    button $site_3_0.but54 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command btnInfo -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Info 
    vTcl:DefineAlias "$site_3_0.but54" "Button6_1" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab46 \
        -in $site_3_0 -x 10 -y 10 -width 563 -relwidth 0 -height 26 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but47 \
        -in $site_3_0 -x 10 -y 50 -width 161 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but48 \
        -in $site_3_0 -x 10 -y 90 -width 161 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but49 \
        -in $site_3_0 -x 10 -y 130 -width 161 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but51 \
        -in $site_3_0 -x 180 -y 50 -width 161 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but52 \
        -in $site_3_0 -x 180 -y 90 -width 161 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but53 \
        -in $site_3_0 -x 180 -y 130 -width 161 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.ent46 \
        -in $site_3_0 -x 10 -y 170 -width 426 -relwidth 0 -height 23 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but50 \
        -in $site_3_0 -x 450 -y 170 -width 71 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but45 \
        -in $site_3_0 -x 530 -y 170 -width 71 -height 31 -anchor nw \
        -bordermode ignore 
    place $site_3_0.but46 \
        -in $site_3_0 -x 610 -y 170 -width 71 -height 31 -anchor nw \
        -bordermode ignore 
    place $site_3_0.scr47 \
        -in $site_3_0 -x 10 -y 210 -width 662 -relwidth 0 -height 241 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but54 \
        -in $site_3_0 -x 600 -y 10 -width 71 -relwidth 0 -height 31 \
        -relheight 0 -anchor nw -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.fra45 \
        -in $top -x 10 -y 10 -width 685 -relwidth 0 -height 464 -relheight 0 \
        -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top44 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

