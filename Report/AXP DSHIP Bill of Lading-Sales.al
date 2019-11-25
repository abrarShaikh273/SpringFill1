report 50105 "AXP DSHIP Bill of Lading-Sales"
{
    // version DSHIP2.0.0

    DefaultLayout = RDLC;
    RDLCLayout = 'Report/AXP DSHIP Bill of Lading-Sales.rdlc';
    Caption = 'Dynamic Ship Bill of Lading-Sales';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            RequestFilterFields = "No.";
            column(SalesOrderNumber; "Sales Header"."No.")
            {
            }
            column(ShipToName; "Sales Header"."Ship-to Name")
            {
            }
            column(ShipToName2; "Sales Header"."Ship-to Name 2")
            {
            }
            column(ShipToAddress; "Sales Header"."Ship-to Address")
            {
            }
            column(ShipToAddress2; "Sales Header"."Ship-to Address 2")
            {
            }
            column(ShipToCity; "Sales Header"."Ship-to City")
            {
            }
            column(ShipToCountry; "Sales Header"."Ship-to Country/Region Code")
            {
            }
            column(ShipToContact; "Sales Header"."Ship-to Contact")
            {
            }
            column(ShipToPostCode; "Sales Header"."Ship-to Post Code")
            {
            }
            column(BillToCustomerNumber; "Sales Header"."Bill-to Customer No.")
            {
            }
            column(BillToName; "Sales Header"."Bill-to Name")
            {
            }
            column(BillToName2; "Sales Header"."Bill-to Name 2")
            {
            }
            column(BillToAddress; "Sales Header"."Bill-to Address")
            {
            }
            column(BillToAddress2; "Sales Header"."Bill-to Address 2")
            {
            }
            column(BillToCity; "Sales Header"."Bill-to City")
            {
            }
            column(BillToContact; "Sales Header"."Bill-to Contact")
            {
            }
            column(BillToPostCode; "Sales Header"."Bill-to Post Code")
            {
            }
            column(BillToCountry; "Sales Header"."Bill-to Country/Region Code")
            {
            }
            column(CarrierName; txtCarrierName)
            {
            }
            dataitem(Location; Location)
            {
                DataItemLink = Code = FIELD("Location Code");
                column(LocationCode; Location.Code)
                {
                }
                column(LocationName; Location.Name)
                {
                }
                column(LocationAddress; Location.Address)
                {
                }
                column(LocationAddress2; Location."Address 2")
                {
                }
                column(LocationCity; Location.City)
                {
                }
                column(LocationPhone; Location."Phone No.")
                {
                }
                column(LocationContact; Location.Contact)
                {
                }
                column(LocationPostCode; Location."Post Code")
                {
                }
                column(LocationCountry; Location."Country/Region Code")
                {
                }
            }

            trigger OnAfterGetRecord();
            var
                lrecShippingAgent: Record "Shipping Agent";
                lrecShipmentHeader: Record "Warehouse Shipment Header";
            begin
                if (optSourceDocument = optSourceDocument::"Warehouse Shipment") then begin
                    if (lrecShipmentHeader.GET(codSourceNo)) then begin
                        if (lrecShippingAgent.GET(lrecShipmentHeader."Shipping Agent Code")) then begin
                            txtCarrierName := lrecShippingAgent.Name;
                        end;
                    end;
                end else
                    if (optSourceDocument = optSourceDocument::"Sales Order") then begin
                        if (lrecShippingAgent.GET("Sales Header"."Shipping Agent Code")) then begin
                            txtCarrierName := lrecShippingAgent.Name;
                        end;
                    end;
            end;
        }
        dataitem("LPM License Plate Header"; "IWX License Plate Header")
        {
            CalcFields = "Source Document", "Source No.";
            column(LicensePlateNo; "LPM License Plate Header"."No.")
            {
            }
            column(LicensePlateDescription; "LPM License Plate Header".Description)
            {
            }
            column(LicensePlateInsurance; "LPM License Plate Header"."Insurance Amount (LCY)")
            {
            }
            column(ShipmentLength; "LPM License Plate Header"."Shipment Length")
            {
            }
            column(ShipmentWidth; "LPM License Plate Header"."Shipment Width")
            {
            }
            column(ShipmentHeight; "LPM License Plate Header"."Shipment Height")
            {
            }
            column(ShipmentWeight; "LPM License Plate Header"."Shipment Gross Weight")
            {
            }
            column(WeightUOM; "LPM License Plate Header"."Weight Unit of Measure")
            {
            }
            column(DimensionUOM; "LPM License Plate Header"."Shpt. Dim. Unit of Measure")
            {
            }

            trigger OnPreDataItem();
            begin
                if (optSourceDocument = optSourceDocument::"Warehouse Shipment") then begin
                    "LPM License Plate Header".SETRANGE("Source Document", "LPM License Plate Header"."Source Document"::Shipment);
                    "LPM License Plate Header".SETRANGE("Source No.", codSourceNo);
                end else
                    if (optSourceDocument = optSourceDocument::"Sales Order") then begin
                        "LPM License Plate Header".SETRANGE("Source Document", "LPM License Plate Header"."Source Document"::"Sales Order");
                        "LPM License Plate Header".SETRANGE("Source No.", codSourceNo);
                    end;
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

    trigger OnInitReport();
    begin
        optSourceDocument := optSourceDocument::"Sales Order";
    end;

    var
        optSourceDocument: Option "Sales Order","Sales Return Order","Purchase Order","Purchase Return Order","Outbound Transfer","Service Order","Warehouse Shipment";
        codSourceNo: Code[50];
        txtCarrierName: Text;

    procedure setSourceDocument(poptSourceDocument: Option "Sales Order","Sales Return Order","Purchase Order","Purchase Return Order","Outbound Transfer","Service Order","Warehouse Shipment"; pcodSourceNo: Code[50]);
    begin
        //<FUNC author="Howie Zhao" date="9/13/17" issue="TFS2693" >
        //  Description: Set report source document and source no
        //  Called From: Codeunit 23044601 DSHIP Package Management
        //  Side Effect: None
        //</FUNC>

        optSourceDocument := poptSourceDocument;
        codSourceNo := pcodSourceNo;
    end;
}

