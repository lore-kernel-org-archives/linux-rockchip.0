From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: [PATCH v3 1/4] dt-bindings: rockchip-rga: Add PX30 compatible
Date: Thu, 30 Apr 2020 18:42:42 +0200
Message-ID: <20200430164245.1630174-2-paul.kocialkowski@bootlin.com>
References: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hansverk@cisco.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

Add a new compatible for the PX30 Rockchip SoC, which also features
a RGA block. It is compatible with the RK3288 RGA block.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 Documentation/devicetree/bindings/media/rockchip-rga.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
index dd645ddccb07..740586299da9 100644
--- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
@@ -23,6 +23,9 @@ properties:
       - items:
           - const: rockchip,rk3228-rga
           - const: rockchip,rk3288-rga
+      - items:
+          - const: rockchip,px30-rga
+          - const: rockchip,rk3288-rga
 
   reg:
     maxItems: 1
-- 
2.26.0
