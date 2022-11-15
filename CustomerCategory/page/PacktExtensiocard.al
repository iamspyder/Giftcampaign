page 50125 "Packt Extension Setup card"
{
    ApplicationArea = All;
    Caption = 'Packt Extension Setup card';
    PageType = Card;
    SourceTable = "Packt Extension Setup";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Primary Key"; Rec."Primary Key")
                {
                    ToolTip = 'Specifies the value of the Primary Key field.';
                }
                field("Minimum Accepted Vendor Rate"; Rec."Minimum Accepted Vendor Rate")
                {
                    ToolTip = 'Specifies the value of the Minimum Accepted Vendor Rate for Purchases field.';
                }
                field("Gift Tolerance Qty"; Rec."Gift Tolerance Qty")
                {
                    ToolTip = 'Specifies the value of the Gift Tolerance Quantity for Sales field.';
                }
            }
        }
    }
}
