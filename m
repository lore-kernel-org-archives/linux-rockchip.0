From: Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH] ARM: dts: rockchip: Use ABI name for write protect pin on veyron fievel/tiger
Date: Mon,  6 Jan 2020 13:52:13 -0800
Message-ID: <20200106135142.1.I3f99ac8399a564c88ff48ae6290cc691b47c16ae@changeid>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Cc: linux-rockchip@lists.infradead.org, Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

The flash write protect pin is currently named 'FW_WP_AP', which is
how the signal is called in the schematics. The Chrome OS ABI
requires the pin to be named 'AP_FLASH_WP_L', which is also how
it is called on all other veyron devices. Rename the pin to match
the ABI.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-fievel.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
index 9a0f55085839d9..d66e720390121d 100644
--- a/arch/arm/boot/dts/rk3288-veyron-fievel.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
@@ -382,7 +382,11 @@ &gpio7 {
 			  "PWR_LED1",
 			  "TPM_INT_H",
 			  "SPK_ON",
-			  "FW_WP_AP",
+			  /*
+			   * AP_FLASH_WP_L is Chrome OS ABI.  Schematics call
+			   * it FW_WP_AP.
+			   */
+			  "AP_FLASH_WP_L",
 			  "",
 
 			  "CPU_NMI",
-- 
2.24.1.735.g03f4e72817-goog
