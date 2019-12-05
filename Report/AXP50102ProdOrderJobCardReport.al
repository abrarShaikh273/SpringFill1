report 50102 "AXP Prod. Order - Job Card"
{
    // version NAVW111.00,NAVNA11.00

    DefaultLayout = RDLC;
    RDLCLayout = './Report/AXP50102ProdOrderJobCardReport.rdlc';
    CaptionML = ENU = 'Prod. Order - Job Card',
                ESM = 'Ord. prod. - Ficha trabajo',
                FRC = 'Bon de production - Fiche de projet',
                ENC = 'Prod. Order - Job Card';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Production Order"; "Production Order")
        {
            DataItemTableView = SORTING(Status, "No.");
            RequestFilterFields = Status, "No.", "Source Type", "Source No.";
            column(Status_ProdOrder; Status)
            {
            }
            column(No_ProdOrder; "No.")
            {
            }
            //DSWsc - 9/17/19 - Bar code
            column(Barcode; '*' + FORMAT("No.") + '*')
            {
            }
            // column(BarcodeBlob; Blob)
            // {
            // }
            dataitem(Integer; Integer)
            {
                DataItemTableView = SORTING(Number)
                                    WHERE(Number = CONST(1));
                column(TodayFormatted; FORMAT(TODAY, 0, 4))
                {
                }
                column(CompanyName; COMPANYPROPERTY.DISPLAYNAME)
                {
                }
                column(ProdOrderTableCaptionFilt; 'Production Order:' + ProdOrderFilter)
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
            }
            dataitem("Prod. Order Routing Line"; "Prod. Order Routing Line")
            {
                DataItemLink = Status = FIELD(Status),
                               "Prod. Order No." = FIELD("No.");
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
                column(StrtDt_ProdOrderRtngLine; FORMAT("Starting Date"))
                {
                }
                column(EndTime_ProdOrderRtngLine; "Ending Time")
                {
                    IncludeCaption = true;
                }
                column(EndDate_ProdOrderRtngLine; FORMAT("Ending Date"))
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
                column(CustomerNo_SalesHeader; CustomerNo_SalesHeader)
                {
                }
                column(ReqDeliveryDate_SalesHeader; FORMAT(ReqDeliveryDate_SalesHeader))
                {
                }
                column(ProdOrderSourceNoCaptLbl2; ProdOrderSourceNoCapt)
                {
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
                column(SalesHeaderCustNoCaptl; SalesHeaderCustomerNoCaptLbl)
                {
                }
                column(SalesHeadReqDeliveryDateCapt; SalesHeaderRequestedDeliveryDateCaptLbl)
                {
                }
                dataitem("Prod. Order Component"; "Prod. Order Component")
                {
                    DataItemLink = Status = FIELD(Status),
                                   "Prod. Order No." = FIELD("Prod. Order No."),
                                   "Routing Link Code" = FIELD("Routing Link Code");
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
                    //DSWsc - 9/17/19 - Added Description
                    column(Desc_ProdOrderComp; Description)
                    {
                        IncludeCaption = true;
                    }
                    column(UofM_ProdOrderComp; "Unit of Measure Code")
                    {
                        IncludeCaption = true;
                    }
                    //DSWsc - 9/17/19 - Added Description
                    column(OrderNo_ProdOrderComp; "Prod. Order No.")
                    {
                    }
                    column(MaterialRequirementsCapt; MaterialRequirementsCaptLbl)
                    {
                    }
                }

                trigger OnAfterGetRecord();
                var
                    WorkCenter: Record 99000754;
                    CalendarMgt: Codeunit 99000755;
                begin
                    WorkCenter.GET("Work Center No.");
                    CapacityUoM := WorkCenter."Unit of Measure Code";
                    "Expected Capacity Need" := "Expected Capacity Need" / CalendarMgt.TimeFactor(CapacityUoM);
                end;
            }

            trigger OnAfterGetRecord();
            var
                ProdOrderRoutingLine: Record 5409;
                SalesHeader: Record 36;
                //BarCodeMgmt: Codeunit DSW_BarcodeMgmt;     //DSWsc - 9/17/19
                BarCode: Code[100];
            begin
                BarCode := format("No.");                               //DSWsc - 9/17/19
                //BarCodeMgmt.DoGenerateBarcode(BarCode, 0, TempBlob);    //DSWsc - 9/17/19
                ProdOrderRoutingLine.SETRANGE(Status, Status);
                ProdOrderRoutingLine.SETRANGE("Prod. Order No.", "No.");
                IF NOT ProdOrderRoutingLine.FINDFIRST THEN
                    CurrReport.SKIP;

                CLEAR(ReqDeliveryDate_SalesHeader);
                CLEAR(CustomerNo_SalesHeader);

                IF "Production Order"."Source Type" = "Production Order"."Source Type"::"Sales Header" THEN BEGIN
                    IF SalesHeader.GET(SalesHeader."Document Type"::Order, "Production Order"."Source No.") THEN BEGIN
                        CustomerNo_SalesHeader := SalesHeader."Sell-to Customer No.";
                        ReqDeliveryDate_SalesHeader := SalesHeader."Requested Delivery Date";
                    END;
                END
            end;

            trigger OnPreDataItem();
            begin
                ProdOrderFilter := GETFILTERS;
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
        CurrReportPageNoCaptionLbl: TextConst ENU = 'Page', ESM = 'Pág.', FRC = 'Page', ENC = 'Page';
        ProdOrderJobCardCaptionLbl: TextConst ENU = 'Prod. Order - Job Card', ESM = 'Ord. prod. - Ficha trabajo', FRC = 'Bon de production - Fiche de projet', ENC = 'Prod. Order - Job Card';
        ProdOrderRtngLnStrtDtCaptLbl: TextConst ENU = 'Starting Date', ESM = 'Fecha inicial', FRC = 'Date début', ENC = 'Starting Date';
        ProdOrdRtngLnEndDatCaptLbl: TextConst ENU = 'Ending Date', ESM = 'Fecha final', FRC = 'Date fin', ENC = 'Ending Date';
        ProdOrdRtngLnExpcCapNdCptLbl: TextConst ENU = 'Time Needed', ESM = 'Tiempo necesario', FRC = 'Temps nécessaire', ENC = 'Time Needed';
        PrecalcTimesCaptionLbl: TextConst ENU = 'Precalc. Times', ESM = 'Tiempos previo cálculo', FRC = 'Temps théoriques', ENC = 'Precalc. Times';
        ProdOrderSourceNoCaptLbl: TextConst ENU = 'Item No.', ESM = 'Nº producto', FRC = 'N° d''article', ENC = 'Item No.';
        OutputCaptionLbl: TextConst ENU = 'Output', ESM = 'Salida', FRC = 'Sortie', ENC = 'Output';
        ScrapCaptionLbl: TextConst ENU = 'Scrap', ESM = 'Rechazo', FRC = 'Rebut', ENC = 'Scrap';
        DateCaptionLbl: TextConst ENU = 'Date', ESM = 'Fecha', FRC = 'Date', ENC = 'Date';
        ByCaptionLbl: TextConst ENU = 'By', ESM = 'Por', FRC = 'Par', ENC = 'By';
        EmptyStringCaptionLbl: TextConst ENU = '___________', ESM = '___________', FRC = '___________', ENC = '___________';
        MaterialRequirementsCaptLbl: TextConst ENU = 'Material Requirements', ESM = 'Necesidades material', FRC = 'Réquisitions de matériel', ENC = 'Material Requirements';
        SalesHeaderCustomerNoCaptLbl: Label 'Customer No.';
        SalesHeaderRequestedDeliveryDateCaptLbl: Label 'Requested Delivery Date';
        CustomerNo_SalesHeader: Text[20];
        ReqDeliveryDate_SalesHeader: Date;
        ProdOrderSourceNoCapt: Label 'Sales Order No.';
    //TempBlob: Record TempBlob temporary;   //DSWsc - 9/17/19
}

