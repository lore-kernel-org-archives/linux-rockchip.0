From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 1/4] arm: dts: rockchip: rk3399-roc-pc: Add RTC child node
 for RK808 PMIC
Date: Fri, 10 Jul 2020 21:20:54 +0530
Message-ID: <20200710155057.310168-2-jagan@amarulasolutions.com>
References: <20200710155057.310168-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200710155057.310168-1-jagan@amarulasolutions.com>
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
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

From: Suniel Mahesh <sunil@amarulasolutions.com>

Rockchip RK808 PMIC is a multi function device which hosts a Real Time
Clock along with other devices. Add a child RTC node so that it can be
bound and probed once the master pmic node completes probe.

Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
Change for v4:
- none

 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi b/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
index fc155e6903..16d6417160 100644
--- a/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
@@ -44,6 +44,14 @@
 	vin-supply = <&vcc_vbus_typec0>;
 };
 
+&rk808 {
+	rtc {
+		rkrtc: rk808-rtc {
+			status="okay";
+		};
+	};
+};
+
 &spi1 {
 	spi_flash: flash@0 {
 		u-boot,dm-pre-reloc;
-- 
2.25.1
