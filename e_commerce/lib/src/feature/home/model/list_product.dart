import 'package:e_commerce/src/core/style/color_app.dart';
import 'package:e_commerce/src/core/style/img_app.dart';
import 'package:e_commerce/src/feature/home/model/model.dart';
import 'package:flutter/material.dart';

List<ModelProduct> products = [
  ModelProduct(
    id: 1,
    rating: "⭐⭐⭐ (3/5)",
    price: 500,
    old: 600,
    title: "سماعات لاسلكيه",
    subTitle: "سماعات لاسيلكيه سوداء",
    description: "سماعات كلاسيكيه ممتازه بجوده صوت عاليه وسعر خيالى تناسب الجميع",
    image: ImageApp.backgroundImage1,
  ),
  ModelProduct(
    id: 2,
    rating: "⭐⭐⭐⭐⭐ (5/5)",
    price: 620,
    old: 700,
    title: "سماعات لاسيلكيه سوداء",
    subTitle: "جودة صوت عالية",
    description: "سماعات كلاسيكيه ممتازه بجوده صوت عاليه وسعر خيالى تناسب الجميع",
    image: ImageApp.backgroundImage2,
  ),
  ModelProduct(
    id: 3,
    rating: "⭐⭐⭐⭐⭐ (5/5)",
    price: 100,
    old: 400,
    title: "سماعات بلوتوث",
    subTitle: "سماعات بلوتوث بيضاء",
    description: "سماعات كلاسيكيه ممتازه بجوده صوت عاليه وسعر خيالى تناسب الجميع",
    image: ImageApp.backgroundImage3,
  ),
  ModelProduct(
    id: 4,
    rating: "⭐⭐⭐⭐⭐ (5/5)",
    price: 1000,
    old: 2000,
    title: "سماعات لاسلكيه",
    subTitle: "سماعات لاسلكيه بيضاء",
    description: "سماعات كلاسيكيه ممتازه بجوده صوت عاليه وسعر خيالى تناسب الجميع",
    image: ImageApp.backgroundImage4,
  ),
  ModelProduct(
    id: 5,
    rating: "⭐⭐⭐⭐⭐ (5/5)",
    price: 200,
    old: 400,
    title: "سماعات بلوتوث",
    subTitle: "سماعات بلوتوث سوداء",
    description: "سماعات كلاسيكيه ممتازه بجوده صوت عاليه وسعر خيالى تناسب الجميع",
    image: ImageApp.backgroundImage5,
  ),
  ModelProduct(
    id: 6,
    rating: "⭐⭐⭐⭐ (4/5)",
    price: 99,
    old: 200,
    title: "سماعات سلك",
    subTitle: "سماعات سلك سوداء",
    description: "سماعات كلاسيكيه ممتازه بجوده صوت عاليه وسعر خيالى تناسب الجميع",
    image: ImageApp.backgroundImage6,
  ),
  ModelProduct(
    id: 7,
    rating: "⭐⭐ (2/5)",
    price: 89,
    old: 100,
    title: "سماعات سلك",
    subTitle: "سماعات سلك سوداء",
    description: "سماعات كلاسيكيه ممتازه بجوده صوت عاليه وسعر خيالى تناسب الجميع",
    image: ImageApp.backgroundImage7,
  ),
];
List<ModleImg> listimg = [
  ModleImg(
    img:  "https://th.bing.com/th/id/OIP.Ldjmywcs6JClDjzuSHzUGQHaDY?rs=1&pid=ImgDetMain",
  ),
  ModleImg(
    img:  "https://th.bing.com/th/id/OIP.w_V9f0X4LKl2aro0fb0vewHaHa?rs=1&pid=ImgDetMain",
  ),
  ModleImg(
    img:  "https://mir-s3-cdn-cf.behance.net/projects/404/f41ea7174914057.Y3JvcCw5OTksNzgyLDAsMTQ4.png",
  ),
  ModleImg(
    img:  "https://iforum-sg.c.huawei.com/dddd/eg/images/2022/5/25/264778c9-2d42-49b2-8a0a-da93acf8da19.jpg",
  ),
];
List<ModelCatigorise> listcatigor = [
  ModelCatigorise(
    color: ColorsApp.kSecondaryColor,
    name: "الإلكترونيات"
  ),
  ModelCatigorise(
    color: const Color.fromARGB(255, 33, 129, 120),
    name: "سماعات لاسلكيه"
  ),
  ModelCatigorise(
    color: Colors.green,
    name: "سماعات سلك"
  ),
  ModelCatigorise(
    color: Colors.orange,
    name: "سماعات حديثه"
  ),
];
