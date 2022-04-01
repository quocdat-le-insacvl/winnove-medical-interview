for ANGLE in 0 20 30 45
do
  PATH_LOWER="./"$ANGLE"_DEG/LOWER_"$ANGLE".stl"
  cmake-build-debug/WinnoveInterview $PATH_LOWER
  PATH_UPPER="./"$ANGLE"_DEG/UPPER_"$ANGLE".stl"
  cmake-build-debug/WinnoveInterview $PATH_UPPER
done