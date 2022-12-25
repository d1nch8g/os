sdkmanager --install "system-images;android-29;default;x86"
sdkmanager "system-images;android-27;google_apis_playstore;x86"
avdmanager create avd -n dflt -k "system-images;android-29;default;x86"

echo "export ANDROID_SDK_ROOT='/opt/android-sdk'" >> ~/.zshrc
echo "export PATH=\$PATH:\$ANDROID_SDK_ROOT/platform-tools/" >> ~/.zshrc
echo "export PATH=\$PATH:\$ANDROID_SDK_ROOT/tools/bin/" >> ~/.zshrc
echo "export PATH=\$PATH:\$ANDROID_ROOT/emulator" >> ~/.zshrc
echo "export PATH=\$PATH:\$ANDROID_SDK_ROOT/tools/" >> ~/.zshrc
source ~/.zshrc

git config --global --add safe.directory /opt/flutter

flutter doctor --android-licenses

flutter doctor

