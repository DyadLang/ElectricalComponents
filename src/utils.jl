# Internal limitation function
function limit_out_current(v_source, v_out, Rout, Imaxsi_val, Imaxso_val)
  return(
    ifelse(v_out > (v_source + Rout*Imaxsi_val),
      Imaxsi_val,
      ifelse(v_out < (v_source - Rout*Imaxso_val),
        -Imaxso_val,
        (v_out - v_source)/Rout
      )
    )
  )
end

# Internal limitation function, designed for OpAmpDetailed,
# not for purpose of external usage
function limit_q_sum(q_sum, q_sum_ltf, v_pos, v_neg, vcp, vcm)
  return(
    ifelse((q_sum > v_pos - vcp) & (q_sum_ltf >= v_pos - vcp),
      v_pos - vcp,
      ifelse((q_sum < v_neg + vcm) & (q_sum_ltf <= v_neg + vcm),
        v_neg + vcm,
        q_sum
      )
    )    
  )
end