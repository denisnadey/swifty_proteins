for f in $(find app/src/main/res/ -type f -name "ic_launcher.png"); do
  base="${f%.*}"                      # отрезаем .png
  out="${base}_converted.png"         # сформируем имя ..._converted.png
  sips -s format png "$f" --out "$out"  # конвертим без предупреждений
  mv "$out" "$f"                      # переименовываем обратно
done
