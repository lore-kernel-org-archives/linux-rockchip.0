From: Anand Moon <linux.amoon@gmail.com>
Subject: [RFCv1 0/8] RK3399 clean shutdown issue
Date: Fri,  6 Dec 2019 18:45:28 +0000
Message-ID: <20191206184536.2507-1-linux.amoon@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Most of the RK3399 SBC boards do not perform clean
shutdown and clean reboot.

These patches try to help resolve the issue with proper
shutdown by turning off the PMIC.

For reference 
RK805 PMCI data sheet:
[0] http://rockchip.fr/RK805%20datasheet%20V1.3.pdf
RK808 PMIC data sheet:
[1] http://rockchip.fr/RK808%20datasheet%20V1.4.pdf
RK817 PMIC data sheet:
[2] http://rockchip.fr/RK817%20datasheet%20V1.01.pdf 
RK818 PMIC data sheet:
[3] http://rockchip.fr/RK818%20datasheet%20V1.0.pdf

Reboot issue:
My guess is that we need to some proper sequence of
setting to PMCI to perform clean.

If you have any input please share them.

Tested on SBC
Rock960 Model A
Odroid N1
Rock64

-Anand Moon

Anand Moon (8):
  mfd: rk808: Refactor shutdown functions
  mfd: rk808: use syscore for RK805 PMIC shutdown
  mfd: rk808: use syscore for RK808 PMIC shutdown
  mfd: rk808: use syscore for RK818 PMIC shutdown
  mfd: rk808: cleanup unused function pointer
  mfd: rk808: use common syscore for all PMCI for clean shutdown
  arm64: rockchip: drop unused field from rk8xx i2c node
  arm: rockchip: drop unused field from rk8xx i2c node

 arch/arm/boot/dts/rk3036-kylin.dts            |   1 -
 arch/arm/boot/dts/rk3188-px3-evb.dts          |   1 -
 arch/arm/boot/dts/rk3288-evb-rk808.dts        |   1 -
 arch/arm/boot/dts/rk3288-phycore-som.dtsi     |   1 -
 arch/arm/boot/dts/rk3288-popmetal.dts         |   1 -
 arch/arm/boot/dts/rk3288-tinker.dtsi          |   1 -
 arch/arm/boot/dts/rk3288-veyron.dtsi          |   1 -
 arch/arm/boot/dts/rk3288-vyasa.dts            |   1 -
 arch/arm/boot/dts/rv1108-elgin-r1.dts         |   1 -
 arch/arm/boot/dts/rv1108-evb.dts              |   1 -
 arch/arm64/boot/dts/rockchip/px30-evb.dts     |   1 -
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |   1 -
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts   |   1 -
 .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |   1 -
 .../arm64/boot/dts/rockchip/rk3328-rock64.dts |   1 -
 .../boot/dts/rockchip/rk3368-geekbox.dts      |   1 -
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi |   1 -
 .../boot/dts/rockchip/rk3368-px5-evb.dts      |   1 -
 .../boot/dts/rockchip/rk3399-firefly.dts      |   1 -
 .../boot/dts/rockchip/rk3399-hugsun-x99.dts   |   1 -
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi |   1 -
 .../boot/dts/rockchip/rk3399-leez-p710.dts    |   1 -
 .../boot/dts/rockchip/rk3399-nanopi4.dtsi     |   1 -
 .../boot/dts/rockchip/rk3399-orangepi.dts     |   1 -
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi |   1 -
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |   1 -
 .../boot/dts/rockchip/rk3399-rock-pi-4.dts    |   1 -
 .../boot/dts/rockchip/rk3399-rock960.dtsi     |   1 -
 .../boot/dts/rockchip/rk3399-rockpro64.dts    |   1 -
 .../boot/dts/rockchip/rk3399-sapphire.dtsi    |   1 -
 drivers/mfd/rk808.c                           | 144 +++++-------------
 include/linux/mfd/rk808.h                     |   2 -
 32 files changed, 42 insertions(+), 134 deletions(-)

-- 
2.24.0
