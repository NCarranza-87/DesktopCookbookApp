using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DesktopRecipeCookBookApp
{
    public partial class frmNewRecipe : Form
    {
        public frmNewRecipe()
        {
            InitializeComponent();
        }

     

        private void mnu_Quit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Quit and Exit Application?", "Quit", MessageBoxButtons.OKCancel) == DialogResult.OK)
            {
                Application.Exit();

            }
        }

        private void CreateNewRecipeTab(object sender, EventArgs e)
        {
            PopulateNewRecipe();
        }

        private void PopulateNewRecipe()
        {
            
        }

        private void ViewRecipeTab(object sender, EventArgs e)
        {
            PopulateViewRecipe();
        }

        private void PopulateViewRecipe()
        {
            var context = new RecipeContext();
            List<recipe> allRecipes =
                (from r in context.recipe
                 select r).ToList();
        }

        private void EditRecipeTab(object sender, EventArgs e)
        {
            PopulateEditRecipeTab();
        }

        private void PopulateEditRecipeTab()
        {
            throw new NotImplementedException();
        }

        private void tab_Delete_Click(object sender, EventArgs e)
        {

        }
    }
}
