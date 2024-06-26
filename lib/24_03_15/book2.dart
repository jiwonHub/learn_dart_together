class Book2 {
  String title;
  DateTime publishDate;
  String comment;

  Book2({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Book2 && other.title == title && other.publishDate == publishDate;
  }

  @override
  int get hashCode {
    return title.hashCode ^ publishDate.hashCode; // 제목과 날짜로만 동등성 비교
  }

  @override
  String toString() {
    return '책 제목 : $title, 출간일 : $publishDate, 내용 : $comment';
  }

  Book2 copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book2(
        title: title ?? this.title,
        publishDate: publishDate ?? this.publishDate,
        comment: comment ?? this.comment
    );
  }
}


