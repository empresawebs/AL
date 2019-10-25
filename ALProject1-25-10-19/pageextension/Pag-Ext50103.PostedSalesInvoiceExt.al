pageextension 50103 "Posted Sales Invoice Ext." extends "Posted Sales Invoice" //MyTargetPageId
{
    layout
    {
        addafter("Sell-to Customer Name")
        {
            field("Customer Type"; "Customer Type")
            {
                ApplicationArea = All;
            }
        }
    }
}