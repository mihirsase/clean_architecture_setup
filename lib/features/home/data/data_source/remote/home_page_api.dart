import 'package:injectable/injectable.dart';
import 'package:shop_me/core/constants/api_constants.dart';
import 'package:shop_me/core/constants/app_constants.dart';
import 'package:shop_me/core/network/api_client.dart';
import 'package:shop_me/core/network/api_response.dart';

abstract class HomePageApi {
  // Get all article
  Future<ApiResponse> getArticles();
}

@Injectable(as: HomePageApi)
class HomePageApiImpl implements HomePageApi {
  ApiClient apiClient;

  HomePageApiImpl(this.apiClient);
  @override
  Future<ApiResponse> getArticles() async {
    return await apiClient.get(
      ApiConstants.mostPopularArticles,
      queryParameters: {'api-key': AppConstants.apiKey},
    );
  }
}
