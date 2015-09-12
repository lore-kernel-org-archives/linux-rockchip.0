From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 2/3] ARM: dts: support Highspeed for rk3066a-bqcurie2
Date: Sat, 12 Sep 2015 18:01:39 +0800
Message-ID: <1442052099-20149-1-git-send-email-shawn.lin@rock-chips.com>
References: <1442052050-20110-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1442052050-20110-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add cap-sd-highspeed and cap-mmc-highspeed for rk3066a-bqcurie2
board to make sd cards running faster.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2: None

 arch/arm/boot/dts/rk3066a-bqcurie2.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a-bqcurie2.dts b/arch/arm/boot/dts/rk3066a-bqcurie2.dts
index c027375..bf09038 100644
--- a/arch/arm/boot/dts/rk3066a-bqcurie2.dts
+++ b/arch/arm/boot/dts/rk3066a-bqcurie2.dts
@@ -187,6 +187,8 @@
 	vmmc-supply = <&vcc_sd0>;
 	bus-width = <4>;
 	disable-wp;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
 };
 
 &mmc1 { /* wifi */
-- 
2.3.7
