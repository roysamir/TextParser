using System;
using System.Collections.Generic;
using CustomParser;
public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            txtInputText.Text = String.Empty;
    }

    protected void btnConvertToXML_Click(object sender, EventArgs e)
    {
        txtResultXML.Text = CustomXmlParser.ToXml(txtInputText.Text);
    }

    protected void btnConvertToCSV_Click(object sender, EventArgs e)
    {
        txtResultCSV.Text = CustomCSVParser.ToCsv(txtInputText.Text);
    }

}