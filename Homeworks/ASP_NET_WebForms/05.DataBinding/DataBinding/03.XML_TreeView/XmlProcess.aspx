﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XmlProcess.aspx.cs" Inherits="XML_TreeView.XmlProcess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Task - 3 XMl With Tree View</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TreeView ID="treeView" AutoGenerateDataBindings="False" runat="server" DataSourceID="BookXmlDataSource" OnSelectedNodeChanged="NodeChaaged" ImageSet="Arrows" Height="65px" ShowLines="True" Width="374px">
                <DataBindings>
                    <asp:TreeNodeBinding DataMember="catalog" FormatString="{0}" TextField="#Name" ValueField="#Value" />
                    <asp:TreeNodeBinding DataMember="book" TextField="#Value" ValueField="#Name" />
                    <asp:TreeNodeBinding DataMember="author" TextField="#Name" ValueField="#Value" />
                    <asp:TreeNodeBinding DataMember="firstName" TargetField="#Value" TextField="#InnerText" ValueField="#Name" />
                    <asp:TreeNodeBinding DataMember="lastName" TextField="#InnerText" ValueField="#Name" />
                    <asp:TreeNodeBinding DataMember="title" TextField="#InnerText" ValueField="#Name" />
                    <asp:TreeNodeBinding DataMember="genre" TextField="#InnerText" ValueField="#Name" />
                    <asp:TreeNodeBinding DataMember="price" TextField="#InnerText" ValueField="#Name" />
                    <asp:TreeNodeBinding DataMember="publish_date" TextField="#InnerText" ValueField="#Name" />
                    <asp:TreeNodeBinding DataMember="description" TextField="#InnerText" ValueField="#Name" />
                </DataBindings>
                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>

            <div style="float: right; display: inline-block; width: 450px; overflow:auto;">
                <h3>XML Below</h3>
                <hr />
                <div style="border: 1px solid red">
                    <asp:Label Text="" ID="labelXML" runat="server" />
                </div>
                <textarea style="min-height: 430px; min-width:380px;">
                    <asp:Literal text="" Mode="Encode" ID="literalXMl" runat="server" />
                </textarea>
            </div>

            <asp:XmlDataSource ID="BookXmlDataSource"
                DataFile="books.xml"
                runat="server"></asp:XmlDataSource>
        </div>

    </form>
</body>
</html>