import 'package:injectable/injectable.dart';
import 'package:shop_me/core/constants/api_constants.dart';
import 'package:shop_me/core/network/api_client.dart';
import 'package:shop_me/core/network/api_response.dart';

@Injectable()
class ProductApi {
  final ApiClient apiClient;
  ProductApi(this.apiClient);

  Future<ApiResponse> getProducts() async {
    return await apiClient.get(ApiConstants.products);
  }
}
