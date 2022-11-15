page 50133 "Gift Campaign List_PKT"
{
    PageType = List;
    SourceTable = GiftCampaign_PKT;
    UsageCategory = Lists;
    Caption = 'Gift Campaigns';
    ApplicationArea = All;
    AdditionalSearchTerms = 'promotions, marketing';
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(CustomerCategoryCode; Rec.CustomerCategoryCode)
                {
                    ApplicationArea = All;
                }
                field(ItemNo; Rec.ItemNo)
                {
                    ApplicationArea = All;
                }
                field(StartingDate; Rec.StartingDate)
                {
                    ApplicationArea = All;
                }
                field(EndingDate; Rec.EndingDate)
                {
                    ApplicationArea = All;
                }
                field(MinimumOrderQuantity; Rec.MinimumOrderQuantity)
                {
                    ApplicationArea = All;
                    Style = Strong;
                }
                field(GiftQuantity; Rec.GiftQuantity)
                {
                    ApplicationArea = All;
                    Style = Strong;
                }
                field(Inactive; Rec.Inactive)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    views
    {
        view(ActiveCampaigns)
        {
            Caption = 'Active Gift Campaigns';
            Filters = where(Inactive = const(false));
        }
        view(InactiveCampaigns)
        {
            Caption = 'Inactive Gift Campaigns';
            Filters = where(Inactive = const(true));
        }
    }
}