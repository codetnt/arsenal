using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Experiment
{
    public partial class ResponsiveLayout : Form
    {
        public ResponsiveLayout()
        {
            InitializeComponent();
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // 获取选定的TabPage
            TabPage selectedTabPage = tabControl1.SelectedTab;
            // 将Panel添加到选定的TabPage中
            selectedTabPage.Controls.Add(panel3);
            selectedTabPage.Controls.Add(panel2);
        }
    }
}
