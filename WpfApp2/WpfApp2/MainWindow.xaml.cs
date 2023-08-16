using System.Windows;
using System.Windows.Controls;


namespace WpfApp2
{
    public partial class MainWindow : Window
    {
        GameQueue queue = new GameQueue("X", "O");

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Button btn = sender as Button;

            btn.Content = queue.GetMark();
            btn.IsEnabled = false;
            queue.ChangeTurn();


            string[,] buttonContents = {
                { (string)button1.Content, (string)button2.Content, (string)button3.Content },
                { (string)button4.Content, (string)button5.Content, (string)button6.Content },
                { (string)button7.Content, (string)button8.Content, (string)button9.Content },
            };

            GameLogic(buttonContents, btn);
        }

        private void GameLogic(string[,] array, Button btn)
        {
            if (CheckWinner(array, btn))
            {
                MessageBox.Show("Winner is the player " + (string)btn.Content);
                ResetGame();
            }

            if (!HasEmptyCell())
            {
                MessageBox.Show("It's a draw!");
                ResetGame();
            }
        }

        private bool CheckWinner(string[,] array, Button btn)
        {
            
            for (int i = 0; i < 3; i++)
            {
                if (Check(array[i, 0], array[i, 1], array[i, 2]) | 
                    Check(array[0, i], array[1, i], array[2, i]))
                {
                    return true;
                }
            }

            if (array[0, 0] == array[1, 1] & array[1, 1] == array[2, 2] & array[0,0] != null |
                array[0, 2] == array[1, 1] & array[1, 1] == array[2, 0] & array[2, 0] != null)
            {
                return true;
            }

            return false;

        }

        private bool Check(string i, string j, string k)
        {
            if (i == j & j == k & k != null)
                return true;
            return false;
        }

        private bool HasEmptyCell()
        {
            foreach (var button in gameGrid.Children)
            {
                if (button is Button && (button as Button).Content == null)
                    return true;
            }
            return false;
        }

        private void ResetGame()
        {
            foreach (var button in gameGrid.Children)
            {
                if (button is Button)
                {
                    (button as Button).Content = null;
                    (button as Button).IsEnabled = true;
                }
            }
        }
    }

    public class GameQueue
    {
        private bool turn = true;
        private string[] _marks = new string[2];
        public GameQueue(string mark_1, string mark_2)
        {
            _marks[0] = mark_1;
            _marks[1] = mark_2;
        }

        public string GetMark()
        {
            if (turn)
            {
                return _marks[0];
            }
            return _marks[1];
        }

        public void ChangeTurn()
        {
            turn = !turn;
        }
    }
}
