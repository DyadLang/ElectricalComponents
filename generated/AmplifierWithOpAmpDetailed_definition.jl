### DO NOT EDIT THIS FILE
### This file is auto-generated by the Dyad command-line compiler.
### If you edit this code it is likely to get overwritten.
### Instead, update the Dyad source code and regenerate this file


"""
   AmplifierWithOpAmpDetailed(; name)

Simple Amplifier circuit which uses OpAmpDetailed
"""
@component function AmplifierWithOpAmpDetailed(; name)

  ### Symbolic Parameters
  __params = Any[]

  ### Variables
  __vars = Any[]

  ### Constants
  __constants = Any[]

  ### Components
  __systems = ODESystem[]
  push!(__systems, @named op_amp = ElectricalComponents.OpAmpDetailed())
  push!(__systems, @named resistor = ElectricalComponents.Resistor(R=10000))
  push!(__systems, @named resistor1 = ElectricalComponents.Resistor(R=20000))
  push!(__systems, @named resistor2 = ElectricalComponents.Resistor(R=10000))
  push!(__systems, @named voltage_source_1 = ElectricalComponents.VoltageSource())
  push!(__systems, @named voltage_source_2 = ElectricalComponents.VoltageSource())
  push!(__systems, @named voltage_source_3 = ElectricalComponents.VoltageSource())
  push!(__systems, @named input_signal1 = BlockComponents.Sine(amplitude=12, frequency=1000, offset=0))
  push!(__systems, @named input_signal2 = BlockComponents.Constant(k=15))
  push!(__systems, @named input_signal3 = BlockComponents.Constant(k=-15))
  push!(__systems, @named ground = ElectricalComponents.Ground())

  ### Defaults
  __defaults = Dict()
  __defaults[resistor2.i] = (0)
  __defaults[op_amp.q_fp1] = (0)
  __defaults[op_amp.q_fr1] = (0)
  __defaults[op_amp.q_fr2] = (0)
  __defaults[op_amp.q_fr3] = (0)

  ### Initialization Equations
  __initialization_eqs = []

  ### Equations
  __eqs = Equation[]
  push!(__eqs, input_signal1.y ~ voltage_source_1.V)
  push!(__eqs, input_signal2.y ~ voltage_source_2.V)
  push!(__eqs, input_signal3.y ~ voltage_source_3.V)
  push!(__eqs, connect(ground.g, voltage_source_1.n, op_amp.p, resistor2.n, voltage_source_3.n, voltage_source_2.n))
  push!(__eqs, connect(resistor.n, op_amp.n, resistor1.p))
  push!(__eqs, connect(resistor1.n, op_amp.outp, resistor2.p))
  push!(__eqs, connect(resistor.p, voltage_source_1.p))
  push!(__eqs, connect(op_amp.p_supply, voltage_source_2.p))
  push!(__eqs, connect(op_amp.n_supply, voltage_source_3.p))

  # Return completely constructed ODESystem
  return ODESystem(__eqs, t, __vars, __params; systems=__systems, defaults=__defaults, name, initialization_eqs=__initialization_eqs)
end
export AmplifierWithOpAmpDetailed

Base.show(io::IO, a::MIME"image/svg+xml", t::typeof(AmplifierWithOpAmpDetailed)) = print(io,
  """<div style="height: 100%; width: 100%; background-color: white"><div style="margin: auto; height: 500px; width: 500px; padding: 200px"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
      <defs>
        <filter id='red-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="100" flood-color="#ff0000" flood-opacity="0.5"/></filter>
        <filter id='green-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="100" flood-color="#00ff00" flood-opacity="0.5"/></filter>
        <filter id='blue-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="100" flood-color="#0000ff" flood-opacity="0.5"/></filter>
        <filter id='drop-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="40" flood-opacity="0.5"/></filter>
      </defs>
    <g filter="url(#drop-shadow)" transform="translate(0 150) scale(0.2 0.2) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
    <style>
    text {
      transform-origin: center center;
    }
    </style><g transform="translate(0 0) scale(1.0) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" id="a" width="1000" height="1000" viewBox="0 0 1000 1000"
><defs><style>.b {fill: none;}.b,.c {stroke: #b6b4cf;stroke-linejoin: round;stroke-width: 8px;}.c,.d {  fill: #fff;}.e {fill: #6e6ea1;}.e,.d {stroke-width: 0px;}</style>
  </defs><rect class="d" x="4" y="4" width="992" height="992" /><path class="e" d="M992,8v984H8V8h984M1000,0H0v1000h1000V0h0Z" /><path class="b"
    d="M361.83,226.44c-62.23-3.99-115.91,43.22-119.9,105.45-3.99,62.23,43.22,115.91,105.45,119.9,62.23,3.99,115.91-43.22,119.9-105.45,3.99-62.23-43.22-115.91-105.45-119.9ZM413.76,342.91c-2.09,32.67-30.28,57.46-62.95,55.36-32.67-2.1-57.46-30.28-55.36-62.95,2.09-32.67,30.28-57.46,62.95-55.36,32.67,2.09,57.45,30.28,55.36,62.95Z"
  /><circle class="b" cx="353.85" cy="682.11" r="80.62" /><circle class="b" cx="652.79" cy="644.36" r="52.47" /><polyline class="b" points="410.2 624.82 698.58 340.68 464.78 340.68" /><line class="b" x1="617.63" y1="609.81" x2="432.03" y2="420.13" /><circle class="c" cx="696.98" cy="340.44" r="54.47" />
</svg></g>
<g transform="translate(-500 200) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="blue" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(-500 -200) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="#d2dbed" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="blue" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(0 -500) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="blue" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(0 500) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="#d2dbed" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">op_amp</text>
    </svg></g>
<g filter="url(#drop-shadow)" transform="translate(-300 110) scale(0.2 0.2) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
    <style>
    text {
      transform-origin: center center;
    }
    </style><g transform="translate(0 0) scale(1.0) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 1000">
  <path fill="#fff" d="M4 4h992v992H4z"/>
  <path fill="#de39c8" d="M992 8v984H8V8zm8-8H0v1000h1000z"/>
  <path fill="none" stroke="#000" stroke-linejoin="round" stroke-width="8" d="M-.06 500h199.5m600.31 0h199.5M199.36 400h601.02v200H199.36z"/>
</svg>
</g>
<g transform="translate(-500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="blue" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="#d2dbed" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">resistor</text>
    <text x="500" y="150" transform="rotate(0, 0, -350)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">R=10000Ω</text>
    </svg></g>
<g filter="url(#drop-shadow)" transform="translate(150 -400) scale(0.2 0.2) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
    <style>
    text {
      transform-origin: center center;
    }
    </style><g transform="translate(0 0) scale(1.0) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 1000">
  <path fill="#fff" d="M4 4h992v992H4z"/>
  <path fill="#de39c8" d="M992 8v984H8V8zm8-8H0v1000h1000z"/>
  <path fill="none" stroke="#000" stroke-linejoin="round" stroke-width="8" d="M-.06 500h199.5m600.31 0h199.5M199.36 400h601.02v200H199.36z"/>
</svg>
</g>
<g transform="translate(-500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="blue" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="#d2dbed" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">resistor1</text>
    <text x="500" y="150" transform="rotate(0, 0, -350)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">R=20000Ω</text>
    </svg></g>
<g filter="url(#drop-shadow)" transform="translate(400 300) scale(0.2 0.2) rotate(90)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
    <style>
    text {
      transform-origin: center center;
    }
    </style><g transform="translate(0 0) scale(1.0) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 1000">
  <path fill="#fff" d="M4 4h992v992H4z"/>
  <path fill="#de39c8" d="M992 8v984H8V8zm8-8H0v1000h1000z"/>
  <path fill="none" stroke="#000" stroke-linejoin="round" stroke-width="8" d="M-.06 500h199.5m600.31 0h199.5M199.36 400h601.02v200H199.36z"/>
</svg>
</g>
<g transform="translate(-500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="blue" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="#d2dbed" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">resistor2</text>
    <text x="500" y="150" transform="rotate(0, 0, -350)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">R=10000Ω</text>
    </svg></g>
<g filter="url(#drop-shadow)" transform="translate(-300 450) scale(0.2 0.2) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
    <style>
    text {
      transform-origin: center center;
    }
    </style><g transform="translate(0 0) scale(1.0) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center" viewBox="0 0 1000 1000">
  <path fill="#fff" d="M4 4h992v992H4z"/>
  <path d="M0 500h400Zm400-400v800Zm200 100v600Zm0 300h400Z"/>
  <path stroke="#000" stroke-width="8" d="M0 500h400m0-400v800m200-700v600m0-300h400"/>
  <path fill="#DE39C8" d="M992 8v984H8V8zm8-8H0v1000h1000z"/>
  <text x="250" y="300" dominant-baseline="middle" font-size="300" font-weight="200" text-anchor="middle">+</text>
  <text x="750" y="300" dominant-baseline="middle" font-size="300" font-weight="200" text-anchor="middle">-</text>
</svg>
</g>
<g transform="translate(-500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="blue" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="#d2dbed" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(0 -500) scale(0.1 0.1) rotate(90)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(0,0,127)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">V</text>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">voltage_source_1</text>
    </svg></g>
<g filter="url(#drop-shadow)" transform="translate(150 -100) scale(0.2 0.2) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
    <style>
    text {
      transform-origin: center center;
    }
    </style><g transform="translate(0 0) scale(1.0) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center" viewBox="0 0 1000 1000">
  <path fill="#fff" d="M4 4h992v992H4z"/>
  <path d="M0 500h400Zm400-400v800Zm200 100v600Zm0 300h400Z"/>
  <path stroke="#000" stroke-width="8" d="M0 500h400m0-400v800m200-700v600m0-300h400"/>
  <path fill="#DE39C8" d="M992 8v984H8V8zm8-8H0v1000h1000z"/>
  <text x="250" y="300" dominant-baseline="middle" font-size="300" font-weight="200" text-anchor="middle">+</text>
  <text x="750" y="300" dominant-baseline="middle" font-size="300" font-weight="200" text-anchor="middle">-</text>
</svg>
</g>
<g transform="translate(-500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="blue" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="#d2dbed" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(0 -500) scale(0.1 0.1) rotate(90)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(0,0,127)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">V</text>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">voltage_source_2</text>
    </svg></g>
<g filter="url(#drop-shadow)" transform="translate(150 450) scale(0.2 0.2) rotate(90)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
    <style>
    text {
      transform-origin: center center;
    }
    </style><g transform="translate(0 0) scale(1.0) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center" viewBox="0 0 1000 1000">
  <path fill="#fff" d="M4 4h992v992H4z"/>
  <path d="M0 500h400Zm400-400v800Zm200 100v600Zm0 300h400Z"/>
  <path stroke="#000" stroke-width="8" d="M0 500h400m0-400v800m200-700v600m0-300h400"/>
  <path fill="#DE39C8" d="M992 8v984H8V8zm8-8H0v1000h1000z"/>
  <text x="250" y="300" dominant-baseline="middle" font-size="300" font-weight="200" text-anchor="middle">+</text>
  <text x="750" y="300" dominant-baseline="middle" font-size="300" font-weight="200" text-anchor="middle">-</text>
</svg>
</g>
<g transform="translate(-500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="blue" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="#d2dbed" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
<g transform="translate(0 -500) scale(0.1 0.1) rotate(90)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(0,0,127)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">V</text>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">voltage_source_3</text>
    </svg></g>
<g filter="url(#drop-shadow)" transform="translate(-300 800) scale(0.2 0.2) rotate(270)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
    <style>
    text {
      transform-origin: center center;
    }
    </style><g transform="translate(0 0) scale(1.0) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" id="a" viewBox="0 0 1000 1000">
  <defs>
    <style>
      .b{stroke:#8f8f8f;stroke-linejoin:round;stroke-width:6px;fill:none}.d{fill:#8f8f8f;stroke-width:0}
    </style>
  </defs>
  <path fill="#fff" stroke-width="0" d="M4 4h992v992H4z"/>
  <path fill="#84bfed" stroke-width="0" d="M992 8v984H8V8zm8-8H0v1000h1000z"/>
  <path d="M120.01 154.86v747.06" class="b"/>
  <path d="m102.58 166.75 17.43-65.04 17.43 65.04z" class="d"/>
  <path d="M844.08 502.04H100.19" class="b"/>
  <path d="m832.19 484.61 65.05 17.43-65.05 17.43z" class="d"/>
  <path fill="none" stroke="#5757db" stroke-miterlimit="10" stroke-width="6.84" d="M118.02 503.15c58.02-230.51 125.03-341.59 182.16-341.37 139.3.54 199.96 699.91 360.36 699.91 57.13 0 121.25-118.59 179.27-349.1"/>
</svg>
</g>
<g transform="translate(500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(220,220,247)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
    <text x="500" y="1100" transform="rotate(180, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">y</text>
    <text x="500" y="1100" transform="rotate(180, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">input_signal1</text>
    </svg></g>
<g filter="url(#drop-shadow)" transform="translate(550 -250) scale(0.2 0.2) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
    <style>
    text {
      transform-origin: center center;
    }
    </style><g transform="translate(0 0) scale(1.0) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 1000">
  <path fill="#fff" d="M4 4h992v992H4z"/>
  <path fill="#84bfed" d="M992 8v984H8V8zm8-8H0v1000h1000z"/>
  <path fill="none" stroke="#8f8f8f" stroke-linejoin="round" stroke-width="6" d="M198.62 197.58v602.73m607.25 0H198.62m50.39-.08v29.09m125.46-29.09v29.09m125.46-29.09v29.09m125.46-29.09v29.09m125.46-29.09v29.09m-581.57-80h29.09m-29.09-125.46h29.09M169.28 498.4h29.09m-29.09-125.46h29.09m-29.09-125.46h29.09"/>
  <path fill="none" stroke="#5757db" stroke-miterlimit="10" stroke-width="8" d="M248.01 625.88h549.46"/>
</svg>
</g>
<g transform="translate(500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(220,220,247)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">y</text>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">k = 15</text>
    </svg></g>
<g filter="url(#drop-shadow)" transform="translate(0 800) scale(0.2 0.2) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
    <style>
    text {
      transform-origin: center center;
    }
    </style><g transform="translate(0 0) scale(1.0) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 1000">
  <path fill="#fff" d="M4 4h992v992H4z"/>
  <path fill="#84bfed" d="M992 8v984H8V8zm8-8H0v1000h1000z"/>
  <path fill="none" stroke="#8f8f8f" stroke-linejoin="round" stroke-width="6" d="M198.62 197.58v602.73m607.25 0H198.62m50.39-.08v29.09m125.46-29.09v29.09m125.46-29.09v29.09m125.46-29.09v29.09m125.46-29.09v29.09m-581.57-80h29.09m-29.09-125.46h29.09M169.28 498.4h29.09m-29.09-125.46h29.09m-29.09-125.46h29.09"/>
  <path fill="none" stroke="#5757db" stroke-miterlimit="10" stroke-width="8" d="M248.01 625.88h549.46"/>
</svg>
</g>
<g transform="translate(500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(220,220,247)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">y</text>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">k = -15</text>
    </svg></g>
<g filter="url(#drop-shadow)" transform="translate(400 800) scale(0.2 0.2) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
    <style>
    text {
      transform-origin: center center;
    }
    </style><g transform="translate(0 0) scale(1.0) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" id="a" viewBox="0 0 1000 1000">
  <defs>
    <style>
      .b{fill:none;stroke:#000;stroke-linejoin:round;stroke-width:8px}
    </style>
  </defs>
  <path fill="#fff" stroke-width="0" d="M4 4h992v992H4z"/>
  <path fill="#de39c8" stroke-width="0" d="M992 8v984H8V8zm8-8H0v1000h1000z"/>
  <path d="M51.03 502.05h910.5" class="b"/>
  <path fill="#fff" stroke="#000" stroke-linejoin="round" stroke-width="8" d="M499.22 11.68v492.36"/>
  <path d="M200.73 650.75h602.38M352.82 800.14h298.19" class="b"/>
</svg>
</g>
<g transform="translate(0 -500) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
  shape-rendering="geometricPrecision" text-rendering="geometricPrecision" transform-origin="center center">
  <rect rx="0" ry="0" width="1000" height="1000" fill="blue" stroke="blue" stroke-width="3"
      vector-effect="non-scaling-stroke"></rect>
</svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">ground</text>
    </svg></g>
    <path d="M 199.99999999999997 1200 L 200 850 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 1150 250 L 1200 250 L 1200 550 L 650 550 L 650 300 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 600 1300 L 650 1300 L 650 1150 L 500 1150 L 500 950 L 750 950 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 900 1200 L 900 1100 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 350 950 L 300 950 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 350 950 L 350 690 L 400 690 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 900 1100 L 900 900 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 650 1100 L 650 1050 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 900 1100 L 1050 1100 L 1050 400 L 750 400 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 650 1100 L 900 1100 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 650 1100 L 350 1100 L 350 950 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 300 610 L 350 610 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 350 610 L 400 610 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 350 610 L 350 100 L 550 100 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 750 100 L 900 100 L 900 650 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 600 650 L 900 650 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 900 700 L 900 650 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 100 610 L 50 610 L 50 950 L 100 950 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 500 550 L 500 400 L 550 400 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <path d="M 650 850 L 650 800 L 500 800 L 500 750 " stroke-stroke="4" fill="transparent" stroke="blue" vector-effect="non-scaling-stroke"/>
    <circle cx="650" cy="1100" r="5" fill="blue" />
    <circle cx="900" cy="1100" r="5" fill="blue" />
    <circle cx="350" cy="950" r="5" fill="blue" />
    <circle cx="350" cy="610" r="5" fill="blue" />
    <circle cx="900" cy="650" r="5" fill="blue" />
      </svg></div></div>""")
