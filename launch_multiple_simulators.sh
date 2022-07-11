xcrun simctl shutdown all

path=$(find ~/Library/Developer/Xcode/DerivedData/DemoMultipleSimulatorsSingleBuild-*/Build/Products/Debug-iphonesimulator -name "DemoMultipleSimulatorsSingleBuild.app" | head -n 1)
echo "${path}"

filename=MultiSimConfig.txt
grep -v '^#' $filename | while read -r line
do
  echo $line
  xcrun simctl boot "$line"
  xcrun simctl install booted $path
  xcrun simctl launch booted com.bumios.DemoMultipleSimulatorsSingleBuild
done
