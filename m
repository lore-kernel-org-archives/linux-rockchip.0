From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH 3/5] dt-bindings: add vendor Monolithic Power Systems
Date: Sat,  4 Jan 2020 16:32:47 +0100
Message-ID: <20200104153321.6584-4-m.reichl@fivetechno.de>
References: <20200104153321.6584-1-m.reichl@fivetechno.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200104153321.6584-1-m.reichl@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Markus Reichl <m.reichl@fivetechno.de>, Maxime Ripard <mripard@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Stephan Gerhold <stephan@gerhold.net>, Heiko Stuebner <heiko@sntech.de>, Icenowy Zheng <icenowy@aosc.io>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
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
