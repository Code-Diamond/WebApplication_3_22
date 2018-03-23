<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication_3_22.Default" %>

<script runat="server">
    //C# Code
    private string name = "Jamin";
    public string getName() { return name; }
</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Header -->
<head runat="server">
    <title>A Sample .aspx Website.</title>
    <style type="text/css">
        #body {
            height: 591px;
        }
    </style>
</head>

<body id="body">
    <form id="form1" runat="server">
    <div>

        <!-- Sample HTML Code -->
        <hr />

        <h1>This is a sample web page.</h1>
        <h2>I could put anything I would like here.</h2>
        <h3>And here as well.</h3>
        <h4>So I will. . .</h4>
        <hr />

        <div>
            <p>Hey look, a bunch of cats!</p>
            <img src ="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cat_November_2010-1a.jpg/800px-Cat_November_2010-1a.jpg" width="125" height="150" ></img>
            <img src ="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/PSM_V37_D105_English_tabby_cat.jpg/800px-PSM_V37_D105_English_tabby_cat.jpg"  width="125" height="150" ></img>
            <img src ="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Ragdoll_Kater%2C_drei_Jahre_alt%2C_RAG_n_21_seal-tabby-colourpoint%2C_Januar_2015.JPG/220px-Ragdoll_Kater%2C_drei_Jahre_alt%2C_RAG_n_21_seal-tabby-colourpoint%2C_Januar_2015.JPG"  width="125" height="150" ></img>
            <img src ="https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Tabby_cat_face_side.jpg/1280px-Tabby_cat_face_side.jpg"  width="125" height="150" ></img>
            <img src ="https://upload.wikimedia.org/wikipedia/commons/f/fd/Grey_classic_tabby_crop.JPG"  width="125" height="150" ></img>
        <hr />

        </div>
                <!-- Call method from C# on server side-->
        <p>My name is <% = getName() %>.</p>
        <!-- Use target ="_blank to open in a new tab"-->
        <p>Click <a href ="SecondPage.aspx">here</a> to go to the second page.</p>
        <hr />

    </div>
        <!--- A button to change the visibility of text inside a label below it -->

        <asp:Button ID="btnVisible" runat="server" Text="Click to Make Text Below Disappear." OnClick="btnVisible_Click" />
        <p>
            <asp:Label ID="lblVisible" runat="server" Text="Now you see me"></asp:Label>
            ...

        </p>

        <hr />
        <asp:TextBox ID="txtAddOrChange" runat="server"></asp:TextBox>
        <p>
            Type text into the text box above, and then click the Add Text button to add information below. <br />
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Text" />
            <asp:Button ID="btnChange" runat="server" OnClick="btnChange_Click" style="margin-bottom: 0px" Text="Change Text" />
            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
        </p>
        <p>
            Text Entered: </p>
        <p>

            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblAddOrChange" runat="server"></asp:Label>
        </p>
        <hr />

        <asp:Label ID="lblWebsite" runat="server" AssociatedControlID="txtWebsite" Text="Enter a Website:"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txtWebsite" runat="server" Height="26px" Width="231px"></asp:TextBox>
        <p>
            <asp:Button ID="btnWebsite" runat="server" OnClick="btnWebsite_Click" Text="Go to Website" />
        </p>
        <hr />

        <p>
            Enter a query string below to redirect to another page on the server with the query&#39;s value.</p>


        <asp:TextBox ID="txtStringQuery" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnStringQuery" runat="server" OnClick="btnStringQuery_Click" Text="Reload Page" />
        </p>
        <p>
            <asp:Label ID="lblStringQuery" runat="server" Text="You haven't entered anything yet..."></asp:Label>
            </p>


        <hr />


    </form>
</body>


<script type="text/javascript">
    //Some Javascript to make the page high contrast
    document.body.bgColor = "#000000";
    document.getElementById("body").style.color = "#ffffff";
    //document.getElementById("body").style.alignContent = "center";
</script>


</html>
