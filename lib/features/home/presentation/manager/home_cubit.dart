import 'package:beauty_ecommerce/features/home/data/repo/home_repo.dart';
import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/home_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial()){
    changeBrandIndex(0);
  }

  static HomeCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;

  final List<String> brandNames = ['Maybelline', 'Milani', 'Dior','Fenty', 'Clinique' , 'L\'oreal'  , 'Colourpop'];

  int currentIndex = 0;

  void changeBrandIndex (int index){
    currentIndex = index ;
    getProductByBrand(brandNames[currentIndex]);
    emit(HomeChangeBrandIndex());
  }
  void getProductByBrand(String brand) async {
    emit(HomeBeautyProductLoading()); // Emit loading state
    var products = await homeRepo.getProduct(brand);
    products.fold(
      (error) {
        emit(HomeBeautyProductFailed(error: error.apiErrorModel.message ?? ''));
      },
      (beautyProductList) {
        emit(HomeBeautyProductSuccess(beautyProductList: beautyProductList));
      },
    );
  }

List<Widget> screens =[
  HomeBody(),
  Center(child: Text('Second'),),
  Center(child: Text('Third'),),
  Center(child: Text('Fourth'),),
];


  int screenIndex = 0 ;

  void changScreen(int index){
    screenIndex = index;
    if (index == 0) {
      getProductByBrand(brandNames[currentIndex]);
    }
    emit(HomeChangeScreenIndex());
  }
}
