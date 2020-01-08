From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v13 11/11] MAINTAINERS: add entry for Rockchip ISP1 driver
Date: Wed,  8 Jan 2020 15:44:54 -0300
Message-ID: <20200108184454.825725-12-helen.koike@collabora.com>
References: <20200108184454.825725-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200108184454.825725-1-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, mchehab@kernel.org, heiko@sntech.de, gregkh@linuxfoundation.org, andrey.konovalov@linaro.org, linux-kernel@vger.kernel.org, tfiga@chromium.org, robh+dt@kernel.org, hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com, joacim.zetterling@gmail.com, kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org, jacob-chen@iotwrt.com, linux-arm-kernel@lists.infradead.org, Helen Koike <helen.koike@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Add MAINTAINERS entry for the rockchip isp1 driver.

Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

Changes in v13: None
Changes in v12: None
Changes in v11: None
Changes in v10: None
Changes in v9:
- Move to staging

Changes in v8: None
Changes in v7: None

 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 87f3d89d44a2..5ed1287cbb1c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14117,6 +14117,12 @@ F:	drivers/hid/hid-roccat*
 F:	include/linux/hid-roccat*
 F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
 
+ROCKCHIP ISP V1 DRIVER
+M:	Helen Koike <helen.koike@collabora.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+F:	drivers/staging/media/rkisp1/
+
 ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
 M:	Jacob Chen <jacob-chen@iotwrt.com>
 M:	Ezequiel Garcia <ezequiel@collabora.com>
-- 
2.24.0
