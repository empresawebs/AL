pageextension 50105 "Posted Sales Invoices Ext." extends "Posted Sales Invoices" //MyTargetPageId
{
    layout
    {

    }

    actions
    {
        addafter("&Invoice")
        {
            action(UpdateInvoice)
            {
                Caption = 'Actualizar Tipo Cliente en Facturas';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Customer: Record Customer;
                    SalesInvoiceHeader: Record "Sales Invoice Header";
                begin
                    Clear(SalesInvoiceHeader);
                    CurrPage.SetSelectionFilter(SalesInvoiceHeader);
                    if not Confirm('¿Desa actualizar ' + format(SalesInvoiceHeader.count) + ' regitros?') then
                        Error('');
                    SalesInvoiceHeader.FindSet();
                    repeat
                        Customer.Reset();
                        Customer.get(SalesInvoiceHeader."Sell-to Customer No.");
                        SalesInvoiceHeader."Customer Type" := Customer."Customer Type";
                        SalesInvoiceHeader.Modify();
                    until SalesInvoiceHeader.Next() = 0;
                end;
            }
        }
    }
}