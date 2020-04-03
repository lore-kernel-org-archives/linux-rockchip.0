From: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v2 1/9] media: staging: dt-bindings: rkisp1: add missing required nodes
Date: Fri,  3 Apr 2020 13:15:30 -0300
Message-ID: <20200403161538.1375908-2-helen.koike@collabora.com>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200403161538.1375908-1-helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add missing required nodes in json-schema yaml file for
Rockchip ISP1 dt-bindings.

Suggested-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Signed-off-by: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---

Changes in v2:
- New patch in the series
---
 .../devicetree/bindings/media/rockchip-isp1.yaml          | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index af246b71eac6b..a77b6ec500c95 100644
--- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -94,11 +94,19 @@ properties:
 
               remote-endpoint: true
 
+        required:
+          - reg
+          - "#address-cells"
+          - "#size-cells"
+
     required:
+      - "#address-cells"
+      - "#size-cells"
       - port@0
 
 required:
   - compatible
+  - reg
   - interrupts
   - clocks
   - clock-names
-- 
2.26.0
