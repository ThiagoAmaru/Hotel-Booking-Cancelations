| **Feature Name**            | **Type**    | **Description**                                              |
| :-------------------------- | :---------- | :----------------------------------------------------------- |
| ADR                         | Float       | Taxa Média Diaria. Calculado dividindo a soma de todas as transações de hospedagem pelo número total de estadiasnights. |
| Adults                      | Integer     | Numero de Adultos.                                            |
| Agent                       | Categorical | ID da Agencia de Viagens que foi reservado.               |
| ArrivalDateDayOfMonth       | Integer     | Dia do mês da data de viagem.                        |
| ArrivalDateMonth            | Categorical | Mês da viagem: “Janeiro” até “Dezembro”. |
| ArrivalDateWeekNumber       | Integer     | Semana do Ano da viagem.                             |
| ArrivalDateYear             | Integer     | Ano da viagem.                                        |
| AssignedRoomType            | Categorical | Código do tipo de quarto atribuído à reserva. Às vezes, o tipo de quarto atribuído difere do tipo de quarto reservado devido a razões de operação do hotel (por exemplo, overbooking) ou por solicitação do cliente. |
| Babies                      | Integer     | Number of babies.                                            |
| BookingChanges              | Integer     | Number of changes/amendments made to the booking from the moment the booking was entered on the Property Management System until the moment of check-in or cancellation. Calculated by adding the number of unique iterations that change some of the booking attributes, namely: persons, arrival date, nights, reserved room type or meal. |
| Children                    | Integer     | Number of children. Sum of both payable and non-payable children. |
| Company                     | Categorical | ID of the company/entity that made the booking or responsible for paying the booking. ID is presented instead of designation for anonymity reasons. |
| Country                     | Categorical | Country of origin. Categories are represented in the International Standards Organization (ISO) 3155–3:2013 format. |
| CustomerType                | Categorical | Type of booking, assuming one of four categories: Contract (when the booking has an allotment or other type of contract associated to it), Group (when the booking is associated to a group), Transient (when the booking is not part of a group or contract, and is not associated to other transient booking), and Transient-party (when the booking is transient, but is associated to at least other transient booking). |
| DaysInWaitingList           | Integer     | Number of days the booking was in the waiting list before it was confirmed to the customer. Calculated by subtracting the date the booking was confirmed to the customer from the date the booking entered on the Property Management System. |
| DepositType                 | Categorical | Indication on if the customer made a deposit to guarantee the booking. This variable can assume three categories: No Deposit (no deposit was made), Non Refund (a deposit was made in the value of the total stay cost), and Refundable (a deposit was made with a value under the total cost of stay). Value calculated based on the payments identified for the booking in the transaction (TR) table before the booking׳s arrival or cancellation date. In case no payments were found the value is “No Deposit”. If the payment was equal or exceeded the total cost of stay, the value is set as “Non Refund”. Otherwise the value is set as “Refundable”. |
| DistributionChannel         | Categorical | Booking distribution channel. The term “TA” means “Travel Agents” and “TO” means “Tour Operators”. |
| IsCanceled                  | Integer     | Value indicating if the booking was canceled (1) or not (0). |
| IsRepeatedGuest             | Integer     | Value indicating if the booking name was from a repeated guest (1) or not (0). Variable created by verifying if a profile was associated with the booking customer. If so, and if the customer profile creation date was prior to the creation date for the booking on the Property Management System database it was assumed the booking was from a repeated guest. |
| LeadTime                    | Integer     | Number of days that elapsed between the entering date of the booking into the Property Management System and the arrival date. Calculated by subtracting the entering date from the arrival date. |
| MarketSegment               | Categotical | Market segment designation. In categories, the term “TA” means “Travel Agents” and “TO” means “Tour Operators”. |
| Meals                       | Categorical | Type of meal booked. Categories are presented in standard hospitality meal packages: Undefined/SC (no meal package), BB (Bed & Breakfast), HB (Half board: breakfast and one other meal – usually dinner), and FB (Full board: breakfast, lunch and dinner). |
| PreviousBookingsNotCanceled | Integer     | Number of previous bookings not canceled by the customer prior to the current booking. In case there was no customer profile associated with the booking, the value is set to 0. Otherwise, the value is the number of bookings with the same customer profile created before the current booking and not canceled. |
| PreviousCancellations       | Integer     | Number of previous bookings that were canceled by the customer prior to the current booking. In case there was no customer profile associated with the booking, the value is set to 0. Otherwise, the value is the number of bookings with the same customer profile created before the current booking and canceled. |
| RequiredCarParkingSpaces    | Integer     | Number of car parking spaces required by the customer.       |
| ReservationStatus           | Categorical | Reservation last status, assuming one of three categories: Canceled (booking was canceled by the customer), Check-Out (customer has checked in but already departed), No-Show (customer did not check-in and did inform the hotel of the reason why). |
| ReservationStatusDate       | Date        | Date at which the last status was set. This variable can be used in conjunction with the `ReservationStatus` to understand when was the booking canceled or when did the customer checked-out of the hotel. |
| ReservedRoomType            | Categorical | Code of room type reserved. Code is presented instead of designation for anonymity reasons. |
| StaysInWeekendNights        | Integer     | Number of weekend nights (Saturday or Sunday) the guest stayed or booked to stay at the hotel. Calculated by counting the number of weekend nights from the total number of nights. |
| StaysInWeekNights           | Integer     | Number of week nights (Monday to Friday) the guest stayed or booked to stay at the hotel. Calculated by counting the number of week nights from the total number of nights. |
| TotalOfSpecialRequests      | Integer     | Number of special requests made by the customer (e.g. twin bed or high floor). |