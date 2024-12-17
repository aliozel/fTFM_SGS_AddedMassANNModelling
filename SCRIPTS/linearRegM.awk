BEGIN { FS = "[ ,\t]+" }
NF == 2 { x_sum += $1
          y_sum += $2
          xy_sum += $1*$2
          x2_sum += $1*$1
          num += 1
          x[NR] = $1
          y[NR] = $2
        }
END { mean_x = x_sum / num
      mean_y = y_sum / num
      mean_xy = xy_sum / num
      mean_x2 = x2_sum / num
      slope = (mean_xy - (mean_x*mean_y)) / (mean_x2 - (mean_x*mean_x))
      inter = mean_y - slope * mean_x
      for (i = num; i > 0; i--) {
          ss_total += (y[i] - mean_y)**2
          ss_residual += (y[i] - (slope * x[i] + inter))**2
      }
      r2 = 1 - (ss_residual / ss_total)
      printf(slope)
    }