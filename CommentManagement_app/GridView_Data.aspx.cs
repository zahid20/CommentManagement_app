using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommentManagement_app.Models;
using System.Net.Http;
using System.Data;


namespace CommentManagement_app
{
    public partial class GridView_Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        //    Label1.Text = "Displaying Page " + (GridView1.PageIndex + 1).ToString()
        //+ " of " + GridView1.PageCount.ToString();


            if (!IsPostBack)
                bindGridView();

            IEnumerable<Comment> comment = null;
            HttpClient hc = new HttpClient();
            hc.BaseAddress = new Uri("http://localhost:50770/api/");
            var comsumeapi = hc.GetAsync("CommentsDetail");
            comsumeapi.Wait();
            var readdata = comsumeapi.Result;
            if (readdata.IsSuccessStatusCode)
            {
                var displayrecords = readdata.Content.ReadAsAsync<IList<Comment>>();
                displayrecords.Wait();
                comment = displayrecords.Result;
                GridView1.DataSource = comment;
                GridView1.DataBind();

            }

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bindGridView();
        }
        private void bindGridView()
        {
            DataTable t = new DataTable();
            t.Columns.Add("Post");
            t.Columns.Add("[User]");
       
            t.Columns.Add("[Date]");
            t.Columns.Add("[Like]");
            t.Columns.Add("[Dislike]");
            DataRow r = null;
            for (int i = 0; i < 25; i++)
            {
                r = t.NewRow();
                r.ItemArray = new object[] { "Val" + i, " Another " + i };
                t.Rows.Add(r);
            }
            GridView1.DataSource = t;
            GridView1.DataBind();
        }

    }
}