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

        private void frmNewRecipe_Load(object sender, EventArgs e)
        {

        }

        private void mnu_Quit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Quit and Exit Application?", "Quit", MessageBoxButtons.OKCancel) == DialogResult.OK)
            {
                Application.Exit();

            }
        }
    }
}
