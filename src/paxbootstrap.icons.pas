unit paxbootstrap.icons;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, fpimage, LCLType, IntfGraphics, GraphType, EasyLazFreeType,
  LazFreeTypeIntfDrawer;

type
  TFontAwesome = (
    fa_500px,
    fa_address_book,
    fa_address_book_o,
    fa_address_card,
    fa_address_card_o,
    fa_adjust,
    fa_adn,
    fa_align_center,
    fa_align_justify,
    fa_align_left,
    fa_align_right,
    fa_amazon,
    fa_ambulance,
    fa_american_sign_language_interpreting,
    fa_anchor,
    fa_android,
    fa_angellist,
    fa_angle_double_down,
    fa_angle_double_left,
    fa_angle_double_right,
    fa_angle_double_up,
    fa_angle_down,
    fa_angle_left,
    fa_angle_right,
    fa_angle_up,
    fa_apple,
    fa_archive,
    fa_area_chart,
    fa_arrows,
    fa_arrows_alt,
    fa_arrows_h,
    fa_arrows_v,
    fa_arrow_circle_down,
    fa_arrow_circle_left,
    fa_arrow_circle_o_down,
    fa_arrow_circle_o_left,
    fa_arrow_circle_o_right,
    fa_arrow_circle_o_up,
    fa_arrow_circle_right,
    fa_arrow_circle_up,
    fa_arrow_down,
    fa_arrow_left,
    fa_arrow_right,
    fa_arrow_up,
    fa_asl_interpreting,
    fa_assistive_listening_systems,
    fa_asterisk,
    fa_at,
    fa_audio_description,
    fa_automobile,
    fa_backward,
    fa_balance_scale,
    fa_ban,
    fa_bandcamp,
    fa_bank,
    fa_barcode,
    fa_bars,
    fa_bar_chart,
    fa_bar_chart_o,
    fa_bath,
    fa_bathtub,
    fa_battery,
    fa_battery_0,
    fa_battery_1,
    fa_battery_2,
    fa_battery_3,
    fa_battery_4,
    fa_battery_empty,
    fa_battery_full,
    fa_battery_half,
    fa_battery_quarter,
    fa_battery_three_quarters,
    fa_bed,
    fa_beer,
    fa_behance,
    fa_behance_square,
    fa_bell,
    fa_bell_o,
    fa_bell_slash,
    fa_bell_slash_o,
    fa_bicycle,
    fa_binoculars,
    fa_birthday_cake,
    fa_bitbucket,
    fa_bitbucket_square,
    fa_bitcoin, fa_btc,
    fa_black_tie,
    fa_blind,
    fa_bluetooth,
    fa_bluetooth_b,
    fa_bold,
    fa_bolt,
    fa_bomb,
    fa_book,
    fa_bookmark,
    fa_bookmark_o,
    fa_braille,
    fa_briefcase,
    fa_bug,
    fa_building,
    fa_building_o,
    fa_bullhorn,
    fa_bullseye,
    fa_bus,
    fa_buysellads,
    fa_cab, fa_taxi,
    fa_calculator,
    fa_calendar,
    fa_calendar_check_o,
    fa_calendar_minus_o,
    fa_calendar_o,
    fa_calendar_plus_o,
    fa_calendar_times_o,
    fa_camera,
    fa_camera_retro,
    fa_car,
    fa_caret_down,
    fa_caret_left,
    fa_caret_right,
    fa_caret_square_o_down,
    fa_caret_square_o_left,
    fa_caret_square_o_right,
    fa_caret_square_o_up,
    fa_caret_up,
    fa_cart_arrow_down,
    fa_cart_plus,
    fa_cc,
    fa_cc_amex,
    fa_cc_diners_club,
    fa_cc_discover,
    fa_cc_jcb,
    fa_cc_mastercard,
    fa_cc_paypal,
    fa_cc_stripe,
    fa_cc_visa,
    fa_certificate,
    fa_chain,
    fa_chain_broken,
    fa_check,
    fa_check_circle,
    fa_check_circle_o,
    fa_check_square,
    fa_check_square_o,
    fa_chevron_circle_down,
    fa_chevron_circle_left,
    fa_chevron_circle_right,
    fa_chevron_circle_up,
    fa_chevron_down,
    fa_chevron_left,
    fa_chevron_right,
    fa_chevron_up,
    fa_child,
    fa_chrome,
    fa_circle,
    fa_circle_o,
    fa_circle_o_notch,
    fa_circle_thin,
    fa_clipboard,
    fa_clock_o,
    fa_clone,
    fa_close,
    fa_cloud,
    fa_cloud_download,
    fa_cloud_upload,
    fa_cny,
    fa_code,
    fa_codepen,
    fa_code_fork,
    fa_codiepie,
    fa_coffee,
    fa_cog,
    fa_cogs,
    fa_columns,
    fa_comment,
    fa_commenting,
    fa_commenting_o,
    fa_comments,
    fa_comments_o,
    fa_comment_o,
    fa_compass,
    fa_compress,
    fa_connectdevelop,
    fa_contao,
    fa_copy, fa_files_o,
    fa_copyright,
    fa_creative_commons,
    fa_credit_card,
    fa_credit_card_alt,
    fa_crop,
    fa_crosshairs,
    fa_css3,
    fa_cube,
    fa_cubes,
    fa_cut,
    fa_cutlery,
    fa_dashboard,
    fa_dashcube,
    fa_database,
    fa_deafness,
    fa_dedent,
    fa_delicious,
    fa_desktop,
    fa_deviantart,
    fa_diamond,
    fa_digg,
    fa_dollar, fa_usd,
    fa_dot_circle_o,
    fa_download,
    fa_dribbble,
    fa_drivers_license,
    fa_drivers_license_o,
    fa_dropbox,
    fa_drupal,
    fa_edge,
    fa_edit,
    fa_eercast,
    fa_eject,
    fa_ellipsis_h,
    fa_ellipsis_v,
    fa_empire,
    fa_envelope,
    fa_envelope_o,
    fa_envelope_open,
    fa_envelope_open_o,
    fa_envelope_square,
    fa_envira,
    fa_eraser,
    fa_etsy,
    fa_eur,
    fa_euro,
    fa_exchange,
    fa_exclamation,
    fa_exclamation_circle,
    fa_exclamation_triangle,
    fa_expand,
    fa_expeditedssl,
    fa_external_link,
    fa_external_link_square,
    fa_eye,
    fa_eyedropper,
    fa_eye_slash,
    fa_fa,
    fa_facebook,
    fa_facebook_f,
    fa_facebook_official,
    fa_facebook_square,
    fa_fast_backward,
    fa_fast_forward,
    fa_fax,
    fa_feed, fa_rss,
    fa_female,
    fa_fighter_jet,
    fa_file,
    fa_file_archive_o,
    fa_file_audio_o,
    fa_file_code_o,
    fa_file_excel_o,
    fa_file_image_o,
    fa_file_movie_o,
    fa_file_o,
    fa_file_pdf_o,
    fa_file_photo_o,
    fa_file_picture_o,
    fa_file_powerpoint_o,
    fa_file_sound_o,
    fa_file_text,
    fa_file_text_o,
    fa_file_video_o,
    fa_file_word_o,
    fa_file_zip_o,
    fa_film,
    fa_filter,
    fa_fire,
    fa_firefox,
    fa_fire_extinguisher,
    fa_first_order,
    fa_flag,
    fa_flag_checkered,
    fa_flag_o,
    fa_flash,
    fa_flask,
    fa_flickr,
    fa_floppy_o,
    fa_folder,
    fa_folder_o,
    fa_folder_open,
    fa_folder_open_o,
    fa_font,
    fa_fonticons,
    fa_font_awesome,
    fa_fort_awesome,
    fa_forumbee,
    fa_forward,
    fa_foursquare,
    fa_free_code_camp,
    fa_frown_o,
    fa_futbol_o,
    fa_gamepad,
    fa_gavel,
    fa_gbp,
    fa_ge,
    fa_gear,
    fa_gears,
    fa_genderless,
    fa_get_pocket,
    fa_gg,
    fa_gg_circle,
    fa_gift,
    fa_git,
    fa_github,
    fa_github_alt,
    fa_github_square,
    fa_gitlab,
    fa_gittip,
    fa_git_square,
    fa_glass,
    fa_glide,
    fa_glide_g,
    fa_globe,
    fa_google,
    fa_google_plus,
    fa_google_plus_circle,
    fa_google_plus_official,
    fa_google_plus_square,
    fa_google_wallet,
    fa_graduation_cap,
    fa_gratipay,
    fa_grav,
    fa_group,
    fa_hacker_news,
    fa_handshake_o,
    fa_hand_grab_o,
    fa_hand_lizard_o,
    fa_hand_o_down,
    fa_hand_o_left,
    fa_hand_o_right,
    fa_hand_o_up,
    fa_hand_paper_o,
    fa_hand_peace_o,
    fa_hand_pointer_o,
    fa_hand_rock_o,
    fa_hand_scissors_o,
    fa_hand_spock_o,
    fa_hand_stop_o,
    fa_hard_of_hearing, fa_deaf,
    fa_hashtag,
    fa_hdd_o,
    fa_header,
    fa_headphones,
    fa_heart,
    fa_heartbeat,
    fa_heart_o,
    fa_history,
    fa_home,
    fa_hospital_o,
    fa_hotel,
    fa_hourglass,
    fa_hourglass_1,
    fa_hourglass_2,
    fa_hourglass_3,
    fa_hourglass_end,
    fa_hourglass_half,
    fa_hourglass_o,
    fa_hourglass_start,
    fa_houzz,
    fa_html5,
    fa_h_square,
    fa_id_badge,
    fa_id_card,
    fa_id_card_o,
    fa_ils,
    fa_image,
    fa_imdb,
    fa_inbox,
    fa_indent,
    fa_industry,
    fa_info,
    fa_info_circle,
    fa_inr,
    fa_instagram,
    fa_institution,
    fa_internet_explorer,
    fa_intersex,
    fa_ioxhost,
    fa_italic,
    fa_i_cursor,
    fa_joomla,
    fa_jpy,
    fa_jsfiddle,
    fa_key,
    fa_keyboard_o,
    fa_language,
    fa_laptop,
    fa_lastfm,
    fa_lastfm_square,
    fa_leaf,
    fa_leanpub,
    fa_legal,
    fa_lemon_o,
    fa_level_down,
    fa_level_up,
    fa_life_bouy,
    fa_life_buoy,
    fa_life_ring,
    fa_life_saver,
    fa_lightbulb_o,
    fa_line_chart,
    fa_link,
    fa_linkedin,
    fa_linkedin_square,
    fa_linode,
    fa_linux,
    fa_list,
    fa_list_alt,
    fa_list_ol,
    fa_list_ul,
    fa_location_arrow,
    fa_lock,
    fa_long_arrow_down,
    fa_long_arrow_left,
    fa_long_arrow_right,
    fa_long_arrow_up,
    fa_low_vision,
    fa_magic,
    fa_magnet,
    fa_mail_forward,
    fa_mail_reply,
    fa_mail_reply_all,
    fa_male,
    fa_map,
    fa_map_marker,
    fa_map_o,
    fa_map_pin,
    fa_map_signs,
    fa_mars,
    fa_mars_double,
    fa_mars_stroke,
    fa_mars_stroke_h,
    fa_mars_stroke_v,
    fa_maxcdn,
    fa_meanpath,
    fa_medium,
    fa_medkit,
    fa_meetup,
    fa_meh_o,
    fa_mercury,
    fa_microchip,
    fa_microphone,
    fa_microphone_slash,
    fa_minus,
    fa_minus_circle,
    fa_minus_square,
    fa_minus_square_o,
    fa_mixcloud,
    fa_mobile,
    fa_mobile_phone,
    fa_modx,
    fa_money,
    fa_moon_o,
    fa_mortar_board,
    fa_motorcycle,
    fa_mouse_pointer,
    fa_music,
    fa_navicon,
    fa_neuter,
    fa_newspaper_o,
    fa_object_group,
    fa_object_ungroup,
    fa_odnoklassniki,
    fa_odnoklassniki_square,
    fa_opencart,
    fa_openid,
    fa_opera,
    fa_optin_monster,
    fa_outdent,
    fa_pagelines,
    fa_paint_brush,
    fa_paperclip,
    fa_paper_plane,
    fa_paper_plane_o,
    fa_paragraph,
    fa_paste,
    fa_pause,
    fa_pause_circle,
    fa_pause_circle_o,
    fa_paw,
    fa_paypal,
    fa_pencil,
    fa_pencil_square,
    fa_pencil_square_o,
    fa_percent,
    fa_phone,
    fa_phone_square,
    fa_photo,
    fa_picture_o,
    fa_pied_piper,
    fa_pied_piper_alt,
    fa_pied_piper_pp,
    fa_pie_chart,
    fa_pinterest,
    fa_pinterest_p,
    fa_pinterest_square,
    fa_plane,
    fa_play,
    fa_play_circle,
    fa_play_circle_o,
    fa_plug,
    fa_plus,
    fa_plus_circle,
    fa_plus_square,
    fa_plus_square_o,
    fa_podcast,
    fa_power_off,
    fa_print,
    fa_product_hunt,
    fa_puzzle_piece,
    fa_qq,
    fa_qrcode,
    fa_question,
    fa_question_circle,
    fa_question_circle_o,
    fa_quora,
    fa_quote_left,
    fa_quote_right,
    fa_ra,
    fa_random,
    fa_ravelry,
    fa_rebel,
    fa_recycle,
    fa_reddit,
    fa_reddit_alien,
    fa_reddit_square,
    fa_refresh,
    fa_registered,
    fa_remove,
    fa_renren,
    fa_reorder,
    fa_repeat,
    fa_reply,
    fa_reply_all,
    fa_resistance,
    fa_retweet,
    fa_rmb,
    fa_road,
    fa_rocket,
    fa_rotate_left,
    fa_rotate_right,
    fa_rouble,
    fa_rss_square,
    fa_rub,
    fa_ruble,
    fa_rupee,
    fa_s15,
    fa_safari,
    fa_save,
    fa_scissors,
    fa_scribd,
    fa_search,
    fa_search_minus,
    fa_search_plus,
    fa_sellsy,
    fa_send,
    fa_send_o,
    fa_server,
    fa_share,
    fa_share_alt,
    fa_share_alt_square,
    fa_share_square,
    fa_share_square_o,
    fa_shekel,
    fa_sheqel,
    fa_shield,
    fa_ship,
    fa_shirtsinbulk,
    fa_shopping_bag,
    fa_shopping_basket,
    fa_shopping_cart,
    fa_shower,
    fa_signal,
    fa_signing,
    fa_sign_in,
    fa_sign_language,
    fa_sign_out,
    fa_simplybuilt,
    fa_sitemap,
    fa_skyatlas,
    fa_skype,
    fa_slack,
    fa_sliders,
    fa_slideshare,
    fa_smile_o,
    fa_snapchat,
    fa_snapchat_ghost,
    fa_snapchat_square,
    fa_snowflake_o,
    fa_soccer_ball_o,
    fa_sort_alpha_asc,
    fa_sort_alpha_desc,
    fa_sort_amount_asc,
    fa_sort_amount_desc,
    fa_sort_asc,
    fa_sort_desc,
    fa_sort_down,
    fa_sort_numeric_asc,
    fa_sort_numeric_desc,
    fa_sort_up,
    fa_soundcloud,
    fa_space_shuttle,
    fa_spinner,
    fa_spoon,
    fa_spotify,
    fa_square,
    fa_square_o,
    fa_stack_exchange,
    fa_stack_overflow,
    fa_star,
    fa_star_half,
    fa_star_half_empty,
    fa_star_half_full,
    fa_star_half_o,
    fa_star_o,
    fa_steam,
    fa_steam_square,
    fa_step_backward,
    fa_step_forward,
    fa_stethoscope,
    fa_sticky_note,
    fa_sticky_note_o,
    fa_stop,
    fa_stop_circle,
    fa_stop_circle_o,
    fa_street_view,
    fa_strikethrough,
    fa_stumbleupon,
    fa_stumbleupon_circle,
    fa_subscript,
    fa_subway,
    fa_suitcase,
    fa_sun_o,
    fa_superpowers,
    fa_superscript,
    fa_support,
    fa_table,
    fa_tablet,
    fa_tachometer,
    fa_tag,
    fa_tags,
    fa_tasks,
    fa_telegram,
    fa_television,
    fa_tencent_weibo,
    fa_terminal,
    fa_text_height,
    fa_text_width,
    fa_th,
    fa_themeisle,
    fa_thermometer,
    fa_thermometer_0,
    fa_thermometer_1,
    fa_thermometer_2,
    fa_thermometer_3,
    fa_thermometer_4,
    fa_thermometer_empty,
    fa_thermometer_full,
    fa_thermometer_half,
    fa_thermometer_quarter,
    fa_thermometer_three_quarters,
    fa_thumbs_down,
    fa_thumbs_o_down,
    fa_thumbs_o_up,
    fa_thumbs_up,
    fa_thumb_tack,
    fa_th_large,
    fa_th_list,
    fa_ticket,
    fa_times,
    fa_times_circle,
    fa_times_circle_o,
    fa_times_rectangle,
    fa_times_rectangle_o,
    fa_tint,
    fa_toggle_down,
    fa_toggle_left,
    fa_toggle_off,
    fa_toggle_on,
    fa_toggle_right,
    fa_toggle_up,
    fa_trademark,
    fa_train,
    fa_transgender,
    fa_transgender_alt,
    fa_trash,
    fa_trash_o,
    fa_tree,
    fa_trello,
    fa_tripadvisor,
    fa_trophy,
    fa_truck,
    fa_try,
    fa_tty,
    fa_tumblr,
    fa_tumblr_square,
    fa_turkish_lira,
    fa_tv,
    fa_twitch,
    fa_twitter,
    fa_twitter_square,
    fa_umbrella,
    fa_underline,
    fa_undo,
    fa_universal_access,
    fa_university,
    fa_unlink,
    fa_unlock,
    fa_unlock_alt,
    fa_unsorted, fa_sort,
    fa_upload,
    fa_usb,
    fa_user,
    fa_users,
    fa_user_circle,
    fa_user_circle_o,
    fa_user_md,
    fa_user_o,
    fa_user_plus,
    fa_user_secret,
    fa_user_times,
    fa_vcard,
    fa_vcard_o,
    fa_venus,
    fa_venus_double,
    fa_venus_mars,
    fa_viacoin,
    fa_viadeo,
    fa_viadeo_square,
    fa_video_camera,
    fa_vimeo,
    fa_vimeo_square,
    fa_vine,
    fa_vk,
    fa_volume_control_phone,
    fa_volume_down,
    fa_volume_off,
    fa_volume_up,
    fa_warning,
    fa_wechat,
    fa_weibo,
    fa_weixin,
    fa_whatsapp,
    fa_wheelchair,
    fa_wheelchair_alt,
    fa_wifi,
    fa_wikipedia_w,
    fa_windows,
    fa_window_close,
    fa_window_close_o,
    fa_window_maximize,
    fa_window_minimize,
    fa_window_restore,
    fa_won, fa_krw,
    fa_wordpress,
    fa_wpbeginner,
    fa_wpexplorer,
    fa_wpforms,
    fa_wrench,
    fa_xing,
    fa_xing_square,
    fa_yahoo,
    fa_yc,
    fa_yc_square,
    fa_yelp,
    fa_yen,
    fa_yoast,
    fa_youtube,
    fa_youtube_play,
    fa_youtube_square,
    fa_y_combinator,
    fa_y_combinator_square
    );

  TMaterialDesign = (
    md_3d_rotation,//e84d
    md_ac_unit,//eb3b
    md_access_alarm,//e190
    md_access_alarms,//e191
    md_access_time,//e192
    md_accessibility,//e84e
    md_accessible,//e914
    md_account_balance,//e84f
    md_account_balance_wallet,//e850
    md_account_box,//e851
    md_account_circle,//e853
    md_adb,//e60e
    md_add,//e145
    md_add_a_photo,//e439
    md_add_alarm,//e193
    md_add_alert,//e003
    md_add_box,//e146
    md_add_circle,//e147
    md_add_circle_outline,//e148
    md_add_location,//e567
    md_add_shopping_cart,//e854
    md_add_to_photos,//e39d
    md_add_to_queue,//e05c
    md_adjust,//e39e
    md_airline_seat_flat,//e630
    md_airline_seat_flat_angled,//e631
    md_airline_seat_individual_suite,//e632
    md_airline_seat_legroom_extra,//e633
    md_airline_seat_legroom_normal,//e634
    md_airline_seat_legroom_reduced,//e635
    md_airline_seat_recline_extra,//e636
    md_airline_seat_recline_normal,//e637
    md_airplanemode_active,//e195
    md_airplanemode_inactive,//e194
    md_airplay,//e055
    md_airport_shuttle,//eb3c
    md_alarm,//e855
    md_alarm_add,//e856
    md_alarm_off,//e857
    md_alarm_on,//e858
    md_album,//e019
    md_all_inclusive,//eb3d
    md_all_out,//e90b
    md_android,//e859
    md_announcement,//e85a
    md_apps,//e5c3
    md_archive,//e149
    md_arrow_back,//e5c4
    md_arrow_downward,//e5db
    md_arrow_drop_down,//e5c5
    md_arrow_drop_down_circle,//e5c6
    md_arrow_drop_up,//e5c7
    md_arrow_forward,//e5c8
    md_arrow_upward,//e5d8
    md_art_track,//e060
    md_aspect_ratio,//e85b
    md_assessment,//e85c
    md_assignment,//e85d
    md_assignment_ind,//e85e
    md_assignment_late,//e85f
    md_assignment_return,//e860
    md_assignment_returned,//e861
    md_assignment_turned_in,//e862
    md_assistant,//e39f
    md_assistant_photo,//e3a0
    md_attach_file,//e226
    md_attach_money,//e227
    md_attachment,//e2bc
    md_audiotrack,//e3a1
    md_autorenew,//e863
    md_av_timer,//e01b
    md_backspace,//e14a
    md_backup,//e864
    md_battery_alert,//e19c
    md_battery_charging_full,//e1a3
    md_battery_full,//e1a4
    md_battery_std,//e1a5
    md_battery_unknown,//e1a6
    md_beach_access,//eb3e
    md_beenhere,//e52d
    md_block,//e14b
    md_bluetooth,//e1a7
    md_bluetooth_audio,//e60f
    md_bluetooth_connected,//e1a8
    md_bluetooth_disabled,//e1a9
    md_bluetooth_searching,//e1aa
    md_blur_circular,//e3a2
    md_blur_linear,//e3a3
    md_blur_off,//e3a4
    md_blur_on,//e3a5
    md_book,//e865
    md_bookmark,//e866
    md_bookmark_border,//e867
    md_border_all,//e228
    md_border_bottom,//e229
    md_border_clear,//e22a
    md_border_color,//e22b
    md_border_horizontal,//e22c
    md_border_inner,//e22d
    md_border_left,//e22e
    md_border_outer,//e22f
    md_border_right,//e230
    md_border_style,//e231
    md_border_top,//e232
    md_border_vertical,//e233
    md_branding_watermark,//e06b
    md_brightness_1,//e3a6
    md_brightness_2,//e3a7
    md_brightness_3,//e3a8
    md_brightness_4,//e3a9
    md_brightness_5,//e3aa
    md_brightness_6,//e3ab
    md_brightness_7,//e3ac
    md_brightness_auto,//e1ab
    md_brightness_high,//e1ac
    md_brightness_low,//e1ad
    md_brightness_medium,//e1ae
    md_broken_image,//e3ad
    md_brush,//e3ae
    md_bubble_chart,//e6dd
    md_bug_report,//e868
    md_build,//e869
    md_burst_mode,//e43c
    md_business,//e0af
    md_business_center,//eb3f
    md_cached,//e86a
    md_cake,//e7e9
    md_call,//e0b0
    md_call_end,//e0b1
    md_call_made,//e0b2
    md_call_merge,//e0b3
    md_call_missed,//e0b4
    md_call_missed_outgoing,//e0e4
    md_call_received,//e0b5
    md_call_split,//e0b6
    md_call_to_action,//e06c
    md_camera,//e3af
    md_camera_alt,//e3b0
    md_camera_enhance,//e8fc
    md_camera_front,//e3b1
    md_camera_rear,//e3b2
    md_camera_roll,//e3b3
    md_cancel,//e5c9
    md_card_giftcard,//e8f6
    md_card_membership,//e8f7
    md_card_travel,//e8f8
    md_casino,//eb40
    md_cast,//e307
    md_cast_connected,//e308
    md_center_focus_strong,//e3b4
    md_center_focus_weak,//e3b5
    md_change_history,//e86b
    md_chat,//e0b7
    md_chat_bubble,//e0ca
    md_chat_bubble_outline,//e0cb
    md_check,//e5ca
    md_check_box,//e834
    md_check_box_outline_blank,//e835
    md_check_circle,//e86c
    md_chevron_left,//e5cb
    md_chevron_right,//e5cc
    md_child_care,//eb41
    md_child_friendly,//eb42
    md_chrome_reader_mode,//e86d
    md_class,//e86e
    md_clear,//e14c
    md_clear_all,//e0b8
    md_close,//e5cd
    md_closed_caption,//e01c
    md_cloud,//e2bd
    md_cloud_circle,//e2be
    md_cloud_done,//e2bf
    md_cloud_download,//e2c0
    md_cloud_off,//e2c1
    md_cloud_queue,//e2c2
    md_cloud_upload,//e2c3
    md_code,//e86f
    md_collections,//e3b6
    md_collections_bookmark,//e431
    md_color_lens,//e3b7
    md_colorize,//e3b8
    md_comment,//e0b9
    md_compare,//e3b9
    md_compare_arrows,//e915
    md_computer,//e30a
    md_confirmation_number,//e638
    md_contact_mail,//e0d0
    md_contact_phone,//e0cf
    md_contacts,//e0ba
    md_content_copy,//e14d
    md_content_cut,//e14e
    md_content_paste,//e14f
    md_control_point,//e3ba
    md_control_point_duplicate,//e3bb
    md_copyright,//e90c
    md_create,//e150
    md_create_new_folder,//e2cc
    md_credit_card,//e870
    md_crop,//e3be
    md_crop_16_9,//e3bc
    md_crop_3_2,//e3bd
    md_crop_5_4,//e3bf
    md_crop_7_5,//e3c0
    md_crop_din,//e3c1
    md_crop_free,//e3c2
    md_crop_landscape,//e3c3
    md_crop_original,//e3c4
    md_crop_portrait,//e3c5
    md_crop_rotate,//e437
    md_crop_square,//e3c6
    md_dashboard,//e871
    md_data_usage,//e1af
    md_date_range,//e916
    md_dehaze,//e3c7
    md_delete,//e872
    md_delete_forever,//e92b
    md_delete_sweep,//e16c
    md_description,//e873
    md_desktop_mac,//e30b
    md_desktop_windows,//e30c
    md_details,//e3c8
    md_developer_board,//e30d
    md_developer_mode,//e1b0
    md_device_hub,//e335
    md_devices,//e1b1
    md_devices_other,//e337
    md_dialer_sip,//e0bb
    md_dialpad,//e0bc
    md_directions,//e52e
    md_directions_bike,//e52f
    md_directions_boat,//e532
    md_directions_bus,//e530
    md_directions_car,//e531
    md_directions_railway,//e534
    md_directions_run,//e566
    md_directions_subway,//e533
    md_directions_transit,//e535
    md_directions_walk,//e536
    md_disc_full,//e610
    md_dns,//e875
    md_do_not_disturb,//e612
    md_do_not_disturb_alt,//e611
    md_do_not_disturb_off,//e643
    md_do_not_disturb_on,//e644
    md_dock,//e30e
    md_domain,//e7ee
    md_done,//e876
    md_done_all,//e877
    md_donut_large,//e917
    md_donut_small,//e918
    md_drafts,//e151
    md_drag_handle,//e25d
    md_drive_eta,//e613
    md_dvr,//e1b2
    md_edit,//e3c9
    md_edit_location,//e568
    md_eject,//e8fb
    md_email,//e0be
    md_enhanced_encryption,//e63f
    md_equalizer,//e01d
    md_error,//e000
    md_error_outline,//e001
    md_euro_symbol,//e926
    md_ev_station,//e56d
    md_event,//e878
    md_event_available,//e614
    md_event_busy,//e615
    md_event_note,//e616
    md_event_seat,//e903
    md_exit_to_app,//e879
    md_expand_less,//e5ce
    md_expand_more,//e5cf
    md_explicit,//e01e
    md_explore,//e87a
    md_exposure,//e3ca
    md_exposure_neg_1,//e3cb
    md_exposure_neg_2,//e3cc
    md_exposure_plus_1,//e3cd
    md_exposure_plus_2,//e3ce
    md_exposure_zero,//e3cf
    md_extension,//e87b
    md_face,//e87c
    md_fast_forward,//e01f
    md_fast_rewind,//e020
    md_favorite,//e87d
    md_favorite_border,//e87e
    md_featured_play_list,//e06d
    md_featured_video,//e06e
    md_feedback,//e87f
    md_fiber_dvr,//e05d
    md_fiber_manual_record,//e061
    md_fiber_new,//e05e
    md_fiber_pin,//e06a
    md_fiber_smart_record,//e062
    md_file_download,//e2c4
    md_file_upload,//e2c6
    md_filter,//e3d3
    md_filter_1,//e3d0
    md_filter_2,//e3d1
    md_filter_3,//e3d2
    md_filter_4,//e3d4
    md_filter_5,//e3d5
    md_filter_6,//e3d6
    md_filter_7,//e3d7
    md_filter_8,//e3d8
    md_filter_9,//e3d9
    md_filter_9_plus,//e3da
    md_filter_b_and_w,//e3db
    md_filter_center_focus,//e3dc
    md_filter_drama,//e3dd
    md_filter_frames,//e3de
    md_filter_hdr,//e3df
    md_filter_list,//e152
    md_filter_none,//e3e0
    md_filter_tilt_shift,//e3e2
    md_filter_vintage,//e3e3
    md_find_in_page,//e880
    md_find_replace,//e881
    md_fingerprint,//e90d
    md_first_page,//e5dc
    md_fitness_center,//eb43
    md_flag,//e153
    md_flare,//e3e4
    md_flash_auto,//e3e5
    md_flash_off,//e3e6
    md_flash_on,//e3e7
    md_flight,//e539
    md_flight_land,//e904
    md_flight_takeoff,//e905
    md_flip,//e3e8
    md_flip_to_back,//e882
    md_flip_to_front,//e883
    md_folder,//e2c7
    md_folder_open,//e2c8
    md_folder_shared,//e2c9
    md_folder_special,//e617
    md_font_download,//e167
    md_format_align_center,//e234
    md_format_align_justify,//e235
    md_format_align_left,//e236
    md_format_align_right,//e237
    md_format_bold,//e238
    md_format_clear,//e239
    md_format_color_fill,//e23a
    md_format_color_reset,//e23b
    md_format_color_text,//e23c
    md_format_indent_decrease,//e23d
    md_format_indent_increase,//e23e
    md_format_italic,//e23f
    md_format_line_spacing,//e240
    md_format_list_bulleted,//e241
    md_format_list_numbered,//e242
    md_format_paint,//e243
    md_format_quote,//e244
    md_format_shapes,//e25e
    md_format_size,//e245
    md_format_strikethrough,//e246
    md_format_textdirection_l_to_r,//e247
    md_format_textdirection_r_to_l,//e248
    md_format_underlined,//e249
    md_forum,//e0bf
    md_forward,//e154
    md_forward_10,//e056
    md_forward_30,//e057
    md_forward_5,//e058
    md_free_breakfast,//eb44
    md_fullscreen,//e5d0
    md_fullscreen_exit,//e5d1
    md_functions,//e24a
    md_g_translate,//e927
    md_gamepad,//e30f
    md_games,//e021
    md_gavel,//e90e
    md_gesture,//e155
    md_get_app,//e884
    md_gif,//e908
    md_golf_course,//eb45
    md_gps_fixed,//e1b3
    md_gps_not_fixed,//e1b4
    md_gps_off,//e1b5
    md_grade,//e885
    md_gradient,//e3e9
    md_grain,//e3ea
    md_graphic_eq,//e1b8
    md_grid_off,//e3eb
    md_grid_on,//e3ec
    md_group,//e7ef
    md_group_add,//e7f0
    md_group_work,//e886
    md_hd,//e052
    md_hdr_off,//e3ed
    md_hdr_on,//e3ee
    md_hdr_strong,//e3f1
    md_hdr_weak,//e3f2
    md_headset,//e310
    md_headset_mic,//e311
    md_healing,//e3f3
    md_hearing,//e023
    md_help,//e887
    md_help_outline,//e8fd
    md_high_quality,//e024
    md_highlight,//e25f
    md_highlight_off,//e888
    md_history,//e889
    md_home,//e88a
    md_hot_tub,//eb46
    md_hotel,//e53a
    md_hourglass_empty,//e88b
    md_hourglass_full,//e88c
    md_http,//e902
    md_https,//e88d
    md_image,//e3f4
    md_image_aspect_ratio,//e3f5
    md_import_contacts,//e0e0
    md_import_export,//e0c3
    md_important_devices,//e912
    md_inbox,//e156
    md_indeterminate_check_box,//e909
    md_info,//e88e
    md_info_outline,//e88f
    md_input,//e890
    md_insert_chart,//e24b
    md_insert_comment,//e24c
    md_insert_drive_file,//e24d
    md_insert_emoticon,//e24e
    md_insert_invitation,//e24f
    md_insert_link,//e250
    md_insert_photo,//e251
    md_invert_colors,//e891
    md_invert_colors_off,//e0c4
    md_iso,//e3f6
    md_keyboard,//e312
    md_keyboard_arrow_down,//e313
    md_keyboard_arrow_left,//e314
    md_keyboard_arrow_right,//e315
    md_keyboard_arrow_up,//e316
    md_keyboard_backspace,//e317
    md_keyboard_capslock,//e318
    md_keyboard_hide,//e31a
    md_keyboard_return,//e31b
    md_keyboard_tab,//e31c
    md_keyboard_voice,//e31d
    md_kitchen,//eb47
    md_label,//e892
    md_label_outline,//e893
    md_landscape,//e3f7
    md_language,//e894
    md_laptop,//e31e
    md_laptop_chromebook,//e31f
    md_laptop_mac,//e320
    md_laptop_windows,//e321
    md_last_page,//e5dd
    md_launch,//e895
    md_layers,//e53b
    md_layers_clear,//e53c
    md_leak_add,//e3f8
    md_leak_remove,//e3f9
    md_lens,//e3fa
    md_library_add,//e02e
    md_library_books,//e02f
    md_library_music,//e030
    md_lightbulb_outline,//e90f
    md_line_style,//e919
    md_line_weight,//e91a
    md_linear_scale,//e260
    md_link,//e157
    md_linked_camera,//e438
    md_list,//e896
    md_live_help,//e0c6
    md_live_tv,//e639
    md_local_activity,//e53f
    md_local_airport,//e53d
    md_local_atm,//e53e
    md_local_bar,//e540
    md_local_cafe,//e541
    md_local_car_wash,//e542
    md_local_convenience_store,//e543
    md_local_dining,//e556
    md_local_drink,//e544
    md_local_florist,//e545
    md_local_gas_station,//e546
    md_local_grocery_store,//e547
    md_local_hospital,//e548
    md_local_hotel,//e549
    md_local_laundry_service,//e54a
    md_local_library,//e54b
    md_local_mall,//e54c
    md_local_movies,//e54d
    md_local_offer,//e54e
    md_local_parking,//e54f
    md_local_pharmacy,//e550
    md_local_phone,//e551
    md_local_pizza,//e552
    md_local_play,//e553
    md_local_post_office,//e554
    md_local_printshop,//e555
    md_local_see,//e557
    md_local_shipping,//e558
    md_local_taxi,//e559
    md_location_city,//e7f1
    md_location_disabled,//e1b6
    md_location_off,//e0c7
    md_location_on,//e0c8
    md_location_searching,//e1b7
    md_lock,//e897
    md_lock_open,//e898
    md_lock_outline,//e899
    md_looks,//e3fc
    md_looks_3,//e3fb
    md_looks_4,//e3fd
    md_looks_5,//e3fe
    md_looks_6,//e3ff
    md_looks_one,//e400
    md_looks_two,//e401
    md_loop,//e028
    md_loupe,//e402
    md_low_priority,//e16d
    md_loyalty,//e89a
    md_mail,//e158
    md_mail_outline,//e0e1
    md_map,//e55b
    md_markunread,//e159
    md_markunread_mailbox,//e89b
    md_memory,//e322
    md_menu,//e5d2
    md_merge_type,//e252
    md_message,//e0c9
    md_mic,//e029
    md_mic_none,//e02a
    md_mic_off,//e02b
    md_mms,//e618
    md_mode_comment,//e253
    md_mode_edit,//e254
    md_monetization_on,//e263
    md_money_off,//e25c
    md_monochrome_photos,//e403
    md_mood,//e7f2
    md_mood_bad,//e7f3
    md_more,//e619
    md_more_horiz,//e5d3
    md_more_vert,//e5d4
    md_motorcycle,//e91b
    md_mouse,//e323
    md_move_to_inbox,//e168
    md_movie,//e02c
    md_movie_creation,//e404
    md_movie_filter,//e43a
    md_multiline_chart,//e6df
    md_music_note,//e405
    md_music_video,//e063
    md_my_location,//e55c
    md_nature,//e406
    md_nature_people,//e407
    md_navigate_before,//e408
    md_navigate_next,//e409
    md_navigation,//e55d
    md_near_me,//e569
    md_network_cell,//e1b9
    md_network_check,//e640
    md_network_locked,//e61a
    md_network_wifi,//e1ba
    md_new_releases,//e031
    md_next_week,//e16a
    md_nfc,//e1bb
    md_no_encryption,//e641
    md_no_sim,//e0cc
    md_not_interested,//e033
    md_note,//e06f
    md_note_add,//e89c
    md_notifications,//e7f4
    md_notifications_active,//e7f7
    md_notifications_none,//e7f5
    md_notifications_off,//e7f6
    md_notifications_paused,//e7f8
    md_offline_pin,//e90a
    md_ondemand_video,//e63a
    md_opacity,//e91c
    md_open_in_browser,//e89d
    md_open_in_new,//e89e
    md_open_with,//e89f
    md_pages,//e7f9
    md_pageview,//e8a0
    md_palette,//e40a
    md_pan_tool,//e925
    md_panorama,//e40b
    md_panorama_fish_eye,//e40c
    md_panorama_horizontal,//e40d
    md_panorama_vertical,//e40e
    md_panorama_wide_angle,//e40f
    md_party_mode,//e7fa
    md_pause,//e034
    md_pause_circle_filled,//e035
    md_pause_circle_outline,//e036
    md_payment,//e8a1
    md_people,//e7fb
    md_people_outline,//e7fc
    md_perm_camera_mic,//e8a2
    md_perm_contact_calendar,//e8a3
    md_perm_data_setting,//e8a4
    md_perm_device_information,//e8a5
    md_perm_identity,//e8a6
    md_perm_media,//e8a7
    md_perm_phone_msg,//e8a8
    md_perm_scan_wifi,//e8a9
    md_person,//e7fd
    md_person_add,//e7fe
    md_person_outline,//e7ff
    md_person_pin,//e55a
    md_person_pin_circle,//e56a
    md_personal_video,//e63b
    md_pets,//e91d
    md_phone,//e0cd
    md_phone_android,//e324
    md_phone_bluetooth_speaker,//e61b
    md_phone_forwarded,//e61c
    md_phone_in_talk,//e61d
    md_phone_iphone,//e325
    md_phone_locked,//e61e
    md_phone_missed,//e61f
    md_phone_paused,//e620
    md_phonelink,//e326
    md_phonelink_erase,//e0db
    md_phonelink_lock,//e0dc
    md_phonelink_off,//e327
    md_phonelink_ring,//e0dd
    md_phonelink_setup,//e0de
    md_photo,//e410
    md_photo_album,//e411
    md_photo_camera,//e412
    md_photo_filter,//e43b
    md_photo_library,//e413
    md_photo_size_select_actual,//e432
    md_photo_size_select_large,//e433
    md_photo_size_select_small,//e434
    md_picture_as_pdf,//e415
    md_picture_in_picture,//e8aa
    md_picture_in_picture_alt,//e911
    md_pie_chart,//e6c4
    md_pie_chart_outlined,//e6c5
    md_pin_drop,//e55e
    md_place,//e55f
    md_play_arrow,//e037
    md_play_circle_filled,//e038
    md_play_circle_outline,//e039
    md_play_for_work,//e906
    md_playlist_add,//e03b
    md_playlist_add_check,//e065
    md_playlist_play,//e05f
    md_plus_one,//e800
    md_poll,//e801
    md_polymer,//e8ab
    md_pool,//eb48
    md_portable_wifi_off,//e0ce
    md_portrait,//e416
    md_power,//e63c
    md_power_input,//e336
    md_power_settings_new,//e8ac
    md_pregnant_woman,//e91e
    md_present_to_all,//e0df
    md_print,//e8ad
    md_priority_high,//e645
    md_public,//e80b
    md_publish,//e255
    md_query_builder,//e8ae
    md_question_answer,//e8af
    md_queue,//e03c
    md_queue_music,//e03d
    md_queue_play_next,//e066
    md_radio,//e03e
    md_radio_button_checked,//e837
    md_radio_button_unchecked,//e836
    md_rate_review,//e560
    md_receipt,//e8b0
    md_recent_actors,//e03f
    md_record_voice_over,//e91f
    md_redeem,//e8b1
    md_redo,//e15a
    md_refresh,//e5d5
    md_remove,//e15b
    md_remove_circle,//e15c
    md_remove_circle_outline,//e15d
    md_remove_from_queue,//e067
    md_remove_red_eye,//e417
    md_remove_shopping_cart,//e928
    md_reorder,//e8fe
    md_repeat,//e040
    md_repeat_one,//e041
    md_replay,//e042
    md_replay_10,//e059
    md_replay_30,//e05a
    md_replay_5,//e05b
    md_reply,//e15e
    md_reply_all,//e15f
    md_report,//e160
    md_report_problem,//e8b2
    md_restaurant,//e56c
    md_restaurant_menu,//e561
    md_restore,//e8b3
    md_restore_page,//e929
    md_ring_volume,//e0d1
    md_room,//e8b4
    md_room_service,//eb49
    md_rotate_90_degrees_ccw,//e418
    md_rotate_left,//e419
    md_rotate_right,//e41a
    md_rounded_corner,//e920
    md_router,//e328
    md_rowing,//e921
    md_rss_feed,//e0e5
    md_rv_hookup,//e642
    md_satellite,//e562
    md_save,//e161
    md_scanner,//e329
    md_schedule,//e8b5
    md_school,//e80c
    md_screen_lock_landscape,//e1be
    md_screen_lock_portrait,//e1bf
    md_screen_lock_rotation,//e1c0
    md_screen_rotation,//e1c1
    md_screen_share,//e0e2
    md_sd_card,//e623
    md_sd_storage,//e1c2
    md_search,//e8b6
    md_security,//e32a
    md_select_all,//e162
    md_send,//e163
    md_sentiment_dissatisfied,//e811
    md_sentiment_neutral,//e812
    md_sentiment_satisfied,//e813
    md_sentiment_very_dissatisfied,//e814
    md_sentiment_very_satisfied,//e815
    md_settings,//e8b8
    md_settings_applications,//e8b9
    md_settings_backup_restore,//e8ba
    md_settings_bluetooth,//e8bb
    md_settings_brightness,//e8bd
    md_settings_cell,//e8bc
    md_settings_ethernet,//e8be
    md_settings_input_antenna,//e8bf
    md_settings_input_component,//e8c0
    md_settings_input_composite,//e8c1
    md_settings_input_hdmi,//e8c2
    md_settings_input_svideo,//e8c3
    md_settings_overscan,//e8c4
    md_settings_phone,//e8c5
    md_settings_power,//e8c6
    md_settings_remote,//e8c7
    md_settings_system_daydream,//e1c3
    md_settings_voice,//e8c8
    md_share,//e80d
    md_shop,//e8c9
    md_shop_two,//e8ca
    md_shopping_basket,//e8cb
    md_shopping_cart,//e8cc
    md_short_text,//e261
    md_show_chart,//e6e1
    md_shuffle,//e043
    md_signal_cellular_4_bar,//e1c8
    md_signal_cellular_connected_no_internet_4_bar,//e1cd
    md_signal_cellular_no_sim,//e1ce
    md_signal_cellular_null,//e1cf
    md_signal_cellular_off,//e1d0
    md_signal_wifi_4_bar,//e1d8
    md_signal_wifi_4_bar_lock,//e1d9
    md_signal_wifi_off,//e1da
    md_sim_card,//e32b
    md_sim_card_alert,//e624
    md_skip_next,//e044
    md_skip_previous,//e045
    md_slideshow,//e41b
    md_slow_motion_video,//e068
    md_smartphone,//e32c
    md_smoke_free,//eb4a
    md_smoking_rooms,//eb4b
    md_sms,//e625
    md_sms_failed,//e626
    md_snooze,//e046
    md_sort,//e164
    md_sort_by_alpha,//e053
    md_spa,//eb4c
    md_space_bar,//e256
    md_speaker,//e32d
    md_speaker_group,//e32e
    md_speaker_notes,//e8cd
    md_speaker_notes_off,//e92a
    md_speaker_phone,//e0d2
    md_spellcheck,//e8ce
    md_star,//e838
    md_star_border,//e83a
    md_star_half,//e839
    md_stars,//e8d0
    md_stay_current_landscape,//e0d3
    md_stay_current_portrait,//e0d4
    md_stay_primary_landscape,//e0d5
    md_stay_primary_portrait,//e0d6
    md_stop,//e047
    md_stop_screen_share,//e0e3
    md_storage,//e1db
    md_store,//e8d1
    md_store_mall_directory,//e563
    md_straighten,//e41c
    md_streetview,//e56e
    md_strikethrough_s,//e257
    md_style,//e41d
    md_subdirectory_arrow_left,//e5d9
    md_subdirectory_arrow_right,//e5da
    md_subject,//e8d2
    md_subscriptions,//e064
    md_subtitles,//e048
    md_subway,//e56f
    md_supervisor_account,//e8d3
    md_surround_sound,//e049
    md_swap_calls,//e0d7
    md_swap_horiz,//e8d4
    md_swap_vert,//e8d5
    md_swap_vertical_circle,//e8d6
    md_switch_camera,//e41e
    md_switch_video,//e41f
    md_sync,//e627
    md_sync_disabled,//e628
    md_sync_problem,//e629
    md_system_update,//e62a
    md_system_update_alt,//e8d7
    md_tab,//e8d8
    md_tab_unselected,//e8d9
    md_tablet,//e32f
    md_tablet_android,//e330
    md_tablet_mac,//e331
    md_tag_faces,//e420
    md_tap_and_play,//e62b
    md_terrain,//e564
    md_text_fields,//e262
    md_text_format,//e165
    md_textsms,//e0d8
    md_texture,//e421
    md_theaters,//e8da
    md_thumb_down,//e8db
    md_thumb_up,//e8dc
    md_thumbs_up_down,//e8dd
    md_time_to_leave,//e62c
    md_timelapse,//e422
    md_timeline,//e922
    md_timer,//e425
    md_timer_10,//e423
    md_timer_3,//e424
    md_timer_off,//e426
    md_title,//e264
    md_toc,//e8de
    md_today,//e8df
    md_toll,//e8e0
    md_tonality,//e427
    md_touch_app,//e913
    md_toys,//e332
    md_track_changes,//e8e1
    md_traffic,//e565
    md_train,//e570
    md_tram,//e571
    md_transfer_within_a_station,//e572
    md_transform,//e428
    md_translate,//e8e2
    md_trending_down,//e8e3
    md_trending_flat,//e8e4
    md_trending_up,//e8e5
    md_tune,//e429
    md_turned_in,//e8e6
    md_turned_in_not,//e8e7
    md_tv,//e333
    md_unarchive,//e169
    md_undo,//e166
    md_unfold_less,//e5d6
    md_unfold_more,//e5d7
    md_update,//e923
    md_usb,//e1e0
    md_verified_user,//e8e8
    md_vertical_align_bottom,//e258
    md_vertical_align_center,//e259
    md_vertical_align_top,//e25a
    md_vibration,//e62d
    md_video_call,//e070
    md_video_label,//e071
    md_video_library,//e04a
    md_videocam,//e04b
    md_videocam_off,//e04c
    md_videogame_asset,//e338
    md_view_agenda,//e8e9
    md_view_array,//e8ea
    md_view_carousel,//e8eb
    md_view_column,//e8ec
    md_view_comfy,//e42a
    md_view_compact,//e42b
    md_view_day,//e8ed
    md_view_headline,//e8ee
    md_view_list,//e8ef
    md_view_module,//e8f0
    md_view_quilt,//e8f1
    md_view_stream,//e8f2
    md_view_week,//e8f3
    md_vignette,//e435
    md_visibility,//e8f4
    md_visibility_off,//e8f5
    md_voice_chat,//e62e
    md_voicemail,//e0d9
    md_volume_down,//e04d
    md_volume_mute,//e04e
    md_volume_off,//e04f
    md_volume_up,//e050
    md_vpn_key,//e0da
    md_vpn_lock,//e62f
    md_wallpaper,//e1bc
    md_warning,//e002
    md_watch,//e334
    md_watch_later,//e924
    md_wb_auto,//e42c
    md_wb_cloudy,//e42d
    md_wb_incandescent,//e42e
    md_wb_iridescent,//e436
    md_wb_sunny,//e430
    md_wc,//e63d
    md_web,//e051
    md_web_asset,//e069
    md_weekend,//e16b
    md_whatshot,//e80e
    md_widgets,//e1bd
    md_wifi,//e63e
    md_wifi_lock,//e1e1
    md_wifi_tethering,//e1e2
    md_work,//e8f9
    md_wrap_text,//e25b
    md_youtube_searched_for,//e8fa
    md_zoom_in,//e8ff
    md_zoom_out,//e900
    md_zoom_out_map//e56b
    );
  TUIFontType = (uiFontAwesome, uiMateriaDesign);


function getFontAwesomeIcon(iconName: TFontAwesome; size: integer; aColor: TColor): TBitmap;
function getMaterialDesignIcon(iconName: TMaterialDesign; size: integer; aColor: TColor): TBitmap;
function LoadFont(fontName: string): TFreeTypeFont;
procedure UnloadFont(font: TFreeTypeFont);


implementation

uses
  LResources, lazfreetypefontcollection, paxbootstrap.unicode, LazFreeType;

var
  FontAwesomeCodePoint: array [TFontAwesome] of UInt64;
  MaterialDesignCodePoint: array [TMaterialDesign] of UInt64;


var
  fontAwesome: TFreeTypeFont;
  fontMaterialDesign: TFreeTypeFont;

function getFontAwesomeIcon(iconName: TFontAwesome; size: integer; aColor: TColor): TBitmap;
var
  image: TLazIntfImage;
  freeTypePainter: TIntfFreeTypeDrawer;
  fontColor: TFPColor;
  utf8Value: string;
  CodePoint: UInt64;
begin
  try
    Result := TBitmap.Create;
    image := TLazIntfImage.Create(0, 0, [riqfRGB, riqfAlpha]);
    freeTypePainter := TIntfFreeTypeDrawer.Create(image);
    CodePoint := FontAwesomeCodePoint[iconName];
    utf8Value := UnicodeCodePointToUTF8(CodePoint);
    fontColor := TColorToFPColor(aColor);
    try
      fontAwesome.SizeInPixels := Size;
      fontAwesome.Hinted := True;
      fontAwesome.ClearType := True;
      fontAwesome.Quality := grqHighQuality;
      fontAwesome.SmallLinePadding := False;
      image.SetSize(trunc(fontAwesome.TextWidth(utf8Value)), trunc(fontAwesome.TextHeight(utf8Value)));
      freeTypePainter.FillPixels(colTransparent);
      freeTypePainter.DrawText(utf8Value, fontAwesome, 0, 0, fontColor, [ftaLeft, ftaTop]);
      Result.Width := image.Width;
      Result.Height := image.Height;
      Result.TransparentMode := tmAuto;
      Result.Transparent := True;
      Result.LoadFromIntfImage(image);
    finally
      freeTypePainter.Free;
      image.Free;
    end;
  except
    Result := nil;
  end;
end;

function getMaterialDesignIcon(iconName: TMaterialDesign; size: integer; aColor: TColor): TBitmap;
var
  image: TLazIntfImage;
  freeTypePainter: TIntfFreeTypeDrawer;
  fontColor: TFPColor;
  utf8Value: string;
  CodePoint: UInt64;
begin
  try
    Result := TBitmap.Create;
    image := TLazIntfImage.Create(0, 0, [riqfRGB, riqfAlpha]);
    freeTypePainter := TIntfFreeTypeDrawer.Create(image);
    CodePoint := MaterialDesignCodePoint[iconName];
    utf8Value := UnicodeCodePointToUTF8(CodePoint);
    fontColor := TColorToFPColor(aColor);
    try
      fontMaterialDesign.SizeInPixels := Size;
      fontMaterialDesign.Hinted := True;
      fontMaterialDesign.ClearType := True;
      fontMaterialDesign.Quality := grqHighQuality;
      fontMaterialDesign.SmallLinePadding := False;
      image.SetSize(trunc(fontMaterialDesign.TextWidth(utf8Value)), trunc(fontMaterialDesign.TextHeight(utf8Value)));
      freeTypePainter.FillPixels(colTransparent);
      freeTypePainter.DrawText(utf8Value, fontMaterialDesign, 0, 0, fontColor, [ftaLeft, ftaTop]);
      Result.Width := image.Width;
      Result.Height := image.Height;
      Result.TransparentMode := tmAuto;
      Result.Transparent := True;
      Result.LoadFromIntfImage(image);
    finally
      freeTypePainter.Free;
      image.Free;
    end;
  except
    Result := nil;
  end;
end;

procedure UnloadFont(font: TFreeTypeFont);
begin
  FreeAndNil(font);
end;

function LoadFont(fontName: string): TFreeTypeFont;
var
  Stream: TLazarusResourceStream = nil;
begin
  Result := nil;
  if (LowerCase(ExtractFileExt(fontName)) <> '') then
  begin
    Result := TFreeTypeFont.Create;
    Result.Name := Application.Location + fontName;
  end
  else
  begin
    Stream := TLazarusResourceStream.Create(fontName, nil);
    Result := TFreeTypeFont.Create;
    Result.AccessFromStream(Stream, True);
  end;
end;


procedure popolateFontAwesomeCodePoints;
begin
  FontAwesomeCodePoint[fa_500px] := $F26e;
  FontAwesomeCodePoint[fa_address_book] := $F2b9;
  FontAwesomeCodePoint[fa_address_book_o] := $F2ba;
  FontAwesomeCodePoint[fa_address_card] := $F2bb;
  FontAwesomeCodePoint[fa_address_card_o] := $F2bc;
  FontAwesomeCodePoint[fa_adjust] := $F042;
  FontAwesomeCodePoint[fa_adn] := $F170;
  FontAwesomeCodePoint[fa_align_center] := $F037;
  FontAwesomeCodePoint[fa_align_justify] := $F039;
  FontAwesomeCodePoint[fa_align_left] := $F036;
  FontAwesomeCodePoint[fa_align_right] := $F038;
  FontAwesomeCodePoint[fa_amazon] := $F270;
  FontAwesomeCodePoint[fa_ambulance] := $F0f9;
  FontAwesomeCodePoint[fa_american_sign_language_interpreting] := $F2a3;
  FontAwesomeCodePoint[fa_anchor] := $F13d;
  FontAwesomeCodePoint[fa_android] := $F17b;
  FontAwesomeCodePoint[fa_angellist] := $F209;
  FontAwesomeCodePoint[fa_angle_double_down] := $F103;
  FontAwesomeCodePoint[fa_angle_double_left] := $F100;
  FontAwesomeCodePoint[fa_angle_double_right] := $F101;
  FontAwesomeCodePoint[fa_angle_double_up] := $F102;
  FontAwesomeCodePoint[fa_angle_down] := $F107;
  FontAwesomeCodePoint[fa_angle_left] := $F104;
  FontAwesomeCodePoint[fa_angle_right] := $F105;
  FontAwesomeCodePoint[fa_angle_up] := $F106;
  FontAwesomeCodePoint[fa_apple] := $F179;
  FontAwesomeCodePoint[fa_archive] := $F187;
  FontAwesomeCodePoint[fa_area_chart] := $F1fe;
  FontAwesomeCodePoint[fa_arrows] := $F047;
  FontAwesomeCodePoint[fa_arrows_alt] := $F0b2;
  FontAwesomeCodePoint[fa_arrows_h] := $F07e;
  FontAwesomeCodePoint[fa_arrows_v] := $F07d;
  FontAwesomeCodePoint[fa_arrow_circle_down] := $F0ab;
  FontAwesomeCodePoint[fa_arrow_circle_left] := $F0a8;
  FontAwesomeCodePoint[fa_arrow_circle_o_down] := $F01a;
  FontAwesomeCodePoint[fa_arrow_circle_o_left] := $F190;
  FontAwesomeCodePoint[fa_arrow_circle_o_right] := $F18e;
  FontAwesomeCodePoint[fa_arrow_circle_o_up] := $F01b;
  FontAwesomeCodePoint[fa_arrow_circle_right] := $F0a9;
  FontAwesomeCodePoint[fa_arrow_circle_up] := $F0aa;
  FontAwesomeCodePoint[fa_arrow_down] := $F063;
  FontAwesomeCodePoint[fa_arrow_left] := $F060;
  FontAwesomeCodePoint[fa_arrow_right] := $F061;
  FontAwesomeCodePoint[fa_arrow_up] := $F062;
  FontAwesomeCodePoint[fa_asl_interpreting] := $F2a3;
  FontAwesomeCodePoint[fa_assistive_listening_systems] := $F2a2;
  FontAwesomeCodePoint[fa_asterisk] := $F069;
  FontAwesomeCodePoint[fa_at] := $F1fa;
  FontAwesomeCodePoint[fa_audio_description] := $F29e;
  FontAwesomeCodePoint[fa_automobile] := $F1b9;
  FontAwesomeCodePoint[fa_backward] := $F04a;
  FontAwesomeCodePoint[fa_balance_scale] := $F24e;
  FontAwesomeCodePoint[fa_ban] := $F05e;
  FontAwesomeCodePoint[fa_bandcamp] := $F2d5;
  FontAwesomeCodePoint[fa_bank] := $F19c;
  FontAwesomeCodePoint[fa_barcode] := $F02a;
  FontAwesomeCodePoint[fa_bars] := $F0c9;
  FontAwesomeCodePoint[fa_bar_chart] := $F080;
  FontAwesomeCodePoint[fa_bar_chart_o] := $F080;
  FontAwesomeCodePoint[fa_bath] := $F2cd;
  FontAwesomeCodePoint[fa_bathtub] := $F2cd;
  FontAwesomeCodePoint[fa_battery] := $F240;
  FontAwesomeCodePoint[fa_battery_0] := $F244;
  FontAwesomeCodePoint[fa_battery_1] := $F243;
  FontAwesomeCodePoint[fa_battery_2] := $F242;
  FontAwesomeCodePoint[fa_battery_3] := $F241;
  FontAwesomeCodePoint[fa_battery_4] := $F240;
  FontAwesomeCodePoint[fa_battery_empty] := $F244;
  FontAwesomeCodePoint[fa_battery_full] := $F240;
  FontAwesomeCodePoint[fa_battery_half] := $F242;
  FontAwesomeCodePoint[fa_battery_quarter] := $F243;
  FontAwesomeCodePoint[fa_battery_three_quarters] := $F241;
  FontAwesomeCodePoint[fa_bed] := $F236;
  FontAwesomeCodePoint[fa_beer] := $F0fc;
  FontAwesomeCodePoint[fa_behance] := $F1b4;
  FontAwesomeCodePoint[fa_behance_square] := $F1b5;
  FontAwesomeCodePoint[fa_bell] := $F0f3;
  FontAwesomeCodePoint[fa_bell_o] := $F0a2;
  FontAwesomeCodePoint[fa_bell_slash] := $F1f6;
  FontAwesomeCodePoint[fa_bell_slash_o] := $F1f7;
  FontAwesomeCodePoint[fa_bicycle] := $F206;
  FontAwesomeCodePoint[fa_binoculars] := $F1e5;
  FontAwesomeCodePoint[fa_birthday_cake] := $F1fd;
  FontAwesomeCodePoint[fa_bitbucket] := $F171;
  FontAwesomeCodePoint[fa_bitbucket_square] := $F172;
  FontAwesomeCodePoint[fa_bitcoin] := $F15a;
  FontAwesomeCodePoint[fa_black_tie] := $F27e;
  FontAwesomeCodePoint[fa_blind] := $F29d;
  FontAwesomeCodePoint[fa_bluetooth] := $F293;
  FontAwesomeCodePoint[fa_bluetooth_b] := $F294;
  FontAwesomeCodePoint[fa_bold] := $F032;
  FontAwesomeCodePoint[fa_bolt] := $F0e7;
  FontAwesomeCodePoint[fa_bomb] := $F1e2;
  FontAwesomeCodePoint[fa_book] := $F02d;
  FontAwesomeCodePoint[fa_bookmark] := $F02e;
  FontAwesomeCodePoint[fa_bookmark_o] := $F097;
  FontAwesomeCodePoint[fa_braille] := $F2a1;
  FontAwesomeCodePoint[fa_briefcase] := $F0b1;
  FontAwesomeCodePoint[fa_btc] := $F15a;
  FontAwesomeCodePoint[fa_bug] := $F188;
  FontAwesomeCodePoint[fa_building] := $F1ad;
  FontAwesomeCodePoint[fa_building_o] := $F0f7;
  FontAwesomeCodePoint[fa_bullhorn] := $F0a1;
  FontAwesomeCodePoint[fa_bullseye] := $F140;
  FontAwesomeCodePoint[fa_bus] := $F207;
  FontAwesomeCodePoint[fa_buysellads] := $F20d;
  FontAwesomeCodePoint[fa_cab] := $F1ba;
  FontAwesomeCodePoint[fa_calculator] := $F1ec;
  FontAwesomeCodePoint[fa_calendar] := $F073;
  FontAwesomeCodePoint[fa_calendar_check_o] := $F274;
  FontAwesomeCodePoint[fa_calendar_minus_o] := $F272;
  FontAwesomeCodePoint[fa_calendar_o] := $F133;
  FontAwesomeCodePoint[fa_calendar_plus_o] := $F271;
  FontAwesomeCodePoint[fa_calendar_times_o] := $F273;
  FontAwesomeCodePoint[fa_camera] := $F030;
  FontAwesomeCodePoint[fa_camera_retro] := $F083;
  FontAwesomeCodePoint[fa_car] := $F1b9;
  FontAwesomeCodePoint[fa_caret_down] := $F0d7;
  FontAwesomeCodePoint[fa_caret_left] := $F0d9;
  FontAwesomeCodePoint[fa_caret_right] := $F0da;
  FontAwesomeCodePoint[fa_caret_square_o_down] := $F150;
  FontAwesomeCodePoint[fa_caret_square_o_left] := $F191;
  FontAwesomeCodePoint[fa_caret_square_o_right] := $F152;
  FontAwesomeCodePoint[fa_caret_square_o_up] := $F151;
  FontAwesomeCodePoint[fa_caret_up] := $F0d8;
  FontAwesomeCodePoint[fa_cart_arrow_down] := $F218;
  FontAwesomeCodePoint[fa_cart_plus] := $F217;
  FontAwesomeCodePoint[fa_cc] := $F20a;
  FontAwesomeCodePoint[fa_cc_amex] := $F1f3;
  FontAwesomeCodePoint[fa_cc_diners_club] := $F24c;
  FontAwesomeCodePoint[fa_cc_discover] := $F1f2;
  FontAwesomeCodePoint[fa_cc_jcb] := $F24b;
  FontAwesomeCodePoint[fa_cc_mastercard] := $F1f1;
  FontAwesomeCodePoint[fa_cc_paypal] := $F1f4;
  FontAwesomeCodePoint[fa_cc_stripe] := $F1f5;
  FontAwesomeCodePoint[fa_cc_visa] := $F1f0;
  FontAwesomeCodePoint[fa_certificate] := $F0a3;
  FontAwesomeCodePoint[fa_chain] := $F0c1;
  FontAwesomeCodePoint[fa_chain_broken] := $F127;
  FontAwesomeCodePoint[fa_check] := $F00c;
  FontAwesomeCodePoint[fa_check_circle] := $F058;
  FontAwesomeCodePoint[fa_check_circle_o] := $F05d;
  FontAwesomeCodePoint[fa_check_square] := $F14a;
  FontAwesomeCodePoint[fa_check_square_o] := $F046;
  FontAwesomeCodePoint[fa_chevron_circle_down] := $F13a;
  FontAwesomeCodePoint[fa_chevron_circle_left] := $F137;
  FontAwesomeCodePoint[fa_chevron_circle_right] := $F138;
  FontAwesomeCodePoint[fa_chevron_circle_up] := $F139;
  FontAwesomeCodePoint[fa_chevron_down] := $F078;
  FontAwesomeCodePoint[fa_chevron_left] := $F053;
  FontAwesomeCodePoint[fa_chevron_right] := $F054;
  FontAwesomeCodePoint[fa_chevron_up] := $F077;
  FontAwesomeCodePoint[fa_child] := $F1ae;
  FontAwesomeCodePoint[fa_chrome] := $F268;
  FontAwesomeCodePoint[fa_circle] := $F111;
  FontAwesomeCodePoint[fa_circle_o] := $F10c;
  FontAwesomeCodePoint[fa_circle_o_notch] := $F1ce;
  FontAwesomeCodePoint[fa_circle_thin] := $F1db;
  FontAwesomeCodePoint[fa_clipboard] := $F0ea;
  FontAwesomeCodePoint[fa_clock_o] := $F017;
  FontAwesomeCodePoint[fa_clone] := $F24d;
  FontAwesomeCodePoint[fa_close] := $F00d;
  FontAwesomeCodePoint[fa_cloud] := $F0c2;
  FontAwesomeCodePoint[fa_cloud_download] := $F0ed;
  FontAwesomeCodePoint[fa_cloud_upload] := $F0ee;
  FontAwesomeCodePoint[fa_cny] := $F157;
  FontAwesomeCodePoint[fa_code] := $F121;
  FontAwesomeCodePoint[fa_codepen] := $F1cb;
  FontAwesomeCodePoint[fa_code_fork] := $F126;
  FontAwesomeCodePoint[fa_codiepie] := $F284;
  FontAwesomeCodePoint[fa_coffee] := $F0f4;
  FontAwesomeCodePoint[fa_cog] := $F013;
  FontAwesomeCodePoint[fa_cogs] := $F085;
  FontAwesomeCodePoint[fa_columns] := $F0db;
  FontAwesomeCodePoint[fa_comment] := $F075;
  FontAwesomeCodePoint[fa_commenting] := $F27a;
  FontAwesomeCodePoint[fa_commenting_o] := $F27b;
  FontAwesomeCodePoint[fa_comments] := $F086;
  FontAwesomeCodePoint[fa_comments_o] := $F0e6;
  FontAwesomeCodePoint[fa_comment_o] := $F0e5;
  FontAwesomeCodePoint[fa_compass] := $F14e;
  FontAwesomeCodePoint[fa_compress] := $F066;
  FontAwesomeCodePoint[fa_connectdevelop] := $F20e;
  FontAwesomeCodePoint[fa_contao] := $F26d;
  FontAwesomeCodePoint[fa_copy] := $F0c5;
  FontAwesomeCodePoint[fa_copyright] := $F1f9;
  FontAwesomeCodePoint[fa_creative_commons] := $F25e;
  FontAwesomeCodePoint[fa_credit_card] := $F09d;
  FontAwesomeCodePoint[fa_credit_card_alt] := $F283;
  FontAwesomeCodePoint[fa_crop] := $F125;
  FontAwesomeCodePoint[fa_crosshairs] := $F05b;
  FontAwesomeCodePoint[fa_css3] := $F13c;
  FontAwesomeCodePoint[fa_cube] := $F1b2;
  FontAwesomeCodePoint[fa_cubes] := $F1b3;
  FontAwesomeCodePoint[fa_cut] := $F0c4;
  FontAwesomeCodePoint[fa_cutlery] := $F0f5;
  FontAwesomeCodePoint[fa_dashboard] := $F0e4;
  FontAwesomeCodePoint[fa_dashcube] := $F210;
  FontAwesomeCodePoint[fa_database] := $F1c0;
  FontAwesomeCodePoint[fa_deaf] := $F2a4;
  FontAwesomeCodePoint[fa_deafness] := $F2a4;
  FontAwesomeCodePoint[fa_dedent] := $F03b;
  FontAwesomeCodePoint[fa_delicious] := $F1a5;
  FontAwesomeCodePoint[fa_desktop] := $F108;
  FontAwesomeCodePoint[fa_deviantart] := $F1bd;
  FontAwesomeCodePoint[fa_diamond] := $F219;
  FontAwesomeCodePoint[fa_digg] := $F1a6;
  FontAwesomeCodePoint[fa_dollar] := $F155;
  FontAwesomeCodePoint[fa_dot_circle_o] := $F192;
  FontAwesomeCodePoint[fa_download] := $F019;
  FontAwesomeCodePoint[fa_dribbble] := $F17d;
  FontAwesomeCodePoint[fa_drivers_license] := $F2c2;
  FontAwesomeCodePoint[fa_drivers_license_o] := $F2c3;
  FontAwesomeCodePoint[fa_dropbox] := $F16b;
  FontAwesomeCodePoint[fa_drupal] := $F1a9;
  FontAwesomeCodePoint[fa_edge] := $F282;
  FontAwesomeCodePoint[fa_edit] := $F044;
  FontAwesomeCodePoint[fa_eercast] := $F2da;
  FontAwesomeCodePoint[fa_eject] := $F052;
  FontAwesomeCodePoint[fa_ellipsis_h] := $F141;
  FontAwesomeCodePoint[fa_ellipsis_v] := $F142;
  FontAwesomeCodePoint[fa_empire] := $F1d1;
  FontAwesomeCodePoint[fa_envelope] := $F0e0;
  FontAwesomeCodePoint[fa_envelope_o] := $F003;
  FontAwesomeCodePoint[fa_envelope_open] := $F2b6;
  FontAwesomeCodePoint[fa_envelope_open_o] := $F2b7;
  FontAwesomeCodePoint[fa_envelope_square] := $F199;
  FontAwesomeCodePoint[fa_envira] := $F299;
  FontAwesomeCodePoint[fa_eraser] := $F12d;
  FontAwesomeCodePoint[fa_etsy] := $F2d7;
  FontAwesomeCodePoint[fa_eur] := $F153;
  FontAwesomeCodePoint[fa_euro] := $F153;
  FontAwesomeCodePoint[fa_exchange] := $F0ec;
  FontAwesomeCodePoint[fa_exclamation] := $F12a;
  FontAwesomeCodePoint[fa_exclamation_circle] := $F06a;
  FontAwesomeCodePoint[fa_exclamation_triangle] := $F071;
  FontAwesomeCodePoint[fa_expand] := $F065;
  FontAwesomeCodePoint[fa_expeditedssl] := $F23e;
  FontAwesomeCodePoint[fa_external_link] := $F08e;
  FontAwesomeCodePoint[fa_external_link_square] := $F14c;
  FontAwesomeCodePoint[fa_eye] := $F06e;
  FontAwesomeCodePoint[fa_eyedropper] := $F1fb;
  FontAwesomeCodePoint[fa_eye_slash] := $F070;
  FontAwesomeCodePoint[fa_fa] := $F2b4;
  FontAwesomeCodePoint[fa_facebook] := $F09a;
  FontAwesomeCodePoint[fa_facebook_f] := $F09a;
  FontAwesomeCodePoint[fa_facebook_official] := $F230;
  FontAwesomeCodePoint[fa_facebook_square] := $F082;
  FontAwesomeCodePoint[fa_fast_backward] := $F049;
  FontAwesomeCodePoint[fa_fast_forward] := $F050;
  FontAwesomeCodePoint[fa_fax] := $F1ac;
  FontAwesomeCodePoint[fa_feed] := $F09e;
  FontAwesomeCodePoint[fa_female] := $F182;
  FontAwesomeCodePoint[fa_fighter_jet] := $F0fb;
  FontAwesomeCodePoint[fa_file] := $F15b;
  FontAwesomeCodePoint[fa_files_o] := $F0c5;
  FontAwesomeCodePoint[fa_file_archive_o] := $F1c6;
  FontAwesomeCodePoint[fa_file_audio_o] := $F1c7;
  FontAwesomeCodePoint[fa_file_code_o] := $F1c9;
  FontAwesomeCodePoint[fa_file_excel_o] := $F1c3;
  FontAwesomeCodePoint[fa_file_image_o] := $F1c5;
  FontAwesomeCodePoint[fa_file_movie_o] := $F1c8;
  FontAwesomeCodePoint[fa_file_o] := $F016;
  FontAwesomeCodePoint[fa_file_pdf_o] := $F1c1;
  FontAwesomeCodePoint[fa_file_photo_o] := $F1c5;
  FontAwesomeCodePoint[fa_file_picture_o] := $F1c5;
  FontAwesomeCodePoint[fa_file_powerpoint_o] := $F1c4;
  FontAwesomeCodePoint[fa_file_sound_o] := $F1c7;
  FontAwesomeCodePoint[fa_file_text] := $F15c;
  FontAwesomeCodePoint[fa_file_text_o] := $F0f6;
  FontAwesomeCodePoint[fa_file_video_o] := $F1c8;
  FontAwesomeCodePoint[fa_file_word_o] := $F1c2;
  FontAwesomeCodePoint[fa_file_zip_o] := $F1c6;
  FontAwesomeCodePoint[fa_film] := $F008;
  FontAwesomeCodePoint[fa_filter] := $F0b0;
  FontAwesomeCodePoint[fa_fire] := $F06d;
  FontAwesomeCodePoint[fa_firefox] := $F269;
  FontAwesomeCodePoint[fa_fire_extinguisher] := $F134;
  FontAwesomeCodePoint[fa_first_order] := $F2b0;
  FontAwesomeCodePoint[fa_flag] := $F024;
  FontAwesomeCodePoint[fa_flag_checkered] := $F11e;
  FontAwesomeCodePoint[fa_flag_o] := $F11d;
  FontAwesomeCodePoint[fa_flash] := $F0e7;
  FontAwesomeCodePoint[fa_flask] := $F0c3;
  FontAwesomeCodePoint[fa_flickr] := $F16e;
  FontAwesomeCodePoint[fa_floppy_o] := $F0c7;
  FontAwesomeCodePoint[fa_folder] := $F07b;
  FontAwesomeCodePoint[fa_folder_o] := $F114;
  FontAwesomeCodePoint[fa_folder_open] := $F07c;
  FontAwesomeCodePoint[fa_folder_open_o] := $F115;
  FontAwesomeCodePoint[fa_font] := $F031;
  FontAwesomeCodePoint[fa_fonticons] := $F280;
  FontAwesomeCodePoint[fa_font_awesome] := $F2b4;
  FontAwesomeCodePoint[fa_fort_awesome] := $F286;
  FontAwesomeCodePoint[fa_forumbee] := $F211;
  FontAwesomeCodePoint[fa_forward] := $F04e;
  FontAwesomeCodePoint[fa_foursquare] := $F180;
  FontAwesomeCodePoint[fa_free_code_camp] := $F2c5;
  FontAwesomeCodePoint[fa_frown_o] := $F119;
  FontAwesomeCodePoint[fa_futbol_o] := $F1e3;
  FontAwesomeCodePoint[fa_gamepad] := $F11b;
  FontAwesomeCodePoint[fa_gavel] := $F0e3;
  FontAwesomeCodePoint[fa_gbp] := $F154;
  FontAwesomeCodePoint[fa_ge] := $F1d1;
  FontAwesomeCodePoint[fa_gear] := $F013;
  FontAwesomeCodePoint[fa_gears] := $F085;
  FontAwesomeCodePoint[fa_genderless] := $F22d;
  FontAwesomeCodePoint[fa_get_pocket] := $F265;
  FontAwesomeCodePoint[fa_gg] := $F260;
  FontAwesomeCodePoint[fa_gg_circle] := $F261;
  FontAwesomeCodePoint[fa_gift] := $F06b;
  FontAwesomeCodePoint[fa_git] := $F1d3;
  FontAwesomeCodePoint[fa_github] := $F09b;
  FontAwesomeCodePoint[fa_github_alt] := $F113;
  FontAwesomeCodePoint[fa_github_square] := $F092;
  FontAwesomeCodePoint[fa_gitlab] := $F296;
  FontAwesomeCodePoint[fa_gittip] := $F184;
  FontAwesomeCodePoint[fa_git_square] := $F1d2;
  FontAwesomeCodePoint[fa_glass] := $F000;
  FontAwesomeCodePoint[fa_glide] := $F2a5;
  FontAwesomeCodePoint[fa_glide_g] := $F2a6;
  FontAwesomeCodePoint[fa_globe] := $F0ac;
  FontAwesomeCodePoint[fa_google] := $F1a0;
  FontAwesomeCodePoint[fa_google_plus] := $F0d5;
  FontAwesomeCodePoint[fa_google_plus_circle] := $F2b3;
  FontAwesomeCodePoint[fa_google_plus_official] := $F2b3;
  FontAwesomeCodePoint[fa_google_plus_square] := $F0d4;
  FontAwesomeCodePoint[fa_google_wallet] := $F1ee;
  FontAwesomeCodePoint[fa_graduation_cap] := $F19d;
  FontAwesomeCodePoint[fa_gratipay] := $F184;
  FontAwesomeCodePoint[fa_grav] := $F2d6;
  FontAwesomeCodePoint[fa_group] := $F0c0;
  FontAwesomeCodePoint[fa_hacker_news] := $F1d4;
  FontAwesomeCodePoint[fa_handshake_o] := $F2b5;
  FontAwesomeCodePoint[fa_hand_grab_o] := $F254;
  FontAwesomeCodePoint[fa_hand_lizard_o] := $F258;
  FontAwesomeCodePoint[fa_hand_o_down] := $F0a7;
  FontAwesomeCodePoint[fa_hand_o_left] := $F0a5;
  FontAwesomeCodePoint[fa_hand_o_right] := $F0a4;
  FontAwesomeCodePoint[fa_hand_o_up] := $F0a6;
  FontAwesomeCodePoint[fa_hand_paper_o] := $F256;
  FontAwesomeCodePoint[fa_hand_peace_o] := $F25b;
  FontAwesomeCodePoint[fa_hand_pointer_o] := $F25a;
  FontAwesomeCodePoint[fa_hand_rock_o] := $F255;
  FontAwesomeCodePoint[fa_hand_scissors_o] := $F257;
  FontAwesomeCodePoint[fa_hand_spock_o] := $F259;
  FontAwesomeCodePoint[fa_hand_stop_o] := $F255;
  FontAwesomeCodePoint[fa_hard_of_hearing] := $F2a4;
  FontAwesomeCodePoint[fa_hashtag] := $F292;
  FontAwesomeCodePoint[fa_hdd_o] := $F0a0;
  FontAwesomeCodePoint[fa_header] := $F1dc;
  FontAwesomeCodePoint[fa_headphones] := $F025;
  FontAwesomeCodePoint[fa_heart] := $F004;
  FontAwesomeCodePoint[fa_heartbeat] := $F21e;
  FontAwesomeCodePoint[fa_heart_o] := $F08a;
  FontAwesomeCodePoint[fa_history] := $F1da;
  FontAwesomeCodePoint[fa_home] := $F015;
  FontAwesomeCodePoint[fa_hospital_o] := $F0f8;
  FontAwesomeCodePoint[fa_hotel] := $F236;
  FontAwesomeCodePoint[fa_hourglass] := $F254;
  FontAwesomeCodePoint[fa_hourglass_1] := $F251;
  FontAwesomeCodePoint[fa_hourglass_2] := $F252;
  FontAwesomeCodePoint[fa_hourglass_3] := $F253;
  FontAwesomeCodePoint[fa_hourglass_end] := $F253;
  FontAwesomeCodePoint[fa_hourglass_half] := $F252;
  FontAwesomeCodePoint[fa_hourglass_o] := $F250;
  FontAwesomeCodePoint[fa_hourglass_start] := $F251;
  FontAwesomeCodePoint[fa_houzz] := $F27c;
  FontAwesomeCodePoint[fa_html5] := $F13b;
  FontAwesomeCodePoint[fa_h_square] := $F0fd;
  FontAwesomeCodePoint[fa_id_badge] := $F2c1;
  FontAwesomeCodePoint[fa_id_card] := $F2c2;
  FontAwesomeCodePoint[fa_id_card_o] := $F2c3;
  FontAwesomeCodePoint[fa_ils] := $F20b;
  FontAwesomeCodePoint[fa_image] := $F03e;
  FontAwesomeCodePoint[fa_imdb] := $F2d8;
  FontAwesomeCodePoint[fa_inbox] := $F01c;
  FontAwesomeCodePoint[fa_indent] := $F03c;
  FontAwesomeCodePoint[fa_industry] := $F275;
  FontAwesomeCodePoint[fa_info] := $F129;
  FontAwesomeCodePoint[fa_info_circle] := $F05a;
  FontAwesomeCodePoint[fa_inr] := $F156;
  FontAwesomeCodePoint[fa_instagram] := $F16d;
  FontAwesomeCodePoint[fa_institution] := $F19c;
  FontAwesomeCodePoint[fa_internet_explorer] := $F26b;
  FontAwesomeCodePoint[fa_intersex] := $F224;
  FontAwesomeCodePoint[fa_ioxhost] := $F208;
  FontAwesomeCodePoint[fa_italic] := $F033;
  FontAwesomeCodePoint[fa_i_cursor] := $F246;
  FontAwesomeCodePoint[fa_joomla] := $F1aa;
  FontAwesomeCodePoint[fa_jpy] := $F157;
  FontAwesomeCodePoint[fa_jsfiddle] := $F1cc;
  FontAwesomeCodePoint[fa_key] := $F084;
  FontAwesomeCodePoint[fa_keyboard_o] := $F11c;
  FontAwesomeCodePoint[fa_krw] := $F159;
  FontAwesomeCodePoint[fa_language] := $F1ab;
  FontAwesomeCodePoint[fa_laptop] := $F109;
  FontAwesomeCodePoint[fa_lastfm] := $F202;
  FontAwesomeCodePoint[fa_lastfm_square] := $F203;
  FontAwesomeCodePoint[fa_leaf] := $F06c;
  FontAwesomeCodePoint[fa_leanpub] := $F212;
  FontAwesomeCodePoint[fa_legal] := $F0e3;
  FontAwesomeCodePoint[fa_lemon_o] := $F094;
  FontAwesomeCodePoint[fa_level_down] := $F149;
  FontAwesomeCodePoint[fa_level_up] := $F148;
  FontAwesomeCodePoint[fa_life_bouy] := $F1cd;
  FontAwesomeCodePoint[fa_life_buoy] := $F1cd;
  FontAwesomeCodePoint[fa_life_ring] := $F1cd;
  FontAwesomeCodePoint[fa_life_saver] := $F1cd;
  FontAwesomeCodePoint[fa_lightbulb_o] := $F0eb;
  FontAwesomeCodePoint[fa_line_chart] := $F201;
  FontAwesomeCodePoint[fa_link] := $F0c1;
  FontAwesomeCodePoint[fa_linkedin] := $F0e1;
  FontAwesomeCodePoint[fa_linkedin_square] := $F08c;
  FontAwesomeCodePoint[fa_linode] := $F2b8;
  FontAwesomeCodePoint[fa_linux] := $F17c;
  FontAwesomeCodePoint[fa_list] := $F03a;
  FontAwesomeCodePoint[fa_list_alt] := $F022;
  FontAwesomeCodePoint[fa_list_ol] := $F0cb;
  FontAwesomeCodePoint[fa_list_ul] := $F0ca;
  FontAwesomeCodePoint[fa_location_arrow] := $F124;
  FontAwesomeCodePoint[fa_lock] := $F023;
  FontAwesomeCodePoint[fa_long_arrow_down] := $F175;
  FontAwesomeCodePoint[fa_long_arrow_left] := $F177;
  FontAwesomeCodePoint[fa_long_arrow_right] := $F178;
  FontAwesomeCodePoint[fa_long_arrow_up] := $F176;
  FontAwesomeCodePoint[fa_low_vision] := $F2a8;
  FontAwesomeCodePoint[fa_magic] := $F0d0;
  FontAwesomeCodePoint[fa_magnet] := $F076;
  FontAwesomeCodePoint[fa_mail_forward] := $F064;
  FontAwesomeCodePoint[fa_mail_reply] := $F112;
  FontAwesomeCodePoint[fa_mail_reply_all] := $F122;
  FontAwesomeCodePoint[fa_male] := $F183;
  FontAwesomeCodePoint[fa_map] := $F279;
  FontAwesomeCodePoint[fa_map_marker] := $F041;
  FontAwesomeCodePoint[fa_map_o] := $F278;
  FontAwesomeCodePoint[fa_map_pin] := $F276;
  FontAwesomeCodePoint[fa_map_signs] := $F277;
  FontAwesomeCodePoint[fa_mars] := $F222;
  FontAwesomeCodePoint[fa_mars_double] := $F227;
  FontAwesomeCodePoint[fa_mars_stroke] := $F229;
  FontAwesomeCodePoint[fa_mars_stroke_h] := $F22b;
  FontAwesomeCodePoint[fa_mars_stroke_v] := $F22a;
  FontAwesomeCodePoint[fa_maxcdn] := $F136;
  FontAwesomeCodePoint[fa_meanpath] := $F20c;
  FontAwesomeCodePoint[fa_medium] := $F23a;
  FontAwesomeCodePoint[fa_medkit] := $F0fa;
  FontAwesomeCodePoint[fa_meetup] := $F2e0;
  FontAwesomeCodePoint[fa_meh_o] := $F11a;
  FontAwesomeCodePoint[fa_mercury] := $F223;
  FontAwesomeCodePoint[fa_microchip] := $F2db;
  FontAwesomeCodePoint[fa_microphone] := $F130;
  FontAwesomeCodePoint[fa_microphone_slash] := $F131;
  FontAwesomeCodePoint[fa_minus] := $F068;
  FontAwesomeCodePoint[fa_minus_circle] := $F056;
  FontAwesomeCodePoint[fa_minus_square] := $F146;
  FontAwesomeCodePoint[fa_minus_square_o] := $F147;
  FontAwesomeCodePoint[fa_mixcloud] := $F289;
  FontAwesomeCodePoint[fa_mobile] := $F10b;
  FontAwesomeCodePoint[fa_mobile_phone] := $F10b;
  FontAwesomeCodePoint[fa_modx] := $F285;
  FontAwesomeCodePoint[fa_money] := $F0d6;
  FontAwesomeCodePoint[fa_moon_o] := $F186;
  FontAwesomeCodePoint[fa_mortar_board] := $F19c;
  FontAwesomeCodePoint[fa_motorcycle] := $F21c;
  FontAwesomeCodePoint[fa_mouse_pointer] := $F245;
  FontAwesomeCodePoint[fa_music] := $F001;
  FontAwesomeCodePoint[fa_navicon] := $F0c9;
  FontAwesomeCodePoint[fa_neuter] := $F22c;
  FontAwesomeCodePoint[fa_newspaper_o] := $F1ea;
  FontAwesomeCodePoint[fa_object_group] := $F247;
  FontAwesomeCodePoint[fa_object_ungroup] := $F248;
  FontAwesomeCodePoint[fa_odnoklassniki] := $F263;
  FontAwesomeCodePoint[fa_odnoklassniki_square] := $F264;
  FontAwesomeCodePoint[fa_opencart] := $F23d;
  FontAwesomeCodePoint[fa_openid] := $F19b;
  FontAwesomeCodePoint[fa_opera] := $F26a;
  FontAwesomeCodePoint[fa_optin_monster] := $F23c;
  FontAwesomeCodePoint[fa_outdent] := $F03b;
  FontAwesomeCodePoint[fa_pagelines] := $F18c;
  FontAwesomeCodePoint[fa_paint_brush] := $F1fc;
  FontAwesomeCodePoint[fa_paperclip] := $F0c6;
  FontAwesomeCodePoint[fa_paper_plane] := $F1d8;
  FontAwesomeCodePoint[fa_paper_plane_o] := $F1d9;
  FontAwesomeCodePoint[fa_paragraph] := $F1dd;
  FontAwesomeCodePoint[fa_paste] := $F0ea;
  FontAwesomeCodePoint[fa_pause] := $F04c;
  FontAwesomeCodePoint[fa_pause_circle] := $F28b;
  FontAwesomeCodePoint[fa_pause_circle_o] := $F28c;
  FontAwesomeCodePoint[fa_paw] := $F1b0;
  FontAwesomeCodePoint[fa_paypal] := $F1ed;
  FontAwesomeCodePoint[fa_pencil] := $F040;
  FontAwesomeCodePoint[fa_pencil_square] := $F14b;
  FontAwesomeCodePoint[fa_pencil_square_o] := $F044;
  FontAwesomeCodePoint[fa_percent] := $F295;
  FontAwesomeCodePoint[fa_phone] := $F095;
  FontAwesomeCodePoint[fa_phone_square] := $F098;
  FontAwesomeCodePoint[fa_photo] := $F03e;
  FontAwesomeCodePoint[fa_picture_o] := $F03e;
  FontAwesomeCodePoint[fa_pied_piper] := $F2ae;
  FontAwesomeCodePoint[fa_pied_piper_alt] := $F1a8;
  FontAwesomeCodePoint[fa_pied_piper_pp] := $F1a7;
  FontAwesomeCodePoint[fa_pie_chart] := $F200;
  FontAwesomeCodePoint[fa_pinterest] := $F0d2;
  FontAwesomeCodePoint[fa_pinterest_p] := $F231;
  FontAwesomeCodePoint[fa_pinterest_square] := $F0d3;
  FontAwesomeCodePoint[fa_plane] := $F072;
  FontAwesomeCodePoint[fa_play] := $F04b;
  FontAwesomeCodePoint[fa_play_circle] := $F144;
  FontAwesomeCodePoint[fa_play_circle_o] := $F01d;
  FontAwesomeCodePoint[fa_plug] := $F1e6;
  FontAwesomeCodePoint[fa_plus] := $F067;
  FontAwesomeCodePoint[fa_plus_circle] := $F055;
  FontAwesomeCodePoint[fa_plus_square] := $F0fe;
  FontAwesomeCodePoint[fa_plus_square_o] := $F196;
  FontAwesomeCodePoint[fa_podcast] := $F2ce;
  FontAwesomeCodePoint[fa_power_off] := $F011;
  FontAwesomeCodePoint[fa_print] := $F02f;
  FontAwesomeCodePoint[fa_product_hunt] := $F288;
  FontAwesomeCodePoint[fa_puzzle_piece] := $F12e;
  FontAwesomeCodePoint[fa_qq] := $F1d6;
  FontAwesomeCodePoint[fa_qrcode] := $F029;
  FontAwesomeCodePoint[fa_question] := $F128;
  FontAwesomeCodePoint[fa_question_circle] := $F059;
  FontAwesomeCodePoint[fa_question_circle_o] := $F29c;
  FontAwesomeCodePoint[fa_quora] := $F2c4;
  FontAwesomeCodePoint[fa_quote_left] := $F10d;
  FontAwesomeCodePoint[fa_quote_right] := $F10e;
  FontAwesomeCodePoint[fa_ra] := $F1d0;
  FontAwesomeCodePoint[fa_random] := $F074;
  FontAwesomeCodePoint[fa_ravelry] := $F2d9;
  FontAwesomeCodePoint[fa_rebel] := $F1d0;
  FontAwesomeCodePoint[fa_recycle] := $F1b8;
  FontAwesomeCodePoint[fa_reddit] := $F1a1;
  FontAwesomeCodePoint[fa_reddit_alien] := $F281;
  FontAwesomeCodePoint[fa_reddit_square] := $F1a2;
  FontAwesomeCodePoint[fa_refresh] := $F021;
  FontAwesomeCodePoint[fa_registered] := $F25d;
  FontAwesomeCodePoint[fa_remove] := $F00d;
  FontAwesomeCodePoint[fa_renren] := $F18b;
  FontAwesomeCodePoint[fa_reorder] := $F0c9;
  FontAwesomeCodePoint[fa_repeat] := $F01e;
  FontAwesomeCodePoint[fa_reply] := $F112;
  FontAwesomeCodePoint[fa_reply_all] := $F122;
  FontAwesomeCodePoint[fa_resistance] := $F1d0;
  FontAwesomeCodePoint[fa_retweet] := $F079;
  FontAwesomeCodePoint[fa_rmb] := $F157;
  FontAwesomeCodePoint[fa_road] := $F018;
  FontAwesomeCodePoint[fa_rocket] := $F135;
  FontAwesomeCodePoint[fa_rotate_left] := $F0e2;
  FontAwesomeCodePoint[fa_rotate_right] := $F01e;
  FontAwesomeCodePoint[fa_rouble] := $F158;
  FontAwesomeCodePoint[fa_rss] := $F09e;
  FontAwesomeCodePoint[fa_rss_square] := $F143;
  FontAwesomeCodePoint[fa_rub] := $F158;
  FontAwesomeCodePoint[fa_ruble] := $F158;
  FontAwesomeCodePoint[fa_rupee] := $F156;
  FontAwesomeCodePoint[fa_s15] := $F2cd;
  FontAwesomeCodePoint[fa_safari] := $F267;
  FontAwesomeCodePoint[fa_save] := $F0c7;
  FontAwesomeCodePoint[fa_scissors] := $F0c4;
  FontAwesomeCodePoint[fa_scribd] := $F28a;
  FontAwesomeCodePoint[fa_search] := $F002;
  FontAwesomeCodePoint[fa_search_minus] := $F010;
  FontAwesomeCodePoint[fa_search_plus] := $F00e;
  FontAwesomeCodePoint[fa_sellsy] := $F213;
  FontAwesomeCodePoint[fa_send] := $F1d8;
  FontAwesomeCodePoint[fa_send_o] := $F1d9;
  FontAwesomeCodePoint[fa_server] := $F233;
  FontAwesomeCodePoint[fa_share] := $F064;
  FontAwesomeCodePoint[fa_share_alt] := $F1e0;
  FontAwesomeCodePoint[fa_share_alt_square] := $F1e1;
  FontAwesomeCodePoint[fa_share_square] := $F14d;
  FontAwesomeCodePoint[fa_share_square_o] := $F045;
  FontAwesomeCodePoint[fa_shekel] := $F20b;
  FontAwesomeCodePoint[fa_sheqel] := $F20b;
  FontAwesomeCodePoint[fa_shield] := $F132;
  FontAwesomeCodePoint[fa_ship] := $F21a;
  FontAwesomeCodePoint[fa_shirtsinbulk] := $F214;
  FontAwesomeCodePoint[fa_shopping_bag] := $F290;
  FontAwesomeCodePoint[fa_shopping_basket] := $F291;
  FontAwesomeCodePoint[fa_shopping_cart] := $F07a;
  FontAwesomeCodePoint[fa_shower] := $F2cc;
  FontAwesomeCodePoint[fa_signal] := $F012;
  FontAwesomeCodePoint[fa_signing] := $F2a7;
  FontAwesomeCodePoint[fa_sign_in] := $F090;
  FontAwesomeCodePoint[fa_sign_language] := $F2a7;
  FontAwesomeCodePoint[fa_sign_out] := $F08b;
  FontAwesomeCodePoint[fa_simplybuilt] := $F215;
  FontAwesomeCodePoint[fa_sitemap] := $F0e8;
  FontAwesomeCodePoint[fa_skyatlas] := $F216;
  FontAwesomeCodePoint[fa_skype] := $F17e;
  FontAwesomeCodePoint[fa_slack] := $F198;
  FontAwesomeCodePoint[fa_sliders] := $F1de;
  FontAwesomeCodePoint[fa_slideshare] := $F1e7;
  FontAwesomeCodePoint[fa_smile_o] := $F118;
  FontAwesomeCodePoint[fa_snapchat] := $F2ab;
  FontAwesomeCodePoint[fa_snapchat_ghost] := $F2ac;
  FontAwesomeCodePoint[fa_snapchat_square] := $F2ad;
  FontAwesomeCodePoint[fa_snowflake_o] := $F2dc;
  FontAwesomeCodePoint[fa_soccer_ball_o] := $F1e3;
  FontAwesomeCodePoint[fa_sort] := $F0dc;
  FontAwesomeCodePoint[fa_sort_alpha_asc] := $F15d;
  FontAwesomeCodePoint[fa_sort_alpha_desc] := $F15e;
  FontAwesomeCodePoint[fa_sort_amount_asc] := $F160;
  FontAwesomeCodePoint[fa_sort_amount_desc] := $F161;
  FontAwesomeCodePoint[fa_sort_asc] := $F0de;
  FontAwesomeCodePoint[fa_sort_desc] := $F0dd;
  FontAwesomeCodePoint[fa_sort_down] := $F0dd;
  FontAwesomeCodePoint[fa_sort_numeric_asc] := $F162;
  FontAwesomeCodePoint[fa_sort_numeric_desc] := $F163;
  FontAwesomeCodePoint[fa_sort_up] := $F0de;
  FontAwesomeCodePoint[fa_soundcloud] := $F1be;
  FontAwesomeCodePoint[fa_space_shuttle] := $F197;
  FontAwesomeCodePoint[fa_spinner] := $F110;
  FontAwesomeCodePoint[fa_spoon] := $F1b1;
  FontAwesomeCodePoint[fa_spotify] := $F1bc;
  FontAwesomeCodePoint[fa_square] := $F0c8;
  FontAwesomeCodePoint[fa_square_o] := $F096;
  FontAwesomeCodePoint[fa_stack_exchange] := $F18d;
  FontAwesomeCodePoint[fa_stack_overflow] := $F16c;
  FontAwesomeCodePoint[fa_star] := $F005;
  FontAwesomeCodePoint[fa_star_half] := $F089;
  FontAwesomeCodePoint[fa_star_half_empty] := $F123;
  FontAwesomeCodePoint[fa_star_half_full] := $F123;
  FontAwesomeCodePoint[fa_star_half_o] := $F123;
  FontAwesomeCodePoint[fa_star_o] := $F006;
  FontAwesomeCodePoint[fa_steam] := $F1b6;
  FontAwesomeCodePoint[fa_steam_square] := $F1b7;
  FontAwesomeCodePoint[fa_step_backward] := $F048;
  FontAwesomeCodePoint[fa_step_forward] := $F051;
  FontAwesomeCodePoint[fa_stethoscope] := $F0f1;
  FontAwesomeCodePoint[fa_sticky_note] := $F249;
  FontAwesomeCodePoint[fa_sticky_note_o] := $F24a;
  FontAwesomeCodePoint[fa_stop] := $F04d;
  FontAwesomeCodePoint[fa_stop_circle] := $F28d;
  FontAwesomeCodePoint[fa_stop_circle_o] := $F28e;
  FontAwesomeCodePoint[fa_street_view] := $F21d;
  FontAwesomeCodePoint[fa_strikethrough] := $F0cc;
  FontAwesomeCodePoint[fa_stumbleupon] := $F1a4;
  FontAwesomeCodePoint[fa_stumbleupon_circle] := $F1a3;
  FontAwesomeCodePoint[fa_subscript] := $F12c;
  FontAwesomeCodePoint[fa_subway] := $F239;
  FontAwesomeCodePoint[fa_suitcase] := $F0f2;
  FontAwesomeCodePoint[fa_sun_o] := $F185;
  FontAwesomeCodePoint[fa_superpowers] := $F2dd;
  FontAwesomeCodePoint[fa_superscript] := $F12b;
  FontAwesomeCodePoint[fa_support] := $F1cd;
  FontAwesomeCodePoint[fa_table] := $F0ce;
  FontAwesomeCodePoint[fa_tablet] := $F10a;
  FontAwesomeCodePoint[fa_tachometer] := $F0e4;
  FontAwesomeCodePoint[fa_tag] := $F02b;
  FontAwesomeCodePoint[fa_tags] := $F02c;
  FontAwesomeCodePoint[fa_tasks] := $F0ae;
  FontAwesomeCodePoint[fa_taxi] := $F1ba;
  FontAwesomeCodePoint[fa_telegram] := $F2c6;
  FontAwesomeCodePoint[fa_television] := $F26c;
  FontAwesomeCodePoint[fa_tencent_weibo] := $F1d5;
  FontAwesomeCodePoint[fa_terminal] := $F120;
  FontAwesomeCodePoint[fa_text_height] := $F034;
  FontAwesomeCodePoint[fa_text_width] := $F035;
  FontAwesomeCodePoint[fa_th] := $F00a;
  FontAwesomeCodePoint[fa_themeisle] := $F2b2;
  FontAwesomeCodePoint[fa_thermometer] := $F2c7;
  FontAwesomeCodePoint[fa_thermometer_0] := $F2cb;
  FontAwesomeCodePoint[fa_thermometer_1] := $F2ca;
  FontAwesomeCodePoint[fa_thermometer_2] := $F2c9;
  FontAwesomeCodePoint[fa_thermometer_3] := $F2c8;
  FontAwesomeCodePoint[fa_thermometer_4] := $F2c7;
  FontAwesomeCodePoint[fa_thermometer_empty] := $F2cb;
  FontAwesomeCodePoint[fa_thermometer_full] := $F2c7;
  FontAwesomeCodePoint[fa_thermometer_half] := $F2c9;
  FontAwesomeCodePoint[fa_thermometer_quarter] := $F2ca;
  FontAwesomeCodePoint[fa_thermometer_three_quarters] := $F2c8;
  FontAwesomeCodePoint[fa_thumbs_down] := $F165;
  FontAwesomeCodePoint[fa_thumbs_o_down] := $F088;
  FontAwesomeCodePoint[fa_thumbs_o_up] := $F087;
  FontAwesomeCodePoint[fa_thumbs_up] := $F164;
  FontAwesomeCodePoint[fa_thumb_tack] := $F08d;
  FontAwesomeCodePoint[fa_th_large] := $F009;
  FontAwesomeCodePoint[fa_th_list] := $F00b;
  FontAwesomeCodePoint[fa_ticket] := $F145;
  FontAwesomeCodePoint[fa_times] := $F00d;
  FontAwesomeCodePoint[fa_times_circle] := $F057;
  FontAwesomeCodePoint[fa_times_circle_o] := $F05c;
  FontAwesomeCodePoint[fa_times_rectangle] := $F2d3;
  FontAwesomeCodePoint[fa_times_rectangle_o] := $F2d4;
  FontAwesomeCodePoint[fa_tint] := $F043;
  FontAwesomeCodePoint[fa_toggle_down] := $F150;
  FontAwesomeCodePoint[fa_toggle_left] := $F191;
  FontAwesomeCodePoint[fa_toggle_off] := $F204;
  FontAwesomeCodePoint[fa_toggle_on] := $F205;
  FontAwesomeCodePoint[fa_toggle_right] := $F152;
  FontAwesomeCodePoint[fa_toggle_up] := $F151;
  FontAwesomeCodePoint[fa_trademark] := $F25c;
  FontAwesomeCodePoint[fa_train] := $F238;
  FontAwesomeCodePoint[fa_transgender] := $F224;
  FontAwesomeCodePoint[fa_transgender_alt] := $F225;
  FontAwesomeCodePoint[fa_trash] := $F1f8;
  FontAwesomeCodePoint[fa_trash_o] := $F014;
  FontAwesomeCodePoint[fa_tree] := $F1bb;
  FontAwesomeCodePoint[fa_trello] := $F181;
  FontAwesomeCodePoint[fa_tripadvisor] := $F262;
  FontAwesomeCodePoint[fa_trophy] := $F091;
  FontAwesomeCodePoint[fa_truck] := $F0d1;
  FontAwesomeCodePoint[fa_try] := $F195;
  FontAwesomeCodePoint[fa_tty] := $F1e4;
  FontAwesomeCodePoint[fa_tumblr] := $F173;
  FontAwesomeCodePoint[fa_tumblr_square] := $F174;
  FontAwesomeCodePoint[fa_turkish_lira] := $F195;
  FontAwesomeCodePoint[fa_tv] := $F26c;
  FontAwesomeCodePoint[fa_twitch] := $F1e8;
  FontAwesomeCodePoint[fa_twitter] := $F099;
  FontAwesomeCodePoint[fa_twitter_square] := $F081;
  FontAwesomeCodePoint[fa_umbrella] := $F0e9;
  FontAwesomeCodePoint[fa_underline] := $F0cd;
  FontAwesomeCodePoint[fa_undo] := $F0e2;
  FontAwesomeCodePoint[fa_universal_access] := $F29a;
  FontAwesomeCodePoint[fa_university] := $F19c;
  FontAwesomeCodePoint[fa_unlink] := $F127;
  FontAwesomeCodePoint[fa_unlock] := $F09c;
  FontAwesomeCodePoint[fa_unlock_alt] := $F13e;
  FontAwesomeCodePoint[fa_unsorted] := $F0dc;
  FontAwesomeCodePoint[fa_upload] := $F093;
  FontAwesomeCodePoint[fa_usb] := $F287;
  FontAwesomeCodePoint[fa_usd] := $F155;
  FontAwesomeCodePoint[fa_user] := $F007;
  FontAwesomeCodePoint[fa_users] := $F0c0;
  FontAwesomeCodePoint[fa_user_circle] := $F2bd;
  FontAwesomeCodePoint[fa_user_circle_o] := $F2be;
  FontAwesomeCodePoint[fa_user_md] := $F0f0;
  FontAwesomeCodePoint[fa_user_o] := $F2c0;
  FontAwesomeCodePoint[fa_user_plus] := $F234;
  FontAwesomeCodePoint[fa_user_secret] := $F21b;
  FontAwesomeCodePoint[fa_user_times] := $F235;
  FontAwesomeCodePoint[fa_vcard] := $F2bb;
  FontAwesomeCodePoint[fa_vcard_o] := $F2bc;
  FontAwesomeCodePoint[fa_venus] := $F221;
  FontAwesomeCodePoint[fa_venus_double] := $F226;
  FontAwesomeCodePoint[fa_venus_mars] := $F228;
  FontAwesomeCodePoint[fa_viacoin] := $F237;
  FontAwesomeCodePoint[fa_viadeo] := $F2a9;
  FontAwesomeCodePoint[fa_viadeo_square] := $F2aa;
  FontAwesomeCodePoint[fa_video_camera] := $F03d;
  FontAwesomeCodePoint[fa_vimeo] := $F27d;
  FontAwesomeCodePoint[fa_vimeo_square] := $F194;
  FontAwesomeCodePoint[fa_vine] := $F1ca;
  FontAwesomeCodePoint[fa_vk] := $F189;
  FontAwesomeCodePoint[fa_volume_control_phone] := $F2a0;
  FontAwesomeCodePoint[fa_volume_down] := $F027;
  FontAwesomeCodePoint[fa_volume_off] := $F026;
  FontAwesomeCodePoint[fa_volume_up] := $F028;
  FontAwesomeCodePoint[fa_warning] := $F071;
  FontAwesomeCodePoint[fa_wechat] := $F1d7;
  FontAwesomeCodePoint[fa_weibo] := $F18a;
  FontAwesomeCodePoint[fa_weixin] := $F1d7;
  FontAwesomeCodePoint[fa_whatsapp] := $F232;
  FontAwesomeCodePoint[fa_wheelchair] := $F193;
  FontAwesomeCodePoint[fa_wheelchair_alt] := $F29b;
  FontAwesomeCodePoint[fa_wifi] := $F1eb;
  FontAwesomeCodePoint[fa_wikipedia_w] := $F266;
  FontAwesomeCodePoint[fa_windows] := $F17a;
  FontAwesomeCodePoint[fa_window_close] := $F2d3;
  FontAwesomeCodePoint[fa_window_close_o] := $F2d4;
  FontAwesomeCodePoint[fa_window_maximize] := $F2d0;
  FontAwesomeCodePoint[fa_window_minimize] := $F2d1;
  FontAwesomeCodePoint[fa_window_restore] := $F2d2;
  FontAwesomeCodePoint[fa_won] := $F159;
  FontAwesomeCodePoint[fa_wordpress] := $F19a;
  FontAwesomeCodePoint[fa_wpbeginner] := $F297;
  FontAwesomeCodePoint[fa_wpexplorer] := $F2de;
  FontAwesomeCodePoint[fa_wpforms] := $F298;
  FontAwesomeCodePoint[fa_wrench] := $F0ad;
  FontAwesomeCodePoint[fa_xing] := $F168;
  FontAwesomeCodePoint[fa_xing_square] := $F169;
  FontAwesomeCodePoint[fa_yahoo] := $F19e;
  FontAwesomeCodePoint[fa_yc] := $F23a;
  FontAwesomeCodePoint[fa_yc_square] := $F1d4;
  FontAwesomeCodePoint[fa_yelp] := $F1e9;
  FontAwesomeCodePoint[fa_yen] := $F157;
  FontAwesomeCodePoint[fa_yoast] := $F2b1;
  FontAwesomeCodePoint[fa_youtube] := $F167;
  FontAwesomeCodePoint[fa_youtube_play] := $F16a;
  FontAwesomeCodePoint[fa_youtube_square] := $F166;
  FontAwesomeCodePoint[fa_y_combinator] := $F23b;
  FontAwesomeCodePoint[fa_y_combinator_square] := $F1d4;
end;

procedure popolateMaterialDesignCodePoints;
begin
  MaterialDesignCodePoint[md_3d_rotation] := $e84d;
  MaterialDesignCodePoint[md_ac_unit] := $eb3b;
  MaterialDesignCodePoint[md_access_alarm] := $e190;
  MaterialDesignCodePoint[md_access_alarms] := $e191;
  MaterialDesignCodePoint[md_access_time] := $e192;
  MaterialDesignCodePoint[md_accessibility] := $e84e;
  MaterialDesignCodePoint[md_accessible] := $e914;
  MaterialDesignCodePoint[md_account_balance] := $e84f;
  MaterialDesignCodePoint[md_account_balance_wallet] := $e850;
  MaterialDesignCodePoint[md_account_box] := $e851;
  MaterialDesignCodePoint[md_account_circle] := $e853;
  MaterialDesignCodePoint[md_adb] := $e60e;
  MaterialDesignCodePoint[md_add] := $e145;
  MaterialDesignCodePoint[md_add_a_photo] := $e439;
  MaterialDesignCodePoint[md_add_alarm] := $e193;
  MaterialDesignCodePoint[md_add_alert] := $e003;
  MaterialDesignCodePoint[md_add_box] := $e146;
  MaterialDesignCodePoint[md_add_circle] := $e147;
  MaterialDesignCodePoint[md_add_circle_outline] := $e148;
  MaterialDesignCodePoint[md_add_location] := $e567;
  MaterialDesignCodePoint[md_add_shopping_cart] := $e854;
  MaterialDesignCodePoint[md_add_to_photos] := $e39d;
  MaterialDesignCodePoint[md_add_to_queue] := $e05c;
  MaterialDesignCodePoint[md_adjust] := $e39e;
  MaterialDesignCodePoint[md_airline_seat_flat] := $e630;
  MaterialDesignCodePoint[md_airline_seat_flat_angled] := $e631;
  MaterialDesignCodePoint[md_airline_seat_individual_suite] := $e632;
  MaterialDesignCodePoint[md_airline_seat_legroom_extra] := $e633;
  MaterialDesignCodePoint[md_airline_seat_legroom_normal] := $e634;
  MaterialDesignCodePoint[md_airline_seat_legroom_reduced] := $e635;
  MaterialDesignCodePoint[md_airline_seat_recline_extra] := $e636;
  MaterialDesignCodePoint[md_airline_seat_recline_normal] := $e637;
  MaterialDesignCodePoint[md_airplanemode_active] := $e195;
  MaterialDesignCodePoint[md_airplanemode_inactive] := $e194;
  MaterialDesignCodePoint[md_airplay] := $e055;
  MaterialDesignCodePoint[md_airport_shuttle] := $eb3c;
  MaterialDesignCodePoint[md_alarm] := $e855;
  MaterialDesignCodePoint[md_alarm_add] := $e856;
  MaterialDesignCodePoint[md_alarm_off] := $e857;
  MaterialDesignCodePoint[md_alarm_on] := $e858;
  MaterialDesignCodePoint[md_album] := $e019;
  MaterialDesignCodePoint[md_all_inclusive] := $eb3d;
  MaterialDesignCodePoint[md_all_out] := $e90b;
  MaterialDesignCodePoint[md_android] := $e859;
  MaterialDesignCodePoint[md_announcement] := $e85a;
  MaterialDesignCodePoint[md_apps] := $e5c3;
  MaterialDesignCodePoint[md_archive] := $e149;
  MaterialDesignCodePoint[md_arrow_back] := $e5c4;
  MaterialDesignCodePoint[md_arrow_downward] := $e5db;
  MaterialDesignCodePoint[md_arrow_drop_down] := $e5c5;
  MaterialDesignCodePoint[md_arrow_drop_down_circle] := $e5c6;
  MaterialDesignCodePoint[md_arrow_drop_up] := $e5c7;
  MaterialDesignCodePoint[md_arrow_forward] := $e5c8;
  MaterialDesignCodePoint[md_arrow_upward] := $e5d8;
  MaterialDesignCodePoint[md_art_track] := $e060;
  MaterialDesignCodePoint[md_aspect_ratio] := $e85b;
  MaterialDesignCodePoint[md_assessment] := $e85c;
  MaterialDesignCodePoint[md_assignment] := $e85d;
  MaterialDesignCodePoint[md_assignment_ind] := $e85e;
  MaterialDesignCodePoint[md_assignment_late] := $e85f;
  MaterialDesignCodePoint[md_assignment_return] := $e860;
  MaterialDesignCodePoint[md_assignment_returned] := $e861;
  MaterialDesignCodePoint[md_assignment_turned_in] := $e862;
  MaterialDesignCodePoint[md_assistant] := $e39f;
  MaterialDesignCodePoint[md_assistant_photo] := $e3a0;
  MaterialDesignCodePoint[md_attach_file] := $e226;
  MaterialDesignCodePoint[md_attach_money] := $e227;
  MaterialDesignCodePoint[md_attachment] := $e2bc;
  MaterialDesignCodePoint[md_audiotrack] := $e3a1;
  MaterialDesignCodePoint[md_autorenew] := $e863;
  MaterialDesignCodePoint[md_av_timer] := $e01b;
  MaterialDesignCodePoint[md_backspace] := $e14a;
  MaterialDesignCodePoint[md_backup] := $e864;
  MaterialDesignCodePoint[md_battery_alert] := $e19c;
  MaterialDesignCodePoint[md_battery_charging_full] := $e1a3;
  MaterialDesignCodePoint[md_battery_full] := $e1a4;
  MaterialDesignCodePoint[md_battery_std] := $e1a5;
  MaterialDesignCodePoint[md_battery_unknown] := $e1a6;
  MaterialDesignCodePoint[md_beach_access] := $eb3e;
  MaterialDesignCodePoint[md_beenhere] := $e52d;
  MaterialDesignCodePoint[md_block] := $e14b;
  MaterialDesignCodePoint[md_bluetooth] := $e1a7;
  MaterialDesignCodePoint[md_bluetooth_audio] := $e60f;
  MaterialDesignCodePoint[md_bluetooth_connected] := $e1a8;
  MaterialDesignCodePoint[md_bluetooth_disabled] := $e1a9;
  MaterialDesignCodePoint[md_bluetooth_searching] := $e1aa;
  MaterialDesignCodePoint[md_blur_circular] := $e3a2;
  MaterialDesignCodePoint[md_blur_linear] := $e3a3;
  MaterialDesignCodePoint[md_blur_off] := $e3a4;
  MaterialDesignCodePoint[md_blur_on] := $e3a5;
  MaterialDesignCodePoint[md_book] := $e865;
  MaterialDesignCodePoint[md_bookmark] := $e866;
  MaterialDesignCodePoint[md_bookmark_border] := $e867;
  MaterialDesignCodePoint[md_border_all] := $e228;
  MaterialDesignCodePoint[md_border_bottom] := $e229;
  MaterialDesignCodePoint[md_border_clear] := $e22a;
  MaterialDesignCodePoint[md_border_color] := $e22b;
  MaterialDesignCodePoint[md_border_horizontal] := $e22c;
  MaterialDesignCodePoint[md_border_inner] := $e22d;
  MaterialDesignCodePoint[md_border_left] := $e22e;
  MaterialDesignCodePoint[md_border_outer] := $e22f;
  MaterialDesignCodePoint[md_border_right] := $e230;
  MaterialDesignCodePoint[md_border_style] := $e231;
  MaterialDesignCodePoint[md_border_top] := $e232;
  MaterialDesignCodePoint[md_border_vertical] := $e233;
  MaterialDesignCodePoint[md_branding_watermark] := $e06b;
  MaterialDesignCodePoint[md_brightness_1] := $e3a6;
  MaterialDesignCodePoint[md_brightness_2] := $e3a7;
  MaterialDesignCodePoint[md_brightness_3] := $e3a8;
  MaterialDesignCodePoint[md_brightness_4] := $e3a9;
  MaterialDesignCodePoint[md_brightness_5] := $e3aa;
  MaterialDesignCodePoint[md_brightness_6] := $e3ab;
  MaterialDesignCodePoint[md_brightness_7] := $e3ac;
  MaterialDesignCodePoint[md_brightness_auto] := $e1ab;
  MaterialDesignCodePoint[md_brightness_high] := $e1ac;
  MaterialDesignCodePoint[md_brightness_low] := $e1ad;
  MaterialDesignCodePoint[md_brightness_medium] := $e1ae;
  MaterialDesignCodePoint[md_broken_image] := $e3ad;
  MaterialDesignCodePoint[md_brush] := $e3ae;
  MaterialDesignCodePoint[md_bubble_chart] := $e6dd;
  MaterialDesignCodePoint[md_bug_report] := $e868;
  MaterialDesignCodePoint[md_build] := $e869;
  MaterialDesignCodePoint[md_burst_mode] := $e43c;
  MaterialDesignCodePoint[md_business] := $e0af;
  MaterialDesignCodePoint[md_business_center] := $eb3f;
  MaterialDesignCodePoint[md_cached] := $e86a;
  MaterialDesignCodePoint[md_cake] := $e7e9;
  MaterialDesignCodePoint[md_call] := $e0b0;
  MaterialDesignCodePoint[md_call_end] := $e0b1;
  MaterialDesignCodePoint[md_call_made] := $e0b2;
  MaterialDesignCodePoint[md_call_merge] := $e0b3;
  MaterialDesignCodePoint[md_call_missed] := $e0b4;
  MaterialDesignCodePoint[md_call_missed_outgoing] := $e0e4;
  MaterialDesignCodePoint[md_call_received] := $e0b5;
  MaterialDesignCodePoint[md_call_split] := $e0b6;
  MaterialDesignCodePoint[md_call_to_action] := $e06c;
  MaterialDesignCodePoint[md_camera] := $e3af;
  MaterialDesignCodePoint[md_camera_alt] := $e3b0;
  MaterialDesignCodePoint[md_camera_enhance] := $e8fc;
  MaterialDesignCodePoint[md_camera_front] := $e3b1;
  MaterialDesignCodePoint[md_camera_rear] := $e3b2;
  MaterialDesignCodePoint[md_camera_roll] := $e3b3;
  MaterialDesignCodePoint[md_cancel] := $e5c9;
  MaterialDesignCodePoint[md_card_giftcard] := $e8f6;
  MaterialDesignCodePoint[md_card_membership] := $e8f7;
  MaterialDesignCodePoint[md_card_travel] := $e8f8;
  MaterialDesignCodePoint[md_casino] := $eb40;
  MaterialDesignCodePoint[md_cast] := $e307;
  MaterialDesignCodePoint[md_cast_connected] := $e308;
  MaterialDesignCodePoint[md_center_focus_strong] := $e3b4;
  MaterialDesignCodePoint[md_center_focus_weak] := $e3b5;
  MaterialDesignCodePoint[md_change_history] := $e86b;
  MaterialDesignCodePoint[md_chat] := $e0b7;
  MaterialDesignCodePoint[md_chat_bubble] := $e0ca;
  MaterialDesignCodePoint[md_chat_bubble_outline] := $e0cb;
  MaterialDesignCodePoint[md_check] := $e5ca;
  MaterialDesignCodePoint[md_check_box] := $e834;
  MaterialDesignCodePoint[md_check_box_outline_blank] := $e835;
  MaterialDesignCodePoint[md_check_circle] := $e86c;
  MaterialDesignCodePoint[md_chevron_left] := $e5cb;
  MaterialDesignCodePoint[md_chevron_right] := $e5cc;
  MaterialDesignCodePoint[md_child_care] := $eb41;
  MaterialDesignCodePoint[md_child_friendly] := $eb42;
  MaterialDesignCodePoint[md_chrome_reader_mode] := $e86d;
  MaterialDesignCodePoint[md_class] := $e86e;
  MaterialDesignCodePoint[md_clear] := $e14c;
  MaterialDesignCodePoint[md_clear_all] := $e0b8;
  MaterialDesignCodePoint[md_close] := $e5cd;
  MaterialDesignCodePoint[md_closed_caption] := $e01c;
  MaterialDesignCodePoint[md_cloud] := $e2bd;
  MaterialDesignCodePoint[md_cloud_circle] := $e2be;
  MaterialDesignCodePoint[md_cloud_done] := $e2bf;
  MaterialDesignCodePoint[md_cloud_download] := $e2c0;
  MaterialDesignCodePoint[md_cloud_off] := $e2c1;
  MaterialDesignCodePoint[md_cloud_queue] := $e2c2;
  MaterialDesignCodePoint[md_cloud_upload] := $e2c3;
  MaterialDesignCodePoint[md_code] := $e86f;
  MaterialDesignCodePoint[md_collections] := $e3b6;
  MaterialDesignCodePoint[md_collections_bookmark] := $e431;
  MaterialDesignCodePoint[md_color_lens] := $e3b7;
  MaterialDesignCodePoint[md_colorize] := $e3b8;
  MaterialDesignCodePoint[md_comment] := $e0b9;
  MaterialDesignCodePoint[md_compare] := $e3b9;
  MaterialDesignCodePoint[md_compare_arrows] := $e915;
  MaterialDesignCodePoint[md_computer] := $e30a;
  MaterialDesignCodePoint[md_confirmation_number] := $e638;
  MaterialDesignCodePoint[md_contact_mail] := $e0d0;
  MaterialDesignCodePoint[md_contact_phone] := $e0cf;
  MaterialDesignCodePoint[md_contacts] := $e0ba;
  MaterialDesignCodePoint[md_content_copy] := $e14d;
  MaterialDesignCodePoint[md_content_cut] := $e14e;
  MaterialDesignCodePoint[md_content_paste] := $e14f;
  MaterialDesignCodePoint[md_control_point] := $e3ba;
  MaterialDesignCodePoint[md_control_point_duplicate] := $e3bb;
  MaterialDesignCodePoint[md_copyright] := $e90c;
  MaterialDesignCodePoint[md_create] := $e150;
  MaterialDesignCodePoint[md_create_new_folder] := $e2cc;
  MaterialDesignCodePoint[md_credit_card] := $e870;
  MaterialDesignCodePoint[md_crop] := $e3be;
  MaterialDesignCodePoint[md_crop_16_9] := $e3bc;
  MaterialDesignCodePoint[md_crop_3_2] := $e3bd;
  MaterialDesignCodePoint[md_crop_5_4] := $e3bf;
  MaterialDesignCodePoint[md_crop_7_5] := $e3c0;
  MaterialDesignCodePoint[md_crop_din] := $e3c1;
  MaterialDesignCodePoint[md_crop_free] := $e3c2;
  MaterialDesignCodePoint[md_crop_landscape] := $e3c3;
  MaterialDesignCodePoint[md_crop_original] := $e3c4;
  MaterialDesignCodePoint[md_crop_portrait] := $e3c5;
  MaterialDesignCodePoint[md_crop_rotate] := $e437;
  MaterialDesignCodePoint[md_crop_square] := $e3c6;
  MaterialDesignCodePoint[md_dashboard] := $e871;
  MaterialDesignCodePoint[md_data_usage] := $e1af;
  MaterialDesignCodePoint[md_date_range] := $e916;
  MaterialDesignCodePoint[md_dehaze] := $e3c7;
  MaterialDesignCodePoint[md_delete] := $e872;
  MaterialDesignCodePoint[md_delete_forever] := $e92b;
  MaterialDesignCodePoint[md_delete_sweep] := $e16c;
  MaterialDesignCodePoint[md_description] := $e873;
  MaterialDesignCodePoint[md_desktop_mac] := $e30b;
  MaterialDesignCodePoint[md_desktop_windows] := $e30c;
  MaterialDesignCodePoint[md_details] := $e3c8;
  MaterialDesignCodePoint[md_developer_board] := $e30d;
  MaterialDesignCodePoint[md_developer_mode] := $e1b0;
  MaterialDesignCodePoint[md_device_hub] := $e335;
  MaterialDesignCodePoint[md_devices] := $e1b1;
  MaterialDesignCodePoint[md_devices_other] := $e337;
  MaterialDesignCodePoint[md_dialer_sip] := $e0bb;
  MaterialDesignCodePoint[md_dialpad] := $e0bc;
  MaterialDesignCodePoint[md_directions] := $e52e;
  MaterialDesignCodePoint[md_directions_bike] := $e52f;
  MaterialDesignCodePoint[md_directions_boat] := $e532;
  MaterialDesignCodePoint[md_directions_bus] := $e530;
  MaterialDesignCodePoint[md_directions_car] := $e531;
  MaterialDesignCodePoint[md_directions_railway] := $e534;
  MaterialDesignCodePoint[md_directions_run] := $e566;
  MaterialDesignCodePoint[md_directions_subway] := $e533;
  MaterialDesignCodePoint[md_directions_transit] := $e535;
  MaterialDesignCodePoint[md_directions_walk] := $e536;
  MaterialDesignCodePoint[md_disc_full] := $e610;
  MaterialDesignCodePoint[md_dns] := $e875;
  MaterialDesignCodePoint[md_do_not_disturb] := $e612;
  MaterialDesignCodePoint[md_do_not_disturb_alt] := $e611;
  MaterialDesignCodePoint[md_do_not_disturb_off] := $e643;
  MaterialDesignCodePoint[md_do_not_disturb_on] := $e644;
  MaterialDesignCodePoint[md_dock] := $e30e;
  MaterialDesignCodePoint[md_domain] := $e7ee;
  MaterialDesignCodePoint[md_done] := $e876;
  MaterialDesignCodePoint[md_done_all] := $e877;
  MaterialDesignCodePoint[md_donut_large] := $e917;
  MaterialDesignCodePoint[md_donut_small] := $e918;
  MaterialDesignCodePoint[md_drafts] := $e151;
  MaterialDesignCodePoint[md_drag_handle] := $e25d;
  MaterialDesignCodePoint[md_drive_eta] := $e613;
  MaterialDesignCodePoint[md_dvr] := $e1b2;
  MaterialDesignCodePoint[md_edit] := $e3c9;
  MaterialDesignCodePoint[md_edit_location] := $e568;
  MaterialDesignCodePoint[md_eject] := $e8fb;
  MaterialDesignCodePoint[md_email] := $e0be;
  MaterialDesignCodePoint[md_enhanced_encryption] := $e63f;
  MaterialDesignCodePoint[md_equalizer] := $e01d;
  MaterialDesignCodePoint[md_error] := $e000;
  MaterialDesignCodePoint[md_error_outline] := $e001;
  MaterialDesignCodePoint[md_euro_symbol] := $e926;
  MaterialDesignCodePoint[md_ev_station] := $e56d;
  MaterialDesignCodePoint[md_event] := $e878;
  MaterialDesignCodePoint[md_event_available] := $e614;
  MaterialDesignCodePoint[md_event_busy] := $e615;
  MaterialDesignCodePoint[md_event_note] := $e616;
  MaterialDesignCodePoint[md_event_seat] := $e903;
  MaterialDesignCodePoint[md_exit_to_app] := $e879;
  MaterialDesignCodePoint[md_expand_less] := $e5ce;
  MaterialDesignCodePoint[md_expand_more] := $e5cf;
  MaterialDesignCodePoint[md_explicit] := $e01e;
  MaterialDesignCodePoint[md_explore] := $e87a;
  MaterialDesignCodePoint[md_exposure] := $e3ca;
  MaterialDesignCodePoint[md_exposure_neg_1] := $e3cb;
  MaterialDesignCodePoint[md_exposure_neg_2] := $e3cc;
  MaterialDesignCodePoint[md_exposure_plus_1] := $e3cd;
  MaterialDesignCodePoint[md_exposure_plus_2] := $e3ce;
  MaterialDesignCodePoint[md_exposure_zero] := $e3cf;
  MaterialDesignCodePoint[md_extension] := $e87b;
  MaterialDesignCodePoint[md_face] := $e87c;
  MaterialDesignCodePoint[md_fast_forward] := $e01f;
  MaterialDesignCodePoint[md_fast_rewind] := $e020;
  MaterialDesignCodePoint[md_favorite] := $e87d;
  MaterialDesignCodePoint[md_favorite_border] := $e87e;
  MaterialDesignCodePoint[md_featured_play_list] := $e06d;
  MaterialDesignCodePoint[md_featured_video] := $e06e;
  MaterialDesignCodePoint[md_feedback] := $e87f;
  MaterialDesignCodePoint[md_fiber_dvr] := $e05d;
  MaterialDesignCodePoint[md_fiber_manual_record] := $e061;
  MaterialDesignCodePoint[md_fiber_new] := $e05e;
  MaterialDesignCodePoint[md_fiber_pin] := $e06a;
  MaterialDesignCodePoint[md_fiber_smart_record] := $e062;
  MaterialDesignCodePoint[md_file_download] := $e2c4;
  MaterialDesignCodePoint[md_file_upload] := $e2c6;
  MaterialDesignCodePoint[md_filter] := $e3d3;
  MaterialDesignCodePoint[md_filter_1] := $e3d0;
  MaterialDesignCodePoint[md_filter_2] := $e3d1;
  MaterialDesignCodePoint[md_filter_3] := $e3d2;
  MaterialDesignCodePoint[md_filter_4] := $e3d4;
  MaterialDesignCodePoint[md_filter_5] := $e3d5;
  MaterialDesignCodePoint[md_filter_6] := $e3d6;
  MaterialDesignCodePoint[md_filter_7] := $e3d7;
  MaterialDesignCodePoint[md_filter_8] := $e3d8;
  MaterialDesignCodePoint[md_filter_9] := $e3d9;
  MaterialDesignCodePoint[md_filter_9_plus] := $e3da;
  MaterialDesignCodePoint[md_filter_b_and_w] := $e3db;
  MaterialDesignCodePoint[md_filter_center_focus] := $e3dc;
  MaterialDesignCodePoint[md_filter_drama] := $e3dd;
  MaterialDesignCodePoint[md_filter_frames] := $e3de;
  MaterialDesignCodePoint[md_filter_hdr] := $e3df;
  MaterialDesignCodePoint[md_filter_list] := $e152;
  MaterialDesignCodePoint[md_filter_none] := $e3e0;
  MaterialDesignCodePoint[md_filter_tilt_shift] := $e3e2;
  MaterialDesignCodePoint[md_filter_vintage] := $e3e3;
  MaterialDesignCodePoint[md_find_in_page] := $e880;
  MaterialDesignCodePoint[md_find_replace] := $e881;
  MaterialDesignCodePoint[md_fingerprint] := $e90d;
  MaterialDesignCodePoint[md_first_page] := $e5dc;
  MaterialDesignCodePoint[md_fitness_center] := $eb43;
  MaterialDesignCodePoint[md_flag] := $e153;
  MaterialDesignCodePoint[md_flare] := $e3e4;
  MaterialDesignCodePoint[md_flash_auto] := $e3e5;
  MaterialDesignCodePoint[md_flash_off] := $e3e6;
  MaterialDesignCodePoint[md_flash_on] := $e3e7;
  MaterialDesignCodePoint[md_flight] := $e539;
  MaterialDesignCodePoint[md_flight_land] := $e904;
  MaterialDesignCodePoint[md_flight_takeoff] := $e905;
  MaterialDesignCodePoint[md_flip] := $e3e8;
  MaterialDesignCodePoint[md_flip_to_back] := $e882;
  MaterialDesignCodePoint[md_flip_to_front] := $e883;
  MaterialDesignCodePoint[md_folder] := $e2c7;
  MaterialDesignCodePoint[md_folder_open] := $e2c8;
  MaterialDesignCodePoint[md_folder_shared] := $e2c9;
  MaterialDesignCodePoint[md_folder_special] := $e617;
  MaterialDesignCodePoint[md_font_download] := $e167;
  MaterialDesignCodePoint[md_format_align_center] := $e234;
  MaterialDesignCodePoint[md_format_align_justify] := $e235;
  MaterialDesignCodePoint[md_format_align_left] := $e236;
  MaterialDesignCodePoint[md_format_align_right] := $e237;
  MaterialDesignCodePoint[md_format_bold] := $e238;
  MaterialDesignCodePoint[md_format_clear] := $e239;
  MaterialDesignCodePoint[md_format_color_fill] := $e23a;
  MaterialDesignCodePoint[md_format_color_reset] := $e23b;
  MaterialDesignCodePoint[md_format_color_text] := $e23c;
  MaterialDesignCodePoint[md_format_indent_decrease] := $e23d;
  MaterialDesignCodePoint[md_format_indent_increase] := $e23e;
  MaterialDesignCodePoint[md_format_italic] := $e23f;
  MaterialDesignCodePoint[md_format_line_spacing] := $e240;
  MaterialDesignCodePoint[md_format_list_bulleted] := $e241;
  MaterialDesignCodePoint[md_format_list_numbered] := $e242;
  MaterialDesignCodePoint[md_format_paint] := $e243;
  MaterialDesignCodePoint[md_format_quote] := $e244;
  MaterialDesignCodePoint[md_format_shapes] := $e25e;
  MaterialDesignCodePoint[md_format_size] := $e245;
  MaterialDesignCodePoint[md_format_strikethrough] := $e246;
  MaterialDesignCodePoint[md_format_textdirection_l_to_r] := $e247;
  MaterialDesignCodePoint[md_format_textdirection_r_to_l] := $e248;
  MaterialDesignCodePoint[md_format_underlined] := $e249;
  MaterialDesignCodePoint[md_forum] := $e0bf;
  MaterialDesignCodePoint[md_forward] := $e154;
  MaterialDesignCodePoint[md_forward_10] := $e056;
  MaterialDesignCodePoint[md_forward_30] := $e057;
  MaterialDesignCodePoint[md_forward_5] := $e058;
  MaterialDesignCodePoint[md_free_breakfast] := $eb44;
  MaterialDesignCodePoint[md_fullscreen] := $e5d0;
  MaterialDesignCodePoint[md_fullscreen_exit] := $e5d1;
  MaterialDesignCodePoint[md_functions] := $e24a;
  MaterialDesignCodePoint[md_g_translate] := $e927;
  MaterialDesignCodePoint[md_gamepad] := $e30f;
  MaterialDesignCodePoint[md_games] := $e021;
  MaterialDesignCodePoint[md_gavel] := $e90e;
  MaterialDesignCodePoint[md_gesture] := $e155;
  MaterialDesignCodePoint[md_get_app] := $e884;
  MaterialDesignCodePoint[md_gif] := $e908;
  MaterialDesignCodePoint[md_golf_course] := $eb45;
  MaterialDesignCodePoint[md_gps_fixed] := $e1b3;
  MaterialDesignCodePoint[md_gps_not_fixed] := $e1b4;
  MaterialDesignCodePoint[md_gps_off] := $e1b5;
  MaterialDesignCodePoint[md_grade] := $e885;
  MaterialDesignCodePoint[md_gradient] := $e3e9;
  MaterialDesignCodePoint[md_grain] := $e3ea;
  MaterialDesignCodePoint[md_graphic_eq] := $e1b8;
  MaterialDesignCodePoint[md_grid_off] := $e3eb;
  MaterialDesignCodePoint[md_grid_on] := $e3ec;
  MaterialDesignCodePoint[md_group] := $e7ef;
  MaterialDesignCodePoint[md_group_add] := $e7f0;
  MaterialDesignCodePoint[md_group_work] := $e886;
  MaterialDesignCodePoint[md_hd] := $e052;
  MaterialDesignCodePoint[md_hdr_off] := $e3ed;
  MaterialDesignCodePoint[md_hdr_on] := $e3ee;
  MaterialDesignCodePoint[md_hdr_strong] := $e3f1;
  MaterialDesignCodePoint[md_hdr_weak] := $e3f2;
  MaterialDesignCodePoint[md_headset] := $e310;
  MaterialDesignCodePoint[md_headset_mic] := $e311;
  MaterialDesignCodePoint[md_healing] := $e3f3;
  MaterialDesignCodePoint[md_hearing] := $e023;
  MaterialDesignCodePoint[md_help] := $e887;
  MaterialDesignCodePoint[md_help_outline] := $e8fd;
  MaterialDesignCodePoint[md_high_quality] := $e024;
  MaterialDesignCodePoint[md_highlight] := $e25f;
  MaterialDesignCodePoint[md_highlight_off] := $e888;
  MaterialDesignCodePoint[md_history] := $e889;
  MaterialDesignCodePoint[md_home] := $e88a;
  MaterialDesignCodePoint[md_hot_tub] := $eb46;
  MaterialDesignCodePoint[md_hotel] := $e53a;
  MaterialDesignCodePoint[md_hourglass_empty] := $e88b;
  MaterialDesignCodePoint[md_hourglass_full] := $e88c;
  MaterialDesignCodePoint[md_http] := $e902;
  MaterialDesignCodePoint[md_https] := $e88d;
  MaterialDesignCodePoint[md_image] := $e3f4;
  MaterialDesignCodePoint[md_image_aspect_ratio] := $e3f5;
  MaterialDesignCodePoint[md_import_contacts] := $e0e0;
  MaterialDesignCodePoint[md_import_export] := $e0c3;
  MaterialDesignCodePoint[md_important_devices] := $e912;
  MaterialDesignCodePoint[md_inbox] := $e156;
  MaterialDesignCodePoint[md_indeterminate_check_box] := $e909;
  MaterialDesignCodePoint[md_info] := $e88e;
  MaterialDesignCodePoint[md_info_outline] := $e88f;
  MaterialDesignCodePoint[md_input] := $e890;
  MaterialDesignCodePoint[md_insert_chart] := $e24b;
  MaterialDesignCodePoint[md_insert_comment] := $e24c;
  MaterialDesignCodePoint[md_insert_drive_file] := $e24d;
  MaterialDesignCodePoint[md_insert_emoticon] := $e24e;
  MaterialDesignCodePoint[md_insert_invitation] := $e24f;
  MaterialDesignCodePoint[md_insert_link] := $e250;
  MaterialDesignCodePoint[md_insert_photo] := $e251;
  MaterialDesignCodePoint[md_invert_colors] := $e891;
  MaterialDesignCodePoint[md_invert_colors_off] := $e0c4;
  MaterialDesignCodePoint[md_iso] := $e3f6;
  MaterialDesignCodePoint[md_keyboard] := $e312;
  MaterialDesignCodePoint[md_keyboard_arrow_down] := $e313;
  MaterialDesignCodePoint[md_keyboard_arrow_left] := $e314;
  MaterialDesignCodePoint[md_keyboard_arrow_right] := $e315;
  MaterialDesignCodePoint[md_keyboard_arrow_up] := $e316;
  MaterialDesignCodePoint[md_keyboard_backspace] := $e317;
  MaterialDesignCodePoint[md_keyboard_capslock] := $e318;
  MaterialDesignCodePoint[md_keyboard_hide] := $e31a;
  MaterialDesignCodePoint[md_keyboard_return] := $e31b;
  MaterialDesignCodePoint[md_keyboard_tab] := $e31c;
  MaterialDesignCodePoint[md_keyboard_voice] := $e31d;
  MaterialDesignCodePoint[md_kitchen] := $eb47;
  MaterialDesignCodePoint[md_label] := $e892;
  MaterialDesignCodePoint[md_label_outline] := $e893;
  MaterialDesignCodePoint[md_landscape] := $e3f7;
  MaterialDesignCodePoint[md_language] := $e894;
  MaterialDesignCodePoint[md_laptop] := $e31e;
  MaterialDesignCodePoint[md_laptop_chromebook] := $e31f;
  MaterialDesignCodePoint[md_laptop_mac] := $e320;
  MaterialDesignCodePoint[md_laptop_windows] := $e321;
  MaterialDesignCodePoint[md_last_page] := $e5dd;
  MaterialDesignCodePoint[md_launch] := $e895;
  MaterialDesignCodePoint[md_layers] := $e53b;
  MaterialDesignCodePoint[md_layers_clear] := $e53c;
  MaterialDesignCodePoint[md_leak_add] := $e3f8;
  MaterialDesignCodePoint[md_leak_remove] := $e3f9;
  MaterialDesignCodePoint[md_lens] := $e3fa;
  MaterialDesignCodePoint[md_library_add] := $e02e;
  MaterialDesignCodePoint[md_library_books] := $e02f;
  MaterialDesignCodePoint[md_library_music] := $e030;
  MaterialDesignCodePoint[md_lightbulb_outline] := $e90f;
  MaterialDesignCodePoint[md_line_style] := $e919;
  MaterialDesignCodePoint[md_line_weight] := $e91a;
  MaterialDesignCodePoint[md_linear_scale] := $e260;
  MaterialDesignCodePoint[md_link] := $e157;
  MaterialDesignCodePoint[md_linked_camera] := $e438;
  MaterialDesignCodePoint[md_list] := $e896;
  MaterialDesignCodePoint[md_live_help] := $e0c6;
  MaterialDesignCodePoint[md_live_tv] := $e639;
  MaterialDesignCodePoint[md_local_activity] := $e53f;
  MaterialDesignCodePoint[md_local_airport] := $e53d;
  MaterialDesignCodePoint[md_local_atm] := $e53e;
  MaterialDesignCodePoint[md_local_bar] := $e540;
  MaterialDesignCodePoint[md_local_cafe] := $e541;
  MaterialDesignCodePoint[md_local_car_wash] := $e542;
  MaterialDesignCodePoint[md_local_convenience_store] := $e543;
  MaterialDesignCodePoint[md_local_dining] := $e556;
  MaterialDesignCodePoint[md_local_drink] := $e544;
  MaterialDesignCodePoint[md_local_florist] := $e545;
  MaterialDesignCodePoint[md_local_gas_station] := $e546;
  MaterialDesignCodePoint[md_local_grocery_store] := $e547;
  MaterialDesignCodePoint[md_local_hospital] := $e548;
  MaterialDesignCodePoint[md_local_hotel] := $e549;
  MaterialDesignCodePoint[md_local_laundry_service] := $e54a;
  MaterialDesignCodePoint[md_local_library] := $e54b;
  MaterialDesignCodePoint[md_local_mall] := $e54c;
  MaterialDesignCodePoint[md_local_movies] := $e54d;
  MaterialDesignCodePoint[md_local_offer] := $e54e;
  MaterialDesignCodePoint[md_local_parking] := $e54f;
  MaterialDesignCodePoint[md_local_pharmacy] := $e550;
  MaterialDesignCodePoint[md_local_phone] := $e551;
  MaterialDesignCodePoint[md_local_pizza] := $e552;
  MaterialDesignCodePoint[md_local_play] := $e553;
  MaterialDesignCodePoint[md_local_post_office] := $e554;
  MaterialDesignCodePoint[md_local_printshop] := $e555;
  MaterialDesignCodePoint[md_local_see] := $e557;
  MaterialDesignCodePoint[md_local_shipping] := $e558;
  MaterialDesignCodePoint[md_local_taxi] := $e559;
  MaterialDesignCodePoint[md_location_city] := $e7f1;
  MaterialDesignCodePoint[md_location_disabled] := $e1b6;
  MaterialDesignCodePoint[md_location_off] := $e0c7;
  MaterialDesignCodePoint[md_location_on] := $e0c8;
  MaterialDesignCodePoint[md_location_searching] := $e1b7;
  MaterialDesignCodePoint[md_lock] := $e897;
  MaterialDesignCodePoint[md_lock_open] := $e898;
  MaterialDesignCodePoint[md_lock_outline] := $e899;
  MaterialDesignCodePoint[md_looks] := $e3fc;
  MaterialDesignCodePoint[md_looks_3] := $e3fb;
  MaterialDesignCodePoint[md_looks_4] := $e3fd;
  MaterialDesignCodePoint[md_looks_5] := $e3fe;
  MaterialDesignCodePoint[md_looks_6] := $e3ff;
  MaterialDesignCodePoint[md_looks_one] := $e400;
  MaterialDesignCodePoint[md_looks_two] := $e401;
  MaterialDesignCodePoint[md_loop] := $e028;
  MaterialDesignCodePoint[md_loupe] := $e402;
  MaterialDesignCodePoint[md_low_priority] := $e16d;
  MaterialDesignCodePoint[md_loyalty] := $e89a;
  MaterialDesignCodePoint[md_mail] := $e158;
  MaterialDesignCodePoint[md_mail_outline] := $e0e1;
  MaterialDesignCodePoint[md_map] := $e55b;
  MaterialDesignCodePoint[md_markunread] := $e159;
  MaterialDesignCodePoint[md_markunread_mailbox] := $e89b;
  MaterialDesignCodePoint[md_memory] := $e322;
  MaterialDesignCodePoint[md_menu] := $e5d2;
  MaterialDesignCodePoint[md_merge_type] := $e252;
  MaterialDesignCodePoint[md_message] := $e0c9;
  MaterialDesignCodePoint[md_mic] := $e029;
  MaterialDesignCodePoint[md_mic_none] := $e02a;
  MaterialDesignCodePoint[md_mic_off] := $e02b;
  MaterialDesignCodePoint[md_mms] := $e618;
  MaterialDesignCodePoint[md_mode_comment] := $e253;
  MaterialDesignCodePoint[md_mode_edit] := $e254;
  MaterialDesignCodePoint[md_monetization_on] := $e263;
  MaterialDesignCodePoint[md_money_off] := $e25c;
  MaterialDesignCodePoint[md_monochrome_photos] := $e403;
  MaterialDesignCodePoint[md_mood] := $e7f2;
  MaterialDesignCodePoint[md_mood_bad] := $e7f3;
  MaterialDesignCodePoint[md_more] := $e619;
  MaterialDesignCodePoint[md_more_horiz] := $e5d3;
  MaterialDesignCodePoint[md_more_vert] := $e5d4;
  MaterialDesignCodePoint[md_motorcycle] := $e91b;
  MaterialDesignCodePoint[md_mouse] := $e323;
  MaterialDesignCodePoint[md_move_to_inbox] := $e168;
  MaterialDesignCodePoint[md_movie] := $e02c;
  MaterialDesignCodePoint[md_movie_creation] := $e404;
  MaterialDesignCodePoint[md_movie_filter] := $e43a;
  MaterialDesignCodePoint[md_multiline_chart] := $e6df;
  MaterialDesignCodePoint[md_music_note] := $e405;
  MaterialDesignCodePoint[md_music_video] := $e063;
  MaterialDesignCodePoint[md_my_location] := $e55c;
  MaterialDesignCodePoint[md_nature] := $e406;
  MaterialDesignCodePoint[md_nature_people] := $e407;
  MaterialDesignCodePoint[md_navigate_before] := $e408;
  MaterialDesignCodePoint[md_navigate_next] := $e409;
  MaterialDesignCodePoint[md_navigation] := $e55d;
  MaterialDesignCodePoint[md_near_me] := $e569;
  MaterialDesignCodePoint[md_network_cell] := $e1b9;
  MaterialDesignCodePoint[md_network_check] := $e640;
  MaterialDesignCodePoint[md_network_locked] := $e61a;
  MaterialDesignCodePoint[md_network_wifi] := $e1ba;
  MaterialDesignCodePoint[md_new_releases] := $e031;
  MaterialDesignCodePoint[md_next_week] := $e16a;
  MaterialDesignCodePoint[md_nfc] := $e1bb;
  MaterialDesignCodePoint[md_no_encryption] := $e641;
  MaterialDesignCodePoint[md_no_sim] := $e0cc;
  MaterialDesignCodePoint[md_not_interested] := $e033;
  MaterialDesignCodePoint[md_note] := $e06f;
  MaterialDesignCodePoint[md_note_add] := $e89c;
  MaterialDesignCodePoint[md_notifications] := $e7f4;
  MaterialDesignCodePoint[md_notifications_active] := $e7f7;
  MaterialDesignCodePoint[md_notifications_none] := $e7f5;
  MaterialDesignCodePoint[md_notifications_off] := $e7f6;
  MaterialDesignCodePoint[md_notifications_paused] := $e7f8;
  MaterialDesignCodePoint[md_offline_pin] := $e90a;
  MaterialDesignCodePoint[md_ondemand_video] := $e63a;
  MaterialDesignCodePoint[md_opacity] := $e91c;
  MaterialDesignCodePoint[md_open_in_browser] := $e89d;
  MaterialDesignCodePoint[md_open_in_new] := $e89e;
  MaterialDesignCodePoint[md_open_with] := $e89f;
  MaterialDesignCodePoint[md_pages] := $e7f9;
  MaterialDesignCodePoint[md_pageview] := $e8a0;
  MaterialDesignCodePoint[md_palette] := $e40a;
  MaterialDesignCodePoint[md_pan_tool] := $e925;
  MaterialDesignCodePoint[md_panorama] := $e40b;
  MaterialDesignCodePoint[md_panorama_fish_eye] := $e40c;
  MaterialDesignCodePoint[md_panorama_horizontal] := $e40d;
  MaterialDesignCodePoint[md_panorama_vertical] := $e40e;
  MaterialDesignCodePoint[md_panorama_wide_angle] := $e40f;
  MaterialDesignCodePoint[md_party_mode] := $e7fa;
  MaterialDesignCodePoint[md_pause] := $e034;
  MaterialDesignCodePoint[md_pause_circle_filled] := $e035;
  MaterialDesignCodePoint[md_pause_circle_outline] := $e036;
  MaterialDesignCodePoint[md_payment] := $e8a1;
  MaterialDesignCodePoint[md_people] := $e7fb;
  MaterialDesignCodePoint[md_people_outline] := $e7fc;
  MaterialDesignCodePoint[md_perm_camera_mic] := $e8a2;
  MaterialDesignCodePoint[md_perm_contact_calendar] := $e8a3;
  MaterialDesignCodePoint[md_perm_data_setting] := $e8a4;
  MaterialDesignCodePoint[md_perm_device_information] := $e8a5;
  MaterialDesignCodePoint[md_perm_identity] := $e8a6;
  MaterialDesignCodePoint[md_perm_media] := $e8a7;
  MaterialDesignCodePoint[md_perm_phone_msg] := $e8a8;
  MaterialDesignCodePoint[md_perm_scan_wifi] := $e8a9;
  MaterialDesignCodePoint[md_person] := $e7fd;
  MaterialDesignCodePoint[md_person_add] := $e7fe;
  MaterialDesignCodePoint[md_person_outline] := $e7ff;
  MaterialDesignCodePoint[md_person_pin] := $e55a;
  MaterialDesignCodePoint[md_person_pin_circle] := $e56a;
  MaterialDesignCodePoint[md_personal_video] := $e63b;
  MaterialDesignCodePoint[md_pets] := $e91d;
  MaterialDesignCodePoint[md_phone] := $e0cd;
  MaterialDesignCodePoint[md_phone_android] := $e324;
  MaterialDesignCodePoint[md_phone_bluetooth_speaker] := $e61b;
  MaterialDesignCodePoint[md_phone_forwarded] := $e61c;
  MaterialDesignCodePoint[md_phone_in_talk] := $e61d;
  MaterialDesignCodePoint[md_phone_iphone] := $e325;
  MaterialDesignCodePoint[md_phone_locked] := $e61e;
  MaterialDesignCodePoint[md_phone_missed] := $e61f;
  MaterialDesignCodePoint[md_phone_paused] := $e620;
  MaterialDesignCodePoint[md_phonelink] := $e326;
  MaterialDesignCodePoint[md_phonelink_erase] := $e0db;
  MaterialDesignCodePoint[md_phonelink_lock] := $e0dc;
  MaterialDesignCodePoint[md_phonelink_off] := $e327;
  MaterialDesignCodePoint[md_phonelink_ring] := $e0dd;
  MaterialDesignCodePoint[md_phonelink_setup] := $e0de;
  MaterialDesignCodePoint[md_photo] := $e410;
  MaterialDesignCodePoint[md_photo_album] := $e411;
  MaterialDesignCodePoint[md_photo_camera] := $e412;
  MaterialDesignCodePoint[md_photo_filter] := $e43b;
  MaterialDesignCodePoint[md_photo_library] := $e413;
  MaterialDesignCodePoint[md_photo_size_select_actual] := $e432;
  MaterialDesignCodePoint[md_photo_size_select_large] := $e433;
  MaterialDesignCodePoint[md_photo_size_select_small] := $e434;
  MaterialDesignCodePoint[md_picture_as_pdf] := $e415;
  MaterialDesignCodePoint[md_picture_in_picture] := $e8aa;
  MaterialDesignCodePoint[md_picture_in_picture_alt] := $e911;
  MaterialDesignCodePoint[md_pie_chart] := $e6c4;
  MaterialDesignCodePoint[md_pie_chart_outlined] := $e6c5;
  MaterialDesignCodePoint[md_pin_drop] := $e55e;
  MaterialDesignCodePoint[md_place] := $e55f;
  MaterialDesignCodePoint[md_play_arrow] := $e037;
  MaterialDesignCodePoint[md_play_circle_filled] := $e038;
  MaterialDesignCodePoint[md_play_circle_outline] := $e039;
  MaterialDesignCodePoint[md_play_for_work] := $e906;
  MaterialDesignCodePoint[md_playlist_add] := $e03b;
  MaterialDesignCodePoint[md_playlist_add_check] := $e065;
  MaterialDesignCodePoint[md_playlist_play] := $e05f;
  MaterialDesignCodePoint[md_plus_one] := $e800;
  MaterialDesignCodePoint[md_poll] := $e801;
  MaterialDesignCodePoint[md_polymer] := $e8ab;
  MaterialDesignCodePoint[md_pool] := $eb48;
  MaterialDesignCodePoint[md_portable_wifi_off] := $e0ce;
  MaterialDesignCodePoint[md_portrait] := $e416;
  MaterialDesignCodePoint[md_power] := $e63c;
  MaterialDesignCodePoint[md_power_input] := $e336;
  MaterialDesignCodePoint[md_power_settings_new] := $e8ac;
  MaterialDesignCodePoint[md_pregnant_woman] := $e91e;
  MaterialDesignCodePoint[md_present_to_all] := $e0df;
  MaterialDesignCodePoint[md_print] := $e8ad;
  MaterialDesignCodePoint[md_priority_high] := $e645;
  MaterialDesignCodePoint[md_public] := $e80b;
  MaterialDesignCodePoint[md_publish] := $e255;
  MaterialDesignCodePoint[md_query_builder] := $e8ae;
  MaterialDesignCodePoint[md_question_answer] := $e8af;
  MaterialDesignCodePoint[md_queue] := $e03c;
  MaterialDesignCodePoint[md_queue_music] := $e03d;
  MaterialDesignCodePoint[md_queue_play_next] := $e066;
  MaterialDesignCodePoint[md_radio] := $e03e;
  MaterialDesignCodePoint[md_radio_button_checked] := $e837;
  MaterialDesignCodePoint[md_radio_button_unchecked] := $e836;
  MaterialDesignCodePoint[md_rate_review] := $e560;
  MaterialDesignCodePoint[md_receipt] := $e8b0;
  MaterialDesignCodePoint[md_recent_actors] := $e03f;
  MaterialDesignCodePoint[md_record_voice_over] := $e91f;
  MaterialDesignCodePoint[md_redeem] := $e8b1;
  MaterialDesignCodePoint[md_redo] := $e15a;
  MaterialDesignCodePoint[md_refresh] := $e5d5;
  MaterialDesignCodePoint[md_remove] := $e15b;
  MaterialDesignCodePoint[md_remove_circle] := $e15c;
  MaterialDesignCodePoint[md_remove_circle_outline] := $e15d;
  MaterialDesignCodePoint[md_remove_from_queue] := $e067;
  MaterialDesignCodePoint[md_remove_red_eye] := $e417;
  MaterialDesignCodePoint[md_remove_shopping_cart] := $e928;
  MaterialDesignCodePoint[md_reorder] := $e8fe;
  MaterialDesignCodePoint[md_repeat] := $e040;
  MaterialDesignCodePoint[md_repeat_one] := $e041;
  MaterialDesignCodePoint[md_replay] := $e042;
  MaterialDesignCodePoint[md_replay_10] := $e059;
  MaterialDesignCodePoint[md_replay_30] := $e05a;
  MaterialDesignCodePoint[md_replay_5] := $e05b;
  MaterialDesignCodePoint[md_reply] := $e15e;
  MaterialDesignCodePoint[md_reply_all] := $e15f;
  MaterialDesignCodePoint[md_report] := $e160;
  MaterialDesignCodePoint[md_report_problem] := $e8b2;
  MaterialDesignCodePoint[md_restaurant] := $e56c;
  MaterialDesignCodePoint[md_restaurant_menu] := $e561;
  MaterialDesignCodePoint[md_restore] := $e8b3;
  MaterialDesignCodePoint[md_restore_page] := $e929;
  MaterialDesignCodePoint[md_ring_volume] := $e0d1;
  MaterialDesignCodePoint[md_room] := $e8b4;
  MaterialDesignCodePoint[md_room_service] := $eb49;
  MaterialDesignCodePoint[md_rotate_90_degrees_ccw] := $e418;
  MaterialDesignCodePoint[md_rotate_left] := $e419;
  MaterialDesignCodePoint[md_rotate_right] := $e41a;
  MaterialDesignCodePoint[md_rounded_corner] := $e920;
  MaterialDesignCodePoint[md_router] := $e328;
  MaterialDesignCodePoint[md_rowing] := $e921;
  MaterialDesignCodePoint[md_rss_feed] := $e0e5;
  MaterialDesignCodePoint[md_rv_hookup] := $e642;
  MaterialDesignCodePoint[md_satellite] := $e562;
  MaterialDesignCodePoint[md_save] := $e161;
  MaterialDesignCodePoint[md_scanner] := $e329;
  MaterialDesignCodePoint[md_schedule] := $e8b5;
  MaterialDesignCodePoint[md_school] := $e80c;
  MaterialDesignCodePoint[md_screen_lock_landscape] := $e1be;
  MaterialDesignCodePoint[md_screen_lock_portrait] := $e1bf;
  MaterialDesignCodePoint[md_screen_lock_rotation] := $e1c0;
  MaterialDesignCodePoint[md_screen_rotation] := $e1c1;
  MaterialDesignCodePoint[md_screen_share] := $e0e2;
  MaterialDesignCodePoint[md_sd_card] := $e623;
  MaterialDesignCodePoint[md_sd_storage] := $e1c2;
  MaterialDesignCodePoint[md_search] := $e8b6;
  MaterialDesignCodePoint[md_security] := $e32a;
  MaterialDesignCodePoint[md_select_all] := $e162;
  MaterialDesignCodePoint[md_send] := $e163;
  MaterialDesignCodePoint[md_sentiment_dissatisfied] := $e811;
  MaterialDesignCodePoint[md_sentiment_neutral] := $e812;
  MaterialDesignCodePoint[md_sentiment_satisfied] := $e813;
  MaterialDesignCodePoint[md_sentiment_very_dissatisfied] := $e814;
  MaterialDesignCodePoint[md_sentiment_very_satisfied] := $e815;
  MaterialDesignCodePoint[md_settings] := $e8b8;
  MaterialDesignCodePoint[md_settings_applications] := $e8b9;
  MaterialDesignCodePoint[md_settings_backup_restore] := $e8ba;
  MaterialDesignCodePoint[md_settings_bluetooth] := $e8bb;
  MaterialDesignCodePoint[md_settings_brightness] := $e8bd;
  MaterialDesignCodePoint[md_settings_cell] := $e8bc;
  MaterialDesignCodePoint[md_settings_ethernet] := $e8be;
  MaterialDesignCodePoint[md_settings_input_antenna] := $e8bf;
  MaterialDesignCodePoint[md_settings_input_component] := $e8c0;
  MaterialDesignCodePoint[md_settings_input_composite] := $e8c1;
  MaterialDesignCodePoint[md_settings_input_hdmi] := $e8c2;
  MaterialDesignCodePoint[md_settings_input_svideo] := $e8c3;
  MaterialDesignCodePoint[md_settings_overscan] := $e8c4;
  MaterialDesignCodePoint[md_settings_phone] := $e8c5;
  MaterialDesignCodePoint[md_settings_power] := $e8c6;
  MaterialDesignCodePoint[md_settings_remote] := $e8c7;
  MaterialDesignCodePoint[md_settings_system_daydream] := $e1c3;
  MaterialDesignCodePoint[md_settings_voice] := $e8c8;
  MaterialDesignCodePoint[md_share] := $e80d;
  MaterialDesignCodePoint[md_shop] := $e8c9;
  MaterialDesignCodePoint[md_shop_two] := $e8ca;
  MaterialDesignCodePoint[md_shopping_basket] := $e8cb;
  MaterialDesignCodePoint[md_shopping_cart] := $e8cc;
  MaterialDesignCodePoint[md_short_text] := $e261;
  MaterialDesignCodePoint[md_show_chart] := $e6e1;
  MaterialDesignCodePoint[md_shuffle] := $e043;
  MaterialDesignCodePoint[md_signal_cellular_4_bar] := $e1c8;
  MaterialDesignCodePoint[md_signal_cellular_connected_no_internet_4_bar] := $e1cd;
  MaterialDesignCodePoint[md_signal_cellular_no_sim] := $e1ce;
  MaterialDesignCodePoint[md_signal_cellular_null] := $e1cf;
  MaterialDesignCodePoint[md_signal_cellular_off] := $e1d0;
  MaterialDesignCodePoint[md_signal_wifi_4_bar] := $e1d8;
  MaterialDesignCodePoint[md_signal_wifi_4_bar_lock] := $e1d9;
  MaterialDesignCodePoint[md_signal_wifi_off] := $e1da;
  MaterialDesignCodePoint[md_sim_card] := $e32b;
  MaterialDesignCodePoint[md_sim_card_alert] := $e624;
  MaterialDesignCodePoint[md_skip_next] := $e044;
  MaterialDesignCodePoint[md_skip_previous] := $e045;
  MaterialDesignCodePoint[md_slideshow] := $e41b;
  MaterialDesignCodePoint[md_slow_motion_video] := $e068;
  MaterialDesignCodePoint[md_smartphone] := $e32c;
  MaterialDesignCodePoint[md_smoke_free] := $eb4a;
  MaterialDesignCodePoint[md_smoking_rooms] := $eb4b;
  MaterialDesignCodePoint[md_sms] := $e625;
  MaterialDesignCodePoint[md_sms_failed] := $e626;
  MaterialDesignCodePoint[md_snooze] := $e046;
  MaterialDesignCodePoint[md_sort] := $e164;
  MaterialDesignCodePoint[md_sort_by_alpha] := $e053;
  MaterialDesignCodePoint[md_spa] := $eb4c;
  MaterialDesignCodePoint[md_space_bar] := $e256;
  MaterialDesignCodePoint[md_speaker] := $e32d;
  MaterialDesignCodePoint[md_speaker_group] := $e32e;
  MaterialDesignCodePoint[md_speaker_notes] := $e8cd;
  MaterialDesignCodePoint[md_speaker_notes_off] := $e92a;
  MaterialDesignCodePoint[md_speaker_phone] := $e0d2;
  MaterialDesignCodePoint[md_spellcheck] := $e8ce;
  MaterialDesignCodePoint[md_star] := $e838;
  MaterialDesignCodePoint[md_star_border] := $e83a;
  MaterialDesignCodePoint[md_star_half] := $e839;
  MaterialDesignCodePoint[md_stars] := $e8d0;
  MaterialDesignCodePoint[md_stay_current_landscape] := $e0d3;
  MaterialDesignCodePoint[md_stay_current_portrait] := $e0d4;
  MaterialDesignCodePoint[md_stay_primary_landscape] := $e0d5;
  MaterialDesignCodePoint[md_stay_primary_portrait] := $e0d6;
  MaterialDesignCodePoint[md_stop] := $e047;
  MaterialDesignCodePoint[md_stop_screen_share] := $e0e3;
  MaterialDesignCodePoint[md_storage] := $e1db;
  MaterialDesignCodePoint[md_store] := $e8d1;
  MaterialDesignCodePoint[md_store_mall_directory] := $e563;
  MaterialDesignCodePoint[md_straighten] := $e41c;
  MaterialDesignCodePoint[md_streetview] := $e56e;
  MaterialDesignCodePoint[md_strikethrough_s] := $e257;
  MaterialDesignCodePoint[md_style] := $e41d;
  MaterialDesignCodePoint[md_subdirectory_arrow_left] := $e5d9;
  MaterialDesignCodePoint[md_subdirectory_arrow_right] := $e5da;
  MaterialDesignCodePoint[md_subject] := $e8d2;
  MaterialDesignCodePoint[md_subscriptions] := $e064;
  MaterialDesignCodePoint[md_subtitles] := $e048;
  MaterialDesignCodePoint[md_subway] := $e56f;
  MaterialDesignCodePoint[md_supervisor_account] := $e8d3;
  MaterialDesignCodePoint[md_surround_sound] := $e049;
  MaterialDesignCodePoint[md_swap_calls] := $e0d7;
  MaterialDesignCodePoint[md_swap_horiz] := $e8d4;
  MaterialDesignCodePoint[md_swap_vert] := $e8d5;
  MaterialDesignCodePoint[md_swap_vertical_circle] := $e8d6;
  MaterialDesignCodePoint[md_switch_camera] := $e41e;
  MaterialDesignCodePoint[md_switch_video] := $e41f;
  MaterialDesignCodePoint[md_sync] := $e627;
  MaterialDesignCodePoint[md_sync_disabled] := $e628;
  MaterialDesignCodePoint[md_sync_problem] := $e629;
  MaterialDesignCodePoint[md_system_update] := $e62a;
  MaterialDesignCodePoint[md_system_update_alt] := $e8d7;
  MaterialDesignCodePoint[md_tab] := $e8d8;
  MaterialDesignCodePoint[md_tab_unselected] := $e8d9;
  MaterialDesignCodePoint[md_tablet] := $e32f;
  MaterialDesignCodePoint[md_tablet_android] := $e330;
  MaterialDesignCodePoint[md_tablet_mac] := $e331;
  MaterialDesignCodePoint[md_tag_faces] := $e420;
  MaterialDesignCodePoint[md_tap_and_play] := $e62b;
  MaterialDesignCodePoint[md_terrain] := $e564;
  MaterialDesignCodePoint[md_text_fields] := $e262;
  MaterialDesignCodePoint[md_text_format] := $e165;
  MaterialDesignCodePoint[md_textsms] := $e0d8;
  MaterialDesignCodePoint[md_texture] := $e421;
  MaterialDesignCodePoint[md_theaters] := $e8da;
  MaterialDesignCodePoint[md_thumb_down] := $e8db;
  MaterialDesignCodePoint[md_thumb_up] := $e8dc;
  MaterialDesignCodePoint[md_thumbs_up_down] := $e8dd;
  MaterialDesignCodePoint[md_time_to_leave] := $e62c;
  MaterialDesignCodePoint[md_timelapse] := $e422;
  MaterialDesignCodePoint[md_timeline] := $e922;
  MaterialDesignCodePoint[md_timer] := $e425;
  MaterialDesignCodePoint[md_timer_10] := $e423;
  MaterialDesignCodePoint[md_timer_3] := $e424;
  MaterialDesignCodePoint[md_timer_off] := $e426;
  MaterialDesignCodePoint[md_title] := $e264;
  MaterialDesignCodePoint[md_toc] := $e8de;
  MaterialDesignCodePoint[md_today] := $e8df;
  MaterialDesignCodePoint[md_toll] := $e8e0;
  MaterialDesignCodePoint[md_tonality] := $e427;
  MaterialDesignCodePoint[md_touch_app] := $e913;
  MaterialDesignCodePoint[md_toys] := $e332;
  MaterialDesignCodePoint[md_track_changes] := $e8e1;
  MaterialDesignCodePoint[md_traffic] := $e565;
  MaterialDesignCodePoint[md_train] := $e570;
  MaterialDesignCodePoint[md_tram] := $e571;
  MaterialDesignCodePoint[md_transfer_within_a_station] := $e572;
  MaterialDesignCodePoint[md_transform] := $e428;
  MaterialDesignCodePoint[md_translate] := $e8e2;
  MaterialDesignCodePoint[md_trending_down] := $e8e3;
  MaterialDesignCodePoint[md_trending_flat] := $e8e4;
  MaterialDesignCodePoint[md_trending_up] := $e8e5;
  MaterialDesignCodePoint[md_tune] := $e429;
  MaterialDesignCodePoint[md_turned_in] := $e8e6;
  MaterialDesignCodePoint[md_turned_in_not] := $e8e7;
  MaterialDesignCodePoint[md_tv] := $e333;
  MaterialDesignCodePoint[md_unarchive] := $e169;
  MaterialDesignCodePoint[md_undo] := $e166;
  MaterialDesignCodePoint[md_unfold_less] := $e5d6;
  MaterialDesignCodePoint[md_unfold_more] := $e5d7;
  MaterialDesignCodePoint[md_update] := $e923;
  MaterialDesignCodePoint[md_usb] := $e1e0;
  MaterialDesignCodePoint[md_verified_user] := $e8e8;
  MaterialDesignCodePoint[md_vertical_align_bottom] := $e258;
  MaterialDesignCodePoint[md_vertical_align_center] := $e259;
  MaterialDesignCodePoint[md_vertical_align_top] := $e25a;
  MaterialDesignCodePoint[md_vibration] := $e62d;
  MaterialDesignCodePoint[md_video_call] := $e070;
  MaterialDesignCodePoint[md_video_label] := $e071;
  MaterialDesignCodePoint[md_video_library] := $e04a;
  MaterialDesignCodePoint[md_videocam] := $e04b;
  MaterialDesignCodePoint[md_videocam_off] := $e04c;
  MaterialDesignCodePoint[md_videogame_asset] := $e338;
  MaterialDesignCodePoint[md_view_agenda] := $e8e9;
  MaterialDesignCodePoint[md_view_array] := $e8ea;
  MaterialDesignCodePoint[md_view_carousel] := $e8eb;
  MaterialDesignCodePoint[md_view_column] := $e8ec;
  MaterialDesignCodePoint[md_view_comfy] := $e42a;
  MaterialDesignCodePoint[md_view_compact] := $e42b;
  MaterialDesignCodePoint[md_view_day] := $e8ed;
  MaterialDesignCodePoint[md_view_headline] := $e8ee;
  MaterialDesignCodePoint[md_view_list] := $e8ef;
  MaterialDesignCodePoint[md_view_module] := $e8f0;
  MaterialDesignCodePoint[md_view_quilt] := $e8f1;
  MaterialDesignCodePoint[md_view_stream] := $e8f2;
  MaterialDesignCodePoint[md_view_week] := $e8f3;
  MaterialDesignCodePoint[md_vignette] := $e435;
  MaterialDesignCodePoint[md_visibility] := $e8f4;
  MaterialDesignCodePoint[md_visibility_off] := $e8f5;
  MaterialDesignCodePoint[md_voice_chat] := $e62e;
  MaterialDesignCodePoint[md_voicemail] := $e0d9;
  MaterialDesignCodePoint[md_volume_down] := $e04d;
  MaterialDesignCodePoint[md_volume_mute] := $e04e;
  MaterialDesignCodePoint[md_volume_off] := $e04f;
  MaterialDesignCodePoint[md_volume_up] := $e050;
  MaterialDesignCodePoint[md_vpn_key] := $e0da;
  MaterialDesignCodePoint[md_vpn_lock] := $e62f;
  MaterialDesignCodePoint[md_wallpaper] := $e1bc;
  MaterialDesignCodePoint[md_warning] := $e002;
  MaterialDesignCodePoint[md_watch] := $e334;
  MaterialDesignCodePoint[md_watch_later] := $e924;
  MaterialDesignCodePoint[md_wb_auto] := $e42c;
  MaterialDesignCodePoint[md_wb_cloudy] := $e42d;
  MaterialDesignCodePoint[md_wb_incandescent] := $e42e;
  MaterialDesignCodePoint[md_wb_iridescent] := $e436;
  MaterialDesignCodePoint[md_wb_sunny] := $e430;
  MaterialDesignCodePoint[md_wc] := $e63d;
  MaterialDesignCodePoint[md_web] := $e051;
  MaterialDesignCodePoint[md_web_asset] := $e069;
  MaterialDesignCodePoint[md_weekend] := $e16b;
  MaterialDesignCodePoint[md_whatshot] := $e80e;
  MaterialDesignCodePoint[md_widgets] := $e1bd;
  MaterialDesignCodePoint[md_wifi] := $e63e;
  MaterialDesignCodePoint[md_wifi_lock] := $e1e1;
  MaterialDesignCodePoint[md_wifi_tethering] := $e1e2;
  MaterialDesignCodePoint[md_work] := $e8f9;
  MaterialDesignCodePoint[md_wrap_text] := $e25b;
  MaterialDesignCodePoint[md_youtube_searched_for] := $e8fa;
  MaterialDesignCodePoint[md_zoom_in] := $e8ff;
  MaterialDesignCodePoint[md_zoom_out] := $e900;
  MaterialDesignCodePoint[md_zoom_out_map] := $e56b;
end;

initialization
  {$include fonts.lrs}
  popolateFontAwesomeCodePoints;
  popolateMaterialDesignCodePoints;
  fontAwesome := LoadFont('fontawesome');
  fontMaterialDesign := LoadFont('materialDesign');

finalization

  UnloadFont(fontAwesome);
  UnloadFont(fontMaterialDesign);

end.
