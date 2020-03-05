From: Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 1/4] arm64: dts: rockchip: remove dvs2 pinctrl for pmic on
 rk3399 evb
Date: Thu,  5 Mar 2020 19:39:09 +0800
Message-ID: <20200305113912.32226-2-andy.yan@rock-chips.com>
References: <20200305113912.32226-1-andy.yan@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200305113912.32226-1-andy.yan@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Andy Yan <andy.yan@rock-chips.com>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

DVS2 of pmic is connected to GND, no pinctrl for it.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

 arch/arm64/boot/dts/rockchip/rk3399-evb.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index 77008dca45bc..eb501bb8f426 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -210,11 +210,6 @@
 			rockchip,pins =
 				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
-
-		pmic_dvs2: pmic-dvs2 {
-			rockchip,pins =
-				<1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
-		};
 	};
 
 	usb2 {
-- 
2.17.1
