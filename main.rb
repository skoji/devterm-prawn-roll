require 'prawn'
require 'prawn/measurement_extensions'

Prawn::Document.generate("roll.pdf", page_size: [50.mm, 210.mm], margin: 1.mm) do |pdf|
  # pdf.font "/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc"
  pdf.font "./NotoSansJP-Regular.ttf"
  pdf.font_size = 10
  pdf.draw_text "日本語をここに書きます。", at: [2.mm, 200.mm]
  pdf.draw_text "日本語をここに書きます。", at: [2.mm, 100.mm]
  pdf.draw_text "日本語をここに書きます。", at: [2.mm, 10.mm]
  pdf.rectangle [1.mm, 205.mm], 45.mm, 200.mm
  pdf.stroke
end
