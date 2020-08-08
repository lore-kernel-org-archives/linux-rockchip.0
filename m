From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.7 09/58] arm64: dts: rockchip: fix rk3399-puma vcc5v0-host gpio
Date: Sat,  8 Aug 2020 19:36:35 -0400
Message-ID: <20200808233724.3618168-9-sashal@kernel.org>
References: <20200808233724.3618168-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20200808233724.3618168-1-sashal@kernel.org>
Sender: stable-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

[ Upstream commit 7a7184f6cfa9279f1a1c10a1845d247d7fad54ff ]

The puma vcc5v0_host regulator node currently uses opposite active-values
for the enable pin. The gpio-declaration uses active-high while the
separate enable-active-low property marks the pin as active low.

While on the kernel side this works ok, other DT users may get
confused - as seen with uboot right now.

So bring this in line and make both properties match, similar to the
gmac fix.

Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) SoM")
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Link: https://lore.kernel.org/r/20200604091239.424318-1-heiko@sntech.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 07694b196fdbe..063f59a420b65 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -101,7 +101,7 @@ vcc3v3_sys: vcc3v3-sys {
 
 	vcc5v0_host: vcc5v0-host-regulator {
 		compatible = "regulator-fixed";
-		gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_LOW>;
 		enable-active-low;
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_host_en>;
-- 
2.25.1
