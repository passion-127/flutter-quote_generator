import 'package:flutter/material.dart';
import 'package:quote_generator/config/theme/dimensions.dart';
import 'package:quote_generator/data/data.dart';
import 'package:quote_generator/utils/helpers.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    super.key,
    required this.quote,
  });

  final QuoteModel quote;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final autherTextStyle = textTheme.labelLarge?.copyWith(
      letterSpacing: quote.letterSpacing,
      color: theme.colorScheme.surface,
    );
    final quoteTextSyle = TextStyle(
      color: theme.colorScheme.surface,
      fontSize: quote.fontSize,
      wordSpacing: quote.wordSpacing,
      letterSpacing: quote.letterSpacing,
      fontWeight: Helpers.fontWeightList[quote.fontWeight],
    );

    final backgroundColor = Helpers.intToColor(quote.backgroundColor);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: Dimensions.kBorderRadiusAllSmall,
      ),
      child: Padding(
        padding: Dimensions.kPaddingAllLarge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              quote.text,
              textAlign: Helpers.textAlignList[quote.textAlign],
              style: quoteTextSyle,
              maxLines: 6,
            ),
            Dimensions.kVerticalSpaceMedium,
            Text(
              '- ${quote.author}',
              textAlign: Helpers.textAlignList[quote.textAlign],
              maxLines: 1,
              style: autherTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
