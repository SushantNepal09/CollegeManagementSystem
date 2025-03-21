class PFees {
  final String month;
  final String fee;
  final String datepayed;

  PFees({required this.month, required this.fee, required this.datepayed});
}

List<PFees> feesContent = [
  PFees(month: "School Fee For March", fee: "Rs.15000", datepayed: "7 Mar"),
  PFees(month: "School Fee For February", fee: "Rs.12700", datepayed: "7 Feb "),
  PFees(month: "School Fee For January", fee: "Rs.28500", datepayed: "7 Jan "),
  PFees(month: "School Fee For December", fee: "Rs.25000", datepayed: "7 Dec "),
  PFees(month: "School Fee For November", fee: "Rs.15000", datepayed: "7 Nov ")
];
