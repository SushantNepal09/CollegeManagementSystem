class feeDetails {
  final String title;
  final String cost;



  feeDetails({required this.title, required this.cost});
}

List<feeDetails> allCosts =
[

feeDetails(title: "Tution Fee", cost: "25000"),
feeDetails(title: "Transportation Fee", cost: "4500"),
feeDetails(title: "Exam Fee", cost: "3700"),
feeDetails(title: "Extra Fee", cost: "9900"),
feeDetails(title: "Discount", cost: "3500"),
feeDetails(title: "Total", cost: "35000"),

];