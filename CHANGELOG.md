# Changelog

## [0.16.3](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.16.2...v0.16.3) (2025-06-09)


### Bug Fixes

* **deps:** update dependency RotationalComponents to v0.6.4 ([#132](https://github.com/JuliaComputing/ElectricalComponents/issues/132)) ([3627693](https://github.com/JuliaComputing/ElectricalComponents/commit/362769335878471749cb2b7a4b87a87ee8e615c8))

## [0.16.2](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.16.1...v0.16.2) (2025-06-07)


### Bug Fixes

* **deps:** update Dyad ecosystem and component libraries ([#126](https://github.com/JuliaComputing/ElectricalComponents/issues/126)) ([ab52824](https://github.com/JuliaComputing/ElectricalComponents/commit/ab52824cb81a0a195c189582833c3b8fa5ad5055))

## [0.16.1](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.16.0...v0.16.1) (2025-06-06)


### Bug Fixes

* trigger a patch release for README ([9fe3fde](https://github.com/JuliaComputing/ElectricalComponents/commit/9fe3fde767447050138de3abe4e4cdc007107ee8))

# [0.16.0](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.15.1...v0.16.0) (2025-05-29)


### Features

* **deps:** update Dyad ecosystem and component libraries ([#119](https://github.com/JuliaComputing/ElectricalComponents/issues/119)) ([ae980e7](https://github.com/JuliaComputing/ElectricalComponents/commit/ae980e7c35f2e01ffdd63e38387a68c981759fdb))

## [0.15.1](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.15.0...v0.15.1) (2025-05-28)


### Bug Fixes

* trigger version bump ([1502532](https://github.com/JuliaComputing/ElectricalComponents/commit/1502532134423ced78be924a7807776c9985ad84))

# [0.15.0](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.14.0...v0.15.0) (2025-05-22)


### Bug Fixes

* **deps:** rename JuliaSimBase to DyadInterface ([f6ec7c7](https://github.com/JuliaComputing/ElectricalComponents/commit/f6ec7c7399b6a06733d0b802e3405239481ee173))


### Features

* **deps:** update Dyad ecosystem and component libraries ([754084b](https://github.com/JuliaComputing/ElectricalComponents/commit/754084b236882f040893a081111cfff53bfa9845))

# [0.14.0](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.13.1...v0.14.0) (2025-05-12)


### Bug Fixes

* **deps:** rename JuliaSimCore to DyadEcosystemDependencies ([0d99df6](https://github.com/JuliaComputing/ElectricalComponents/commit/0d99df634bca56bae87a560f5b8f8be8a80e7bd4))
* **deps:** update Block to v2 ([615f6b1](https://github.com/JuliaComputing/ElectricalComponents/commit/615f6b14783358c53f539a62e159d61b11d3a563))
* **deps:** update Rotational to v0.4 ([2ddd26c](https://github.com/JuliaComputing/ElectricalComponents/commit/2ddd26cea4c1dad2cfbd78b832ad479b54dd5aba))
* use TransientAnalysis in SimpleRLCTransient ([7d4a30d](https://github.com/JuliaComputing/ElectricalComponents/commit/7d4a30d52008a9c3b2be28990ae2cd64cd9b07ef))


### Features

* **generated:** update generated files ([ef15894](https://github.com/JuliaComputing/ElectricalComponents/commit/ef15894ec9e09912bbfe4d1e47016df638840305))
* **metadata:** rename the icon path with `dyad` ([b9c11e5](https://github.com/JuliaComputing/ElectricalComponents/commit/b9c11e52c558c89860ce8243628679794bb9ff28))
* migrate JSML files to `dyad` ([af29dca](https://github.com/JuliaComputing/ElectricalComponents/commit/af29dca42adb8d7aa3da46261831e4f52da5764d))
* rename compiler to `dyad` from `juliasim` ([db6a0a0](https://github.com/JuliaComputing/ElectricalComponents/commit/db6a0a0fb6a1ef6fb95ccc08c124a5600242b394))

## [0.13.1](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.13.0...v0.13.1) (2025-05-09)


### Bug Fixes

* **deps:** add compat for RotationalComp ([d085bd0](https://github.com/JuliaComputing/ElectricalComponents/commit/d085bd0f9de85830c0358471206bc1f5b3ae22cb))
* **deps:** update JuliaSimCore to 0.6.1 ([7d7dfe7](https://github.com/JuliaComputing/ElectricalComponents/commit/7d7dfe72d59f0c65a7b117e7b8cbae262dd6d76c))
* drop DeSautyOptimize ([95c29e1](https://github.com/JuliaComputing/ElectricalComponents/commit/95c29e1ece4b096e9553214310602e2085cd6c50))
* use TransientAnalysis ([d9396f5](https://github.com/JuliaComputing/ElectricalComponents/commit/d9396f5a3b0f8bbdca41ee82ecb10c2316a1964e))

# [0.13.0](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.12.1...v0.13.0) (2025-04-18)


### Bug Fixes

* Add default value for rot_emf.k ([6644936](https://github.com/JuliaComputing/ElectricalComponents/commit/6644936f83a32a770f04b174e83c880a67d8affc))
* remove unecessary tauElectrical, remove the default value for parameter k ([31f5bc7](https://github.com/JuliaComputing/ElectricalComponents/commit/31f5bc7c8b77908b8d190d525f27f4642df457e3))


### Features

* add Rotational EMF test signals ([bcea3fd](https://github.com/JuliaComputing/ElectricalComponents/commit/bcea3fdb1b9d76dbbc15d8ac9fabe66bf9e9bdde))
* add Rotational Inertia, fix GUI annotations, fix test signals ([bbd6a9b](https://github.com/JuliaComputing/ElectricalComponents/commit/bbd6a9b76a56c3d121e73a688d8337196867c817))
* add RotationalEMF, and the respective test ([6731102](https://github.com/JuliaComputing/ElectricalComponents/commit/6731102affacee083a8f24a6195844a6df873cdc))

## [0.12.1](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.12.0...v0.12.1) (2025-04-08)


### Bug Fixes

* **deps:** update JuliaSimCore to 0.5.1 ([df8f5fd](https://github.com/JuliaComputing/ElectricalComponents/commit/df8f5fdc28069375e1b4eb7e9d5004beb44807af))

# [0.12.0](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.11.0...v0.12.0) (2025-03-26)


### Bug Fixes

* add correct syntax for `[@register](https://github.com/register)_symbolic` in `utils.jl` ([67971c9](https://github.com/JuliaComputing/ElectricalComponents/commit/67971c9315adb390124a58e86db655d7893c6125))
* comment out [@register](https://github.com/register) in utils.jl ([03af7b5](https://github.com/JuliaComputing/ElectricalComponents/commit/03af7b599265264350f89a1e72ac1be96adcf44f))
* correct negative pin GUI annotations naming in opamp_detailed "pos" => "neg" ([b5e2448](https://github.com/JuliaComputing/ElectricalComponents/commit/b5e24486ae42d0ddebd0df2393c72e40b87851ed))
* remove [@register](https://github.com/register)_symbolic from utils.jl ([466c6a3](https://github.com/JuliaComputing/ElectricalComponents/commit/466c6a35961262090ff742dc2f2491942b9fe158))


### Features

* add GUI annotations for amp with opampdetailed ([dd1b830](https://github.com/JuliaComputing/ElectricalComponents/commit/dd1b830321ed52ecbdd4b8aaa166c20f2967ea16))
* add position metadata for opamp_detailed ([3e5d89d](https://github.com/JuliaComputing/ElectricalComponents/commit/3e5d89d9027d4efe2b01a2c1c28b7a24db5748fb))
* add positions/annotations for amp with opamp detailed ([38f5f91](https://github.com/JuliaComputing/ElectricalComponents/commit/38f5f91e98c604e67b0f56fc1545726c9c04d8f9))
* add signals for Amplifier with op amp detailed ([3764514](https://github.com/JuliaComputing/ElectricalComponents/commit/3764514404ca3ed2f05955ee9c1fc924d2fc42b4))
* add signals metadata to support future JSML feature ([eb091f0](https://github.com/JuliaComputing/ElectricalComponents/commit/eb091f07de98bc266a9235420304c9d17420daa3))
* annotations for amp with opamp | not complete ([d8fcddd](https://github.com/JuliaComputing/ElectricalComponents/commit/d8fcdddd1e85509f9b233c2df96d05e4f31c1366))

# [0.11.0](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.10.3...v0.11.0) (2025-03-26)


### Features

* add GUI annotations for parallel and series resonance ([abe5a9a](https://github.com/JuliaComputing/ElectricalComponents/commit/abe5a9a7a46e6a02e2d95264407b167edb241daa))
* add signals for Parallel and Series resonance ([98e730a](https://github.com/JuliaComputing/ElectricalComponents/commit/98e730a5d9cdf444b7d136ce61598cff2ef8cf0f))

## [0.10.3](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.10.2...v0.10.3) (2025-03-18)


### Bug Fixes

* **deps:** update JuliaSimCore to 0.5.0 ([0440233](https://github.com/JuliaComputing/ElectricalComponents/commit/0440233b0c42edd85bf70f0f87b20094f215c301))
* **generated:** cache components ([db00ba7](https://github.com/JuliaComputing/ElectricalComponents/commit/db00ba74fdfc17f2a7a70293c8cffc1f5e075d35))

## [0.10.2](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.10.1...v0.10.2) (2025-03-13)


### Bug Fixes

* limit no. of junctions to 1 in ChuaCircuit ([6ad3175](https://github.com/JuliaComputing/ElectricalComponents/commit/6ad3175df22903fb5922ea479ad4b71a9532a273))

## [0.10.1](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.10.0...v0.10.1) (2025-02-28)


### Bug Fixes

* trigger a patch release to update JuliaSimCore to 0.3.1 ([aa12691](https://github.com/JuliaComputing/ElectricalComponents/commit/aa12691a6b17d3b45439c13ca494613d5cfaa878))

# [0.10.0](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.9.10...v0.10.0) (2025-02-10)


### Features

* add Nonlinear Resistor, Chua Circuit, snapshot ([fc2687b](https://github.com/JuliaComputing/ElectricalComponents/commit/fc2687b4c168e42c0e864702f4095bd2cb199708))

## [0.9.10](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.9.9...v0.9.10) (2025-02-05)


### Bug Fixes

* declare `example` components ([5f69c6f](https://github.com/JuliaComputing/ElectricalComponents/commit/5f69c6f554b97ffe389c8b16b8b22df4619ba0a4))
* declare `test` components ([c4f26b4](https://github.com/JuliaComputing/ElectricalComponents/commit/c4f26b4a0eb7b43d44410a469175caeb842db78e))

## [0.9.9](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.9.8...v0.9.9) (2025-01-31)


### Bug Fixes

* update generated analyses ([ff80c62](https://github.com/JuliaComputing/ElectricalComponents/commit/ff80c620f1238af3f4998c091dcf47640ba70dc3))

## [0.9.8](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.9.7...v0.9.8) (2025-01-30)


### Bug Fixes

* trigger a patch release for documentation ([b409ab7](https://github.com/JuliaComputing/ElectricalComponents/commit/b409ab753f52f078735a5209d4ec89225d85ed0b))

## [0.9.7](https://github.com/JuliaComputing/ElectricalComponents/compare/v0.9.6...v0.9.7) (2025-01-24)


### Bug Fixes

* **deps:** ensure `deps` are in alphabetical order ([76d7db9](https://github.com/JuliaComputing/ElectricalComponents/commit/76d7db983d5f6d7bf5156017c1bdd143a3eafa76))
* **extras:** ensure `extras` are in alphabetical order as well ([76ad33e](https://github.com/JuliaComputing/ElectricalComponents/commit/76ad33e16580cdea3fc8803537352691cfdd3e58))
* generated code with jsml-kernel@0.1.31 ([6cf3ce9](https://github.com/JuliaComputing/ElectricalComponents/commit/6cf3ce98932c6ffcb557d03171e769fe1071221d))
* trigger patch release for updating JuliaSimCore to 0.2.0 ([2b3e4b7](https://github.com/JuliaComputing/ElectricalComponents/commit/2b3e4b780a467b043bfda7110050d45efd75febe))
