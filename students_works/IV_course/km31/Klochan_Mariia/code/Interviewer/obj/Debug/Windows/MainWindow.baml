   M S B A M L   `   `   `  ����F  BInterviewer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Interviewer.WindowsInterviewer.Windows  5   	   7 clr-namespace:Interviewer.ModelsInterviewer.Models  5   	   $    Interviewer.Windows.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Interviewer.Windows     5   	   3models clr-namespace:Interviewer.Models     5   	     � Title$  
MainWindow��5	   	   $	��800��6   $	��800��6)      LightBackgroundBrush#��[  65    J� SnapsToDevicePixels . .��5
      �  � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��* �6   �� 5      $��30 �6    � ColumnDefinitions 5   
   �� 5      $��30 �6   �� 5      $��* �6   �� 5      $��30 �6   .+�5   
   � $��1��6   $��1��6     DarkBackgroundBrush#��[ 6,    5      �� 5      $
��Auto �6    �� 5      $��* �6    .+�5      ]� $��30,15q�6   .+�5      �� -   5         ��Name$ showMyInterviewsCheckBox��5      $
��Left=�6=   $��Center=�6X   $��Show my interviews��6s   $��10, 5q�6�     DarkCommonBox#��[ 5        ForegroundBrush#��[ 6B   6�   �� 5      -   5        $
��10,5q�5      $
��Left=�6'   $��Update��6B   6j   �� 5      -   5        $
��10,5q�5      $
��Left=�6'   $��Create new interview��6B   y�5      �� *User.IsAsker+   booleanToVisibilityConverter �� 	Converter# [ �� 5       -   5        $��
My account��5       6H   5!      �� 5#      $��1��6   ��6$   �� *
Interviews+��5$      �� 5%       �� DataType$ models:Dialog��6#   .R�5&      �  5'      �� 5(   "   $
��Auto �60   �� 5)   "   $��70 �60   .+�5+      �� -   5        $��0q�5+   <   $	��7,0q�6G   $
��Left=�6U   ��6%   Z� 
 � Tag 5,   D   �� ��5-   "   �� 5.   &    �� 
TargetType" ��6,     
DarkButton	 �� BasedOn#	 [ 6@   
 �� Triggers
 50   *   �� 51   .    �� Binding 6:   �� *Title+ �� Value 6T   Z� .a�52   2   ��  �� Property � �� �� Value$ No title��6L   53   /   .�55   *   ��  � �� 6D   �� *Title+56   '   58      �� 59      #��[ 6@    J� Opacity$	 0.5Q�6g   $��Right=�6u   $��14(�6�   ��6(   �� *Status+y�5:   (   �� *	IsChecked+ �� ElementName$ showMyInterviewsCheckBox��# [  �� ConverterParameter$ Hidden���� 5;      $��1��6(   #��[ 6N   $��WrapWithOverflow=�6u   ��65   �� *	Preview+6u   5<      5=      5?      5@      5A      5B      