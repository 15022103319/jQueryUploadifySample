﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Demo3.2.1.Master" AutoEventWireup="true" CodeBehind="onEnable.aspx.cs" Inherits="jQueryUploadify.WebForm.Sample.Demo3._2._1.Events.onEnable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <!-- BEGIN GENERAL PORTLET-->
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-gift"></i>onEnable 示例
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <input type="file" name="uploadify" id="uploadify" />
                                    <a href="javascript:$('#uploadify').uploadify('disable', false);">Enaled Uploadify</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="portlet box blue-hoki">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-gift"></i>说明
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse" data-original-title="" title=""></a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <ol>
                                  <li>当调用disable方法(参数为false，代表启用)时触发</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script type="text/javascript" src="../../scripts/uploadify/jquery.uploadify.js"></script>
    <script type="text/javascript">

        $(function () {
            $("#uploadify").uploadify({
                'swf': '../../scripts/uploadify/uploadify.swf',
                'uploader': '../../UploadHandler.ashx',
                'onEnable': function () {
                    alert('You can use Uploadify again.');
                }
            });
            //页面加载时先禁用
            $('#uploadify').uploadify('disable', true);
        });

    </script>
</asp:Content>
