; Склеиваем все куски в один документ, но пропускаем «чистую пунктуацию» между
; выражениями (например ":" в `{{ a }}:{{ b }}`): после вырезания {{ }} она
; даёт невалидный JSON.
((content) @injection.content
  (#not-match? @injection.content "^[:/.,@=-]+$")
  (#set! injection.language "JSON")
  (#set! injection.combined)
  (#set! injection.include-children true))
