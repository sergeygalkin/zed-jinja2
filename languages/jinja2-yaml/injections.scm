; Склеиваем все куски в один документ, но пропускаем «чистую пунктуацию» между
; выражениями (например ":" в `{{ a }}:{{ b }}`): после вырезания {{ }} она
; даёт невалидный YAML (`image: :`).
((content) @injection.content
  (#not-match? @injection.content "^[:/.,@=-]+$")
  (#set! injection.language "YAML")
  (#set! injection.combined)
  (#set! injection.include-children true))
