using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FipperWeb.admin
{
    public partial class uploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string fileName = productId + ".jpg";

            CurrentImage.ImageUrl = "~/admin/ProductImages/" + fileName;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];

            string fileName = productId + ".jpg";
            string saveLocation = Server.MapPath("~/admin/ProductImages/" + fileName);

            ImageFileUploadControl.SaveAs(saveLocation);
        }
    }
}