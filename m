From: Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 1/4] dt-bindings: Add doc about rk3308 General Register Files
Date: Mon, 21 Oct 2019 16:45:55 +0800
Message-ID: <20191021084555.28356-1-andy.yan@rock-chips.com>
References: <20191021084437.28279-1-andy.yan@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191021084437.28279-1-andy.yan@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: kever.yang@rock-chips.com, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

RK3308 GRF is divided into four sections: GRF, SGRF,
DETECTGRF, COREGRF. This patch add documentation for
it.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2: None

 .../devicetree/bindings/soc/rockchip/grf.txt          | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.txt b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
index d7debec26ba4..61d89749918a 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.txt
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
@@ -10,6 +10,12 @@ From RK3368 SoCs, the GRF is divided into two sections,
 
 On RK3328 SoCs, the GRF adds a section for USB2PHYGRF,
 
+ON RK3308 SoC, the GRF is divided into four sections:
+- GRF, used for general non-secure system,
+- SGRF, used for general secure system,
+- DETECTGRF, used for audio codec system,
+- COREGRF, used for pvtm,
+
 Required Properties:
 
 - compatible: GRF should be one of the following:
@@ -19,10 +25,15 @@ Required Properties:
    - "rockchip,rk3188-grf", "syscon": for rk3188
    - "rockchip,rk3228-grf", "syscon": for rk3228
    - "rockchip,rk3288-grf", "syscon": for rk3288
+   - "rockchip,rk3308-grf", "syscon": for rk3308
    - "rockchip,rk3328-grf", "syscon": for rk3328
    - "rockchip,rk3368-grf", "syscon": for rk3368
    - "rockchip,rk3399-grf", "syscon": for rk3399
    - "rockchip,rv1108-grf", "syscon": for rv1108
+- compatible: DETECTGRF should be one of the following:
+   - "rockchip,rk3308-detect-grf", "syscon": for rk3308
+- compatilbe: COREGRF should be one of the following:
+   - "rockchip,rk3308-core-grf", "syscon": for rk3308
 - compatible: PMUGRF should be one of the following:
    - "rockchip,px30-pmugrf", "syscon": for px30
    - "rockchip,rk3368-pmugrf", "syscon": for rk3368
-- 
2.17.1
