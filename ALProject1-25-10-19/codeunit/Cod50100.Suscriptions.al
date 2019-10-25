codeunit 50100 "Suscriptions"
{
    [EventSubscriber(ObjectType::Codeunit, codeunit::"Sales-Post", 'OnBeforePostCustomerEntry', '', true, true)]
    local procedure OnAfterPostCustomerEntry(var GenJnlLine: Record "Gen. Journal Line"; var SalesHeader: Record "Sales Header")
    begin
        GenJnlLine."Customer Type" := SalesHeader."Customer Type";
    end;

    [EventSubscriber(ObjectType::Codeunit, codeunit::"Gen. Jnl.-Post Line", 'OnAfterInitCustLedgEntry', '', true, true)]
    local procedure OnAfterInitCustLedgEntry(GenJournalLine: Record "Gen. Journal Line"; var CustLedgerEntry: Record "Cust. Ledger Entry")
    begin
        CustLedgerEntry."Customer Type" := GenJournalLine."Customer Type";
    end;
}