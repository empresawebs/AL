page 50100 "Customer Type"
{
    Caption = 'Tipos Cliente';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Customer Type";
    SourceTableView = sorting (Code) order(ascending);

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código"; "Code")
                {
                    ApplicationArea = All;
                }
                field("Nombre"; "Name")
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}