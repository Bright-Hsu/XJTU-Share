   M S B A M L   `   `   `  ����E  Abackgammon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:backgammon
backgammon  5   	       backgammon.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:backgammon     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��800��5      $
��1200��6'      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	   $��Microsoft YaHei)�5   	    � Title$ gomoku��6&   .��5      � -   5        .+�5   
   �� -   5         ��Name$ player��5      $��玩家对战��6!   $
��Left=�60   $��699,559,0,0q�6K   $	��Top=�6`   $��90��6�   $	��160��6�    � Cursor$
 Hand��6�   $��20(�6�   $��Microsoft YaHei)�6�   �� 5   
   -   5        $ aiplayer��5      $��AI对战��6#   $
��Left=�62   $��962,559,0,0q�6M   $	��Top=�6b   $��90��6�   $	��160��6�   $
 Hand��6�   $��20(�6�   $��Microsoft YaHei)�6�   � 5   
   $
��Left=�6   $	��600��6*   $��	27,95,0,0q�67   $	��Top=�6J   $��600               ��6b   .+�5      #  MaterialDesignThemes.Wpf.Card  $��	0,0,10,10q�6"   .��5      �� -   5         ��Name$	 pan��5      5      5      � 5   
   $
��Left=�6   $	��298��6*   $��672,150,0,0q�67   $	��Top=�6L   $	��475��6d   .+�5        .��5      �� -   5         ��Name$ logText��5      $��Center=�6+   $	��264��6H   $��0,20,0,0q�6U    �� TextWrapping$
 Wrap=�6g   $	��Top=�6{   $	��432��6�    �� 
IsReadOnly$
 True��6�   "	 �� VerticalScrollBarVisibility$
	 Auto=�6�   $
 �� HorizontalScrollBarVisibility$

 Auto=�5      5      5      5      5       