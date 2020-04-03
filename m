From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v2 7/9] media: MAINTAINERS: rkisp1: add path to dt-bindings
Date: Fri,  3 Apr 2020 13:15:36 -0300
Message-ID: <20200403161538.1375908-8-helen.koike@collabora.com>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200403161538.1375908-1-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, robh+dt@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl, kernel@collabora.com, dafna.hirschfeld@collabora.com, ezequiel@collabora.com, mark.rutland@arm.com, karthik.poduval@gmail.com, jbx6244@gmail.com, kishon@ti.com
List-Id: linux-rockchip.vger.kernel.org

The Rockchip ISP bindings was moved out of staging.
Update MAINTAINERS file with the new path.

Suggested-by: Johan Jonker <jbx6244@gmail.com>
Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

V2:
- This is a new patch in the series
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d66ac41ef5872..726044b84cf23 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14303,6 +14303,7 @@ M:	Helen Koike <helen.koike@collabora.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	drivers/staging/media/rkisp1/
+F:	Documentation/devicetree/bindings/media/rockchip-isp1.yaml
 
 ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
 M:	Jacob Chen <jacob-chen@iotwrt.com>
-- 
2.26.0
