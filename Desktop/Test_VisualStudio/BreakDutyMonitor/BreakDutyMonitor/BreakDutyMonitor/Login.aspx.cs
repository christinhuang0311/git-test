using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.DirectoryServices;
using System.Security.Principal;

namespace BreakDutyMonitor
{
    public partial class Login : System.Web.UI.Page
    {
        private string AdminName = "hcit";
        private string AdminPassword = "kcbskcbs";
        private string ServerName = "LDAP://172.22.80.221";
        private static string EmployeeID = string.Empty;
        private static string EmployeeName = string.Empty;
        private static string EmployeeDep = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        public static string ValidateUser(string ComputerName, string ADName, string ADPassword, string UserID)
        {
            Boolean IsExist = false;
            if (ComputerName.IndexOf('.') != -1)
            {

                DirectoryEntry entry = new DirectoryEntry(ComputerName, ADName, ADPassword, AuthenticationTypes.Secure);

                try
                {
                    string objectSid = (new SecurityIdentifier((byte[])entry.Properties["objectSid"].Value, 0).Value);
                    DirectorySearcher search = new DirectorySearcher(entry);
                    SearchResultCollection results = search.FindAll();


                    if (results != null)
                    {
                        foreach (SearchResult result in results)
                        {
                            //displayname = 員工姓名/英文名字(姓氏) ,department = 員工部門,givenName= 員工編號
                            string[] Properties = { "displayname", "department", "givenName" };

                            if (result.Properties[Properties[2]].Count > 0)
                            {
                                if (result.Properties[Properties[2]][0].ToString() == UserID)
                                {
                                    EmployeeName = result.Properties[Properties[0]][0].ToString();
                                    EmployeeDep = result.Properties[Properties[1]][0].ToString();
                                    IsExist = true;
                                    break;
                                }

                            }
                        }
                        if (IsExist == false) objectSid = null;
                    }


                    return objectSid;

                }
                catch (Exception ex)
                {
                    return null;
                }
                finally
                {

                    entry.Dispose();
                }
            }


            else
            {
                DirectoryEntry entry = new DirectoryEntry("WinNT://" + ComputerName, ADName, ADPassword);
                try
                {
                    string objectSid = (new SecurityIdentifier((byte[])entry.Properties["objectSid"].Value, 0).Value);
                    return objectSid;
                }
                catch
                {
                    return null;
                }
                finally
                {
                    entry.Dispose();
                }
            }
        }

        protected void tb_EmployeeID_TextChanged(object sender, EventArgs e)
        {

            //christin  Test 
            //EmployeeID = "C10902038";

            EmployeeID = tb_EmployeeID.Text;
            string strValidateUser = ValidateUser(ServerName, AdminName, AdminPassword, EmployeeID);
            if (strValidateUser != null)
            {
                lb_EmployeeName.Text = EmployeeName + "您好";
            }
            else
            {
                Response.Write("<script>   alert('" + EmployeeID + "員編錯誤，請重新輸入!!!');</script>");
                tb_EmployeeID.Text = string.Empty;
                lb_EmployeeName.Text = string.Empty;
            }
        }
    }
}