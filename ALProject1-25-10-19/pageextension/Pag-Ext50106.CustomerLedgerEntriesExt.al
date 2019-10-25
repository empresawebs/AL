pageextension 50106 "Customer Ledger Entries Ext." extends "Customer Ledger Entries"  //MyTargetPageId
{
    layout
    {
        addafter("Document No.")
        {
            field("Customer Type"; "Customer Type")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
    }
}