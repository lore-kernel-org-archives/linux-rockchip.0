From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: disable mailbox of RK3368 SoCs defaultly
Date: Wed, 15 Mar 2017 14:17:23 +0800
Message-ID: <1489558643-24148-1-git-send-email-jay.xu@rock-chips.com>
References: <1489558443-23914-1-git-send-email-jay.xu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1489558443-23914-1-git-send-email-jay.xu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: broonie@kernel.org, huangtao@rock-chips.com, wxt@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Default to disable mailbox in rk3368 core dts file.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 90f72c2..36aeed0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -662,6 +662,7 @@
 		clocks = <&cru PCLK_MAILBOX>;
 		clock-names = "pclk_mailbox";
 		#mbox-cells = <1>;
+		status = "disabled";
 	};
 
 	pmugrf: syscon@ff738000 {
-- 
1.9.1
