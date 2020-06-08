From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.6 060/606] arm64: dts: rockchip: Replace RK805 PMIC node name with "pmic" on rk3328 boards
Date: Mon,  8 Jun 2020 19:03:05 -0400
Message-ID: <20200608231211.3363633-60-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
Sender: stable-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Chen-Yu Tsai <wens@csie.org>, Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Chen-Yu Tsai <wens@csie.org>

commit 83b994129fb4c18a8460fd395864a28740e5e7fb upstream.

In some board device tree files, "rk805" was used for the RK805 PMIC's
node name. However the policy for device trees is that generic names
should be used.

Replace the "rk805" node name with the generic "pmic" name.

Fixes: 1e28037ec88e ("arm64: dts: rockchip: add rk805 node for rk3328-evb")
Fixes: 955bebde057e ("arm64: dts: rockchip: add rk3328-rock64 board")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
Link: https://lore.kernel.org/r/20200327030414.5903-3-wens@kernel.org
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index 49c4b96da3d4..6abc6f4a86cf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -92,7 +92,7 @@ &gmac2phy {
 &i2c1 {
 	status = "okay";
 
-	rk805: rk805@18 {
+	rk805: pmic@18 {
 		compatible = "rockchip,rk805";
 		reg = <0x18>;
 		interrupt-parent = <&gpio2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 62936b432f9a..304fad1a0b57 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -169,7 +169,7 @@ &hdmiphy {
 &i2c1 {
 	status = "okay";
 
-	rk805: rk805@18 {
+	rk805: pmic@18 {
 		compatible = "rockchip,rk805";
 		reg = <0x18>;
 		interrupt-parent = <&gpio2>;
-- 
2.25.1
