From: Finlye Xiao <finley.xiao@rock-chips.com>
Subject: [PATCH v2 1/4] nvmem: rockchip-efuse: update compatible strings for
 Rockchip efuse
Date: Thu, 11 Aug 2016 09:13:46 +0800
Message-ID: <1470878029-11878-2-git-send-email-finley.xiao@rock-chips.com>
References: <1470878029-11878-1-git-send-email-finley.xiao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1470878029-11878-1-git-send-email-finley.xiao@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: srinivas.kandagatla@linaro.org, maxime.ripard@free-electrons.com, robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, linux@armlinux.org.uk, catalin.marinas@arm.com, will.deacon@arm.com, dianders@chromium.org
Cc: huangtao@rock-chips.com, linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com, Finley Xiao <finley.xiao@rock-chips.com>, cl@rock-chips.com, jay.xu@rock-chips.com, linux-arm-kernel@lists.infradead.org, wxt@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

From: Finley Xiao <finley.xiao@rock-chips.com>

Rk3399-efuse is organized as 32bits by 32 one-time programmable electrical
fuses. The efuse of earlier SoCs are organized as 32bits by 8 one-time
programmable electrical fuses with random access interface.

Add different device tree compatible string for different SoCs to be able
to differentiate between the two. The old binding is of course preserved,
though deprecated.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
---
 Documentation/devicetree/bindings/nvmem/rockchip-efuse.txt | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.txt b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.txt
index 8f86ab3..94aeeea 100644
--- a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.txt
+++ b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.txt
@@ -1,11 +1,20 @@
 = Rockchip eFuse device tree bindings =
 
 Required properties:
-- compatible: Should be "rockchip,rockchip-efuse"
+- compatible: Should be one of the following.
+  - "rockchip,rk3066a-efuse" - for RK3066a SoCs.
+  - "rockchip,rk3188-efuse" - for RK3188 SoCs.
+  - "rockchip,rk3288-efuse" - for RK3288 SoCs.
+  - "rockchip,rk3399-efuse" - for RK3399 SoCs.
 - reg: Should contain the registers location and exact eFuse size
 - clocks: Should be the clock id of eFuse
 - clock-names: Should be "pclk_efuse"
 
+Deprecated properties:
+- compatible: "rockchip,rockchip-efuse"
+  Old efuse compatible value compatible to rk3066a, rk3188 and rk3288
+  efuses
+
 = Data cells =
 Are child nodes of eFuse, bindings of which as described in
 bindings/nvmem/nvmem.txt
@@ -13,7 +22,7 @@ bindings/nvmem/nvmem.txt
 Example:
 
 	efuse: efuse@ffb40000 {
-		compatible = "rockchip,rockchip-efuse";
+		compatible = "rockchip,rk3288-efuse";
 		reg = <0xffb40000 0x20>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
1.9.1
