Return-Path: <SRS0=pTeD=EM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29C0C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2020 12:20:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 306EC20715
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2020 12:20:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="0bxliiB8"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 306EC20715
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cGpaQIx85fRjJ7GdskFGrsvhBkA+cXSVRnEy4N6z4Wc=; b=0bxliiB8/2ZnzYjbMbStxo3JV
	dKZPfg5inJRstD2RtKThLSe53WVeu9dBkwGEtD2eYwoBlTZ2AMk2Mx7fGr9bsl5D+nR8xMkEeA/rV
	yUd9xcuXSX2GzI8IymaVDmMfLOkqzxJZJRXVzoiO6RkIykTt8HHON5VWBKv2FV/mAfwgfFVPU1jw/
	JwvEPy1xSRF8uDHrrOeAbCW7jhTr2EM4yVihMjc+kZOkTNrqYFuhryw1YW3CFlLwJB/4htSV66MO7
	8vXsDl4KiE7jjslis71Xli43RFUgIJs69hNWBeGuXjnAmVnC6egB1CWjsb8mR8p8QnKxnu6bdqs+1
	9EruU9jvg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kb0il-0001kO-F6; Fri, 06 Nov 2020 12:19:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb0ij-0001jN-53
 for linux-rockchip@lists.infradead.org; Fri, 06 Nov 2020 12:19:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 2A1671F468B7
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 2/2] media: rockchip: rkisp1: destage Rockchip ISP1 driver
Date: Fri,  6 Nov 2020 09:19:37 -0300
Message-Id: <20201106121937.1459948-3-helen.koike@collabora.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201106121937.1459948-1-helen.koike@collabora.com>
References: <20201106121937.1459948-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201106_071957_379189_BA4E87BD 
X-CRM114-Status: GOOD (  18.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 niklas.soderlund@ragnatech.se, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, hverkuil-cisco@xs4all.nl,
 kernel@collabora.com, zhengsq@rock-chips.com, ribalda@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

All the items in the TODO list were addressed, uapi was reviewed,
documentation written, checkpatch errors fixed, several bugs fixed.

There is no big reason to keep this driver in staging, so move it out.

Dt-bindings Verified with:
make ARCH=arm64 dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml

Fields of MAINTAINERS file sorted according to output of
./scripts/parse-maintainers.pl --input=MAINTAINERS --output=MAINTAINERS
--order

Signed-off-by: Helen Koike <helen.koike@collabora.com>
[dt-bindings: media: rkisp1: move rockchip-isp1 bindings out of staging]
Acked-by: Rob Herring <robh@kernel.org>
[dt-bindings: media: rkisp1: move rockchip-isp1 bindings out of staging]
Reviewed-by: Tomasz Figa <tfiga@chromium.org>

---

Changes in v3:
- Moved Kconfig entry from M2M to Platform devices
- Patches squashed:
dt-bindings: media: rkisp1: move rockchip-isp1 bindings out of staging
media: MAINTAINERS: rkisp1: add path to dt-bindings
media: rockchip: rkisp1: destage Rockchip ISP1 driver
media: MAINTAINERS: Update rkisp1 files with new location

---
 .../bindings/media/rockchip-isp1.yaml         |  0
 .../media/v4l/pixfmt-meta-rkisp1.rst          |  2 +-
 MAINTAINERS                                   |  5 ++++-
 drivers/media/platform/Kconfig                | 18 ++++++++++++++++++
 drivers/media/platform/Makefile               |  1 +
 .../platform/rockchip}/rkisp1/Makefile        |  0
 .../rockchip}/rkisp1/rkisp1-capture.c         |  0
 .../platform/rockchip}/rkisp1/rkisp1-common.c |  0
 .../platform/rockchip}/rkisp1/rkisp1-common.h |  2 +-
 .../platform/rockchip}/rkisp1/rkisp1-dev.c    |  0
 .../platform/rockchip}/rkisp1/rkisp1-isp.c    |  0
 .../platform/rockchip}/rkisp1/rkisp1-params.c |  0
 .../platform/rockchip}/rkisp1/rkisp1-regs.h   |  0
 .../rockchip}/rkisp1/rkisp1-resizer.c         |  0
 .../platform/rockchip}/rkisp1/rkisp1-stats.c  |  0
 drivers/staging/media/Kconfig                 |  2 --
 drivers/staging/media/Makefile                |  1 -
 drivers/staging/media/rkisp1/Kconfig          | 19 -------------------
 drivers/staging/media/rkisp1/TODO             |  6 ------
 .../uapi/linux}/rkisp1-config.h               |  0
 20 files changed, 25 insertions(+), 31 deletions(-)
 rename {drivers/staging/media/rkisp1/Documentation => Documentation}/devicetree/bindings/media/rockchip-isp1.yaml (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/Makefile (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-capture.c (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-common.c (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-common.h (99%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-dev.c (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-isp.c (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-params.c (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-regs.h (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-resizer.c (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-stats.c (100%)
 delete mode 100644 drivers/staging/media/rkisp1/Kconfig
 delete mode 100644 drivers/staging/media/rkisp1/TODO
 rename {drivers/staging/media/rkisp1/uapi => include/uapi/linux}/rkisp1-config.h (100%)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
similarity index 100%
rename from drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
rename to Documentation/devicetree/bindings/media/rockchip-isp1.yaml
diff --git a/Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst b/Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
index 7e43837ed260a..f3671472d4105 100644
--- a/Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
+++ b/Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
@@ -46,4 +46,4 @@ important tuning tools using software control loop.
 rkisp1 uAPI data types
 ======================
 
-.. kernel-doc:: drivers/staging/media/rkisp1/uapi/rkisp1-config.h
+.. kernel-doc:: include/uapi/linux/rkisp1-config.h
diff --git a/MAINTAINERS b/MAINTAINERS
index 811db1d3ca33b..352b8eaa21f7c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15034,10 +15034,13 @@ ROCKCHIP ISP V1 DRIVER
 M:	Helen Koike <helen.koike@collabora.com>
 M:	Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
 L:	linux-media@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
 S:	Maintained
 F:	Documentation/admin-guide/media/rkisp1.rst
+F:	Documentation/devicetree/bindings/media/rockchip-isp1.yaml
 F:	Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
-F:	drivers/staging/media/rkisp1/
+F:	drivers/media/platform/rockchip/rkisp1
+F:	include/uapi/linux/rkisp1-config.h
 
 ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
 M:	Jacob Chen <jacob-chen@iotwrt.com>
diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index a3cb104956d56..b161f2ba238fe 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -147,6 +147,24 @@ config VIDEO_RENESAS_CEU
 	help
 	  This is a v4l2 driver for the Renesas CEU Interface
 
+config VIDEO_ROCKCHIP_ISP1
+	tristate "Rockchip Image Signal Processing v1 Unit driver"
+	depends on VIDEO_V4L2 && OF
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	select MEDIA_CONTROLLER
+	select VIDEO_V4L2_SUBDEV_API
+	select VIDEOBUF2_DMA_CONTIG
+	select VIDEOBUF2_VMALLOC
+	select V4L2_FWNODE
+	select GENERIC_PHY_MIPI_DPHY
+	default n
+	help
+	  Enable this to support the Image Signal Processing (ISP) module
+	  present in RK3399 SoCs.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called rockchip-isp1.
+
 source "drivers/media/platform/exynos4-is/Kconfig"
 source "drivers/media/platform/am437x/Kconfig"
 source "drivers/media/platform/xilinx/Kconfig"
diff --git a/drivers/media/platform/Makefile b/drivers/media/platform/Makefile
index 62b6cdc8c7300..b342714228db4 100644
--- a/drivers/media/platform/Makefile
+++ b/drivers/media/platform/Makefile
@@ -52,6 +52,7 @@ obj-$(CONFIG_VIDEO_RENESAS_FDP1)	+= rcar_fdp1.o
 obj-$(CONFIG_VIDEO_RENESAS_JPU)		+= rcar_jpu.o
 obj-$(CONFIG_VIDEO_RENESAS_VSP1)	+= vsp1/
 
+obj-$(CONFIG_VIDEO_ROCKCHIP_ISP1)	+= rockchip/rkisp1/
 obj-$(CONFIG_VIDEO_ROCKCHIP_RGA)	+= rockchip/rga/
 
 obj-y	+= omap/
diff --git a/drivers/staging/media/rkisp1/Makefile b/drivers/media/platform/rockchip/rkisp1/Makefile
similarity index 100%
rename from drivers/staging/media/rkisp1/Makefile
rename to drivers/media/platform/rockchip/rkisp1/Makefile
diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
similarity index 100%
rename from drivers/staging/media/rkisp1/rkisp1-capture.c
rename to drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
diff --git a/drivers/staging/media/rkisp1/rkisp1-common.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.c
similarity index 100%
rename from drivers/staging/media/rkisp1/rkisp1-common.c
rename to drivers/media/platform/rockchip/rkisp1/rkisp1-common.c
diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
similarity index 99%
rename from drivers/staging/media/rkisp1/rkisp1-common.h
rename to drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 692333c66f9d1..3a134e97161cb 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -13,6 +13,7 @@
 
 #include <linux/clk.h>
 #include <linux/mutex.h>
+#include <linux/rkisp1-config.h>
 #include <media/media-device.h>
 #include <media/media-entity.h>
 #include <media/v4l2-ctrls.h>
@@ -20,7 +21,6 @@
 #include <media/videobuf2-v4l2.h>
 
 #include "rkisp1-regs.h"
-#include "uapi/rkisp1-config.h"
 
 /*
  * flags on the 'direction' field in struct 'rkisp1_isp_mbus_info' that indicate
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
similarity index 100%
rename from drivers/staging/media/rkisp1/rkisp1-dev.c
rename to drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
similarity index 100%
rename from drivers/staging/media/rkisp1/rkisp1-isp.c
rename to drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
similarity index 100%
rename from drivers/staging/media/rkisp1/rkisp1-params.c
rename to drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
diff --git a/drivers/staging/media/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
similarity index 100%
rename from drivers/staging/media/rkisp1/rkisp1-regs.h
rename to drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
similarity index 100%
rename from drivers/staging/media/rkisp1/rkisp1-resizer.c
rename to drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
similarity index 100%
rename from drivers/staging/media/rkisp1/rkisp1-stats.c
rename to drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
diff --git a/drivers/staging/media/Kconfig b/drivers/staging/media/Kconfig
index 747c6cf1d795e..e8996b1c3b351 100644
--- a/drivers/staging/media/Kconfig
+++ b/drivers/staging/media/Kconfig
@@ -44,6 +44,4 @@ source "drivers/staging/media/tegra-video/Kconfig"
 
 source "drivers/staging/media/ipu3/Kconfig"
 
-source "drivers/staging/media/rkisp1/Kconfig"
-
 endif
diff --git a/drivers/staging/media/Makefile b/drivers/staging/media/Makefile
index b59571826ba69..24b5873ff7608 100644
--- a/drivers/staging/media/Makefile
+++ b/drivers/staging/media/Makefile
@@ -10,5 +10,4 @@ obj-$(CONFIG_VIDEO_TEGRA)	+= tegra-video/
 obj-$(CONFIG_TEGRA_VDE)		+= tegra-vde/
 obj-$(CONFIG_VIDEO_HANTRO)	+= hantro/
 obj-$(CONFIG_VIDEO_IPU3_IMGU)	+= ipu3/
-obj-$(CONFIG_VIDEO_ROCKCHIP_ISP1)	+= rkisp1/
 obj-$(CONFIG_VIDEO_ZORAN)	+= zoran/
diff --git a/drivers/staging/media/rkisp1/Kconfig b/drivers/staging/media/rkisp1/Kconfig
deleted file mode 100644
index 41f5def9ea442..0000000000000
--- a/drivers/staging/media/rkisp1/Kconfig
+++ /dev/null
@@ -1,19 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-config VIDEO_ROCKCHIP_ISP1
-	tristate "Rockchip Image Signal Processing v1 Unit driver"
-	depends on VIDEO_V4L2 && OF
-	depends on ARCH_ROCKCHIP || COMPILE_TEST
-	select MEDIA_CONTROLLER
-	select VIDEO_V4L2_SUBDEV_API
-	select VIDEOBUF2_DMA_CONTIG
-	select VIDEOBUF2_VMALLOC
-	select V4L2_FWNODE
-	select GENERIC_PHY_MIPI_DPHY
-	default n
-	help
-	  Enable this to support the Image Signal Processing (ISP) module
-	  present in RK3399 SoCs.
-
-	  To compile this driver as a module, choose M here: the module
-	  will be called rockchip-isp1.
diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
deleted file mode 100644
index bb5548cd6bd1b..0000000000000
--- a/drivers/staging/media/rkisp1/TODO
+++ /dev/null
@@ -1,6 +0,0 @@
-NOTES:
-* All v4l2-compliance test must pass.
-* Stats and params can be tested with libcamera and ChromiumOS stack.
-
-Please CC patches to Linux Media <linux-media@vger.kernel.org> and
-Helen Koike <helen.koike@collabora.com>.
diff --git a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
similarity index 100%
rename from drivers/staging/media/rkisp1/uapi/rkisp1-config.h
rename to include/uapi/linux/rkisp1-config.h
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
