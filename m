From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH 2/5] regulator: mp8859: add config option and build entry
Date: Mon,  6 Jan 2020 22:16:25 +0100
Message-ID: <20200106211633.2882-3-m.reichl@fivetechno.de>
References: <20200106211633.2882-1-m.reichl@fivetechno.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200106211633.2882-1-m.reichl@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Markus Reichl <m.reichl@fivetechno.de>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Add entries for the mp8859 regulator driver
to the build system.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 drivers/regulator/Kconfig  | 11 +++++++++++
 drivers/regulator/Makefile |  1 +
 2 files changed, 12 insertions(+)

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 56512748a47d..593733a88a61 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -612,6 +612,17 @@ config REGULATOR_MCP16502
 	  through the regulator interface. In addition it enables
 	  suspend-to-ram/standby transition.
 
+config REGULATOR_MP8859
+	tristate "MPS MP8859 regulator driver"
+	depends on I2C
+	select REGMAP_I2C
+	help
+	  Say y here to support the MP8859 voltage regulator. This driver
+	  supports basic operations (get/set voltage) through the regulator
+	  interface.
+	  Say M here if you want to include support for the regulator as a
+	  module. The module will be named "mp8859".
+
 config REGULATOR_MT6311
 	tristate "MediaTek MT6311 PMIC"
 	depends on I2C
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 9eccf93bc3ab..8ba8e5deebbd 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -78,6 +78,7 @@ obj-$(CONFIG_REGULATOR_MC13783) += mc13783-regulator.o
 obj-$(CONFIG_REGULATOR_MC13892) += mc13892-regulator.o
 obj-$(CONFIG_REGULATOR_MC13XXX_CORE) +=  mc13xxx-regulator-core.o
 obj-$(CONFIG_REGULATOR_MCP16502) += mcp16502.o
+obj-$(CONFIG_REGULATOR_MP8859) += mp8859.o
 obj-$(CONFIG_REGULATOR_MT6311) += mt6311-regulator.o
 obj-$(CONFIG_REGULATOR_MT6323)	+= mt6323-regulator.o
 obj-$(CONFIG_REGULATOR_MT6358)	+= mt6358-regulator.o
-- 
2.24.1
