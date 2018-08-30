using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.IO;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace DesktopRecipeCookBookApp
{
    public partial class frmNewRecipe : Form
    {
        public frmNewRecipe()
        {
            InitializeComponent();

        }

        private void frmNewRecipe_Load(object sender, EventArgs e)
        {
            NavigationMenuTabPageSelection();
            PopulateViewRecipe();
            // PopulateEditRecipeTab();

            // add for each loop to load recipes in the drop list 
            List<recipe> context = RecipeDB.GetAllRecipes();
            // displays in combo box
            foreach (recipe recipe in context)
            {
                cbo_RecipeViewList.Items.Add(recipe.recipeTitle);
                cbo_RecipeEditList.Items.Add(recipe.recipeTitle);
                cbo_RecipeDeleteList.Items.Add(recipe.recipeTitle);
            }

        }

        //**********************************************************************
        //       File / Quit menu strip options
        // *********************************************************************

        private void mnu_Quit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Quit and Exit Application?", "Quit", MessageBoxButtons.OKCancel) == DialogResult.OK)
            {
                Application.Exit();
            }
        } // end mnu Quit_Click


        //*************************************************************************************
        // Navigation Menu to correspong to tab page
        //*************************************************************************************
       
        public void NavigationMenuTabPageSelection()
        {
            //get all tab pages from tbc_RecipeTab
            TabControl.TabPageCollection tab_Item = tbc_RecipeTab.TabPages;

            //get  mnu_NavTabs drop down menu items count
            int n = mnu_NavTabs.DropDownItems.Count;

            //remove all menu items from of mnu_NavTabs
            for (int i = n - 1; i >= 0; i--)
            {
                mnu_NavTabs.DropDownItems.RemoveAt(i);
            }

            //read each tabpage from tab_Item and add each tabpage text to mnu_NavTabs
            foreach (TabPage tabpage in tab_Item)
            {
                //create ToolStripMenuItem
                ToolStripMenuItem menu_Item = new ToolStripMenuItem();
                String s = tabpage.Text;
                menu_Item.Text = s;

                if (tbc_RecipeTab.SelectedTab == tabpage)
                {
                    menu_Item.Checked = true;
                }
                else
                {
                    menu_Item.Checked = false;
                }

                //add menu_Item to mnu_NavTabs
                mnu_NavTabs.DropDownItems.Add(menu_Item);

                //add click events to each added menu_Item
                menu_Item.Click += new System.EventHandler(mnu_NavTabs_Click);
            }
        } // end NavigationMenuTabPageSelection()


        private void mnu_NavTabs_Click(object sender, EventArgs e)
        {
            // casting ToolStripMenuItem to mnu_Option
            ToolStripItem mnu_Option = (ToolStripItem)sender;

            // create collection of tabs of tabContro1
            // check every tab text is equal to clicked menu_Item then select the tab
            TabControl.TabPageCollection tab_Item = tbc_RecipeTab.TabPages;

            foreach (TabPage tb in tab_Item)
            {
                if (mnu_Option.Text == tb.Text)
                {
                    tbc_RecipeTab.SelectedTab = tb;
                    //call NavigationMenuTabPageSelection() to perform changes on menu_Items
                    NavigationMenuTabPageSelection();
                }
            }
        } // end mnu_NavTabs_Click



        //***************************************************************************************
        // NAVIGATION MENUSTRIP MENU ITEMS EVENT LISTENERS THAT WILL CONTROL TAB PAGES ON SELCTED ITEM CLICKED
        //***************************************************************************************
        public static int count = 0;

        private void mnu_NewMenuItem_Click(object sender, EventArgs e)
        {
            NavigationMenuTabPageSelection();
        //   PopulateNewRecipe();
        }

        private void mnu_ViewMenuItem_Click(object sender, EventArgs e)
        {
            NavigationMenuTabPageSelection();
         //   PopulateViewRecipe();
        }

        private void mnu_EditMenuItem_Click(object sender, EventArgs e)
        {
            NavigationMenuTabPageSelection();
          //  PopulateEditRecipe();
        }

        private void mnu_DeleteMenuItem_Click(object sender, EventArgs e)
        {
            NavigationMenuTabPageSelection();  
        }

        /*****************************************************************************/



        private void CreateNewRecipeTab(object sender, EventArgs e)
        {
            PopulateNewRecipe();
        }

        private void PopulateNewRecipe()
        {
            string recipeName = txt_NewName.Text;
            string recipeDespt = txt_NewDescrip.Text;
            string recipeServings = txt_NewServeAmt.Text;
            string recipeTemp = txt_NewTemp.Text;
            string recipePrep = txt_NewPrep.Text;
            string recipeCookTime = txt_NewCook.Text;
            string reciepNeeds = txt_NewKitchen.Text;
            string recipeIngreds = txt_NewIngred.Text;
            string recipeDirections = txt_NewDirections.Text;
            string recipeTipsNotes = txt_NewTips.Text;
            checkedListBox1.Enabled = false;

            var addRecipe = new recipe();
            addRecipe.recipeTitle = recipeName;
            addRecipe.recipeDescrip = recipeDespt;
            addRecipe.recipeYield = recipeServings;
            addRecipe.recipeTemp = recipeTemp;
            addRecipe.recipePrepTime = recipePrep;
            addRecipe.recipeCookTime = recipeCookTime;
            addRecipe.recipeNeed = reciepNeeds;
            addRecipe.recipeIngred = recipeIngreds;
            addRecipe.recipeSteps = recipeDirections;
            addRecipe.recipeTips = recipeTipsNotes;
          
            RecipeDB.InsertRecipe(addRecipe);
        }

        /*********************************************************************************/
        /*                       TAB NAVIGATION                                          */
        /*********************************************************************************/
        public void ViewRecipeTab(object sender, EventArgs e)
        {
            PopulateViewRecipe();
        }

        private void EditRecipeTab()
        {
            PopulateEditRecipe();
        }

        private void DeleteRecipeTab(int id)
        {
            PopulateDeleteRecipe(id);
        }


        /******************************************************************/
        /*          RETREIVE FROM DATABASE AND                            */
        /******************************************************************/

        private List<recipe> PopulateViewRecipe()
        {
            var context = new RecipeContext();
            List<recipe> allRecipes =
                (from r in context.recipe
                 select r).ToList();
            return allRecipes;
        }

        private void PopulateEditRecipe()
        {
            string recipeName = txt_NewName.Text;
            string recipeDespt = txt_NewDescrip.Text;
            string recipeServings = txt_NewServeAmt.Text;
            string recipeTemp = txt_NewTemp.Text;
            string recipePrep = txt_NewPrep.Text;
            string recipeCookTime = txt_NewCook.Text;
            string reciepNeeds = txt_NewKitchen.Text;
            string recipeIngreds = txt_NewIngred.Text;
            string recipeDirections = txt_NewDirections.Text;
            string recipeTipsNotes = txt_NewTips.Text;
            checkedListBox1.Enabled = false;

            var addRecipe = new recipe();
            addRecipe.recipeTitle = recipeName;
            addRecipe.recipeDescrip = recipeDespt;
            addRecipe.recipeYield = recipeServings;
            addRecipe.recipeTemp = recipeTemp;
            addRecipe.recipePrepTime = recipePrep;
            addRecipe.recipeCookTime = recipeCookTime;
            addRecipe.recipeNeed = reciepNeeds;
            addRecipe.recipeIngred = recipeIngreds;
            addRecipe.recipeSteps = recipeDirections;
            addRecipe.recipeTips = recipeTipsNotes;

            RecipeDB.Update(addRecipe);
        }

        private void PopulateDeleteRecipe(int id) { 
            var context = new RecipeContext();

            //pull recipe from DB to make EF track it
            recipe recipeToDelete = context.recipe.Find(id);

            //mark recipe as deleted
            context.recipe.Remove(recipeToDelete);

            //send delete query to DB
            context.SaveChanges();
        }


        /*********************************************************************************/
        /*                                 EVENT HANDLERS                                */
        /*********************************************************************************/

        private void btn_Save_Click(object sender, EventArgs e)
        {
            PopulateNewRecipe();
            if (true)
            {
                MessageBox.Show("Your recipe was saved successfully!");
            }

            txt_NewName.Clear();
        }

        private void btn_Delete_Click(int id)
        {
            if (MessageBox.Show("Permanently delete recipe?", "Delete Recipe", MessageBoxButtons.OKCancel) == DialogResult.OK)
            {
                PopulateDeleteRecipe(id);
                MessageBox.Show("Your recipe has been deleted successfully!");
            } 
        }

        private void cbo_RecipeDeleteList_SelectedIndexChanged(int id)
        {
            PopulateDeleteRecipe(id);
        }
    }
}
