From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: configure PCIe support for rk3399-evb
Date: Fri, 19 Aug 2016 11:24:29 +0800
Message-ID: <1471577069-14483-3-git-send-email-shawn.lin@rock-chips.com>
References: <1471577069-14483-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1471577069-14483-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Wenrui Li <wenrui.li@rock-chips.com>, Doug Anderson <dianders@chromium.org>, Brian Norris <briannorris@chromium.org>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Let's assigne slot numbers, ep-gpios and clkreq used by PCIe
on evb board as well the PHY node here. Note that we still
disable them as the auto training of PCIe link will make the
kernel use more time to boot if there are no any devices there.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3399-evb.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index d47b4e9..0d7c8ab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -120,6 +120,18 @@
 	status = "okay";
 };
 
+&pcie_phy {
+	status = "disabled";
+};
+
+&pcie0 {
+	ep-gpios = <&gpio3 13 GPIO_ACTIVE_HIGH>;
+	num-lanes = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_clkreqn>;
+	status = "disabled";
+};
+
 &u2phy0 {
 	status = "okay";
 };
-- 
2.3.7
