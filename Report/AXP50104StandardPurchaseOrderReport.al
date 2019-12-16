report 50104 "AXP Standard Purchase - Order"
{
    // version NAVW111.00,NAVNA11.00

    RDLCLayout = './Report/AXP50104StandardPurchaseOrderReport.rdlc';
    WordLayout = './Report/AXP50104StandardPurchaseOrderReport.docx';
    CaptionML = ENU = 'AXP Purchase - Order',
                ESM = 'AXP Compra - Pedido',
                FRC = 'AXP Achat - Commande',
                ENC = 'AXP Purchase - Order';
    DefaultLayout = Word;
    EnableHyperlinks = true;
    PreviewMode = PrintLayout;
    WordMergeDataItem = "Purchase Header";
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = SORTING("Document Type", "No.")
                                WHERE("Document Type" = CONST(Order));
            RequestFilterFields = "No.", "Buy-from Vendor No.", "No. Printed";
            RequestFilterHeadingML = ENU = 'Standard Purchase - Order',
                                     ESM = 'Compra estándar: pedido',
                                     FRC = 'Codes achat standard - commande',
                                     ENC = 'Standard Purchase - Order';
            column(CompanyAddress1; CompanyAddr[1])
            {
            }
            column(CompanyAddress2; CompanyAddr[2])
            {
            }
            column(CompanyAddress3; CompanyAddr[3])
            {
            }
            column(CompanyAddress4; CompanyAddr[4])
            {
            }
            column(CompanyAddress5; CompanyAddr[5])
            {
            }
            column(CompanyAddress6; CompanyAddr[6])
            {
            }
            column(CompanyHomePage_Lbl; HomePageCaptionLbl)
            {
            }
            column(CompanyHomePage; CompanyInfo."Home Page")
            {
            }
            column(CompanyEmail_Lbl; EmailIDCaptionLbl)
            {
            }
            column(CompanyEMail; CompanyInfo."E-Mail")
            {
            }
            column(CompanyPicture; CompanyInfo.Picture)
            {
            }
            column(CompanyPhoneNo; CompanyInfo."Phone No.")
            {
            }
            column(CompanyPhoneNo_Lbl; CompanyInfoPhoneNoCaptionLbl)
            {
            }
            column(CompanyGiroNo; CompanyInfo."Giro No.")
            {
            }
            column(CompanyGiroNo_Lbl; CompanyInfoGiroNoCaptionLbl)
            {
            }
            column(CompanyBankName; CompanyInfo."Bank Name")
            {
            }
            column(CompanyBankName_Lbl; CompanyInfoBankNameCaptionLbl)
            {
            }
            column(CompanyBankBranchNo; CompanyInfo."Bank Branch No.")
            {
            }
            column(CompanyBankBranchNo_Lbl; CompanyInfo.FIELDCAPTION("Bank Branch No."))
            {
            }
            column(CompanyBankAccountNo; CompanyInfo."Bank Account No.")
            {
            }
            column(CompanyBankAccountNo_Lbl; CompanyInfoBankAccNoCaptionLbl)
            {
            }
            column(CompanyIBAN; CompanyInfo.IBAN)
            {
            }
            column(CompanyIBAN_Lbl; CompanyInfo.FIELDCAPTION(IBAN))
            {
            }
            column(CompanySWIFT; CompanyInfo."SWIFT Code")
            {
            }
            column(CompanySWIFT_Lbl; CompanyInfo.FIELDCAPTION("SWIFT Code"))
            {
            }
            column(CompanyLogoPosition; CompanyLogoPosition)
            {
            }
            column(CompanyRegistrationNumber; CompanyInfo.GetRegistrationNumber)
            {
            }
            column(CompanyRegistrationNumber_Lbl; CompanyInfo.GetRegistrationNumberLbl)
            {
            }
            column(CompanyVATRegNo; CompanyInfo.GetVATRegistrationNumber)
            {
            }
            column(CompanyVATRegNo_Lbl; CompanyInfo.GetVATRegistrationNumberLbl)
            {
            }
            column(CompanyVATRegistrationNo; CompanyInfo.GetVATRegistrationNumber)
            {
            }
            column(CompanyVATRegistrationNo_Lbl; CompanyInfo.GetVATRegistrationNumberLbl)
            {
            }
            column(CompanyLegalOffice; CompanyInfo.GetLegalOffice)
            {
            }
            column(CompanyLegalOffice_Lbl; CompanyInfo.GetLegalOfficeLbl)
            {
            }
            column(CompanyCustomGiro; CompanyInfo.GetCustomGiro)
            {
            }
            column(CompanyCustomGiro_Lbl; CompanyInfo.GetCustomGiroLbl)
            {
            }
            column(DocType_PurchHeader; "Document Type")
            {
            }
            column(No_PurchHeader; "No.")
            {
            }
            column(DocumentTitle_Lbl; DocumentTitleLbl)
            {
            }
            column(Amount_Lbl; AmountCaptionLbl)
            {
            }
            column(PurchLineInvDiscAmt_Lbl; PurchLineInvDiscAmtCaptionLbl)
            {
            }
            column(Subtotal_Lbl; SubtotalCaptionLbl)
            {
            }
            column(VATAmtLineVAT_Lbl; VATAmtLineVATCaptionLbl)
            {
            }
            column(VATAmtLineVATAmt_Lbl; VATAmtLineVATAmtCaptionLbl)
            {
            }
            column(VATAmtSpec_Lbl; VATAmtSpecCaptionLbl)
            {
            }
            column(VATIdentifier_Lbl; VATIdentifierCaptionLbl)
            {
            }
            column(VATAmtLineInvDiscBaseAmt_Lbl; VATAmtLineInvDiscBaseAmtCaptionLbl)
            {
            }
            column(VATAmtLineLineAmt_Lbl; VATAmtLineLineAmtCaptionLbl)
            {
            }
            column(VALVATBaseLCY_Lbl; VALVATBaseLCYCaptionLbl)
            {
            }
            column(Total_Lbl; TotalCaptionLbl)
            {
            }
            column(PaymentTermsDesc_Lbl; PaymentTermsDescCaptionLbl)
            {
            }
            column(ShipmentMethodDesc_Lbl; ShipmentMethodDescCaptionLbl)
            {
            }
            column(PrepymtTermsDesc_Lbl; PrepymtTermsDescCaptionLbl)
            {
            }
            column(HomePage_Lbl; HomePageCaptionLbl)
            {
            }
            column(EmailID_Lbl; EmailIDCaptionLbl)
            {
            }
            column(AllowInvoiceDisc_Lbl; AllowInvoiceDiscCaptionLbl)
            {
            }
            column(CurrRepPageNo; STRSUBSTNO(PageLbl, FORMAT(CurrReport.PAGENO)))
            {
            }
            column(DocumentDate; FORMAT("Document Date", 0, 4))
            {
            }
            column(DueDate; FORMAT("Due Date", 0, 4))
            {
            }
            column(ExptRecptDt_PurchaseHeader; FORMAT("Expected Receipt Date", 0, 4))
            {
            }
            column(OrderDate_PurchaseHeader; FORMAT("Order Date", 0, 4))
            {
            }
            column(VATNoText; VATNoText)
            {
            }
            column(VATRegNo_PurchHeader; "VAT Registration No.")
            {
            }
            column(PurchaserText; PurchaserText)
            {
            }
            column(SalesPurchPersonName; SalespersonPurchaser.Name)
            {
            }
            column(ReferenceText; ReferenceText)
            {
            }
            column(YourRef_PurchHeader; "Your Reference")
            {
            }
            column(BuyFrmVendNo_PurchHeader; "Buy-from Vendor No.")
            {
            }
            column(BuyFromAddr1; BuyFromAddr[1])
            {
            }
            column(BuyFromAddr2; BuyFromAddr[2])
            {
            }
            column(BuyFromAddr3; BuyFromAddr[3])
            {
            }
            column(BuyFromAddr4; BuyFromAddr[4])
            {
            }
            column(BuyFromAddr5; BuyFromAddr[5])
            {
            }
            column(BuyFromAddr6; BuyFromAddr[6])
            {
            }
            column(BuyFromAddr7; BuyFromAddr[7])
            {
            }
            column(BuyFromAddr8; BuyFromAddr[8])
            {
            }
            column(PricesIncludingVAT_Lbl; PricesIncludingVATCaptionLbl)
            {
            }
            column(PricesInclVAT_PurchHeader; "Prices Including VAT")
            {
            }
            column(OutputNo; OutputNo)
            {
            }
            column(VATBaseDisc_PurchHeader; "VAT Base Discount %")
            {
            }
            column(PricesInclVATtxt; PricesInclVATtxtLbl)
            {
            }
            column(PaymentTermsDesc; PaymentTerms.Description)
            {
            }
            column(ShipmentMethodDesc; ShipmentMethod.Description)
            {
            }
            column(PrepmtPaymentTermsDesc; PrepmtPaymentTerms.Description)
            {
            }
            column(DimText; DimText)
            {
            }
            column(OrderNo_Lbl; OrderNoCaptionLbl)
            {
            }
            column(Page_Lbl; PageCaptionLbl)
            {
            }
            column(DocumentDate_Lbl; DocumentDateCaptionLbl)
            {
            }
            column(BuyFrmVendNo_PurchHeader_Lbl; FIELDCAPTION("Buy-from Vendor No."))
            {
            }
            column(PricesInclVAT_PurchHeader_Lbl; FIELDCAPTION("Prices Including VAT"))
            {
            }
            column(Receiveby_Lbl; ReceivebyCaptionLbl)
            {
            }
            column(Buyer_Lbl; BuyerCaptionLbl)
            {
            }
            column(PayToVendNo_PurchHeader; "Pay-to Vendor No.")
            {
            }
            column(VendAddr8; VendAddr[8])
            {
            }
            column(VendAddr7; VendAddr[7])
            {
            }
            column(VendAddr6; VendAddr[6])
            {
            }
            column(VendAddr5; VendAddr[5])
            {
            }
            column(VendAddr4; VendAddr[4])
            {
            }
            column(VendAddr3; VendAddr[3])
            {
            }
            column(VendAddr2; VendAddr[2])
            {
            }
            column(VendAddr1; VendAddr[1])
            {
            }
            column(PaymentDetails_Lbl; PaymentDetailsCaptionLbl)
            {
            }
            column(VendNo_Lbl; VendNoCaptionLbl)
            {
            }
            column(SellToCustNo_PurchHeader; "Sell-to Customer No.")
            {
            }
            column(ShipToAddr1; ShipToAddr[1])
            {
            }
            column(ShipToAddr2; ShipToAddr[2])
            {
            }
            column(ShipToAddr3; ShipToAddr[3])
            {
            }
            column(ShipToAddr4; ShipToAddr[4])
            {
            }
            column(ShipToAddr5; ShipToAddr[5])
            {
            }
            column(ShipToAddr6; ShipToAddr[6])
            {
            }
            column(ShipToAddr7; ShipToAddr[7])
            {
            }
            column(ShipToAddr8; ShipToAddr[8])
            {
            }
            column(ShiptoAddress_Lbl; ShiptoAddressCaptionLbl)
            {
            }
            column(BilltoAddress_Lbl; BilltoAddressCaptionLbl)
            {
            }
            column(SellToCustNo_PurchHeader_Lbl; FIELDCAPTION("Sell-to Customer No."))
            {
            }
            column(ItemNumber_Lbl; ItemNumberCaptionLbl)
            {
            }
            column(ItemDescription_Lbl; ItemDescriptionCaptionLbl)
            {
            }
            column(ItemQuantity_Lbl; ItemQuantityCaptionLbl)
            {
            }
            column(ItemUnit_Lbl; ItemUnitCaptionLbl)
            {
            }
            column(ItemUnitPrice_Lbl; ItemUnitPriceCaptionLbl)
            {
            }
            column(ItemLineAmount_Lbl; ItemLineAmountCaptionLbl)
            {
            }
            column(ToCaption_Lbl; ToCaptionLbl)
            {
            }
            column(VendorIDCaption_Lbl; VendorIDCaptionLbl)
            {
            }
            column(ConfirmToCaption_Lbl; ConfirmToCaptionLbl)
            {
            }
            column(PurchOrderCaption_Lbl; PurchOrderCaptionLbl)
            {
            }
            column(PurchOrderNumCaption_Lbl; PurchOrderNumCaptionLbl)
            {
            }
            column(PurchOrderDateCaption_Lbl; PurchOrderDateCaptionLbl)
            {
            }
            column(TaxIdentTypeCaption_Lbl; TaxIdentTypeCaptionLbl)
            {
            }
            column(InvoiceDiscountCaption_Lbl; InvoiceDiscountCaptionLbl)
            {
            }
            column(TotalPriceCaption_Lbl; TotalPriceCaptionLbl)
            {
            }
            column(TotalTaxLabel; TotalTaxLabel)
            {
            }
            column(Tax_Lbl; TaxLbl)
            {
            }
            column(OrderDate_Lbl; OrderDateLbl)
            {
            }
            column(VendorOrderNo; "Vendor Order No.")
            {
            }
            column(VendorInvoiceNo; "Vendor Invoice No.")
            {
            }
            column(VendorInvoiceNo_Lbl; VendorInvoiceNo_Lbl)
            {
            }
            column(VendorOrderNo_Lbl; VendorOrderNo_Lbl)
            {
            }
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document Type" = FIELD("Document Type"),
                               "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");
                column(LineNo_PurchLine; "Line No.")
                {
                }
                column(AllowInvDisctxt; AllowInvDisctxt)
                {
                }
                column(Type_PurchLine; FORMAT(Type, 0, 2))
                {
                }
                column(No_PurchLine; "No.")
                {
                }
                column(Desc_PurchLine; Description)
                {
                }
                column(Qty_PurchLine; FormattedQuanitity)
                {
                }
                column(UOM_PurchLine; "Unit of Measure")
                {
                }
                column(DirUnitCost_PurchLine; FormattedDirectUnitCost)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 2;
                }
                column(LineDisc_PurchLine; "Line Discount %")
                {
                }
                column(LineAmt_PurchLine; "Line Amount")
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(AllowInvDisc_PurchLine; "Allow Invoice Disc.")
                {
                }
                column(VATIdentifier_PurchLine; "VAT Identifier")
                {
                }
                column(InvDiscAmt_PurchLine; -"Inv. Discount Amount")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalInclVAT; "Line Amount" - "Inv. Discount Amount")
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(DirectUniCost_Lbl; DirectUniCostCaptionLbl)
                {
                }
                column(PurchLineLineDisc_Lbl; PurchLineLineDiscCaptionLbl)
                {
                }
                column(VATDiscountAmount_Lbl; VATDiscountAmountCaptionLbl)
                {
                }
                column(No_PurchLine_Lbl; FIELDCAPTION("No."))
                {
                }
                column(Desc_PurchLine_Lbl; FIELDCAPTION(Description))
                {
                }
                column(Qty_PurchLine_Lbl; FIELDCAPTION(Quantity))
                {
                }
                column(UOM_PurchLine_Lbl; ItemUnitOfMeasureCaptionLbl)
                {
                }
                column(VATIdentifier_PurchLine_Lbl; FIELDCAPTION("VAT Identifier"))
                {
                }
                column(AmountIncludingVAT; "Amount Including VAT")
                {
                }
                column(LineAmtTaxAmtInvDiscountAmt; "Line Amount" + TaxAmount - "Inv. Discount Amount")
                {
                }
                column(ReqReceiptDate_PurchLine; FORMAT("Purchase Line"."Requested Receipt Date"))
                {
                }
                column(PurchLineDelivDateCapt; PurchLineDelivDateCaptLbl)
                {
                }

                trigger OnAfterGetRecord();
                begin
                    AllowInvDisctxt := FORMAT("Allow Invoice Disc.");
                    TotalSubTotal += "Line Amount";
                    TotalInvoiceDiscountAmount -= "Inv. Discount Amount";
                    TotalAmount += Amount;
                    IF "Cross-Reference No." <> '' THEN
                        "No." := "Cross-Reference No.";

                    FormatDocument.SetPurchaseLine("Purchase Line", FormattedQuanitity, FormattedDirectUnitCost);

                    OnLineNumber := OnLineNumber + 1;

                    IF ("Purchase Header"."Tax Area Code" <> '') AND NOT UseExternalTaxEngine THEN
                        SalesTaxCalc.AddPurchLine("Purchase Line");

                    IF Type = 0 THEN BEGIN
                        "Unit of Measure" := '';
                        "Line Amount" := 0;
                        "Inv. Discount Amount" := 0;
                        Quantity := 0;
                    END;

                    IF OnLineNumber = NumberOfLines THEN
                        IF "Purchase Header"."Tax Area Code" <> '' THEN BEGIN
                            IF UseExternalTaxEngine THEN
                                SalesTaxCalc.CallExternalTaxEngineForPurch("Purchase Header", TRUE)
                            ELSE
                                SalesTaxCalc.EndSalesTaxCalculation(UseDate);
                            SalesTaxCalc.GetSummarizedSalesTaxTable(TempSalesTaxAmtLine);
                            BrkIdx := 0;
                            PrevPrintOrder := 0;
                            PrevTaxPercent := 0;
                            TaxAmount := 0;

                            TempSalesTaxAmtLine.RESET;
                            TempSalesTaxAmtLine.SETCURRENTKEY("Print Order", "Tax Area Code for Key", "Tax Jurisdiction Code");
                            IF TempSalesTaxAmtLine.FIND('-') THEN
                                REPEAT
                                    IF (TempSalesTaxAmtLine."Print Order" = 0) OR
                                       (TempSalesTaxAmtLine."Print Order" <> PrevPrintOrder) OR
                                       (TempSalesTaxAmtLine."Tax %" <> PrevTaxPercent)
                                    THEN BEGIN
                                        BrkIdx := BrkIdx + 1;
                                        IF BrkIdx > 1 THEN BEGIN
                                            IF TaxArea."Country/Region" = TaxArea."Country/Region"::CA THEN
                                                BreakdownTitle := TaxBreakdownLbl
                                            ELSE
                                                BreakdownTitle := SalesTaxBreakdownLbl;
                                        END;
                                        IF BrkIdx > ARRAYLEN(BreakdownAmt) THEN BEGIN
                                            BrkIdx := BrkIdx - 1;
                                            BreakdownLabel[BrkIdx] := OtherTaxesLbl;
                                        END ELSE
                                            BreakdownLabel[BrkIdx] := STRSUBSTNO(TempSalesTaxAmtLine."Print Description", TempSalesTaxAmtLine."Tax %");
                                    END;
                                    BreakdownAmt[BrkIdx] := BreakdownAmt[BrkIdx] + TempSalesTaxAmtLine."Tax Amount";
                                    TaxAmount := TaxAmount + TempSalesTaxAmtLine."Tax Amount";
                                UNTIL TempSalesTaxAmtLine.NEXT = 0;

                            IF BrkIdx = 1 THEN BEGIN
                                CLEAR(BreakdownLabel);
                                CLEAR(BreakdownAmt);
                            END;
                        END;
                end;

                trigger OnPreDataItem();
                begin
                    NumberOfLines := COUNT;
                    OnLineNumber := 0;
                end;
            }
            dataitem(Totals; Integer)
            {
                DataItemTableView = SORTING(Number)
                                    WHERE(Number = CONST(1));
                column(VATAmountText; TempVATAmountLine.VATAmountText)
                {
                }
                column(TotalVATAmount; VATAmount)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATDiscountAmount; -VATDiscountAmount)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATBaseAmount; VATBaseAmount)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalAmountInclVAT; TotalAmountInclVAT)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalInclVATText; TotalInclVATText)
                {
                }
                column(TotalExclVATText; TotalExclVATText)
                {
                }
                column(TotalSubTotal; TotalSubTotal)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalInvoiceDiscountAmount; TotalInvoiceDiscountAmount)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalAmount; TotalAmount)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalText; TotalText)
                {
                }
                column(TaxAmount; TaxAmount)
                {
                }

                trigger OnAfterGetRecord();
                var
                    TempPrepmtPurchLine: Record 39 temporary;
                begin
                    CLEAR(TempPurchLine);
                    CLEAR(PurchPost);
                    TempPurchLine.DELETEALL;
                    TempVATAmountLine.DELETEALL;
                    PurchPost.GetPurchLines("Purchase Header", TempPurchLine, 0);
                    TempPurchLine.CalcVATAmountLines(0, "Purchase Header", TempPurchLine, TempVATAmountLine);
                    TempPurchLine.UpdateVATOnLines(0, "Purchase Header", TempPurchLine, TempVATAmountLine);
                    VATAmount := TempVATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := TempVATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      TempVATAmountLine.GetTotalVATDiscount("Purchase Header"."Currency Code", "Purchase Header"."Prices Including VAT");
                    TotalAmountInclVAT := TempVATAmountLine.GetTotalAmountInclVAT;

                    TempPrepaymentInvLineBuffer.DELETEALL;
                    PurchasePostPrepayments.GetPurchLines("Purchase Header", 0, TempPrepmtPurchLine);
                    IF NOT TempPrepmtPurchLine.ISEMPTY THEN BEGIN
                        PurchasePostPrepayments.GetPurchLinesToDeduct("Purchase Header", TempPurchLine);
                        IF NOT TempPurchLine.ISEMPTY THEN
                            PurchasePostPrepayments.CalcVATAmountLines("Purchase Header", TempPurchLine, TempPrePmtVATAmountLineDeduct, 1);
                    END;
                    PurchasePostPrepayments.CalcVATAmountLines("Purchase Header", TempPrepmtPurchLine, TempPrepmtVATAmountLine, 0);
                    TempPrepmtVATAmountLine.DeductVATAmountLine(TempPrePmtVATAmountLineDeduct);
                    PurchasePostPrepayments.UpdateVATOnLines("Purchase Header", TempPrepmtPurchLine, TempPrepmtVATAmountLine, 0);
                    PurchasePostPrepayments.BuildInvLineBuffer("Purchase Header", TempPrepmtPurchLine, 0, TempPrepaymentInvLineBuffer);
                    PrepmtVATAmount := TempPrepmtVATAmountLine.GetTotalVATAmount;
                    PrepmtVATBaseAmount := TempPrepmtVATAmountLine.GetTotalVATBase;
                    PrepmtTotalAmountInclVAT := TempPrepmtVATAmountLine.GetTotalAmountInclVAT;

                    TotalAmount := TotalSubTotal + TotalInvoiceDiscountAmount + TaxAmount;
                end;
            }
            dataitem(TaxBreakdown; Integer)
            {
                DataItemTableView = SORTING(Number)
                                    WHERE(Number = CONST(1));
                column(BreakdownTitle; BreakdownTitle)
                {
                }
                column(BreakdownLabel1; BreakdownLabel[1])
                {
                }
                column(BreakdownAmt1; FormatBreakdownAmounts(BreakdownLabel[1], BreakdownAmt[1]))
                {
                }
                column(BreakdownLabel2; BreakdownLabel[2])
                {
                }
                column(BreakdownAmt2; FormatBreakdownAmounts(BreakdownLabel[2], BreakdownAmt[2]))
                {
                }
                column(BreakdownLabel3; BreakdownLabel[3])
                {
                }
                column(BreakdownAmt3; FormatBreakdownAmounts(BreakdownLabel[3], BreakdownAmt[3]))
                {
                }
                column(BreakdownAmt4; FormatBreakdownAmounts(BreakdownLabel[4], BreakdownAmt[4]))
                {
                }
                column(BreakdownLabel4; BreakdownLabel[4])
                {
                }
            }
            dataitem(VATCounter; Integer)
            {
                DataItemTableView = SORTING(Number);
                column(VATAmtLineVATBase; TempVATAmountLine."VAT Base")
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(VATAmtLineVATAmt; TempVATAmountLine."VAT Amount")
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(VATAmtLineLineAmt; TempVATAmountLine."Line Amount")
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(VATAmtLineInvDiscBaseAmt; TempVATAmountLine."Inv. Disc. Base Amount")
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(VATAmtLineInvDiscAmt; TempVATAmountLine."Invoice Discount Amount")
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(VATAmtLineVAT; TempVATAmountLine."VAT %")
                {
                    //DecimalPlaces = 0:5;
                }
                column(VATAmtLineVATIdentifier; TempVATAmountLine."VAT Identifier")
                {
                }

                trigger OnAfterGetRecord();
                begin
                    TempVATAmountLine.GetLine(Number);
                end;

                trigger OnPreDataItem();
                begin
                    IF VATAmount = 0 THEN
                        CurrReport.BREAK;
                    SETRANGE(Number, 1, TempVATAmountLine.COUNT);
                    CurrReport.CREATETOTALS(
                      TempVATAmountLine."Line Amount", TempVATAmountLine."Inv. Disc. Base Amount",
                      TempVATAmountLine."Invoice Discount Amount", TempVATAmountLine."VAT Base", TempVATAmountLine."VAT Amount");
                end;
            }
            dataitem(VATCounterLCY; Integer)
            {
                DataItemTableView = SORTING(Number);
                column(VALExchRate; VALExchRate)
                {
                }
                column(VALSpecLCYHeader; VALSpecLCYHeader)
                {
                }
                column(VALVATAmountLCY; VALVATAmountLCY)
                {
                    AutoFormatType = 1;
                }
                column(VALVATBaseLCY; VALVATBaseLCY)
                {
                    AutoFormatType = 1;
                }

                trigger OnAfterGetRecord();
                begin
                    TempVATAmountLine.GetLine(Number);
                    VALVATBaseLCY :=
                      TempVATAmountLine.GetBaseLCY(
                        "Purchase Header"."Posting Date", "Purchase Header"."Currency Code", "Purchase Header"."Currency Factor");
                    VALVATAmountLCY :=
                      TempVATAmountLine.GetAmountLCY(
                        "Purchase Header"."Posting Date", "Purchase Header"."Currency Code", "Purchase Header"."Currency Factor");
                end;

                trigger OnPreDataItem();
                begin
                    IF (NOT GLSetup."Print VAT specification in LCY") OR
                       ("Purchase Header"."Currency Code" = '') OR
                       (TempVATAmountLine.GetTotalVATAmount = 0)
                    THEN
                        CurrReport.BREAK;

                    SETRANGE(Number, 1, TempVATAmountLine.COUNT);

                    IF GLSetup."LCY Code" = '' THEN
                        VALSpecLCYHeader := VATAmountSpecificationLbl + LocalCurrentyLbl
                    ELSE
                        VALSpecLCYHeader := VATAmountSpecificationLbl + FORMAT(GLSetup."LCY Code");

                    CurrExchRate.FindCurrency("Purchase Header"."Posting Date", "Purchase Header"."Currency Code", 1);
                    VALExchRate := STRSUBSTNO(ExchangeRateLbl, CurrExchRate."Relational Exch. Rate Amount", CurrExchRate."Exchange Rate Amount");
                end;
            }
            dataitem(PrepmtLoop; Integer)
            {
                DataItemTableView = SORTING(Number)
                                    WHERE(Number = FILTER(1 ..));
                column(PrepmtLineAmount; PrepmtLineAmount)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(PrepmtInvBufGLAccNo; TempPrepaymentInvLineBuffer."G/L Account No.")
                {
                }
                column(PrepmtInvBufDesc; TempPrepaymentInvLineBuffer.Description)
                {
                }
                column(TotalInclVATText2; TotalInclVATText)
                {
                }
                column(TotalExclVATText2; TotalExclVATText)
                {
                }
                column(PrepmtInvBufAmt; TempPrepaymentInvLineBuffer.Amount)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(PrepmtVATAmountText; TempPrepmtVATAmountLine.VATAmountText)
                {
                }
                column(PrepmtVATAmount; PrepmtVATAmount)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(PrepmtTotalAmountInclVAT; PrepmtTotalAmountInclVAT)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(PrepmtVATBaseAmount; PrepmtVATBaseAmount)
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(PrepmtInvBuDescCaption; PrepmtInvBuDescCaptionLbl)
                {
                }
                column(PrepmtInvBufGLAccNoCaption; PrepmtInvBufGLAccNoCaptionLbl)
                {
                }
                column(PrepaymentSpecCaption; PrepaymentSpecCaptionLbl)
                {
                }

                trigger OnAfterGetRecord();
                begin
                    IF Number = 1 THEN BEGIN
                        IF NOT TempPrepaymentInvLineBuffer.FIND('-') THEN
                            CurrReport.BREAK;
                    END ELSE
                        IF TempPrepaymentInvLineBuffer.NEXT = 0 THEN
                            CurrReport.BREAK;

                    IF "Purchase Header"."Prices Including VAT" THEN
                        PrepmtLineAmount := TempPrepaymentInvLineBuffer."Amount Incl. VAT"
                    ELSE
                        PrepmtLineAmount := TempPrepaymentInvLineBuffer.Amount;
                end;
            }
            dataitem(PrepmtVATCounter; Integer)
            {
                DataItemTableView = SORTING(Number);
                column(PrepmtVATAmtLineVATAmt; TempPrepmtVATAmountLine."VAT Amount")
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(PrepmtVATAmtLineVATBase; TempPrepmtVATAmountLine."VAT Base")
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(PrepmtVATAmtLineLineAmt; TempPrepmtVATAmountLine."Line Amount")
                {
                    AutoFormatExpression = "Purchase Header"."Currency Code";
                    AutoFormatType = 1;
                }
                column(PrepmtVATAmtLineVAT; TempPrepmtVATAmountLine."VAT %")
                {
                    //DecimalPlaces = 0 : 5;
                }
                column(PrepmtVATAmtLineVATId; TempPrepmtVATAmountLine."VAT Identifier")
                {
                }
                column(PrepymtVATAmtSpecCaption; PrepymtVATAmtSpecCaptionLbl)
                {
                }

                trigger OnAfterGetRecord();
                begin
                    TempPrepmtVATAmountLine.GetLine(Number);
                end;

                trigger OnPreDataItem();
                begin
                    SETRANGE(Number, 1, TempPrepmtVATAmountLine.COUNT);
                end;
            }
            dataitem(LetterText; Integer)
            {
                DataItemTableView = SORTING(Number)
                                    WHERE(Number = CONST(1));
                column(GreetingText; GreetingLbl)
                {
                }
                column(BodyText; BodyLbl)
                {
                }
                column(ClosingText; ClosingLbl)
                {
                }
            }

            trigger OnAfterGetRecord();
            var
                location: Record 14;
            begin
                TotalAmount := 0;
                TotalSubTotal := 0;
                TaxAmount := 0;
                TotalInvoiceDiscountAmount := 0;
                CurrReport.LANGUAGE := LanguageCU.GetLanguageIdOrDefault("Language Code");
                CLEAR(BreakdownTitle);
                CLEAR(BreakdownLabel);
                CLEAR(BreakdownAmt);

                FormatAddressFields("Purchase Header");
                FormatDocumentFields("Purchase Header");

                IF NOT CurrReport.PREVIEW THEN BEGIN
                    CODEUNIT.RUN(CODEUNIT::"Purch.Header-Printed", "Purchase Header");
                    IF ArchiveDocument THEN
                        ArchiveManagement.StorePurchDocument("Purchase Header", LogInteraction);

                    IF LogInteraction THEN
                        SegManagement.LogDocument(
                          13, "No.", 0, 0, DATABASE::Vendor, "Buy-from Vendor No.",
                          "Purchaser Code", '', "Posting Description", '');
                END;

                TotalTaxLabel := TaxLbl;
                IF "Tax Area Code" <> '' THEN BEGIN
                    TaxArea.GET("Tax Area Code");
                    CASE TaxArea."Country/Region" OF
                        TaxArea."Country/Region"::US:
                            TotalTaxLabel := TotalSalesTaxLbl;
                        TaxArea."Country/Region"::CA:
                            TotalTaxLabel := TotalTaxLbl;
                    END;
                    UseExternalTaxEngine := TaxArea."Use External Tax Engine";
                    SalesTaxCalc.StartSalesTaxCalculation;
                END;

                IF "Posting Date" <> 0D THEN
                    UseDate := "Posting Date"
                ELSE
                    UseDate := WORKDATE;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    CaptionML = ENU = 'Options',
                                ESM = 'Opciones',
                                FRC = 'Options',
                                ENC = 'Options';
                    field(ArchiveDocument; ArchiveDocument)
                    {
                        ApplicationArea = Suite;
                        CaptionML = ENU = 'Archive Document',
                                    ESM = 'Archivar documento',
                                    FRC = 'Archiver document',
                                    ENC = 'Archive Document';
                        ToolTipML = ENU = 'Specifies whether to archive the order.',
                                    ESM = 'Especifica si debe archivarse el pedido.',
                                    FRC = 'Spécifie s''il faut archiver la commande ou non.',
                                    ENC = 'Specifies whether to archive the order.';
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = Suite;
                        CaptionML = ENU = 'Log Interaction',
                                    ESM = 'Log interacción',
                                    FRC = 'Journal interaction',
                                    ENC = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTipML = ENU = 'Specifies if you want to log this interaction.',
                                    ESM = 'Especifica si desea registrar esta interacción.',
                                    FRC = 'Spécifie si vous souhaitez enregistrer cette interaction.',
                                    ENC = 'Specifies if you want to log this interaction.';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit();
        begin
            LogInteractionEnable := TRUE;
        end;

        trigger OnOpenPage();
        begin
            ArchiveDocument := PurchSetup."Archive Quotes and Orders";
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        PurchSetup.GET;
        CompanyInfo.CALCFIELDS(Picture);
    end;

    trigger OnPreReport();
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
            InitLogInteraction;
    end;

    var
        PageLbl: TextConst Comment = '%1 = Page No.', ENU = 'Page %1', ESM = 'Página %1', FRC = 'Page %1', ENC = 'Page %1';
        VATAmountSpecificationLbl: TextConst ENU = 'Tax Amount Specification in ', ESM = 'Especificación de importe de IVA en ', FRC = 'Détail TVA dans ', ENC = 'Tax Amount Specification in ';
        LocalCurrentyLbl: TextConst ENU = 'Local Currency', ESM = 'Divisa local', FRC = 'Devise locale', ENC = 'Local Currency';
        ExchangeRateLbl: TextConst Comment = '%1 = CurrExchRate."Relational Exch. Rate Amount", %2 = CurrExchRate."Exchange Rate Amount"', ENU = 'Exchange rate: %1/%2', ESM = 'Tipo cambio: %1/%2', FRC = 'Taux de change : %1/%2', ENC = 'Exchange rate: %1/%2';
        CompanyInfoPhoneNoCaptionLbl: TextConst ENU = 'Phone No.', ESM = 'N.º teléfono', FRC = 'N° téléphone', ENC = 'Phone No.';
        CompanyInfoGiroNoCaptionLbl: TextConst ENU = 'Giro No.', ESM = 'N.º giro postal', FRC = 'N° CCP', ENC = 'Giro No.';
        CompanyInfoBankNameCaptionLbl: TextConst ENU = 'Bank', ESM = 'Banco', FRC = 'Banque', ENC = 'Bank';
        CompanyInfoBankAccNoCaptionLbl: TextConst ENU = 'Account No.', ESM = 'Nº cuenta', FRC = 'N° compte', ENC = 'Account No.';
        OrderNoCaptionLbl: TextConst ENU = 'Order No.', ESM = 'Nº pedido', FRC = 'N° commande', ENC = 'Order No.';
        PageCaptionLbl: TextConst ENU = 'Page', ESM = 'Página', FRC = 'Page', ENC = 'Page';
        DocumentDateCaptionLbl: TextConst ENU = 'Document Date', ESM = 'Fecha de documento', FRC = 'Date document', ENC = 'Document Date';
        DirectUniCostCaptionLbl: TextConst ENU = 'Unit Price', ESM = 'Precio unitario', FRC = 'Prix unitaire', ENC = 'Unit Price';
        PurchLineLineDiscCaptionLbl: TextConst ENU = 'Discount %', ESM = '% Descuento', FRC = '% escompte', ENC = 'Discount %';
        VATDiscountAmountCaptionLbl: TextConst ENU = 'Payment Discount on Tax', ESM = 'Descuento P.P. sobre IVA', FRC = 'Escompte de paiement sur TVA', ENC = 'Payment Discount on Tax';
        PaymentDetailsCaptionLbl: TextConst ENU = 'Payment Details', ESM = 'Detalles del pago', FRC = 'Détail paiement', ENC = 'Payment Details';
        VendNoCaptionLbl: TextConst ENU = 'Vendor No.', ESM = 'N.º proveedor', FRC = 'N° fournisseur', ENC = 'Vendor No.';
        VendorInvoiceNo_Lbl: TextConst ENU = 'Vendor Invoice No.';
        VendorOrderNo_Lbl: TextConst ENU = 'Vendor Order No.';
        ShiptoAddressCaptionLbl: TextConst ENU = 'Ship-to Address', ESM = 'Dirección de envío', FRC = 'Adresse de livraison', ENC = 'Ship-to Address';
        BilltoAddressCaptionLbl: TextConst ENU = 'Bill-to Address';
        PrepmtInvBuDescCaptionLbl: TextConst ENU = 'Description', ESM = 'Descripción', FRC = 'Description', ENC = 'Description';
        PrepmtInvBufGLAccNoCaptionLbl: TextConst ENU = 'G/L Account No.', ESM = 'Nº cuenta', FRC = 'N° de compte du grand livre', ENC = 'G/L Account No.';
        PrepaymentSpecCaptionLbl: TextConst ENU = 'Prepayment Specification', ESM = 'Especificación anticipo', FRC = 'Spécification de paiement anticipé', ENC = 'Prepayment Specification';
        PrepymtVATAmtSpecCaptionLbl: TextConst ENU = 'Prepayment Tax Amount Specification', ESM = 'Especificación importe IVA anticipo', FRC = 'Spécification du montant de TVA du paiement anticipé', ENC = 'Prepayment Tax Amount Specification';
        AmountCaptionLbl: TextConst ENU = 'Amount', ESM = 'Importe', FRC = 'Montant', ENC = 'Amount';
        PurchLineInvDiscAmtCaptionLbl: TextConst ENU = 'Invoice Discount Amount', ESM = 'Importe descuento en factura', FRC = 'Montant d''escompte de la facture', ENC = 'Invoice Discount Amount';
        SubtotalCaptionLbl: TextConst ENU = 'Subtotal', ESM = 'Subtotal', FRC = 'Sous-total', ENC = 'Subtotal';
        VATAmtLineVATCaptionLbl: TextConst ENU = 'Tax %', ESM = '% IVA', FRC = '% TVA', ENC = 'Tax %';
        VATAmtLineVATAmtCaptionLbl: TextConst ENU = 'Tax Amount', ESM = 'Importe IVA', FRC = 'Montant TVA', ENC = 'Tax Amount';
        VATAmtSpecCaptionLbl: TextConst ENU = 'Tax Amount Specification', ESM = 'Especificación importe IVA', FRC = 'Détail montant TVA', ENC = 'Tax Amount Specification';
        VATIdentifierCaptionLbl: TextConst ENU = 'Tax Identifier', ESM = 'Identific. IVA', FRC = 'Identificateur de TVA', ENC = 'Tax Identifier';
        VATAmtLineInvDiscBaseAmtCaptionLbl: TextConst ENU = 'Invoice Discount Base Amount', ESM = 'Importe base descuento factura', FRC = 'Montant de base d''escompte de la facture', ENC = 'Invoice Discount Base Amount';
        VATAmtLineLineAmtCaptionLbl: TextConst ENU = 'Line Amount', ESM = 'Importe de línea', FRC = 'Montant ligne', ENC = 'Line Amount';
        VALVATBaseLCYCaptionLbl: TextConst ENU = 'Tax Base', ESM = 'Base IVA', FRC = 'Base TVA', ENC = 'Tax Base';
        PricesInclVATtxtLbl: TextConst ENU = 'Prices Including Tax', ESM = 'Precios IVA incluido', FRC = 'Prix TTC', ENC = 'Prices Including Tax';
        TotalCaptionLbl: TextConst ENU = 'Total', ESM = 'Total', FRC = 'Total', ENC = 'Total';
        PaymentTermsDescCaptionLbl: TextConst ENU = 'Payment Terms', ESM = 'Condiciones de pago', FRC = 'Modalités de paiement', ENC = 'Payment Terms';
        ShipmentMethodDescCaptionLbl: TextConst ENU = 'Shipment Method', ESM = 'Método de envío', FRC = 'Méthode de livraison', ENC = 'Shipment Method';
        PrepymtTermsDescCaptionLbl: TextConst ENU = 'Prepmt. Payment Terms', ESM = 'Términos prepago', FRC = 'Modalités de paiement anticipé', ENC = 'Prepmt. Payment Terms';
        HomePageCaptionLbl: TextConst ENU = 'Home Page', ESM = 'Página Web', FRC = 'Page d''accueil', ENC = 'Home Page';
        EmailIDCaptionLbl: TextConst ENU = 'Email', ESM = 'Correo electrónico', FRC = 'Courriel', ENC = 'Email';
        AllowInvoiceDiscCaptionLbl: TextConst ENU = 'Allow Invoice Discount', ESM = 'Permitir descuento factura', FRC = 'Autoriser escompte facture', ENC = 'Allow Invoice Discount';
        GLSetup: Record 98;
        CompanyInfo: Record 79;
        ShipmentMethod: Record 10;
        PaymentTerms: Record 3;
        PrepmtPaymentTerms: Record 3;
        SalespersonPurchaser: Record 13;
        TempVATAmountLine: Record 290 temporary;
        TempPrepmtVATAmountLine: Record 290 temporary;
        TempPurchLine: Record 39 temporary;
        TempPrepaymentInvLineBuffer: Record 461 temporary;
        TempPrePmtVATAmountLineDeduct: Record 290 temporary;
        TempSalesTaxAmtLine: Record 10011 temporary;
        TaxArea: Record 318;
        RespCenter: Record 5714;
        Language: Record 8;
        LanguageCU: Codeunit 43;
        CurrExchRate: Record 330;
        PurchSetup: Record 312;
        FormatAddr: Codeunit 365;
        FormatDocument: Codeunit 368;
        PurchPost: Codeunit 90;
        SegManagement: Codeunit 5051;
        PurchasePostPrepayments: Codeunit 444;
        ArchiveManagement: Codeunit 5063;
        SalesTaxCalc: Codeunit 398;
        VendAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        BuyFromAddr: array[8] of Text[50];
        PurchaserText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalInclVATText: Text[50];
        TotalExclVATText: Text[50];
        FormattedQuanitity: Text;
        FormattedDirectUnitCost: Text;
        OutputNo: Integer;
        DimText: Text[120];
        LogInteraction: Boolean;
        VATAmount: Decimal;
        VATBaseAmount: Decimal;
        VATDiscountAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        PrepmtVATAmount: Decimal;
        PrepmtVATBaseAmount: Decimal;
        PrepmtTotalAmountInclVAT: Decimal;
        PrepmtLineAmount: Decimal;
        AllowInvDisctxt: Text[30];
        [InDataSet]
        LogInteractionEnable: Boolean;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalInvoiceDiscountAmount: Decimal;
        DocumentTitleLbl: TextConst ENU = 'Purchase Order', ESM = 'Pedido compra', FRC = 'Bon de commande', ENC = 'Purchase Order';
        TaxAmount: Decimal;
        CompanyLogoPosition: Integer;
        ReceivebyCaptionLbl: TextConst ENU = 'Receive By', ESM = 'Recepción por', FRC = 'Réceptionner par', ENC = 'Receive By';
        BuyerCaptionLbl: TextConst ENU = 'Buyer', ESM = 'Comprador', FRC = 'Acheteur', ENC = 'Buyer';
        ItemNumberCaptionLbl: TextConst ENU = 'Item No.', ESM = 'N.º producto', FRC = 'N° article', ENC = 'Item No.';
        ItemDescriptionCaptionLbl: TextConst ENU = 'Description', ESM = 'Descripción', FRC = 'Description', ENC = 'Description';
        ItemQuantityCaptionLbl: TextConst ENU = 'Quantity', ESM = 'Cantidad', FRC = 'Quantité', ENC = 'Quantity';
        ItemUnitCaptionLbl: TextConst ENU = 'Unit', ESM = 'Unidad', FRC = 'Unité', ENC = 'Unit';
        ItemUnitPriceCaptionLbl: TextConst ENU = 'Unit Price', ESM = 'Precio unitario', FRC = 'Prix unitaire', ENC = 'Unit Price';
        ItemLineAmountCaptionLbl: TextConst ENU = 'Line Amount', ESM = 'Importe de línea', FRC = 'Montant ligne', ENC = 'Line Amount';
        PricesIncludingVATCaptionLbl: TextConst ENU = 'Prices Including Tax', ESM = 'Precios IVA incluido', FRC = 'Prix TTC', ENC = 'Prices Including Tax';
        ItemUnitOfMeasureCaptionLbl: TextConst ENU = 'Unit', ESM = 'Unidad', FRC = 'Unité', ENC = 'Unit';
        ToCaptionLbl: TextConst ENU = 'To:', ESM = 'Para:', FRC = '‡ :', ENC = 'To:';
        VendorIDCaptionLbl: TextConst ENU = 'Vendor ID', ESM = 'Id. de proveedor', FRC = 'Code fournisseur', ENC = 'Vendor ID';
        ConfirmToCaptionLbl: TextConst ENU = 'Confirm To', ESM = 'Confirmar a', FRC = 'Confirmer à', ENC = 'Confirm To';
        PurchOrderCaptionLbl: TextConst ENU = 'PURCHASE ORDER', ESM = 'PEDIDO DE COMPRA', FRC = 'Bon de commande', ENC = 'PURCHASE ORDER';
        PurchOrderNumCaptionLbl: TextConst ENU = 'Purchase Order Number:', ESM = 'Número de pedido de compra:', FRC = 'N° bon de commande :', ENC = 'Purchase Order Number:';
        PurchOrderDateCaptionLbl: TextConst ENU = 'Purchase Order Date:', ESM = 'Fecha de pedido de compra:', FRC = 'Date bon de commande :', ENC = 'Purchase Order Date:';
        TaxIdentTypeCaptionLbl: TextConst ENU = 'Tax Ident. Type', ESM = 'Tipo de identificación fiscal', FRC = 'Type Ident. Taxe', ENC = 'Tax Ident. Type';
        TotalPriceCaptionLbl: TextConst ENU = 'Total Price', ESM = 'Precio total', FRC = 'Prix total', ENC = 'Total Price';
        ArchiveDocument: Boolean;
        InvoiceDiscountCaptionLbl: TextConst ENU = 'Invoice Discount', ESM = 'Descuento en factura', FRC = 'Escompte facture', ENC = 'Invoice Discount';
        SalesTaxBreakdownLbl: TextConst ENU = 'Sales Tax Breakdown', ESM = 'Análisis de impuesto de ventas', FRC = 'Ventilation taxe de vente', ENC = 'Sales Tax Breakdown';
        OtherTaxesLbl: TextConst ENU = 'Other Taxes', ESM = 'Otros impuestos', FRC = 'Autres taxes', ENC = 'Other Taxes';
        TotalSalesTaxLbl: TextConst ENU = 'Total Sales Tax', ESM = 'Impuesto de ventas total', FRC = 'Taxe de vente totale', ENC = 'Total Sales Tax';
        TotalTaxLbl: TextConst ENU = 'Total Tax', ESM = 'Impuestos totales', FRC = 'Taxe totale', ENC = 'Total Tax';
        TaxLbl: TextConst ENU = 'Tax', ESM = 'Impuestos', FRC = 'Taxe', ENC = 'Tax';
        TotalTaxLabel: Text[30];
        BreakdownTitle: Text[30];
        BreakdownLabel: array[4] of Text[30];
        UseExternalTaxEngine: Boolean;
        NumberOfLines: Integer;
        OnLineNumber: Integer;
        UseDate: Date;
        BrkIdx: Integer;
        PrevPrintOrder: Integer;
        PrevTaxPercent: Decimal;
        TaxBreakdownLbl: TextConst ENU = 'Tax Breakdown', ESM = 'Desglose de impuestos', FRC = 'Ventilation fiscale', ENC = 'Tax Breakdown';
        BreakdownAmt: array[4] of Decimal;
        GreetingLbl: TextConst ENU = 'Hello', ESM = 'Hola', FRC = 'Bonjour', ENC = 'Hello';
        ClosingLbl: TextConst ENU = 'Sincerely', ESM = 'Un saludo', FRC = 'Cordialement', ENC = 'Sincerely';
        BodyLbl: TextConst ENU = 'The purchase order is attached to this message.', ESM = 'El mensaje incluye un archivo adjunto con la orden de compra.', FRC = 'Le bon de commande est joint au présent message.', ENC = 'The purchase order is attached to this message.';
        OrderDateLbl: TextConst ENU = 'Order Date', ESM = 'Fecha de orden', FRC = 'Date commande', ENC = 'Order Date';
        PurchLineDelivDateCaptLbl: Label 'Delivery Date';

    //[Scope('Personalization')]
    procedure InitializeRequest(LogInteractionParam: Boolean);
    begin
        LogInteraction := LogInteractionParam;
    end;

    local procedure FormatAddressFields(var PurchaseHeader: Record 38);
    begin
        FormatAddr.GetCompanyAddr(PurchaseHeader."Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
        FormatAddr.PurchHeaderBuyFrom(BuyFromAddr, PurchaseHeader);
        IF PurchaseHeader."Buy-from Vendor No." <> PurchaseHeader."Pay-to Vendor No." THEN
            FormatAddr.PurchHeaderPayTo(VendAddr, PurchaseHeader);
        FormatAddr.PurchHeaderShipTo(ShipToAddr, PurchaseHeader);
    end;

    local procedure FormatDocumentFields(PurchaseHeader: Record 38);
    begin
        WITH PurchaseHeader DO BEGIN
            FormatDocument.SetTotalLabels("Currency Code", TotalText, TotalInclVATText, TotalExclVATText);
            FormatDocument.SetPurchaser(SalespersonPurchaser, "Purchaser Code", PurchaserText);
            FormatDocument.SetPaymentTerms(PaymentTerms, "Payment Terms Code", "Language Code");
            FormatDocument.SetPaymentTerms(PrepmtPaymentTerms, "Prepmt. Payment Terms Code", "Language Code");
            FormatDocument.SetShipmentMethod(ShipmentMethod, "Shipment Method Code", "Language Code");

            ReferenceText := FormatDocument.SetText("Your Reference" <> '', FIELDCAPTION("Your Reference"));
            VATNoText := FormatDocument.SetText("VAT Registration No." <> '', FIELDCAPTION("VAT Registration No."));
        END;
    end;

    local procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(13) <> '';
    end;

    local procedure FormatBreakdownAmounts(BreakdownLabel: Text; BreakdownAmount: Decimal): Text;
    var
        BreakdownTextAmount: Text;
    begin
        // If the breakdown label is blank, the breakdown amount should be blank too.
        // This enables the NA report layout to serve both CA and US.
        IF BreakdownLabel <> '' THEN
            BreakdownTextAmount := FORMAT(BreakdownAmount, 0, '<Precision,2><Standard Format,0>')
        ELSE
            BreakdownTextAmount := '';

        EXIT(BreakdownTextAmount);
    end;
}

