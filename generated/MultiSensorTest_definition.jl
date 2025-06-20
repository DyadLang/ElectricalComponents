### DO NOT EDIT THIS FILE
### This file is auto-generated by the Dyad command-line compiler.
### If you edit this code it is likely to get overwritten.
### Instead, update the Dyad source code and regenerate this file


"""
   MultiSensorTest(; name)
"""
@component function MultiSensorTest(; name)

  ### Symbolic Parameters
  __params = Any[]

  ### Variables
  __vars = Any[]

  ### Constants
  __constants = Any[]

  ### Components
  __systems = ODESystem[]
  push!(__systems, @named source = BlockComponents.Sine(offset=1, amplitude=10, frequency=5))
  push!(__systems, @named voltage = ElectricalComponents.VoltageSource())
  push!(__systems, @named resistor = ElectricalComponents.Resistor(R=1))
  push!(__systems, @named capacitor = ElectricalComponents.Capacitor(C=1))
  push!(__systems, @named ground = ElectricalComponents.Ground())
  push!(__systems, @named multi_sensor = ElectricalComponents.MultiSensor())

  ### Defaults
  __defaults = Dict()

  ### Initialization Equations
  __initialization_eqs = []

  ### Equations
  __eqs = Equation[]
  push!(__eqs, source.y ~ voltage.V)
  push!(__eqs, connect(voltage.p, resistor.p))
  push!(__eqs, connect(resistor.n, multi_sensor.pc))
  push!(__eqs, connect(multi_sensor.nc, capacitor.p))
  push!(__eqs, connect(capacitor.n, voltage.n, ground.g))
  push!(__eqs, connect(capacitor.p, multi_sensor.pv))
  push!(__eqs, connect(capacitor.n, multi_sensor.nv))

  # Return completely constructed ODESystem
  return ODESystem(__eqs, t, __vars, __params; systems=__systems, defaults=__defaults, name, initialization_eqs=__initialization_eqs)
end
export MultiSensorTest

Base.show(io::IO, a::MIME"image/svg+xml", t::typeof(MultiSensorTest)) = print(io,
  """<div style="height: 100%; width: 100%; background-color: white"><div style="margin: auto; height: 500px; width: 500px; padding: 200px"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
      <defs>
        <filter id='red-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="100" flood-color="#ff0000" flood-opacity="0.5"/></filter>
        <filter id='green-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="100" flood-color="#00ff00" flood-opacity="0.5"/></filter>
        <filter id='blue-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="100" flood-color="#0000ff" flood-opacity="0.5"/></filter>
        <filter id='drop-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="40" flood-opacity="0.5"/></filter>
      </defs>
    
      </svg></div></div>""")
