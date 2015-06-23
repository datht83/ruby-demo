require 'prawn'

Prawn::Document.generate("dave.pdf") do |pdf|
  pdf.font "Courier"
  pdf.move_down(100)
  pdf.draw_text("Hello There Class", :at => [0,pdf.y])
  pdf.move_down(100)
  pdf.draw_text("Hello There Class", :at => [0,pdf.y])

  pdf.stroke_color = "0000ff"
  pdf.line_width = 5
  pdf.stroke do
    pdf.circle([300,300], 100);
    pdf.circle([350,320], 20);
    pdf.circle([260,325], 20);
    pdf.curve [270,250], [340,250], :bounds => [[270,270],[275,220]]
  end
end