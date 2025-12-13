using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Pisetskii_Poltorabatko_PrivateAdertisementService
{
    /// <summary>
    /// Логика взаимодействия для UserAdsPage.xaml
    /// </summary>
    public partial class UserAdsPage : Page
    {
        private int currentUserId;

        public UserAdsPage(int userId)
        {
            InitializeComponent();
            currentUserId = userId;
            LoadUserAds();
        }

        public void LoadUserAds()
        {
            try
            {
                using (var db = new Entities())
                {
                    var ads = db.Ads
                        .Where(a => a.UserID == currentUserId && a.StatusID == 1)
                        .AsNoTracking()
                        .Select(a => new
                        {
                            a.AdID,
                            a.Title,
                            a.Description,
                            a.Price,
                            a.StatusID,
                            ImagePath = string.IsNullOrEmpty(a.ImagePath)
                                ? "/Resources/images.jpg"
                                : a.ImagePath
                        })
                        .ToList();

                    UserAdsList.ItemsSource = ads;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка загрузки объявлений: {ex.Message}");
            }
        }

        // ===================== Добавление объявления =====================

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            (Application.Current.MainWindow as MainWindow)
                ?.MainFrame.Navigate(new AddEditPage(currentUserId));
        }

        // ===================== Редактирование =============================

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            int adId = Convert.ToInt32((sender as Button).Tag);
            (Application.Current.MainWindow as MainWindow)
                ?.MainFrame.Navigate(new AddEditPage(currentUserId, adId));
        }


        private void ShowCompletedAds_Click(object sender, RoutedEventArgs e)
        {
            (Application.Current.MainWindow as MainWindow)
                ?.MainFrame.Navigate(new CompletedAdsPage(currentUserId));
        }


        private void Finish_Click(object sender, RoutedEventArgs e)
        {
            int adId = Convert.ToInt32((sender as Button).Tag);

            try
            {
                using (var db = new Entities())
                {
                    var ad = db.Ads.FirstOrDefault(a => a.AdID == adId);
                    var user = db.Users.FirstOrDefault(u => u.UserID == currentUserId);

                    if (ad == null || user == null)
                    {
                        MessageBox.Show("Ошибка: объявление или пользователь не найден!");
                        return;
                    }

                    // Меняем статус объявления
                    ad.StatusID = 2; // Завершено

                    // Добавляем цену объявления к общему доходу пользователя
                    user.TotalProfit += ad.Price;

                    db.SaveChanges();
                }

                MessageBox.Show("Объявление завершено!");
                LoadUserAds();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка: " + ex.Message);
            }
        }

        private void AdsPage_Click(object sender, RoutedEventArgs e)
        {
            (Application.Current.MainWindow as MainWindow)
                ?.MainFrame.Navigate(new AdsPage(currentUserId));
        }
    }
}