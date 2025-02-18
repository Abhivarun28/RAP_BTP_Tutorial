@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking supplement processor'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZEY_AV_BOOKING_SUPPL_APPROVER as projection on ZEY_AV_BOOKSUPPL
{
   key TravelId,
   key BookingId,
   key BookingSupplementId,
   SupplementId,
   Price,
   CurrencyCode,
   LastChangedAt,
   /* Associations */
   _Booking: redirected to parent ZEY_AV_BOOKING_APPROVER,
   _Product,
   _SupplementText,
   _Travel: redirected to ZEY_AV_TRAVEL_APPROVER
}
