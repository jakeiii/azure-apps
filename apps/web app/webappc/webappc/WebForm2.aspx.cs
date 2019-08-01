using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;

namespace webappc
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Chart1.Titles.Add("Average Transaction");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text != "")
            {
                //build string of start to end date to add to end of url to connect to api

                string startDate = sm.Text + "-" + sd.Text + "-" + sy.Text;
                string endDate = em.Text + "-" + ed.Text + "-" + ey.Text;

                string urlEnding = TextBox1.Text + "," + startDate + "," + endDate;

                //url to connect to api  "postalcode,startdate,enddate"

                string html = string.Empty;
                string url = @"https://transactionapijb.azurewebsites.net/api/values/" + urlEnding;

                //sends data to API gets back a string 

                System.Net.HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                request.AutomaticDecompression = DecompressionMethods.GZip;

                using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
                using (Stream stream = response.GetResponseStream())
                using (StreamReader reader = new StreamReader(stream))
                {
                    html = reader.ReadToEnd();
                }

                ////parse string to list, element 0 = transaction avg for postal code, 1 = transaction avg for region
                List<string> myList = html.ToString().Substring(1, html.ToString().Length - 2).Split(',').ToList();

                Chart1.Series["Average Transfer"].Points.AddXY("Postal Code\n" + myList[0], float.Parse(myList[0]));
                Chart1.Series["Average Transfer"].Points.AddXY("Region\n" + myList[1], float.Parse(myList[1]));

            }
        }

    }
}