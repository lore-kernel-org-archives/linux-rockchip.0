From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH v4 17/33] media: add SPDX headers on Kconfig and Makefile files
Date: Tue, 31 Mar 2020 13:11:53 +0200
Message-ID: <981eea64742859c63d8ab88c24b1b3380ee32dd2.1585651678.git.mchehab+huawei@kernel.org>
References: <cover.1585651678.git.mchehab+huawei@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <cover.1585651678.git.mchehab+huawei@kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Helen Koike <helen.koike@collabora.com>, Maxime Ripard <mripard@kernel.org>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Most of media Kconfig/Makefile files already has SPDX,
but there are a few ones still missing. Add it to them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/media/dvb-frontends/Kconfig             | 2 ++
 drivers/media/mc/Kconfig                        | 2 ++
 drivers/media/platform/sunxi/Kconfig            | 2 ++
 drivers/media/platform/sunxi/Makefile           | 2 ++
 drivers/media/platform/sunxi/sun4i-csi/Kconfig  | 2 ++
 drivers/media/platform/sunxi/sun4i-csi/Makefile | 2 ++
 drivers/staging/media/hantro/Makefile           | 2 ++
 drivers/staging/media/rkisp1/Makefile           | 2 ++
 8 files changed, 16 insertions(+)

diff --git a/drivers/media/dvb-frontends/Kconfig b/drivers/media/dvb-frontends/Kconfig
index 1f45808d94da..aa24506257b3 100644
--- a/drivers/media/dvb-frontends/Kconfig
+++ b/drivers/media/dvb-frontends/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 if MEDIA_DIGITAL_TV_SUPPORT
 
 comment "DVB Frontend drivers hidden by 'Autoselect ancillary drivers'"
diff --git a/drivers/media/mc/Kconfig b/drivers/media/mc/Kconfig
index 3b9795cfcb36..0c5c52f14c64 100644
--- a/drivers/media/mc/Kconfig
+++ b/drivers/media/mc/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 #
 # Media controller
 #	Selectable only for webcam/grabbers, as other drivers don't use it
diff --git a/drivers/media/platform/sunxi/Kconfig b/drivers/media/platform/sunxi/Kconfig
index 71808e93ac2e..7151cc249afa 100644
--- a/drivers/media/platform/sunxi/Kconfig
+++ b/drivers/media/platform/sunxi/Kconfig
@@ -1,2 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
+
 source "drivers/media/platform/sunxi/sun4i-csi/Kconfig"
 source "drivers/media/platform/sunxi/sun6i-csi/Kconfig"
diff --git a/drivers/media/platform/sunxi/Makefile b/drivers/media/platform/sunxi/Makefile
index ff0993f70dc3..fc537c9f5ca9 100644
--- a/drivers/media/platform/sunxi/Makefile
+++ b/drivers/media/platform/sunxi/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 obj-y		+= sun4i-csi/
 obj-y		+= sun6i-csi/
 obj-y		+= sun8i-di/
diff --git a/drivers/media/platform/sunxi/sun4i-csi/Kconfig b/drivers/media/platform/sunxi/sun4i-csi/Kconfig
index e86e29b6a603..93b4e82a2655 100644
--- a/drivers/media/platform/sunxi/sun4i-csi/Kconfig
+++ b/drivers/media/platform/sunxi/sun4i-csi/Kconfig
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 config VIDEO_SUN4I_CSI
 	tristate "Allwinner A10 CMOS Sensor Interface Support"
 	depends on VIDEO_V4L2 && COMMON_CLK && VIDEO_V4L2_SUBDEV_API && HAS_DMA
diff --git a/drivers/media/platform/sunxi/sun4i-csi/Makefile b/drivers/media/platform/sunxi/sun4i-csi/Makefile
index 7c790a57f5ee..5062b006d63e 100644
--- a/drivers/media/platform/sunxi/sun4i-csi/Makefile
+++ b/drivers/media/platform/sunxi/sun4i-csi/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 sun4i-csi-y += sun4i_csi.o
 sun4i-csi-y += sun4i_dma.o
 sun4i-csi-y += sun4i_v4l2.o
diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
index 68c29a9c4946..743ce08eb184 100644
--- a/drivers/staging/media/hantro/Makefile
+++ b/drivers/staging/media/hantro/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 obj-$(CONFIG_VIDEO_HANTRO) += hantro-vpu.o
 
 hantro-vpu-y += \
diff --git a/drivers/staging/media/rkisp1/Makefile b/drivers/staging/media/rkisp1/Makefile
index 69ca59c7ef34..ab32a77db8f7 100644
--- a/drivers/staging/media/rkisp1/Makefile
+++ b/drivers/staging/media/rkisp1/Makefile
@@ -1,3 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
 obj-$(CONFIG_VIDEO_ROCKCHIP_ISP1) += rockchip-isp1.o
 rockchip-isp1-objs += 	rkisp1-capture.o \
 			rkisp1-common.o \
-- 
2.25.1
