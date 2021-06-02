report 50107 "AXP_Prod Order Job Card"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'Report/AXP50107_ProdOrderJobCard.rdl';
    AdditionalSearchTerms = 'production order - job card,work order job card';
    ApplicationArea = Manufacturing;
    Caption = 'Prod. Order - Job Card';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem("Production Order";
        "Production Order")
        {
            DataItemTableView = SORTING(Status, "No.");
            RequestFilterFields = Status, "No.", "Source Type", "Source No.";

            column(Status_ProdOrder;
            Status)
            {
            }
            column(No_ProdOrder;
            "No.")
            {
            }
            column(ReqDeliveryDate; salesheader."Requested Delivery Date")
            {
                //Caption = 'Requested Delivery Date';
            }
            column(CustName; salesheader."Sell-to Customer Name")
            {
                //Caption = 'Customer Name';
            }
            column(PONumber; salesheader."External Document No.")
            {
                //Caption = 'PO#';
            }
            column(SalesOrderNo; salesheader."No.")
            {
                //Caption = 'Sales Order No.';
            }
            dataitem("Integer"; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

                column(TodayFormatted; Format(Today, 0, 4))
                {
                }
                column(CompanyName; COMPANYPROPERTY.DisplayName)
                {
                }
                column(ProdOrderTableCaptionFilt; "Production Order".TableCaption + ':' + ProdOrderFilter)
                {
                }
                column(ProdOrderFilter; ProdOrderFilter)
                {
                }
                column(CurrReportPageNoCaption; CurrReportPageNoCaptionLbl)
                {
                }
                column(ProdOrderJobCardCaption; ProdOrderJobCardCaptionLbl)
                {
                }
                column(barcodeblob; iwxbarcode.Image)
                {
                }
                trigger OnAfterGetRecord()
                var
                    BarcodeGeneration: Codeunit "IWX Library - Barcode Gen";
                begin
                    BarcodeGeneration.Generate39Barcode(iwxbarcode, "Production Order"."No.", 550, 220);
                    //BarcodeGeneration.Generate128Barcode();
                    //BarcodeGeneration.Generate39Barcode(iwxbarcode, Format("Production Order"."No."), 550, 220);
                end;
            }
            dataitem("Prod. Order Routing Line";
            "Prod. Order Routing Line")
            {
                DataItemLink = Status = FIELD(Status), "Prod. Order No." = FIELD("No.");
                DataItemTableView = SORTING(Status, "Prod. Order No.", "Routing Reference No.", "Routing No.", "Operation No.");

                column(RtngNo_ProdOrderRtngLine; "Routing No.")
                {
                    IncludeCaption = true;
                }
                column(OPNo_ProdOrderRtngLine; "Operation No.")
                {
                    IncludeCaption = true;
                }
                column(Type_ProdOrderRtngLine; Type)
                {
                    IncludeCaption = true;
                }
                column(No_ProdOrderRtngLine; "No.")
                {
                    IncludeCaption = true;
                }
                column(StrtTim_ProdOrderRtngLine; "Starting Time")
                {
                    IncludeCaption = true;
                }
                column(StrtDt_ProdOrderRtngLine; Format("Starting Date"))
                {
                }
                column(EndTime_ProdOrderRtngLine; "Ending Time")
                {
                    IncludeCaption = true;
                }
                column(EndDate_ProdOrderRtngLine; Format("Ending Date"))
                {
                }
                column(ExpCapNd_ProdOrderRtngLine; "Expected Capacity Need")
                {
                }
                column(Desc_ProdOrder; "Production Order".Description)
                {
                }
                column(SourceNo_ProdOrder; "Production Order"."Source No.")
                {
                }
                column(ProdOrdrRtngLineRTUOMCode; CapacityUoM)
                {
                }
                column(PrdOrdNo_ProdOrderRtngLine; "Prod. Order No.")
                {
                    IncludeCaption = true;
                }
                column(ProdOrderRtngLnStrtDtCapt; ProdOrderRtngLnStrtDtCaptLbl)
                {
                }
                column(ProdOrdRtngLnEndDatCapt; ProdOrdRtngLnEndDatCaptLbl)
                {
                }
                column(ProdOrdRtngLnExpcCapNdCpt; ProdOrdRtngLnExpcCapNdCptLbl)
                {
                }
                column(PrecalcTimesCaption; PrecalcTimesCaptionLbl)
                {
                }
                column(ProdOrderSourceNoCapt; ProdOrderSourceNoCaptLbl)
                {
                }
                column(OutputCaption; OutputCaptionLbl)
                {
                }
                column(ScrapCaption; ScrapCaptionLbl)
                {
                }
                column(DateCaption; DateCaptionLbl)
                {
                }
                column(ByCaption; ByCaptionLbl)
                {
                }
                column(EmptyStringCaption; EmptyStringCaptionLbl)
                {
                }
                dataitem("Prod. Order Component"; "Prod. Order Component")
                {
                    DataItemLink = Status = FIELD(Status), "Prod. Order No." = FIELD("Prod. Order No."), "Routing Link Code" = FIELD("Routing Link Code");
                    DataItemTableView = SORTING(Status, "Prod. Order No.", "Prod. Order Line No.", "Line No.");

                    column(Position_ProdOrderComp; Position)
                    {
                        IncludeCaption = true;
                    }
                    column(Position2_ProdOrderComp; "Position 2")
                    {
                        IncludeCaption = true;
                    }
                    column(LdTimOffset_ProdOrderComp; "Lead-Time Offset")
                    {
                        IncludeCaption = true;
                    }
                    column(ExpectedQty_ProdOrderComp; "Expected Quantity")
                    {
                        IncludeCaption = true;
                    }
                    column(ItemNo_ProdOrderComp; "Item No.")
                    {
                        IncludeCaption = true;
                    }
                    column(OrderNo_ProdOrderComp; "Prod. Order No.")
                    {
                    }
                    column(MaterialRequirementsCapt; MaterialRequirementsCaptLbl)
                    {
                    }
                    column(Description; Description)
                    {
                    }
                    column(Unit_of_Measure_Code; "Unit of Measure Code")
                    {
                    }
                }
                trigger OnAfterGetRecord()
                var
                    WorkCenter: Record "Work Center";
                    CalendarMgt: Codeunit "Shop Calendar Management";
                begin
                    WorkCenter.Get("Work Center No.");
                    CapacityUoM := WorkCenter."Unit of Measure Code";
                    "Expected Capacity Need" := "Expected Capacity Need" / CalendarMgt.TimeFactor(CapacityUoM);
                end;
            }
            trigger OnAfterGetRecord()
            var
                ProdOrderRoutingLine: Record "Prod. Order Routing Line";
            begin
                Clear(SalesHeader);
                if ("Production Order"."Description 2" <> '') then begin
                    if (StrLen("Production Order"."Description 2") <= 20) then begin
                        SalesHeader.SetRange("No.", "Production Order"."Description 2");
                        if SalesHeader.FindFirst() then;
                    end;
                end;
                ProdOrderRoutingLine.SetRange(Status, Status);
                ProdOrderRoutingLine.SetRange("Prod. Order No.", "No.");
                if not ProdOrderRoutingLine.FindFirst then CurrReport.Skip();
            end;

            trigger OnPreDataItem()
            begin
                ProdOrderFilter := GetFilters;
            end;
        }
    }
    requestpage
    {
        layout
        {
        }
        actions
        {
        }
    }
    labels
    {
    }
    var
        ProdOrderFilter: Text;
        CapacityUoM: Code[10];
        CurrReportPageNoCaptionLbl: Label 'Page';
        ProdOrderJobCardCaptionLbl: Label 'Prod. Order - Job Card';
        ProdOrderRtngLnStrtDtCaptLbl: Label 'Starting Date';
        ProdOrdRtngLnEndDatCaptLbl: Label 'Ending Date';
        ProdOrdRtngLnExpcCapNdCptLbl: Label 'Time Needed';
        PrecalcTimesCaptionLbl: Label 'Precalc. Times';
        ProdOrderSourceNoCaptLbl: Label 'Item No.';
        OutputCaptionLbl: Label 'Output';
        ScrapCaptionLbl: Label 'Scrap';
        DateCaptionLbl: Label 'Date';
        ByCaptionLbl: Label 'By';
        EmptyStringCaptionLbl: Label '___________';
        MaterialRequirementsCaptLbl: Label 'Material Requirements';
        iwxbarcode: Record "IWX Barcode" temporary;
        SalesHeader: Record "Sales Header";
}
