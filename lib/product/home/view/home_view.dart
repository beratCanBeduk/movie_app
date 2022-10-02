import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_application/product/home/bloc/home_bloc.dart';
import 'package:movie_application/product/home/services/home_service.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Map> myProducts =
        List.generate(30, (index) => {"id": index, "name": "Product $index"})
            .toList();
    return BlocProvider(
      create: (context) => HomeBloc(RepositoryProvider.of<HomeService>(context))
        ..add(LoadApiEvent()),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Home Page'),
          ),
          body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            if (state is HomeLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is HomeLoadedState) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 2 / 2.5,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemCount: state.myList.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              width: double.maxFinite,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  '${state.myList[index].poster}',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Text(
                                        '${state.myList[index].movie}',
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 18),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              );
            }
            return Container();
          })),
    );
  }
}
