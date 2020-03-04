From: Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH v4 1/2] dt-bindings: Add doc for Pine64 Pinebook Pro
Date: Wed,  4 Mar 2020 22:30:22 +0100
Message-ID: <20200304213023.689983-2-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>
Cc: Douglas Anderson <dianders@chromium.org>, Jagan Teki <jagan@amarulasolutions.com>, Markus Reichl <m.reichl@fivetechno.de>, Alexis Ballier <aballier@gentoo.org>, Matthias Kaehlcke <mka@chromium.org>, Nick Xie <nick@khadas.com>, Kever Yang <kever.yang@rock-chips.com>, Vivek Unune <npcomplete13@gmail.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>, Tobias Schramm <t.schramm@manjaro.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Vasily Khoruzhick <anarsoul@gmail.com>, Emmanuel Vadot <manu@freebsd.org>, Rob Herring <robh@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

From: Emmanuel Vadot <manu@freebsd.org>

Add a compatible for Pine64 Pinebook Pro

Signed-off-by: Emmanuel Vadot <manu@freebsd.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 874b0eaa2a75..17f0ab0b8832 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -415,6 +415,11 @@ properties:
           - const: pine64,rockpro64
           - const: rockchip,rk3399
 
+      - description: Pine64 PinebookPro
+        items:
+          - const: pine64,pinebook-pro
+          - const: rockchip,rk3399
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.24.1
