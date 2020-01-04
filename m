From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH 0/5] regulator: mp8859: add driver for DC/DC converter used on rk3399-roc-pc board
Date: Sat,  4 Jan 2020 16:32:44 +0100
Message-ID: <20200104153321.6584-1-m.reichl@fivetechno.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: Markus Reichl <m.reichl@fivetechno.de>, "Angus Ainslie (Purism)" <angus@akkea.ca>, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Stephan Gerhold <stephan@gerhold.net>
List-Id: linux-rockchip.vger.kernel.org

On rk3399-roc-pc board a voltage regulator MP8859 from Monolithic Power Systems
is used to supply the 12V power line. This delivers 5V as a default value after
boot. The voltage is controllable via I2C.
Add a basic driver to set and get the voltage of the MP8859 and add a matching
node with fixed 12V in the DT of the board. 

Markus Reichl (5):
  regulator: mp8859: add driver
  regulator: mp8859: add config option and build entry
  dt-bindings: add vendor Monolithic Power Systems
  dt-bindings: regulator: add MPS mp8859 voltage regulator
  arm64: dts: rockchip: Enable mp8859 regulator on rk3399-roc-pc

 .../devicetree/bindings/regulator/mp8859.txt  |  22 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |  32 ++--
 drivers/regulator/Kconfig                     |  11 ++
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/mp8859.c                    | 156 ++++++++++++++++++
 6 files changed, 210 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/mp8859.txt
 create mode 100644 drivers/regulator/mp8859.c

-- 
2.24.1
