part of 'onboarding_bloc.dart';

sealed class OnboardingState extends Equatable {
  const OnboardingState();
  
  @override
  List<Object> get props => [];
}

final class OnboardingInitial extends OnboardingState {}
