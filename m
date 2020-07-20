From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 15/16] arm64: dts: rockchip: Add u-boot,
 spl-boot-order for ROCKPi N10
Date: Tue, 21 Jul 2020 00:21:19 +0530
Message-ID: <20200720185120.671064-16-jagan@amarulasolutions.com>
References: <20200720185120.671064-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200720185120.671064-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Add u-boot,spl-boot-order for ROCKPi N10, so-that it can able
to boot from eMMC and SDMMC in order.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi b/arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
index 946a0230db..7c66e1145a 100644
--- a/arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
+++ b/arch/arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi
@@ -5,3 +5,9 @@
 
 #include "rk3399pro-u-boot.dtsi"
 #include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
+
+/ {
+	chosen {
+		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
+	};
+};
-- 
2.25.1
