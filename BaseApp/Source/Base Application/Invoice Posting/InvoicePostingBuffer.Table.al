﻿table 55 "Invoice Posting Buffer"
{
    Caption = 'Invoice Posting Buffer';
    ReplicateData = false;
    TableType = Temporary;

    fields
    {
        field(1; "Group ID"; Text[1000])
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(2; Type; Enum "Invoice Posting Line Type")
        {
            Caption = 'Type';
            DataClassification = SystemMetadata;
        }
        field(3; "G/L Account"; Code[20])
        {
            Caption = 'G/L Account';
            DataClassification = SystemMetadata;
            TableRelation = "G/L Account";
        }
        field(4; "Global Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,1,1';
            Caption = 'Global Dimension 1 Code';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(5; "Global Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,1,2';
            Caption = 'Global Dimension 2 Code';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(6; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            DataClassification = SystemMetadata;
            TableRelation = Job;
        }
        field(7; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
            DataClassification = SystemMetadata;
        }
        field(8; "VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount';
            DataClassification = SystemMetadata;
        }
        field(10; "Gen. Bus. Posting Group"; Code[20])
        {
            Caption = 'Gen. Bus. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "Gen. Business Posting Group";
        }
        field(11; "Gen. Prod. Posting Group"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "Gen. Product Posting Group";
        }
        field(12; "VAT Calculation Type"; Enum "Tax Calculation Type")
        {
            Caption = 'VAT Calculation Type';
            DataClassification = SystemMetadata;
        }
        field(14; "VAT Base Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Base Amount';
            DataClassification = SystemMetadata;
        }
        field(17; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
            DataClassification = SystemMetadata;
        }
        field(18; "Tax Area Code"; Code[20])
        {
            Caption = 'Tax Area Code';
            DataClassification = SystemMetadata;
            TableRelation = "Tax Area";
        }
        field(19; "Tax Liable"; Boolean)
        {
            Caption = 'Tax Liable';
            DataClassification = SystemMetadata;
        }
        field(20; "Tax Group Code"; Code[20])
        {
            Caption = 'Tax Group Code';
            DataClassification = SystemMetadata;
            TableRelation = "Tax Group";
        }
        field(21; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = SystemMetadata;
            DecimalPlaces = 1 : 5;
        }
        field(22; "Use Tax"; Boolean)
        {
            Caption = 'Use Tax';
            DataClassification = SystemMetadata;
        }
        field(23; "VAT Bus. Posting Group"; Code[20])
        {
            Caption = 'VAT Bus. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "VAT Business Posting Group";
        }
        field(24; "VAT Prod. Posting Group"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "VAT Product Posting Group";
        }
        field(25; "Amount (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (ACY)';
            DataClassification = SystemMetadata;
        }
        field(26; "VAT Amount (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount (ACY)';
            DataClassification = SystemMetadata;
        }
        field(29; "VAT Base Amount (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Base Amount (ACY)';
            DataClassification = SystemMetadata;
        }
        field(31; "VAT Difference"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Difference';
            DataClassification = SystemMetadata;
        }
        field(32; "VAT %"; Decimal)
        {
            Caption = 'VAT %';
            DataClassification = SystemMetadata;
            DecimalPlaces = 1 : 1;
        }
        field(35; "VAT Base Before Pmt. Disc."; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Base Before Pmt. Disc.';
            DataClassification = SystemMetadata;
        }
        field(40; "Journal Templ. Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            DataClassification = SystemMetadata;
        }
        field(215; "Entry Description"; Text[100])
        {
            Caption = 'Entry Description';
            DataClassification = SystemMetadata;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(1000; "Additional Grouping Identifier"; Code[20])
        {
            Caption = 'Additional Grouping Identifier';
            DataClassification = SystemMetadata;
        }
        field(1700; "Deferral Code"; Code[10])
        {
            Caption = 'Deferral Code';
            DataClassification = SystemMetadata;
            TableRelation = "Deferral Template"."Deferral Code";
        }
        field(1701; "Deferral Line No."; Integer)
        {
            Caption = 'Deferral Line No.';
            DataClassification = SystemMetadata;
        }
        field(5600; "FA Posting Date"; Date)
        {
            Caption = 'FA Posting Date';
            DataClassification = SystemMetadata;
        }
        field(5601; "FA Posting Type"; Enum "Purchase FA Posting Type")
        {
            Caption = 'FA Posting Type';
            DataClassification = SystemMetadata;
        }
        field(5602; "Depreciation Book Code"; Code[10])
        {
            Caption = 'Depreciation Book Code';
            DataClassification = SystemMetadata;
            TableRelation = "Depreciation Book";
        }
        field(5603; "Salvage Value"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Salvage Value';
            DataClassification = SystemMetadata;
        }
        field(5605; "Depr. until FA Posting Date"; Boolean)
        {
            Caption = 'Depr. until FA Posting Date';
            DataClassification = SystemMetadata;
        }
        field(5606; "Depr. Acquisition Cost"; Boolean)
        {
            Caption = 'Depr. Acquisition Cost';
            DataClassification = SystemMetadata;
        }
        field(5609; "Maintenance Code"; Code[10])
        {
            Caption = 'Maintenance Code';
            DataClassification = SystemMetadata;
            TableRelation = Maintenance;
        }
        field(5610; "Insurance No."; Code[20])
        {
            Caption = 'Insurance No.';
            DataClassification = SystemMetadata;
            TableRelation = Insurance;
        }
        field(5611; "Budgeted FA No."; Code[20])
        {
            Caption = 'Budgeted FA No.';
            DataClassification = SystemMetadata;
            TableRelation = "Fixed Asset";
        }
        field(5612; "Duplicate in Depreciation Book"; Code[10])
        {
            Caption = 'Duplicate in Depreciation Book';
            DataClassification = SystemMetadata;
            TableRelation = "Depreciation Book";
        }
        field(5613; "Use Duplication List"; Boolean)
        {
            Caption = 'Use Duplication List';
            DataClassification = SystemMetadata;
        }
        field(5614; "Fixed Asset Line No."; Integer)
        {
            Caption = 'Fixed Asset Line No.';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(key1; "Group ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    var
        TempInvoicePostBufferRounding: Record "Invoice Posting Buffer" temporary;
        DimMgt: Codeunit DimensionManagement;

    procedure PrepareSales(var SalesLine: Record "Sales Line")
    begin
        OnBeforePrepareSales(Rec, SalesLine);

        Clear(Rec);
        Type := SalesLine.Type;
        "System-Created Entry" := true;
        "Gen. Bus. Posting Group" := SalesLine."Gen. Bus. Posting Group";
        "Gen. Prod. Posting Group" := SalesLine."Gen. Prod. Posting Group";
        "VAT Bus. Posting Group" := SalesLine."VAT Bus. Posting Group";
        "VAT Prod. Posting Group" := SalesLine."VAT Prod. Posting Group";
        "VAT Calculation Type" := SalesLine."VAT Calculation Type";
        "Global Dimension 1 Code" := SalesLine."Shortcut Dimension 1 Code";
        "Global Dimension 2 Code" := SalesLine."Shortcut Dimension 2 Code";
        "Dimension Set ID" := SalesLine."Dimension Set ID";
        "Job No." := SalesLine."Job No.";
        "VAT %" := SalesLine."VAT %";
        "VAT Difference" := SalesLine."VAT Difference";
        if Type = Type::"Fixed Asset" then begin
            "FA Posting Date" := SalesLine."FA Posting Date";
            "Depreciation Book Code" := SalesLine."Depreciation Book Code";
            "Depr. until FA Posting Date" := SalesLine."Depr. until FA Posting Date";
            "Duplicate in Depreciation Book" := SalesLine."Duplicate in Depreciation Book";
            "Use Duplication List" := SalesLine."Use Duplication List";
        end;

        UpdateEntryDescriptionFromSalesLine(SalesLine);

        if "VAT Calculation Type" = "VAT Calculation Type"::"Sales Tax" then
            SetSalesTaxForSalesLine(SalesLine);

        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID", "Global Dimension 1 Code", "Global Dimension 2 Code");

        if SalesLine."Line Discount %" = 100 then begin
            "VAT Base Amount" := 0;
            "VAT Base Amount (ACY)" := 0;
            "VAT Amount" := 0;
            "VAT Amount (ACY)" := 0;
        end;

        "Journal Templ. Name" := SalesLine.GetJnlTemplateName();

        OnAfterPrepareSales(SalesLine, Rec);
    end;

    procedure CalcDiscount(PricesInclVAT: Boolean; DiscountAmount: Decimal; DiscountAmountACY: Decimal)
    var
        CurrencyLCY: Record Currency;
        CurrencyACY: Record Currency;
        GLSetup: Record "General Ledger Setup";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeCalcDiscount(Rec, IsHandled);
        if IsHandled then
            exit;

        CurrencyLCY.InitRoundingPrecision();
        GLSetup.Get();
        if GLSetup."Additional Reporting Currency" <> '' then
            CurrencyACY.Get(GLSetup."Additional Reporting Currency")
        else
            CurrencyACY := CurrencyLCY;
        "VAT Amount" := Round(
            CalcVATAmount(PricesInclVAT, DiscountAmount, "VAT %"),
            CurrencyLCY."Amount Rounding Precision",
            CurrencyLCY.VATRoundingDirection());
        "VAT Amount (ACY)" := Round(
            CalcVATAmount(PricesInclVAT, DiscountAmountACY, "VAT %"),
            CurrencyACY."Amount Rounding Precision",
            CurrencyACY.VATRoundingDirection());

        if PricesInclVAT and ("VAT %" <> 0) then begin
            "VAT Base Amount" := DiscountAmount - "VAT Amount";
            "VAT Base Amount (ACY)" := DiscountAmountACY - "VAT Amount (ACY)";
        end else begin
            "VAT Base Amount" := DiscountAmount;
            "VAT Base Amount (ACY)" := DiscountAmountACY;
        end;
        Amount := "VAT Base Amount";
        "Amount (ACY)" := "VAT Base Amount (ACY)";
        "VAT Base Before Pmt. Disc." := "VAT Base Amount";
    end;

    local procedure CalcVATAmount(ValueInclVAT: Boolean; Value: Decimal; VATPercent: Decimal): Decimal
    begin
        if VATPercent = 0 then
            exit(0);
        if ValueInclVAT then
            exit(Value / (1 + (VATPercent / 100)) * (VATPercent / 100));

        exit(Value * (VATPercent / 100));
    end;

    procedure SetAccount(AccountNo: Code[20]; var TotalVAT: Decimal; var TotalVATACY: Decimal; var TotalAmount: Decimal; var TotalAmountACY: Decimal)
    begin
        TotalVAT := TotalVAT - "VAT Amount";
        TotalVATACY := TotalVATACY - "VAT Amount (ACY)";
        TotalAmount := TotalAmount - Amount;
        TotalAmountACY := TotalAmountACY - "Amount (ACY)";
        "G/L Account" := AccountNo;
    end;

    procedure SetAmounts(TotalVAT: Decimal; TotalVATACY: Decimal; TotalAmount: Decimal; TotalAmountACY: Decimal; VATDifference: Decimal; TotalVATBase: Decimal; TotalVATBaseACY: Decimal)
    begin
        Amount := TotalAmount;
        "VAT Base Amount" := TotalVATBase;
        "VAT Amount" := TotalVAT;
        "Amount (ACY)" := TotalAmountACY;
        "VAT Base Amount (ACY)" := TotalVATBaseACY;
        "VAT Amount (ACY)" := TotalVATACY;
        "VAT Difference" := VATDifference;
        "VAT Base Before Pmt. Disc." := TotalAmount;
    end;

    procedure PreparePurchase(var PurchLine: Record "Purchase Line")
    begin
        Clear(Rec);
        Type := PurchLine.Type;
        "System-Created Entry" := true;
        "Gen. Bus. Posting Group" := PurchLine."Gen. Bus. Posting Group";
        "Gen. Prod. Posting Group" := PurchLine."Gen. Prod. Posting Group";
        "VAT Bus. Posting Group" := PurchLine."VAT Bus. Posting Group";
        "VAT Prod. Posting Group" := PurchLine."VAT Prod. Posting Group";
        "VAT Calculation Type" := PurchLine."VAT Calculation Type";
        "Global Dimension 1 Code" := PurchLine."Shortcut Dimension 1 Code";
        "Global Dimension 2 Code" := PurchLine."Shortcut Dimension 2 Code";
        "Dimension Set ID" := PurchLine."Dimension Set ID";
        "Job No." := PurchLine."Job No.";
        "VAT %" := PurchLine."VAT %";
        "VAT Difference" := PurchLine."VAT Difference";
        if Type = Type::"Fixed Asset" then begin
            "FA Posting Date" := PurchLine."FA Posting Date";
            "Depreciation Book Code" := PurchLine."Depreciation Book Code";
            "Depr. until FA Posting Date" := PurchLine."Depr. until FA Posting Date";
            "Duplicate in Depreciation Book" := PurchLine."Duplicate in Depreciation Book";
            "Use Duplication List" := PurchLine."Use Duplication List";
            "FA Posting Type" := PurchLine."FA Posting Type";
            "Depreciation Book Code" := PurchLine."Depreciation Book Code";
            "Salvage Value" := PurchLine."Salvage Value";
            "Depr. Acquisition Cost" := PurchLine."Depr. Acquisition Cost";
            "Maintenance Code" := PurchLine."Maintenance Code";
            "Insurance No." := PurchLine."Insurance No.";
            "Budgeted FA No." := PurchLine."Budgeted FA No.";
        end;

        UpdateEntryDescriptionFromPurchaseLine(PurchLine);

        if "VAT Calculation Type" = "VAT Calculation Type"::"Sales Tax" then
            SetSalesTaxForPurchLine(PurchLine);

        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID", "Global Dimension 1 Code", "Global Dimension 2 Code");

        if PurchLine."Line Discount %" = 100 then begin
            "VAT Base Amount" := 0;
            "VAT Base Amount (ACY)" := 0;
            "VAT Amount" := 0;
            "VAT Amount (ACY)" := 0;
        end;

        "Journal Templ. Name" := PurchLine.GetJnlTemplateName();

        OnAfterPreparePurchase(PurchLine, Rec);
    end;

    procedure CalcDiscountNoVAT(DiscountAmount: Decimal; DiscountAmountACY: Decimal)
    var
        IsHandled: boolean;
    begin
        IsHandled := false;
        OnBeforeCalcDiscountNoVAT(Rec, IsHandled);
        if IsHandled then
            exit;

        "VAT Base Amount" := DiscountAmount;
        "VAT Base Amount (ACY)" := DiscountAmountACY;
        Amount := "VAT Base Amount";
        "Amount (ACY)" := "VAT Base Amount (ACY)";
        "VAT Base Before Pmt. Disc." := "VAT Base Amount";
    end;

    procedure SetSalesTaxForPurchLine(PurchaseLine: Record "Purchase Line")
    begin
        "Tax Area Code" := PurchaseLine."Tax Area Code";
        "Tax Liable" := PurchaseLine."Tax Liable";
        "Tax Group Code" := PurchaseLine."Tax Group Code";
        "Use Tax" := PurchaseLine."Use Tax";
        Quantity := PurchaseLine."Qty. to Invoice (Base)";
    end;

    procedure SetSalesTaxForSalesLine(SalesLine: Record "Sales Line")
    begin
        "Tax Area Code" := SalesLine."Tax Area Code";
        "Tax Liable" := SalesLine."Tax Liable";
        "Tax Group Code" := SalesLine."Tax Group Code";
        "Use Tax" := false;
        Quantity := SalesLine."Qty. to Invoice (Base)";
    end;

    procedure ReverseAmounts()
    begin
        Amount := -Amount;
        "VAT Base Amount" := -"VAT Base Amount";
        "Amount (ACY)" := -"Amount (ACY)";
        "VAT Base Amount (ACY)" := -"VAT Base Amount (ACY)";
        "VAT Amount" := -"VAT Amount";
        "VAT Amount (ACY)" := -"VAT Amount (ACY)";
    end;

    procedure SetAmountsNoVAT(TotalAmount: Decimal; TotalAmountACY: Decimal; VATDifference: Decimal)
    begin
        Amount := TotalAmount;
        "VAT Base Amount" := TotalAmount;
        "VAT Amount" := 0;
        "Amount (ACY)" := TotalAmountACY;
        "VAT Base Amount (ACY)" := TotalAmountACY;
        "VAT Amount (ACY)" := 0;
        "VAT Difference" := VATDifference;
    end;

    procedure PrepareService(var ServiceLine: Record "Service Line")
    begin
        Clear(Rec);
        case ServiceLine.Type of
            ServiceLine.Type::Item:
                Type := Type::Item;
            ServiceLine.Type::Resource:
                Type := Type::Resource;
            ServiceLine.Type::"G/L Account":
                Type := Type::"G/L Account";
        end;
        "System-Created Entry" := true;
        "Gen. Bus. Posting Group" := ServiceLine."Gen. Bus. Posting Group";
        "Gen. Prod. Posting Group" := ServiceLine."Gen. Prod. Posting Group";
        "VAT Bus. Posting Group" := ServiceLine."VAT Bus. Posting Group";
        "VAT Prod. Posting Group" := ServiceLine."VAT Prod. Posting Group";
        "VAT Calculation Type" := ServiceLine."VAT Calculation Type";
        "Global Dimension 1 Code" := ServiceLine."Shortcut Dimension 1 Code";
        "Global Dimension 2 Code" := ServiceLine."Shortcut Dimension 2 Code";
        "Dimension Set ID" := ServiceLine."Dimension Set ID";
        "Job No." := ServiceLine."Job No.";
        "VAT %" := ServiceLine."VAT %";
        "VAT Difference" := ServiceLine."VAT Difference";
        if "VAT Calculation Type" = "VAT Calculation Type"::"Sales Tax" then begin
            "Tax Area Code" := ServiceLine."Tax Area Code";
            "Tax Group Code" := ServiceLine."Tax Group Code";
            "Tax Liable" := ServiceLine."Tax Liable";
            "Use Tax" := false;
            Quantity := ServiceLine."Qty. to Invoice (Base)";
        end;

        UpdateEntryDescriptionFromServiceLine(ServiceLine);

        OnAfterPrepareService(ServiceLine, Rec);
    end;

    procedure PreparePrepmtAdjBuffer(InvoicePostingBuffer: Record "Invoice Posting Buffer"; GLAccountNo: Code[20]; AdjAmount: Decimal; RoundingEntry: Boolean)
    var
        PrepmtAdjInvoicePostingBuffer: Record "Invoice Posting Buffer";
    begin
        PrepmtAdjInvoicePostingBuffer.Init();
        PrepmtAdjInvoicePostingBuffer.Type := Type::"Prepmt. Exch. Rate Difference";
        PrepmtAdjInvoicePostingBuffer."G/L Account" := GLAccountNo;
        PrepmtAdjInvoicePostingBuffer.Amount := AdjAmount;
        if RoundingEntry then
            PrepmtAdjInvoicePostingBuffer."Amount (ACY)" := AdjAmount
        else
            PrepmtAdjInvoicePostingBuffer."Amount (ACY)" := 0;
        PrepmtAdjInvoicePostingBuffer."Dimension Set ID" := InvoicePostingBuffer."Dimension Set ID";
        PrepmtAdjInvoicePostingBuffer."Global Dimension 1 Code" := InvoicePostingBuffer."Global Dimension 1 Code";
        PrepmtAdjInvoicePostingBuffer."Global Dimension 2 Code" := InvoicePostingBuffer."Global Dimension 2 Code";
        PrepmtAdjInvoicePostingBuffer."Journal Templ. Name" := InvoicePostingBuffer."Journal Templ. Name";
        PrepmtAdjInvoicePostingBuffer."System-Created Entry" := true;
        PrepmtAdjInvoicePostingBuffer."Entry Description" := InvoicePostingBuffer."Entry Description";
        OnFillPrepmtAdjBufferOnBeforeAssignInvoicePostingBuffer(PrepmtAdjInvoicePostingBuffer, InvoicePostingBuffer);
        InvoicePostingBuffer := PrepmtAdjInvoicePostingBuffer;
        InvoicePostingBuffer.BuildPrimaryKey();

        Rec := InvoicePostingBuffer;
        if Rec.Find() then begin
            Rec.Amount += InvoicePostingBuffer.Amount;
            Rec."Amount (ACY)" += InvoicePostingBuffer."Amount (ACY)";
            Rec.Modify();
        end else begin
            Rec := InvoicePostingBuffer;
            Rec.Insert();
        end;
    end;

    procedure Update(InvoicePostingBuffer: Record "Invoice Posting Buffer")
    var
        InvDefLineNo: Integer;
        DeferralLineNo: Integer;
    begin
        Update(InvoicePostingBuffer, InvDefLineNo, DeferralLineNo);
    end;

    procedure Update(InvoicePostingBuffer: Record "Invoice Posting Buffer"; var InvDefLineNo: Integer; var DeferralLineNo: Integer)
    begin
        InvoicePostingBuffer.BuildPrimaryKey();

        OnBeforeUpdate(Rec, InvoicePostingBuffer);

        Rec := InvoicePostingBuffer;
        if Find() then begin
            Amount += InvoicePostingBuffer.Amount;
            "VAT Amount" += InvoicePostingBuffer."VAT Amount";
            "VAT Base Amount" += InvoicePostingBuffer."VAT Base Amount";
            "Amount (ACY)" += InvoicePostingBuffer."Amount (ACY)";
            "VAT Amount (ACY)" += InvoicePostingBuffer."VAT Amount (ACY)";
            "VAT Difference" += InvoicePostingBuffer."VAT Difference";
            "VAT Base Amount (ACY)" += InvoicePostingBuffer."VAT Base Amount (ACY)";
            Quantity += InvoicePostingBuffer.Quantity;
            "VAT Base Before Pmt. Disc." += InvoicePostingBuffer."VAT Base Before Pmt. Disc.";
            if not InvoicePostingBuffer."System-Created Entry" then
                "System-Created Entry" := false;
            if "Deferral Code" = '' then
                AdjustRoundingForUpdate();
            OnUpdateOnBeforeModify(Rec, InvoicePostingBuffer);
            Modify();
            OnUpdateOnAfterModify(Rec, InvoicePostingBuffer);
            InvDefLineNo := "Deferral Line No.";
        end else begin
            if "Deferral Code" <> '' then begin
                DeferralLineNo := DeferralLineNo + 1;
                "Deferral Line No." := DeferralLineNo;
                InvDefLineNo := "Deferral Line No.";
            end;
            Insert();
        end;

        OnAfterUpdate(Rec, InvoicePostingBuffer);
    end;

    procedure BuildPrimaryKey()
    var
        GroupID: Text;
        TypeValue: Integer;
    begin
        TypeValue := Type.AsInteger();
        GroupID :=
          PadField("Journal Templ. Name", MaxStrLen("Journal Templ. Name")) +
          Format(TypeValue) +
          PadField("G/L Account", MaxStrLen("G/L Account")) +
          PadField("Gen. Bus. Posting Group", MaxStrLen("Gen. Bus. Posting Group")) +
          PadField("Gen. Prod. Posting Group", MaxStrLen("Gen. Prod. Posting Group")) +
          PadField("VAT Bus. Posting Group", MaxStrLen("VAT Bus. Posting Group")) +
          PadField("VAT Prod. Posting Group", MaxStrLen("VAT Prod. Posting Group")) +
          PadField("Tax Area Code", MaxStrLen("Tax Area Code")) +
          PadField("Tax Group Code", MaxStrLen("Tax Group Code")) +
          Format("Tax Liable") +
          Format("Use Tax") +
          PadField(Format("Dimension Set ID"), 20) +
          PadField("Job No.", MaxStrLen("Job No.")) +
          PadField(Format("Fixed Asset Line No."), 20) +
          PadField("Deferral Code", MaxStrLen("Deferral Code")) +
          PadField("Additional Grouping Identifier", MaxStrLen("Additional Grouping Identifier"));

        "Group ID" := CopyStr(GroupID, 1, MaxStrLen("Group ID"));

        OnAfterBuildPrimaryKey(Rec);
    end;

    procedure PadField(TextField: Text; MaxLength: Integer): Text
    var
        TextLength: Integer;
    begin
        TextLength := StrLen(TextField);
        if TextLength < MaxLength then
            TextField := PadStr('', MaxLength - TextLength, ' ') + TextField;
        exit(TextField);
    end;

    procedure UpdateVATBase(var TotalVATBase: Decimal; var TotalVATBaseACY: Decimal)
    begin
        TotalVATBase := TotalVATBase - "VAT Base Amount";
        TotalVATBaseACY := TotalVATBaseACY - "VAT Base Amount (ACY)"
    end;

    local procedure UpdateEntryDescriptionFromPurchaseLine(PurchaseLine: Record "Purchase Line")
    var
        PurchaseHeader: Record "Purchase Header";
        PurchSetup: record "Purchases & Payables Setup";
    begin
        PurchSetup.Get();
        PurchaseHeader.get(PurchaseLine."Document Type", PurchaseLine."Document No.");
        UpdateEntryDescription(
            PurchSetup."Copy Line Descr. to G/L Entry",
            PurchaseLine."Line No.",
            PurchaseLine.Description,
            PurchaseHeader."Posting Description");
    end;

    local procedure UpdateEntryDescriptionFromSalesLine(SalesLine: Record "Sales Line")
    var
        SalesHeader: Record "Sales Header";
        SalesSetup: record "Sales & Receivables Setup";
    begin
        SalesSetup.Get();
        SalesHeader.get(SalesLine."Document Type", SalesLine."Document No.");
        UpdateEntryDescription(
            SalesSetup."Copy Line Descr. to G/L Entry",
            SalesLine."Line No.",
            SalesLine.Description,
            SalesHeader."Posting Description");
    end;

    local procedure UpdateEntryDescriptionFromServiceLine(ServiceLine: Record "Service Line")
    var
        ServiceHeader: Record "Service Header";
        ServiceSetup: record "Service Mgt. Setup";
    begin
        ServiceSetup.Get();
        ServiceHeader.get(ServiceLine."Document Type", ServiceLine."Document No.");
        UpdateEntryDescription(
            ServiceSetup."Copy Line Descr. to G/L Entry",
            ServiceLine."Line No.",
            ServiceLine.Description,
            ServiceHeader."Posting Description");
    end;

    local procedure UpdateEntryDescription(CopyLineDescrToGLEntry: Boolean; LineNo: Integer; LineDescription: text[100]; HeaderDescription: Text[100])
    begin
        if CopyLineDescrToGLEntry and (Type = type::"G/L Account") then begin
            "Entry Description" := LineDescription;
            "Fixed Asset Line No." := LineNo;
        end else
            "Entry Description" := HeaderDescription;
    end;

    local procedure AdjustRoundingForUpdate()
    begin
        AdjustRoundingFieldsPair(TempInvoicePostBufferRounding.Amount, Amount, "Amount (ACY)");
        AdjustRoundingFieldsPair(TempInvoicePostBufferRounding."VAT Amount", "VAT Amount", "VAT Amount (ACY)");
        AdjustRoundingFieldsPair(TempInvoicePostBufferRounding."VAT Base Amount", "VAT Base Amount", "VAT Base Amount (ACY)");
    end;

    local procedure AdjustRoundingFieldsPair(var TotalRoundingAmount: Decimal; var AmountLCY: Decimal; AmountFCY: Decimal)
    begin
        if (AmountLCY <> 0) and (AmountFCY = 0) then begin
            TotalRoundingAmount += AmountLCY;
            AmountLCY := 0;
        end;
    end;

    internal procedure ApplyRoundingForFinalPosting()
    begin
        ApplyRoundingValueForFinalPosting(TempInvoicePostBufferRounding.Amount, Amount);
        ApplyRoundingValueForFinalPosting(TempInvoicePostBufferRounding."VAT Amount", "VAT Amount");
        ApplyRoundingValueForFinalPosting(TempInvoicePostBufferRounding."VAT Base Amount", "VAT Base Amount");
    end;

    local procedure ApplyRoundingValueForFinalPosting(var Rounding: Decimal; var Value: Decimal)
    begin
        IF (Rounding <> 0) and (Value <> 0) then begin
            Value += Rounding;
            Rounding := 0;
        end;
    end;

    procedure ClearVATFields()
    begin
        "VAT Amount" := 0;
        "VAT Base Amount" := 0;
        "VAT Amount (ACY)" := 0;
        "VAT Base Amount (ACY)" := 0;
        "VAT Difference" := 0;
        "VAT %" := 0;
    end;

    procedure CopyToGenJnlLine(var GenJnlLine: Record "Gen. Journal Line")
    begin
        GenJnlLine."Account No." := Rec."G/L Account";
        GenJnlLine."System-Created Entry" := Rec."System-Created Entry";
        GenJnlLine."Gen. Bus. Posting Group" := Rec."Gen. Bus. Posting Group";
        GenJnlLine."Gen. Prod. Posting Group" := Rec."Gen. Prod. Posting Group";
        GenJnlLine."VAT Bus. Posting Group" := Rec."VAT Bus. Posting Group";
        GenJnlLine."VAT Prod. Posting Group" := Rec."VAT Prod. Posting Group";
        GenJnlLine."Tax Area Code" := Rec."Tax Area Code";
        GenJnlLine."Tax Liable" := Rec."Tax Liable";
        GenJnlLine."Tax Group Code" := Rec."Tax Group Code";
        GenJnlLine."Use Tax" := Rec."Use Tax";
        GenJnlLine.Quantity := Rec.Quantity;
        GenJnlLine."VAT %" := Rec."VAT %";
        GenJnlLine."VAT Calculation Type" := Rec."VAT Calculation Type";
        GenJnlLine."VAT Posting" := GenJnlLine."VAT Posting"::"Manual VAT Entry";
        GenJnlLine."Job No." := Rec."Job No.";
        GenJnlLine."Deferral Code" := Rec."Deferral Code";
        GenJnlLine."Deferral Line No." := Rec."Deferral Line No.";
        GenJnlLine.Amount := Rec.Amount;
        GenJnlLine."Source Currency Amount" := Rec."Amount (ACY)";
        GenJnlLine."VAT Base Amount" := Rec."VAT Base Amount";
        GenJnlLine."Source Curr. VAT Base Amount" := Rec."VAT Base Amount (ACY)";
        GenJnlLine."VAT Amount" := Rec."VAT Amount";
        GenJnlLine."Source Curr. VAT Amount" := Rec."VAT Amount (ACY)";
        GenJnlLine."VAT Difference" := Rec."VAT Difference";
        GenJnlLine."VAT Base Before Pmt. Disc." := Rec."VAT Base Before Pmt. Disc.";

        OnAfterCopyToGenJnlLine(GenJnlLine, Rec);
    end;

    procedure CopyToGenJnlLineFA(var GenJnlLine: Record "Gen. Journal Line")
    begin
        GenJnlLine."Account Type" := "Gen. Journal Account Type"::"Fixed Asset";
        GenJnlLine."FA Posting Date" := Rec."FA Posting Date";
        GenJnlLine."Depreciation Book Code" := Rec."Depreciation Book Code";
        GenJnlLine."Salvage Value" := Rec."Salvage Value";
        GenJnlLine."Depr. until FA Posting Date" := Rec."Depr. until FA Posting Date";
        GenJnlLine."Depr. Acquisition Cost" := Rec."Depr. Acquisition Cost";
        GenJnlLine."Maintenance Code" := Rec."Maintenance Code";
        GenJnlLine."Insurance No." := Rec."Insurance No.";
        GenJnlLine."Budgeted FA No." := Rec."Budgeted FA No.";
        GenJnlLine."Duplicate in Depreciation Book" := Rec."Duplicate in Depreciation Book";
        GenJnlLine."Use Duplication List" := Rec."Use Duplication List";

        OnAfterCopyToGenJnlLineFA(GenJnlLine, Rec);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterPrepareSales(var SalesLine: Record "Sales Line"; var InvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterPreparePurchase(var PurchaseLine: Record "Purchase Line"; var InvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterPrepareService(var ServiceLine: Record "Service Line"; var InvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterBuildPrimaryKey(var InvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnUpdateOnAfterModify(var InvoicePostingBuffer: Record "Invoice Posting Buffer"; FromInvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterUpdate(var InvoicePostingBuffer: Record "Invoice Posting Buffer"; var FromInvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCalcDiscount(var InvoicePostingBuffer: Record "Invoice Posting Buffer"; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCalcDiscountNoVAT(var InvoicePostingBuffer: Record "Invoice Posting Buffer"; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeUpdate(var InvoicePostingBuffer: Record "Invoice Posting Buffer"; var FromInvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnUpdateOnBeforeModify(var InvoicePostingBuffer: Record "Invoice Posting Buffer"; FromInvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforePrepareSales(var InvoicePostingBuffer: Record "Invoice Posting Buffer"; var SalesLine: Record "Sales Line")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnFillPrepmtAdjBufferOnBeforeAssignInvoicePostingBuffer(var PrepmtAdjInvoicePostingBuffer: Record "Invoice Posting Buffer"; InvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterCopyToGenJnlLine(var GenJnlLine: Record "Gen. Journal Line"; InvoicePostingBuffer: Record "Invoice Posting Buffer");
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterCopyToGenJnlLineFA(var GenJnlLine: Record "Gen. Journal Line"; InvoicePostingBuffer: Record "Invoice Posting Buffer");
    begin
    end;
}

