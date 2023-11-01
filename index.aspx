<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="anyhomework.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<head runat="server">
  

    
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
      .divblock{
            width:auto;
            height:100px;
               background-color:#f4f1f1;
        }  
      .lab{
          background-color:#f4f1f1;
         color:#f4f1f1;
      }
           
        .auto-style2 {
            width: 152px;
        }
        .auto-style3 {
            width: 198px;
        }
        .figcaption{
            text-align:justify;
        color:black;
        }
        .divcontent{
            width:auto;
            height:639px;
             background-image: url('https://mdbootstrap.com/img/Photos/Others/images/76.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }
        .divup{
           align-items:center;
            width:650px;
            height:350px;
         float:left;
        }
        .tdt{
           
           text-align:right;
        }
        .divlog{
            float:left;
            width:350px;
            height:300px;
            margin:25px;
            padding-left: 15px;
            border-radius:20px;
           background-color: transparent;
           backdrop-filter: saturate(200%) blur(25px);
        }
        .la{
            background-color: transparent;
           backdrop-filter: saturate(200%) blur(25px);
        }
        .name{
            align-content:center;
            width:fit-content;
        }
        .logmg{
      color:hsla(0, 100%, 30%, 0.3);
      align-items:center;
          
           

        }
        .div123{
            position:absolute;
            z-index:inherit;
        }
     
           
        .search{
           align-items:center;
            width:300px;
            height:350px;
         float:left;
        }
        .search1{
            float:left;
            width:350px;
            height:300px;
            margin:25px;
            border-radius:20px;
          background-color: hsla(0, 0%, 100%, 0.9);
           backdrop-filter: saturate(200%) blur(25px);
        }
     
           
        .ser{
            height:25px;
        }
     
           
        .padleft{
           width:500px;
       }
        /* Your existing CSS styles here */

/* Media query for phones (up to 767px wide) */
@media screen and (max-width: 767px) {
    /* Define your responsive styles for phones here */

    .divblock {
        height: auto;
    }

    .divcontent {
        background-image: url('https://mdbootstrap.com/img/Photos/Others/images/76.jpg');
        height:795px;
    }

    .divup {
        width: 100%; /* Make the content full width on small screens */
        float: none; /* Remove the float for center alignment */
        text-align: center; /* Center-align text */
    }

    .divlog {
        width: 95%; /* Make the content full width on small screens */
        float: none; /* Remove the float for center alignment */
        text-align: center; /* Center-align text */
    }

    .search {
        width: 100%; /* Make the content full width on small screens */
        float: none; /* Remove the float for center alignment */
        text-align: center; /* Center-align text */
    }

    .search1 {
        width: 100%; /* Make the content full width on small screens */
        float: none; /* Remove the float for center alignment */
        background-color: transparent; /* Remove background blur for small screens */
    }

    /* Add more specific styles as needed for phones */
}


    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>

        <div>
            <div class="divblock">
      <table>
          <tr>
              <td>
    <asp:Image ID="Image1" runat="server" Style="height:70px;width:90px;margin:10px;border-radius:20px" ImageUrl="~/img/s5.jpeg" />
              </td>
              <td class="padleft">
 
                            <asp:Label ID="Label1"  runat="server" CssClass="lab" Text="Label" ></asp:Label>
 
              </td>
              <td class="auto-style2">
                  <asp:ImageButton ID="ImageButton2"   runat="server" Style="height:50px;width:50px;margin:10px; border-radius:20px; "  ImageUrl="~/image/homehome.png" OnClick="ImageButton2_Click"  />
            <figcaption class="figcaption" >Home</figcaption>
              </td>
              <td class="auto-style3">
                  <asp:ImageButton ID="ImageButton3"  runat="server" Style="height:50px;width:50px;margin:10px;border-radius:20px"  ImageUrl="~/image/search (1).png" OnClick="ImageButton3_Click" ValidationGroup="search" />
                <figcaption class="figcaption">Search Upload</figcaption>
              </td>
            
              <td>
                            </td>
            
          </tr>

      </table>  

        </div>
        </div>
        <div class="divcontent">
            <div class="divup">
                <table>
                    <tr>
                        <td class="tdt">
                        <h1>In a world of expenses, we offer you excellence at no expense.
        </h1>
                            </td>
                    </tr>
                  
                    <tr>
                        <td>
                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                
                            <ol type="1">
	<li> give name and upload file here</li>
    <li>code will be copied to clipboard </li>
	  <li> enter code in "search upload" section</li>
	  <li>share code to others to get answers</li>
	</ol></h4>
                        </td>
                    </tr>
                    
                </table>
            </div>
            <div class="divlog">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <h3 class="logmg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            Upload here&nbsp; </h3>
                <table>
                    <br />
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="name" ValidationGroup="1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*name" ControlToValidate="TextBox1" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
             
                    <tr>
                        <td>
                             <asp:FileUpload ID="FileUpload1" CssClass="form-control"    runat="server"  ToolTip="Upload file"  AllowMultiple="True" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*file" ControlToValidate="FileUpload1" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                   </table>
                <table class="auto-style4">
                    <tr>
                        <td>
                            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Upload" Width="239px" OnClick="Button1_Click1" OnClientClick="myFunction()" ValidationGroup="1" />
                            <asp:TextBox ID="TextBox2" runat="server" Width="16px" Visible="false"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" Width="16px" Visible="false"></asp:TextBox>
                            <input type="hidden" id="hiddenRandomNumber" runat="server" />               

                        </td>

                    </tr>
                   
                </table>

                </div>
            <div class="div123">
                   
                
            </div>
          
            </div>
           
  <script type="text/javascript">
      function validateFileSize() {
          var fileUpload = document.getElementById('<%= FileUpload1.ClientID %>');
        var textBox = document.getElementById('<%= TextBox1.ClientID %>');
        var label = document.getElementById('<%= Label1.ClientID %>');
        if (fileUpload.files.length > 0) {
            var fileSize = fileUpload.files[0].size; // Size in bytes
            var maxSize = 4 * 1024 * 1024; // 4MB in bytes
            if (fileSize > maxSize) {
                alert('File size should not exceed 4MB.');
                return false; // Prevent form submission
            }
        }
        if (fileUpload.files.length === 0 || textBox.value.trim() === '') {
            alert('Please provide a name and upload a file.');
            return false; // Prevent form submission
        }
        // Display an alert as label1.text that can be copied to the clipboard
        var alertText = label.innerText;
        // Copy the alert text to the clipboard
        if (navigator.clipboard && navigator.clipboard.writeText) {
            navigator.clipboard.writeText(alertText)
                .then(function () {
                    alert(' file uploaded Text copied to clipboard.');
                })
                .catch(function (error) {
                    alert('Failed to copy text to clipboard: ' + error);
                });
        }
        return true; // Continue with form submission
    }

    document.getElementById('<%= Button1.ClientID %>').addEventListener('click', validateFileSize);
       </script>



  </form>
</body>
</html>