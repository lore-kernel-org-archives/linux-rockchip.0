From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v1 1/3] dt-bindings: rockchip-thermal: Support the RK3308 SoC
 compatible
Date: Tue,  5 Nov 2019 11:17:24 +0800
Message-ID: <1572923846-23310-2-git-send-email-zhangqing@rock-chips.com>
References: <1572923846-23310-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1572923846-23310-1-git-send-email-zhangqing@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: heiko@sntech.de
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, amit.kucheria@verdurent.com, Elaine Zhang <zhangqing@rock-chips.com>, huangtao@rock-chips.com, linux-pm@vger.kernel.org, xxx@rock-chips.com, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, xf@rock-chips.com, edubezval@gmail.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, andy.yan@rock-chips.com, rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Add a new compatible for thermal founding on RK3308 SoCs.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 Documentation/devicetree/bindings/thermal/rockchip-thermal.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
index c6aac9bcacf1..3a0a9556680e 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
@@ -6,6 +6,7 @@ Required properties:
    "rockchip,rv1108-tsadc": found on RV1108 SoCs
    "rockchip,rk3228-tsadc": found on RK3228 SoCs
    "rockchip,rk3288-tsadc": found on RK3288 SoCs
+   "rockchip,rk3308-tsadc": found on RK3308 SoCs
    "rockchip,rk3328-tsadc": found on RK3328 SoCs
    "rockchip,rk3368-tsadc": found on RK3368 SoCs
    "rockchip,rk3399-tsadc": found on RK3399 SoCs
-- 
1.9.1
