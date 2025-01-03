import 'package:e_commerce/src/feature/home/cubit/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  int index = 0;

  void colorbar({required int value}){
    index = value;
    emit(ProductLoading());
  }
}