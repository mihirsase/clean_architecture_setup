import 'package:injectable/injectable.dart';
import 'package:shop_me/core/constants/api_constants.dart';
import 'package:shop_me/core/network/api_client.dart';
import 'package:shop_me/core/network/api_response.dart';

@Injectable()
class ProductDetailApi {
  final ApiClient apiClient;
  ProductDetailApi(this.apiClient);

  Future<ApiResponse> getProductDetails(int productId) async {
    return await apiClient.get('${ApiConstants.products}/$productId');
  }
}
