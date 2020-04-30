// ************************
// Copyright Notice
// This objects are copyright of Insight Works 2018.  All rights reserved.
// Any redistribution or reproduction of part or all of the contents in any form is prohibited.
// ************************
report 50106 "AXP LPM Sample LP 4x6 Ship Lab"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'Report/AXP50106LPMSampleLP4x6ShipLab.rdlc';
    Caption = 'Sample LP 4x6 Ship Label';

    dataset
    {
        dataitem("License Plate Header"; "IWX LP Header")
        {
            RequestFilterFields = "No.", "Shipment No.";
            column(LicensePlateHeader_Barcode; trecBarcodeBlob.Blob)
            {

            }
            column(LicensePlateHeader_No; "License Plate Header"."No.")
            {
            }
            column(LicensePlateHeader_ShipmentGrossWeight; "License Plate Header"."Shipment Gross Weight")
            {
            }
            column(LicensePlateHeader_ShipmentNo; "License Plate Header"."Shipment No.")
            {
            }
            column(LicensePlateHeader_WeightUnitOfMeasure; "License Plate Header"."Weight Unit of Measure")
            {
            }
            column(LicensePlateHeader_ShippedItemCount; "License Plate Header"."Shipped Item Count")
            {
            }
            column(LicensePlateHeader_PackageTrackngNumber; "License Plate Header"."Package Tracking No.")//"Package Tracking Number")
            {
            }
            column(codSourceNo; codSourceNo)
            {
            }
            dataitem("Sales Shipment Header"; "Sales Shipment Header")
            {
                DataItemLink = "No." = FIELD("Shipment No.");
                DataItemTableView = SORTING("No.") WHERE("No." = FILTER(<> 0));
                column(SalesShipmentHeader_No; "Sales Shipment Header"."No.")
                {
                }
                column(SalesShipmentHeader_ShipToName; "Sales Shipment Header"."Ship-to Name")
                {
                }
                column(SalesShipmentHeader_ShipToAddress; "Sales Shipment Header"."Ship-to Address")
                {
                }
                column(SalesShipmentHeader_ShipToCity; "Sales Shipment Header"."Ship-to City")
                {
                }
                column(SalesShipmentHeader_ShipToCounty; "Sales Shipment Header"."Ship-to County")
                {
                }
                column(SalesShipmentHeader_ShipToPostCode; "Sales Shipment Header"."Ship-to Post Code")
                {
                }
                column(SalesShipmentHeader_ShipmentDate; FORMAT("Sales Shipment Header"."Shipment Date", 0, 4))
                {
                }
                column(SalesShipmentHeader_PackageTrackingNo; "Sales Shipment Header"."Package Tracking No.")
                {
                }
                column(codPackageTrackingNo; codPackageTrackingNo)
                {
                }
                column(CompanyInformation_Name; recCompanyInfo.Name)
                {
                }
                column(CompanyInformation_Address; recCompanyInfo.Address)
                {
                }
                column(CompanyInformation_City; recCompanyInfo.City)
                {
                }
                column(CompanyInformation_Province; recCompanyInfo.County)
                {
                }
                column(CompanyInformation_PostCode; recCompanyInfo."Post Code")
                {
                }
                column(External_Document_No; "External Document No.")
                {

                }

                trigger OnAfterGetRecord();
                begin
                    codPackageTrackingNo := FORMAT("Sales Shipment Header"."Package Tracking No.");
                end;

                trigger OnPreDataItem();
                begin
                    recCompanyInfo.GET;
                end;
            }

            trigger OnAfterGetRecord();
            var
                lcuBarcodeManagement: Codeunit "IWX Barcode Generation";
            begin

                if ("License Plate Header".Status <> "License Plate Header".Status::Shipped) or
                   ("License Plate Header"."Shipped Source Document" <>
                     "License Plate Header"."Shipped Source Document"::"Sales Order") then
                    CurrReport.SKIP;

                CLEAR(codSourceNo);

                // Option 2 is = to Sales Order
                if ("Shipped Source Document" = 2) then
                    codSourceNo := "Shipped Source No.";

                //create barcode
                lcuBarcodeManagement.get2dBarCode(trecBarcodeBlob, StrSubstNo('*%LP%%1*', "License Plate Header"."No."), iBarcodeDotSize, iBarcodeMarginSize, iBarcodeImageSize);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {

            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        //set barcode variables
        iBarcodeDotSize := 2;
        iBarcodeMarginSize := 0;
        iBarcodeImageSize := 0;
    end;

    var
        recCompanyInfo: Record "Company Information";
        trecBarcodeBlob: Record TempBlob temporary;
        codSourceNo: Code[20];
        codPackageTrackingNo: Code[30];
        iBarcodeDotSize: Integer;
        iBarcodeMarginSize: Integer;
        iBarcodeImageSize: Integer;
}

