GDPC                                                                            .   <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexP~      U      -��`�0��x�5�[    res://Scenes/BigInputField.tscn �      �      �h:�+��N��(�ބR    res://Scenes/EntryEditPanel.tscn�      [      ^w�e�Z�&%KU��   res://Scenes/Main.tscn  P      �      9��L%��%��3BL$   res://Scenes/MultipleChoices.tscn   P      -      9+	Lg��ȮF��z��    res://Scenes/O-text+bool.tscn   �!            �?��V��g���-;$   res://Scenes/O-text+multiChoice.tscn�#      u      �EC��&#E�螘��D    res://Scenes/O-text+text.tscn    &            V,��Hc�'&ƌ�&�    res://Scenes/SmallCheckbox.tscn @(            ѨG��� I���k�$   res://Scenes/SmallChooseOption.tscn P*            �p&�k���T    res://Scenes/SmallIputField.tscn`,      �      ��:�H�2լ?*(   res://Scenes/SmallIputFieldNumber.tscn   /      �      �A�r��c�ȶ�AzJ,   res://Scenes/SmallIputFieldNumberInt.tscn   �2      �      ���[�Dik�˿�K   res://Scenes/SubPanel.tscn  �6      U      �DEJ��P���ѰE�XY    res://Scripts/AddLabel.gd.remap 0�      +       !6�y�����3����   res://Scripts/AddLabel.gdc   8            IDK�����F���67(   res://Scripts/EntryEditPanel.gd.remap   `�      1       �a�`��/��KU/j�    res://Scripts/EntryEditPanel.gdc9      �      ��@%����d��T�$   res://Scripts/FileSelector.gd.remap ��      /       �q/���*�7�l    res://Scripts/FileSelector.gdc  �A      F       �q����[��c�O9    res://Scripts/IDLabel.gd.remap  Ў      *       2$�=͙Ua��҂�W�   res://Scripts/IDLabel.gdc    E      ]      cR��m�3�y�;���(   res://Scripts/MultipleChoices.gd.remap   �      2       �E��FП��h�=�Y�$   res://Scripts/MultipleChoices.gdc   �G      F	      �d���ӡ	�&ǔ�    res://Scripts/OptionSC.gd.remap @�      +       I}^��ɹ��`��p��   res://Scripts/OptionSC.gdc  �P      �      �G}��@=�D:W�M$   res://Scripts/Save Buttons.gd.remap p�      /       �f�����Y_����    res://Scripts/Save Buttons.gdc  �U      %      ��͞F]��-q/C���    res://Scripts/Settings.gd.remap ��      +       dMׅ��b�5�F�i�   res://Scripts/Settings.gdc   W      1      1��E�O�,FH�͝$   res://Scripts/SmallCheckbox.gd.remapЏ      0       �a�s��8 ��$�    res://Scripts/SmallCheckbox.gdc @b      �      �(5�uM�:��0��[�(   res://Scripts/SmallChooseOption.gd.remap �      4       Ȧ�)���(�؇eO=}<$   res://Scripts/SmallChooseOption.gdc �d      k      �_��:�@�;�I(   res://Scripts/SmallIputField.gd.remap   @�      1       L#�����8��b�x&{    res://Scripts/SmallIputField.gdc`i      �      qgG�t�v�����#,   res://Scripts/SmallIputFieldNumber.gd.remap ��      7       �W�ҟ ����prh��(   res://Scripts/SmallIputFieldNumber.gdc  �k      |      J,�cS4�K�5�ܴ70   res://Scripts/SmallIputFieldNumberInt.gd.remap  ��      :       �|T��P�����E
,,   res://Scripts/SmallIputFieldNumberInt.gdc   pp      �      z��Y� �å8��ǥ�\    res://Scripts/SubPanel.gd.remap  �      +       I9p��I8�C�/�r�   res://Scripts/SubPanel.gdc   u      �      k:�#�ʡ�@���S==   res://default_env.tres  �}      �       um�`�N��<*ỳ�8   res://icon.png  0�      �      G1?��z�c��vN��   res://icon.png.import   ��      �      �����%��(#AB�   res://project.binary �      n      ��_�(�s?t�8�'            [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/SmallIputField.gd" type="Script" id=1]

[node name="BigInputTextField" type="Label"]
margin_left = 3.11017
margin_top = 0.495842
margin_right = 64.1102
margin_bottom = 14.4958
text = "Add Entry"
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
option_size = 115

[node name="LineEdit" type="TextEdit" parent="."]
margin_left = 78.0
margin_top = -7.0
margin_right = 282.0
margin_bottom = 105.0
wrap_enabled = true
           [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/EntryEditPanel.gd" type="Script" id=1]

[node name="EntryEditPanel" type="Control"]
margin_left = 9.80917
margin_top = 97.2605
margin_right = 49.8092
margin_bottom = 137.26
rect_min_size = Vector2( 0, 24.998 )
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
     [gd_scene load_steps=6 format=2]

[ext_resource path="res://Scripts/FileSelector.gd" type="Script" id=1]
[ext_resource path="res://Scripts/IDLabel.gd" type="Script" id=2]
[ext_resource path="res://Scripts/AddLabel.gd" type="Script" id=3]
[ext_resource path="res://Scripts/Save Buttons.gd" type="Script" id=4]
[ext_resource path="res://Scenes/EntryEditPanel.tscn" type="PackedScene" id=5]

[node name="Control" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Panel" type="Panel" parent="."]
margin_right = 322.0
margin_bottom = 902.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Panel2" type="Panel" parent="."]
margin_left = 0.44548
margin_top = 4.00904
margin_right = 311.445
margin_bottom = 35.009
__meta__ = {
"_edit_use_anchors_": false
}

[node name="FileLabel" type="Label" parent="Panel2"]
margin_left = 9.54092
margin_top = 7.296
margin_right = 49.5409
margin_bottom = 21.296
text = "File :"
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="OptionButton" type="OptionButton" parent="Panel2/FileLabel"]
margin_left = 35.7728
margin_top = -3.22725
margin_right = 146.773
margin_bottom = 16.7728
__meta__ = {
"_edit_use_anchors_": false
}

[node name="IDLabel" type="Label" parent="Panel2"]
margin_left = 10.5409
margin_top = 38.296
margin_right = 50.5409
margin_bottom = 52.296
text = "ID   :"
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="OptionButton" type="OptionButton" parent="Panel2/IDLabel"]
margin_left = 35.7728
margin_top = -3.22725
margin_right = 146.773
margin_bottom = 16.7728
__meta__ = {
"_edit_use_anchors_": false
}

[node name="AddLabel" type="Label" parent="Panel2"]
margin_left = 11.1355
margin_top = 65.0532
margin_right = 51.1355
margin_bottom = 79.0532
text = "Add Entry"
script = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="LineEdit" type="LineEdit" parent="Panel2/AddLabel"]
margin_left = 78.1622
margin_top = -6.5946
margin_right = 170.162
margin_bottom = 17.4054

[node name="Button" type="Button" parent="Panel2/AddLabel"]
margin_left = 188.784
margin_top = -6.18922
margin_right = 279.784
margin_bottom = 13.8108
text = "Add"

[node name="Save Buttons" type="Label" parent="Panel2"]
margin_left = 25.4728
margin_top = 872.433
margin_right = 86.4728
margin_bottom = 886.433
script = ExtResource( 4 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Button" type="Button" parent="Panel2/Save Buttons"]
margin_left = 188.784
margin_top = -6.18922
margin_right = 279.784
margin_bottom = 13.8108
text = "Save File"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Button2" type="Button" parent="Panel2/Save Buttons"]
margin_left = 87.4372
margin_top = -5.9626
margin_right = 178.437
margin_bottom = 14.0374
text = "Save Entry"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="EntryEditPanel" parent="Panel2" instance=ExtResource( 5 )]
[connection signal="item_selected" from="Panel2/FileLabel/OptionButton" to="Panel2/FileLabel" method="_on_OptionButton_item_selected"]
[connection signal="item_selected" from="Panel2/IDLabel/OptionButton" to="Panel2/IDLabel" method="_on_OptionButton_item_selected"]
[connection signal="pressed" from="Panel2/AddLabel/Button" to="Panel2/AddLabel" method="_on_Button_pressed"]
[connection signal="pressed" from="Panel2/Save Buttons/Button" to="Panel2/Save Buttons" method="_on_Button_pressed"]
[connection signal="pressed" from="Panel2/Save Buttons/Button2" to="Panel2/Save Buttons" method="_on_Button2_pressed"]
               [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/MultipleChoices.gd" type="Script" id=1]

[node name="SmallChooseOption" type="Label"]
margin_left = 3.11017
margin_top = 0.495842
margin_right = 64.1102
margin_bottom = 14.4958
text = "Add Entry"
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="OptionButton2" type="OptionButton" parent="."]
margin_left = 180.261
margin_top = -0.9841
margin_right = 272.261
margin_bottom = 22.0159
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Control" type="Control" parent="."]
margin_left = 78.3991
margin_top = 13.8089
margin_right = 118.399
margin_bottom = 53.8089
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="item_selected" from="OptionButton2" to="." method="_on_OptionButton2_item_selected"]
   [gd_scene format=2]

[node name="O-text+bool" type="Control"]
margin_top = 101.117
margin_right = 40.0
margin_bottom = 141.117
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Field1" type="TextEdit" parent="."]
margin_left = -80.0012
margin_top = 10.0722
margin_right = 92.9988
margin_bottom = 53.0722
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Field2" type="CheckButton" parent="."]
margin_left = 123.124
margin_top = 17.6448
margin_right = 199.124
margin_bottom = 57.6448
__meta__ = {
"_edit_use_anchors_": false
}
      [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/OptionSC.gd" type="Script" id=1]

[node name="O-text+multiChoice" type="Control"]
margin_right = 40.0
margin_bottom = 40.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Field1" type="TextEdit" parent="."]
margin_left = -80.0012
margin_top = 10.0722
margin_right = 92.9988
margin_bottom = 53.0722
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Field2" type="OptionButton" parent="."]
margin_left = 103.531
margin_top = 29.4829
margin_right = 195.531
margin_bottom = 52.4829
__meta__ = {
"_edit_use_anchors_": false
}
           [gd_scene format=2]

[node name="O-text+text" type="Control"]
margin_top = 50.3359
margin_right = 40.0
margin_bottom = 90.3359
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Field1" type="TextEdit" parent="."]
margin_left = -80.0012
margin_top = 10.0722
margin_right = 92.9988
margin_bottom = 53.0722
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Field2" type="TextEdit" parent="."]
margin_left = 146.645
margin_top = 22.3363
margin_right = 190.645
margin_bottom = 49.3363
__meta__ = {
"_edit_use_anchors_": false
}
         [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/SmallCheckbox.gd" type="Script" id=1]

[node name="SmallIputField" type="Label"]
margin_left = 3.11017
margin_top = 0.495842
margin_right = 64.1102
margin_bottom = 14.4958
text = "Add Entry"
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CheckButton" type="CheckButton" parent="."]
margin_left = 198.225
margin_top = -12.0272
margin_right = 274.226
margin_bottom = 27.9728
__meta__ = {
"_edit_use_anchors_": false
}
         [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/SmallChooseOption.gd" type="Script" id=1]


[node name="SmallChooseOption" type="Label"]
margin_left = 3.11017
margin_top = 0.495842
margin_right = 64.1102
margin_bottom = 14.4958
text = "Add Entry"
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="OptionButton" type="OptionButton" parent="."]
margin_left = 107.7
margin_top = -8.00113
margin_right = 199.7
margin_bottom = 14.9989
__meta__ = {
"_edit_use_anchors_": false
}
   [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/SmallIputField.gd" type="Script" id=1]

[node name="SmallIputField" type="Label"]
margin_left = 3.11017
margin_top = 0.495842
margin_right = 64.1102
margin_bottom = 14.4958
text = "Add Entry"
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CheckBox" type="CheckBox" parent="."]
margin_left = 242.868
margin_top = -9.56762
margin_right = 266.868
margin_bottom = 14.4324
__meta__ = {
"_edit_use_anchors_": false
}

[node name="LineEdit" type="LineEdit" parent="."]
margin_left = 106.703
margin_top = -7.78381
margin_right = 198.703
margin_bottom = 16.2162
__meta__ = {
"_edit_use_anchors_": false
}
     [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/SmallIputFieldNumber.gd" type="Script" id=1]

[node name="SmallIputField" type="Label"]
margin_left = 3.11017
margin_top = 0.495842
margin_right = 64.1102
margin_bottom = 14.4958
text = "Add Entry"
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CheckBox" type="CheckBox" parent="."]
margin_left = 263.679
margin_top = -6.5946
margin_right = 287.679
margin_bottom = 17.4054
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HSlider" type="HSlider" parent="."]
margin_left = 110.596
margin_top = -1.18921
margin_right = 217.596
margin_bottom = 14.8108
__meta__ = {
"_edit_use_anchors_": false
}

[node name="TextEdit" type="TextEdit" parent="."]
margin_left = 222.919
margin_top = -2.5946
margin_right = 263.919
margin_bottom = 17.4054
text = "0.00"
[connection signal="value_changed" from="HSlider" to="." method="_on_HSlider_value_changed"]
          [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/SmallIputFieldNumberInt.gd" type="Script" id=1]

[node name="SmallIputField" type="Label"]
margin_left = 3.11017
margin_top = 0.495842
margin_right = 64.1102
margin_bottom = 14.4958
text = "Add Entry"
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CheckBox" type="CheckBox" parent="."]
margin_left = 263.679
margin_top = -6.5946
margin_right = 287.679
margin_bottom = 17.4054
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HSlider" type="HSlider" parent="."]
margin_left = 110.596
margin_top = -1.18921
margin_right = 217.596
margin_bottom = 14.8108
__meta__ = {
"_edit_use_anchors_": false
}

[node name="TextEdit" type="TextEdit" parent="."]
margin_left = 222.919
margin_top = -2.5946
margin_right = 263.919
margin_bottom = 17.4054
text = "0.00"
[connection signal="value_changed" from="HSlider" to="." method="_on_HSlider_value_changed"]
       [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/SubPanel.gd" type="Script" id=1]

[node name="EntryEditPanel" type="Control"]
margin_left = 9.80917
margin_top = 97.2605
margin_right = 49.8092
margin_bottom = 137.26
rect_min_size = Vector2( 0, 24.998 )
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
           GDSC            (      ����ڶ��   �����������������Ҷ�   �������¶���   ���¶���   �������Ŷ���   �������������϶�                                            &      3YY0�  PQX=V�  &W�  T�  V.�  �  T�  PW�  T�  Q�  W�  T�  Y`        GDSC         3   F     ������ڶ   �������������ض�   ������������Ҷ��   �������϶���   �����϶�   �������Ŷ���   ����������ڶ   �����������Ŷ���   ����϶��   �����������ض���   �����������Ӷ���   �����������ض���   �����ض�   ����Ҷ��   �����������ض���   ����������ض   ������Ѷ   �������Ҷ���   ����������Ӷ   �������Ӷ���   ������������ض��   ϶��   ��������϶��   ����������Ӷ   ��������Ҷ��   ������Ӷ   ���Ӷ���   ����������Ŷ                    Entity            ForcedPanel             OptionalPanel         type   
   SmallInput         res://Scenes/SmallIputField.tscn      SmallChoose    #   res://Scenes/SmallChooseOption.tscn       BigInput      res://Scenes/BigInputField.tscn       SubPanel      res://Scenes/SubPanel.tscn        SmallInputFloat    &   res://Scenes/SmallIputFieldNumber.tscn        SmallInputInt      )   res://Scenes/SmallIputFieldNumberInt.tscn         Choices    !   res://Scenes/MultipleChoices.tscn         SmallCheckbox         res://Scenes/SmallCheckbox.tscn                                                           	   !   
   )      /      0      9      >      I      P      [      b      f      g      o      v      w      x      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '     (     )     *     +     ,     -   "  .   *  /   3  0   @  1   A  2   D  3   3YYYY;�  V�  Y;�  �  Y;�  V�  �  YY0�  PQX=V�  &�  T�  �  V�  �  T�  YY0�  P�  QX=V�  &�  V�  )�	  �  T�
  L�  MV�  �  P�	  R�  Q�  )�  �  T�
  L�  MV�  �  P�  R�  Q�  �  �  Y�  )�  �  PQV�  �  T�  P�  QYYY0�  P�  R�  QV�  ;�  S�  /�  L�  MV�  �  V�  �L  P�	  QT�  PQ�  �
  V�  �L  P�  QT�  PQ�  �  V�  �L  P�  QT�  PQ�  �  V�  �L  P�  QT�  PQ�  �  V�  �L  P�  QT�  PQ�  �  V�  �L  P�  QT�  PQ�  �  V�  �L  P�  QT�  PQ�  �  V�  �L  P�  QT�  PQY�  �  �  T�  T�  �  �  �  T�  P�  R�  QY�  �  �  T�  �  �  P�  QYY0�  PQX�  V�  ;�  NO�  )�  �  PQV�  ;�  �  T�  PQ�  �  L�  LMM�  L�  M�  �  .�  Y`          GDSC            �      ����ڶ��   ����������������Ҷ��   �����϶�   �����������ض���   �������۶���   ���������Ŷ�   �������Ŷ���   �����������Ӷ���   ����Ŷ��   �������Ӷ���    �����������������������������Ҷ�   ����ζ��   ���������Ӷ�   ߶��   ��������Ӷ��             None      Files                            
                        '      (   	   3   
   9      A      B      M      S      Y      Z      \      ]      e      f      w      �      �      �      3YY;�  V�  YY0�  PQX=V�  W�  T�  P�  RQ�  �  P�  T�  L�  MQYY0�  P�  V�  QX=V�  )�	  �  V�  W�  T�  P�	  QYY0�
  P�  V�  QX=V�  &�  V�  �  T�  PQ�  �  .Y�  &�  �  V-Y�  )�  �K  P�X  P�  T�  L�  MQQV�  &P�  �  �  QV�  �  �  �  �  T�  P�  T�  L�  ML�  MQY`          GDSC             c      ����ڶ��   ��Ŷ   �����϶�   �������Ŷ���   �������ڶ���   �������Ŷ���   ����϶��   �����������ض���   ����Ķ��   ߶��   �������۶���    �����������������������������Ҷ�   ����ζ��   ���������������ڶ���                                                    	      
   '      .      2      8      @      A      L      V      `      a      3YY;�  V�  LMYYY0�  PQX=V�  �  T�  �  -YY0�  P�  QX=V�  W�  T�  PQ�  �  �  �  )�	  �  V�  W�  T�
  P�	  QYY0�  P�  V�  QX=V�  &�  �X  P�  QV.�  �  T�  P�  L�  MQYY`   GDSC   *      ?   �     ����ڶ��   ����������Ӷ   ������Ѷ   ������������ζ��   ������������Ŷ��   �����¶�   ����������ض   �������Ӷ���   ��������϶��   ���Ŷ���   ����������Ŷ   ���������ζ�   ������ڶ   ��������������¶   ��������Ҷ��   �����������؄���   �����¶�    ���������������؄�������������Ҷ   ����������������Ѷ��   ��������Ҷ��   ���¶���   �Ŷ�   ��������බ�   �����������������Ҷ�   ����Ķ��   ���Ӷ���   ߶��   �������۶���   ����������Ӷ   ������������ض��   ϶��   ��������Ҷ��   ���Ӷ���   ������Ӷ   ���������϶�   ����Ҷ��   �����������ض���   �������ٶ���   �����Ҷ�   ����ζ��   ����������ζ   ������Ӷ   �                        	   save_name         display_name      option_info       type            option_number         SC     $   res://Scenes/O-text+multiChoice.tscn                   
                              "   	   #   
   ,      5      B      M      N      Y      c      s      t            �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $     %     &   #  '   )  (   7  )   ;  *   <  +   =  ,   D  -   H  .   P  /   Q  0   T  1   U  2   ]  3   c  4   n  5   w  6   ~  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   3YY;�  V�  Y;�  �  Y;�  V�  �  Y;�  LMYY;�  �  YY0�  P�  QX=V�  &�  V�  P�  Q�  &�  L�  M�  T�	  PQV�  ;�
  �  L�  L�  MM�  �  )�  W�  T�  PQV�  &�X  P�
  Q
�  V,�  W�  T�  P�  QT�  P�
  L�  MQ�  �  W�  T�  P�X  P�
  QQ�  �  P�X  P�
  QQ�  (V�  W�  T�  P�  Q�  �  P�  QYY0�  P�  R�  �  QX=V�  �  �  �  �  �  L�  M�  ;�  �  L�  ML�  ML�  M�  L�  ML�  ML�  M�  ;�  �  P�  Q�  �  W�  T�  PQ�  ;�  �  �  )�  �K  P�  L�	  MQV�  W�  T�  P�>  P�  QQ�  ;�  �  T�  PQ�  �  T�  P�  L�  ML�  MR�  L�  ML�  MQ�  �  T�  T�  �  �  W�  T�  P�  Q�  �  �  T�  �  W�  T�  P�>  P�  L�	  MQQ�  �  �  Y�  Y0�  P�   QV�  /�   V�  �
  V.�L  P�  Q�  �  .�  �  Y0�!  PQX�  V�  ;�"  LM�  )�#  W�  T�$  PQV�  ;�%  �#  T�!  PQ�  &�%  �  V,�  �"  T�&  P�%  Q�  �  .L�  L�  MR�"  MYYY0�  P�'  V�  QX=V�  )�(  �K  PW�  T�  PQQV�  W�  T�  P�(  QT�)  �(  	�'  Y`          GDSC             �      ������ڶ   ����������Ӷ   ������ч����   ������ф����   ������������Ŷ��   �����϶�   ����������ض   �������Ӷ���   ��������϶��   ����҇��   ���¶���   ߶��   ����҄��   �����¶�   ����������������ч��   ����������������ф��   ��������Ҷ��   ����Ķ��   �������Ŷ���   ��������������¶   ��������������������������Ŷ   �����ض�   �������۶���   ������Ӷ   ������Ӷ   �������Ҷ���   2          	   save_name                       options       use_as_options                                                   $   	   &   
   '      0      7      8      E      Q      b      j      k      z      ~      �      �      �      �      �      �      �      �      �      �      �       3YY8;�  V�  Y;�  �  Y;�  �  Y;�  LMYY0�  PQX=V�  -YY0�  P�  QX=V�  �  P�  R�  Q�  �  W�	  T�
  �  L�  L�  MM�  )�  �K  P�X  P�  QQV�  &P�  L�  M�  L�  L�  MMQV�  W�  T�  P�  QYY0�  P�  R�  R�  �  QX=V�  �  �  �  �  �  �  �  W�	  T�
  �  �  W�  T�  PQ�  �  �  T�  P�  L�  MQ�  T�  P�  L�  MQ�  )�  �  V�  W�  T�  P�>  P�  QQYY0�  PQV�  &�  V.�  �  .N�  L�  MVW�	  T�
  R�  L�  MV�  LW�  T�  MOY`              GDSC             '      ����ڶ��   �����������������Ҷ�   �������Ŷ���   ��������������Ӷ   ���������؄�������Ҷ   ��������϶��                                                    	   #   
   %      3YY0�  PQX=V�  �  T�  PQ�  -YYY0�  PQX=V�  �  T�  PQ�  -Y`           GDSC   0      b   8     ���Ӷ���   �����������Ӷ���   ��������������Ӷ   ����������Ӷ   �������϶���   ��������ض��   ж��   ���Ӷ���   ���Ӷ���   ����   ����Ķ��   ���ض���   ���򶶶�   ���¶���   ����������¶   ����Ӷ��   ���ض���   ��������ض��   �����¶�   ����󶶶   �����������Ѷ���   ��������   ��������������������������Ŷ   ������Ӷ   ���������Ŷ�   ����϶��   ���Ŷ���   �����Ҷ�   �����϶�   ��������Ӷ��   �������Ӷ���   �������Ŷ���   �������ڶ���   ����������ڶ   ���������Ӷ�   ���������������ڶ���   �Ҷ�   �����������Ŷ���   �������������������϶���   ��������������¶   ��������Ӷ��   �������������϶�   �����������Ӷ���   ��������������Ӷ   ��������϶��   ߶��   �����Ӷ�   ������Ӷ                 	               Entries       Settings.json         .json         IDs_name                                     "      #      $   	   +   
   4      B      C      H      I      R      X      Y      a      h      k      l      u      ~      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,     -     .     /     0     1   #  2   +  3   ,  4   4  5   ;  6   <  7   A  8   J  9   W  :   X  ;   _  <   `  =   i  >   r  ?   ~  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V      W     X     Y     Z   ,  [   0  \   1  ]   2  ^   3  _   4  `   5  a   6  b   3YY;�  V�  NOY;�  V�  Y;�  V�  NOY;�  V�  LMYYY0�  P�  QV�  ;�  �  T�	  PQ�  ;�
  �  T�  P�  R�  T�  QY�  �?  P�  QY�  ;�  �  T�  PQ�  �  T�  PQ�  �  ;�  �P  P�  Q�  @P�  �  Q�  .�  YY0�  P�  R�  QV�  ;�  �  T�	  PQ�  �  T�  P�  R�  T�  Q�  �  T�  P�  T�?  P�  R�  R�  QQ�  �  T�  PQYY0�  P�  QX�  VY�  ;�  V�  LM�  )�  �  L�  MV�  &�  �  T�  PQV,�  �  T�  P�  L�  MQ�  .�  YY0�  PQX=V�  �  �  P�  QYY0�  P�  QX=V�  &�  �  V�  �  �  �  �  �  �  P�  Q�  �  PQYY;�   V�  Y;�!  V�  YY0�"  PQX=V�  �  LM�  �   T�  PLMQYY0�  PQX=V�  &�   �  V.Y�  �  LM�  )�  �  L�  MV�  �  T�  P�  L�  L�  MMQY�  �   T�  P�  QYY0�#  P�$  QX=V�  )�  �  L�  MV�  &�  L�  L�  MM�$  V�  �!  T�%  P�  Q�  �&  �$  YY;�&  V�  YY0�'  P�(  QX�  V�  &�(  �  T�  PQV�  .�  L�(  M�  .LMYY0�)  P�*  V�  QV�  �&  �*  �  �!  T�%  PN�  L�  MV�&  OQYYY0�+  PQX=V�  �,  PQ�  �  P�  R�  Q�  �  P�  QYY0�,  PQX=V�  &�&  �  V�  )�-  �X  P�  L�  MQV�  &�  L�  ML�-  ML�  L�  MM�&  V�  �  L�  MT�.  P�-  Q�  +�  �  L�  MT�  P�!  T�/  PQQ�  �  PQYYYYYYY`               GDSC            t      ����ڶ��   ����������Ӷ   ������Ѷ   ����������ض   �������Ӷ���   ��������϶��   ���Ŷ���   ����������ض   ������Ҷ   ����������������Ѷ��   ��������Ҷ��   ���¶���   ������Ӷ             	   save_name                default       display_name                                                 ,   	   9   
   :      G      K      U      \      ]      e      r      3YY8;�  V�  Y;�  �  YY0�  P�  QX=V�  �  P�  Q�  &�  L�  M�  T�  PQV�  W�  T�  �  L�  L�  MMYY0�  P�	  R�
  �  QX=V�  �  �	  �  W�  T�  �  L�  M�  �  �	  L�  MYY0�  PQX�  V�  .L�  L�  MRW�  T�  MY`       GDSC            �      ����ڶ��   ����������Ӷ   ������Ѷ   ������������ζ��   ������������Ŷ��   ����������ض   �������Ӷ���   ��������϶��   ���Ŷ���   ߶��   �����������ض���   �����¶�   ����������������Ѷ��   ��������Ҷ��   ����Ķ��   �������Ŷ���   ��������������¶   ��������������������������Ŷ   �����ض�   �������۶���   ���¶���   ������Ӷ                    	   save_name                options       use_as_options        display_name                   
                              &   	   +   
   8      D      S      [      \      i      p      t      x      y      �      �      �      �      �      �      �      �      3YY;�  V�  Y;�  �  Y;�  V�  �  Y;�  LMYY0�  P�  QX=V�  �  P�  Q�  &�  L�  M�  T�  PQV�  )�	  �K  P�X  P�  QQV�  &�  L�  L�  MM�  L�	  MV�  W�
  T�  P�	  QYY0�  P�  R�  �  QX=V�  W�
  T�  PQ�  �  �  �  �  �  �  �  �  �  T�  P�  L�  MQ�  T�  P�  L�  MQ�  )�  �  V�  W�
  T�  P�>  P�  QQ�  �  �  �  L�  MYY0�  PQX�  V�  .L�  L�  MR�  L�  MMY`     GDSC            q      ����ڶ��   ����������Ӷ   ������Ѷ   ����������ض   �������Ӷ���   ��������϶��   ���Ŷ���   �������¶���   ���¶���   ����������������Ѷ��   ��������Ҷ��   ������Ӷ             	   save_name                       display_name                                                 ,   	   9   
   :      G      K      R      Y      Z      b      o      3YY8;�  V�  Y;�  �  YY0�  P�  QX=V�  �  P�  Q�  &�  L�  M�  T�  PQV�  W�  T�  �  L�  L�  MMYY0�  P�	  R�
  �  QX=V�  �  �	  �  W�  T�  �  �  �  �	  L�  MYY0�  PQX�  V�  .L�  L�  MRW�  T�  MY` GDSC            �      ����ڶ��   ����������Ӷ   ������Ѷ   ����������ض   �������Ӷ���   ��������϶��   ���Ŷ���   �������¶���   ���¶���   ������Ķ   ����Ӷ��   ����������������Ѷ��   ��������Ҷ��   ��������Ӷ��   ��������Ӷ��   ������Ӷ   ������������������������Ҷ��             	   save_name      d         0                       range                      display_name     �B                                                     	   -   
   =      L      O      V      ]      ^      k      o      ~      �      �      �      �      �      �      �      �      �      �      �      �      3YYY8;�  V�  Y;�  �  YY0�  P�  QX=V�  �  P�  Q�  &�  L�  M�  T�  PQV�  W�  T�  �>  P�  L�  L�  MMQ�  W�	  T�
  �  L�  L�  MM�  �  (V�  W�  T�  �  �  W�	  T�
  �  YY0�  P�  R�  �  QX=V�  �  �  �  W�	  T�  �  L�  ML�  M�  �  W�	  T�  �  L�  ML�  M�  �  W�	  T�
  �  �  W�  T�  �	  �  �  �  L�
  MYY0�  PQX�  V�  .L�  L�  MR�  PW�  T�  QMYYY0�  P�
  V�  QX=V�  W�  T�  �>  P�
  �  Q�  -Y`    GDSC            �      ����ڶ��   ����������Ӷ   ������Ѷ   ����������ض   �������Ӷ���   ��������϶��   ���Ŷ���   �������¶���   ���¶���   ������Ķ   ����Ӷ��   ����������������Ѷ��   ��������Ҷ��   ��������Ӷ��   ��������Ӷ��   ������Ӷ   ������������������������Ҷ��             	   save_name      d         0                       range                      display_name     �B                                                     	   -   
   =      L      O      V      ]      ^      k      o      ~      �      �      �      �      �      �      �      �      �      �      �      �      3YYY8;�  V�  Y;�  �  YY0�  P�  QX=V�  �  P�  Q�  &�  L�  M�  T�  PQV�  W�  T�  �>  P�  L�  L�  MMQ�  W�	  T�
  �  L�  L�  MM�  �  (V�  W�  T�  �  �  W�	  T�
  �  YY0�  P�  R�  �  QX=V�  �  �  �  W�	  T�  �  L�  ML�  M�  �  W�	  T�  �  L�  ML�  M�  �  W�	  T�
  �  �  W�  T�  �	  �  �  �  L�
  MYY0�  PQX�  V�  .L�  L�  MR�  PW�  T�  QMYYY0�  P�
  V�  QX=V�  W�  T�  �>  P�  P�
  �  QQ�  -Y`              GDSC         0   Z     ������ڶ   ����������Ӷ   ������Ѷ   ������������ζ��   ������������Ŷ��   ������������Ҷ��   �������������ض�   ����������ض   �������Ӷ���   ��������϶��   ����Ҷ��   �����������ض���   ���Ŷ���   ����������������Ѷ��   ��������Ҷ��   �����ض�   �����������ض���   ������ф����   �������Ҷ���   ����������Ӷ   ������������ض��   ϶��   ��������Ҷ��   ������Ӷ   ���Ӷ���   ����������Ŷ                     	   save_name         panels              type   
   SmallInput         res://Scenes/SmallIputField.tscn      SmallChoose    #   res://Scenes/SmallChooseOption.tscn       BigInput      res://Scenes/BigInputField.tscn       SubPanel      res://Scenes/SubPanel.tscn        SmallInputFloat    &   res://Scenes/SmallIputFieldNumber.tscn        SmallInputInt      )   res://Scenes/SmallIputFieldNumberInt.tscn         Choices    !   res://Scenes/MultipleChoices.tscn         SmallCheckbox         res://Scenes/SmallCheckbox.tscn                          
                        !      &   	   '   
   0      5      =      J      W      X      e      j      s      z      ~      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "      #     $     %     &     '      (   !  )   )  *   /  +   7  ,   @  -   M  .   N  /   X  0   3YY;�  V�  Y;�  �  Y;�  V�  Y;�  LMY;�  �  Y;�  YY0�  P�  QX=V�  �	  P�  Q�  )�
  �  PQV�  &�  L�  M�  T�  PQV�  �
  T�  P�  L�  L�  MMQYY0�	  P�  R�  �  QX=V�  &�  V�  )�  �  L�  MV�  �  P�  R�  Q�  �  �  �  �  �  YY0�  P�  R�  QV�  ;�  S�  /�  L�  MV�  �  V�  �L  P�  QT�  PQ�  �	  V�  �L  P�
  QT�  PQ�  �  V�  �L  P�  QT�  PQ�  �  V�  �L  P�  QT�  PQ�  �  V�  �L  P�  QT�  PQ�  �  V�  �L  P�  QT�  PQ�  �  V�  �L  P�  QT�  PQ�  �  V�  �L  P�  QT�  PQY�  �  T�  T�  �  �  �  T�	  P�  R�  Q�  �  �  T�  �  �  �  �  �  P�  QYY0�  PQX�  V�  ;�  NO�  )�
  �  PQV�  ;�  �
  T�  PQ�  �  L�  LMM�  L�  M�  �  .L�  L�  MR�  MY`            [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scripts/AddLabel.gdc"
     [remap]

path="res://Scripts/EntryEditPanel.gdc"
               [remap]

path="res://Scripts/FileSelector.gdc"
 [remap]

path="res://Scripts/IDLabel.gdc"
      [remap]

path="res://Scripts/MultipleChoices.gdc"
              [remap]

path="res://Scripts/OptionSC.gdc"
     [remap]

path="res://Scripts/Save Buttons.gdc"
 [remap]

path="res://Scripts/Settings.gdc"
     [remap]

path="res://Scripts/SmallCheckbox.gdc"
[remap]

path="res://Scripts/SmallChooseOption.gdc"
            [remap]

path="res://Scripts/SmallIputField.gdc"
               [remap]

path="res://Scripts/SmallIputFieldNumber.gdc"
         [remap]

path="res://Scripts/SmallIputFieldNumberInt.gdc"
      [remap]

path="res://Scripts/SubPanel.gdc"
     �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         JsonTool   application/run/main_scene          res://Scenes/Main.tscn     application/config/icon         res://icon.png     autoload/Settings$         *res://Scripts/Settings.gd     display/window/size/width      @     display/window/size/height      �     display/window/size/resizable             display/window/stretch/mode         2d     display/window/stretch/aspect         keep)   rendering/environment/default_environment          res://default_env.tres    