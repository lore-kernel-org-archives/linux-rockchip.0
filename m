From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH 3/5] dt-bindings: add vendor Monolithic Power Systems
Date: Mon,  6 Jan 2020 22:16:26 +0100
Message-ID: <20200106211633.2882-4-m.reichl@fivetechno.de>
References: <20200106211633.2882-1-m.reichl@fivetechno.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200106211633.2882-1-m.reichl@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Markus Reichl <m.reichl@fivetechno.de>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

MPS produce power regulators like the MP8859.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index fa6aa3c5a500..4fa3bb494745 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -617,6 +617,8 @@ patternProperties:
     description: Moxa Inc.
   "^mpl,.*":
     description: MPL AG
+  "^mps,.*":
+    description: Monolithic Power Systems Inc.
   "^mqmaker,.*":
     description: mqmaker Inc.
   "^mscc,.*":
-- 
2.24.1
