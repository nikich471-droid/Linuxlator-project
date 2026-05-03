# HTML.sh
python -m http.server 8080 &
sleep 2 # Даем секунду серверу проснуться
am start -n com.android.chrome/com.google.android.apps.chrome.Main -d http://localhost:8080/femboy2.html
