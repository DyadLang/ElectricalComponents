### DO NOT EDIT THIS FILE
### This file is auto-generated by the Dyad command-line compiler.
### If you edit this code it is likely to get overwritten.
### Instead, update the Dyad source code and regenerate this file


@testset "Running test case1 for SaturatingInductorTest" begin
  using CSV, DataFrames, Plots

  @mtkbuild model = SaturatingInductorTest()
  u0 = []
  prob = ODEProblem(model, u0, (0, 10))
  sol = solve(prob, DefaultODEAlgorithm())
  @test SciMLBase.successful_retcode(sol)
  @test sol[model.sat_inductor.L_actual][1] ≈ 2
  @test sol[model.sat_inductor.L_actual][end] ≈ 0.50863266
# Signals selected for regression testing: []
  ref_times = [sol(t, idxs=:t) for t in LinRange(sol[:t][1], sol[:t][end], 100)]
  if get(ENV, "DYAD_UPDATE_REFS", "") !== ""
    # If asked to update snapshots, write out reference data for all signals
    mkpath("snapshots")
  end
end
