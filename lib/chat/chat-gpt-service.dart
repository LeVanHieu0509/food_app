import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatGptService {
  static const String apiKey =
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6Ik1UaEVOVUpHTkVNMVFURTRNMEZCTWpkQ05UZzVNRFUxUlRVd1FVSkRNRU13UmtGRVFrRXpSZyJ9.eyJodHRwczovL2FwaS5vcGVuYWkuY29tL3Byb2ZpbGUiOnsiZW1haWwiOiJiYWJib2xAc2t5b2kubWwiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZX0sImh0dHBzOi8vYXBpLm9wZW5haS5jb20vYXV0aCI6eyJ1c2VyX2lkIjoidXNlci1oQnp4NEN3bVJEQ2J1QXVBblNsQ3lSdzEifSwiaXNzIjoiaHR0cHM6Ly9hdXRoMC5vcGVuYWkuY29tLyIsInN1YiI6ImF1dGgwfDYzZTIwZmVlZGE5MmNkZjg2ZjYxYzI3ZCIsImF1ZCI6WyJodHRwczovL2FwaS5vcGVuYWkuY29tL3YxIiwiaHR0cHM6Ly9vcGVuYWkub3BlbmFpLmF1dGgwYXBwLmNvbS91c2VyaW5mbyJdLCJpYXQiOjE2NzkyMDY4OTMsImV4cCI6MTY4MDQxNjQ5MywiYXpwIjoiVGRKSWNiZTE2V29USHROOTVueXl3aDVFNHlPbzZJdEciLCJzY29wZSI6Im9wZW5pZCBwcm9maWxlIGVtYWlsIG1vZGVsLnJlYWQgbW9kZWwucmVxdWVzdCBvcmdhbml6YXRpb24ucmVhZCBvZmZsaW5lX2FjY2VzcyJ9.thBBYHX7GKJXTrE_lFQcUOEgvGYfLnTsw5q1Lv1H-VHGtecuqoGWzxqsWdUzEEgHYYuR-82BSSX322IQPbxV1pj6yBUnD-hTD5p8LL8eZdUNLkasld8OdkGZsy4KlN0mjOIbpt_hPJB5iY4lMEszr3LgYb5p34jhp7lNsTrziPJ0JxVlOQLGhiQY3U6vRacg9ElGJB3GJfDhz-Z5M9wHz7JWWRHSyd3rAgHk9SAn68FHNG2bpqa-cxpo0YEaFMFJSat_yL8N28IkrsmiRKQ3PSA87Qx06Y5CuxcfOp6Ea9zhQXsYxum0YsCwxJS3ow3W-YnfKHgdi0MILmIdIpo1SA";
  static const String apiUrl =
      'https://api.openai.com/v1/engines/davinci-codex/completions';

  static Future<String> getResponse(String prompt) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: jsonEncode({
        'prompt': '$prompt\n',
        "max_tokens": 7,
        "temperature": 0,
        "top_p": 1,
        "n": 1,
        "stream": false,
        "logprobs": null,
        "stop": ""
      }),
    );
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      print(responseData);
      final text = responseData['choices'][0]['text'] as String;
      return text.trim();
    } else {
      throw Exception('Failed to get response from ChatGPT');
    }
  }
}
