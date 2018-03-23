using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_3_22
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string input = Request.QueryString["input"];
            if(!String.IsNullOrWhiteSpace(input))
            {
                lblStringQuery.Text = "You have entered: " + input;
            }
            
        }

        protected void btnVisible_Click(object sender, EventArgs e)
        {
            if(lblVisible.Visible)
            {
                lblVisible.Visible = false;
                btnVisible.Text = "Click again to make re-appear.";
            }
            else
            {
                lblVisible.Visible = true;
                btnVisible.Text = "Click again to make disappear.";
            }
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            lblAddOrChange.Text += " " + txtAddOrChange.Text;
        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            lblAddOrChange.Text = txtAddOrChange.Text;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            lblAddOrChange.Text = "";
        }

        protected void btnWebsite_Click(object sender, EventArgs e)
        {
            Response.Redirect(txtWebsite.Text, false);
        }

        protected void btnStringQuery_Click(object sender, EventArgs e)
        {
            string input = txtStringQuery.Text;
            Response.Redirect("Default.aspx?input=" + input);
        }
    }
}