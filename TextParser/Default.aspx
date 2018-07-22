<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<script
    src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#divXML").hide();
        $("#divCSV").hide();
        $("#btnConvertToCSV").hide();
        $("#btnConvertToXML").hide();

        $("select").change(function () {
            $(this).find("option:selected").each(function () {
                var optionValue = $(this).attr("value");
                if (optionValue == "xml") {
                    $(".box").not("." + optionValue).hide();
                    $("#divXML").show();
                    $("#divCSV").hide();
                    $("#btnConvertToCSV").hide();
                    $("#btnConvertToXML").show();
                } else if (optionValue == "csv") {
                    $("#divXML").hide();
                    $("#divCSV").show();
                    $("#btnConvertToCSV").show();
                    $("#btnConvertToXML").hide();
                    $("#txtResultXML").val("");
                }
                else {
                    $("#divXML").hide();
                    $("#divCSV").hide();
                    $("#btnConvertToCSV").hide();
                    $("#btnConvertToXML").hide();
                    $("#txtResultXML").val("");
                    $("#txtResultCSV").val("");
                }
            });
        }).change();

        $("#btnConvertToXML").click(function () {
            if ($("#txtResultXML").val() != "") {
                $("#txtResultXML").val("");
            }
        });
    });
</script>
<form id="form1" runat="server" style="background-color: aliceblue; height: auto; width: 100%">
    <div style="padding: 20px">
        <asp:dropdownlist id="drpConversionOption" runat="server">
            <asp:ListItem Text="Select a option" Value=""></asp:ListItem>
            <asp:ListItem Text="Convert to Xml" Value="xml"></asp:ListItem>
            <asp:ListItem Text="Convert to CSV" Value="csv"></asp:ListItem>
        </asp:dropdownlist>
        
            <asp:button id="btnConvertToXML" runat="server" onclick="btnConvertToXML_Click" text="Convert to XML" />
            <asp:button id="btnConvertToCSV" runat="server" onclick="btnConvertToCSV_Click" text="Convert to CSV"  />
    
        
    </div>
    <div>
        <div style="padding: 20px">
            <div style="padding-bottom: 5px">
                <asp:label id="lblInputText" runat="server" text="Enter your text to be parsed"></asp:label>
            </div>

            <asp:textbox id="txtInputText" textmode="MultiLine" height="31%" width="62%" runat="server" borderstyle="solid"></asp:textbox>
        </div>
        <div style="padding-left: 20px" id="divXML">
            <div style="padding-bottom: 5px">
                <asp:label id="lblResultXML" runat="server" text="XML view of prased Text"></asp:label>
            </div>
            <asp:textbox id="txtResultXML" textmode="MultiLine" height="50%" width="62%" runat="server" borderstyle="solid"></asp:textbox>
        </div>
        <div style="padding-left: 20px" id="divCSV">
            <div style="padding-bottom: 5px">
                <asp:label id="lblResultCSV" runat="server" text="CSV view of prased Text"></asp:label>
            </div>
            <asp:textbox id="txtResultCSV" textmode="MultiLine" height="40%" width="63%" runat="server" borderstyle="solid"></asp:textbox>
        </div>

    </div>

</form>
