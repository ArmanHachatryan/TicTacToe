   M S B A M L   `   `   `  ����B  >WpfApp2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp2WpfApp2  5   	       WpfApp2.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp2     5   	     � Title$  	TicTacToe��5   	   $	��650��6   $	��800��6(   .��5	      � -   5         �Name$ gameGrid��5	       � ShowGridLines$ False��6    � RowDefinitions 5
   
   �� 5      6   �� 5      6   �� 5      6   �� 5      6    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   �� 5      6!   .+�5   
   ��  �� TextAlignment$ Center=�6   $��50(�6+   $��0��69   $��0��6I   $��3��6V   (&Игра крестики нолики6�   �� 5   
   -   5         ��Name$ button1��5      $��0��6"   $��1��62   $��50(�6A   6O   �� 5   
   -   5        $ button2��5      $��1��6"   $��1��62   $��50(�6A   6O   �� 5   
   -   5        $ button3��5      $��2��6"   $��1��62   $��50(�6A   6O   �� 5   
   -   5        $ button4��5      $��0��6"   $��2��62   $��50(�6A   6O   �� 5   
   -   5        $ button5��5      $��1��6"   $��2��62   $��50(�6A   6O   �� 5   
   -   5        $ button6��5      $��3��6"   $��2��62   $��50(�6A   6O   �� 5   
   -   5        $ button7��5      $��0��6"   $��3��62   $��50(�6A   6O   �� 5   
   -	   5        $ button8��5      $��1��6"   $��3��62   $��50(�6@   6N   �� 5   
   -
   5        $ button9��5      $��2��6"   $��3��62   $��50(�6@   6N   5       5!      