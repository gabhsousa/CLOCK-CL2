module HourCounter (
    input rst,
    input clk,
    input enable,
    input hr_inc,
    output logic [3:0] hr_low,
    output logic [1:0] hr_high
);

  logic carry;

  always_ff @(posedge clk or negedge rst) begin
    if (!rst) begin
      hr_low  <= 4'd3; // Reseta o dígito das unidades
      hr_high <= 2'd2; // Reseta o dígito das dezenas
      carry     <= 1'b0; // Reseta o sinal de carry
    end
    else if (enable && hr_inc) begin
      if (hr_high == 2'd2 && hr_low == 4'd3) begin
        // Reinicia o contador quando atinge 23 horas
        hr_low  <= 4'd0;
        hr_high <= 2'd0;
      end
      else if (hr_low == 4'd9) begin
        // Incrementa as dezenas quando as unidades atingem 9
        hr_low  <= 4'd0;
        hr_high <= hr_high + 1'd1;
      end
      else begin
        // Incrementa as unidades
        hr_low <= hr_low + 1'd1;
      end
    end
  end

endmodule