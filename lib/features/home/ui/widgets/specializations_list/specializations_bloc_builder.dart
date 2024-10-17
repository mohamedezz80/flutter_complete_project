import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_flutter/core/helpers/spacing.dart';
import 'package:flutter_complete_flutter/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:flutter_complete_flutter/features/home/ui/widgets/specializations_list/speciality_shimmer_loading.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import 'speciality_list_view.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
        current is SpecializationsLoading ||
            current is SpecializationsSuccess ||
            current is SpecializationsError,
        builder: (context, state) {
          return state.maybeWhen(
            specializationsLoading: () {
              return setupLoading();
            },
            specializationsSuccess: (specializationDataList) {
              var specializationsList = specializationDataList;
              return setupSuccess(specializationsList);
            },
            specializationsError: (errorHandler) => setupError(),
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        }
    );
  }

  /// shimmer loading for specialization and doctors.
  Widget setupLoading() {
    return Expanded(
        child: Column(
          children: [
            const SpecialityShimmerLoading(),
            verticalSpace(8),
            const DoctorsShimmerLoading(),
          ],
        ),
    );
  }

  Widget setupSuccess(specializationsList) {
    return SpecialityListView(
      specializationsDataList: specializationsList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }

}
