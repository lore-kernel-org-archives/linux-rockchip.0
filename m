Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0FC6C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 17:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14u7D11rT34o1WIqerEG/MURxhb1aj5pe7R8rwvV6BU=; b=a4Y5sIre6Xk8oL
	MtWe0c7tlXKrFFrsUX+gf7nIebDx+qa5RyrFCRI+fbug0gFwRaLG9TQUacSAUUpHh2MOE7b0uZy0q
	IzSf5ggW9AxEYURzcWQgbIB1iFmJhtpsx1PiKWSu0DTjOZ3YqICCrHgpbwMqpDLbeMsne1xgApFQZ
	coNMoQ3TygKGx3i5SFdIEGx4ZCsyguDYENp7MACsgrPFp2sP/SPDJrIzOKa9FCllna5s/sFTTKknI
	enuVUCDWs7rO8QdFQba5gbaYL6bLOS/fRu0xOT/k9V0r2vadWPHV3wMJUZLBQ2MFNeDtlcAYkThRI
	X9ZvZkA1gadGLw8z4cNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQBfB-00BId5-RC; Fri, 04 Mar 2022 17:24:21 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQBap-00BFgY-14
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 17:19:55 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0D12E215F;
 Fri,  4 Mar 2022 18:19:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1646414389;
 bh=Kt6drvWCc1GVi+QyE/OkqjSaKCAFoCOPpx7dF4+yiLE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=clPuGwaIkR/yDYHz4sS6PM4ttxoDm+MqU9I4P6UGKRQhzsdDeSa6nLB7p8R4+dMcb
 0OtLy1+NuNpTN6XxD4KPpVU+nFEgYfYx5M6OGngvJqndG9ITMD2o1NpzYVqqszFinC
 AUstHd165zaZcSfl94Gd0/Pnt+3aN2PQzgkjEX48=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 12/17] media: rkisp1: Move debugfs code to a separate file
Date: Fri,  4 Mar 2022 19:19:20 +0200
Message-Id: <20220304171925.1592-13-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
References: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_091951_294631_600C362D 
X-CRM114-Status: GOOD (  17.82  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

To avoid cluttering the main rkisp1-dev.c driver file, move debugfs code
to a separate source file. This prepares for extensions to the debugfs
infrastructure.

While at it, add a missing forward declaration for struct dentry in
rkisp1-common.h to avoid depending on indirect includes.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/Makefile   |  1 +
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  5 ++
 .../platform/rockchip/rkisp1/rkisp1-debug.c   | 50 +++++++++++++++++++
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 33 +-----------
 4 files changed, 57 insertions(+), 32 deletions(-)
 create mode 100644 drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c

diff --git a/drivers/media/platform/rockchip/rkisp1/Makefile b/drivers/media/platform/rockchip/rkisp1/Makefile
index ab32a77db8f7..1a39bdcc608e 100644
--- a/drivers/media/platform/rockchip/rkisp1/Makefile
+++ b/drivers/media/platform/rockchip/rkisp1/Makefile
@@ -3,6 +3,7 @@
 obj-$(CONFIG_VIDEO_ROCKCHIP_ISP1) += rockchip-isp1.o
 rockchip-isp1-objs += 	rkisp1-capture.o \
 			rkisp1-common.o \
+			rkisp1-debug.o \
 			rkisp1-dev.o \
 			rkisp1-isp.o \
 			rkisp1-resizer.o \
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 3b36ab05ac34..07a92ed8bdc8 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -23,6 +23,8 @@
 
 #include "rkisp1-regs.h"
 
+struct dentry;
+
 /*
  * flags on the 'direction' field in struct 'rkisp1_isp_mbus_info' that indicate
  * on which pad the media bus format is supported
@@ -516,4 +518,7 @@ void rkisp1_stats_unregister(struct rkisp1_device *rkisp1);
 int rkisp1_params_register(struct rkisp1_device *rkisp1);
 void rkisp1_params_unregister(struct rkisp1_device *rkisp1);
 
+void rkisp1_debug_init(struct rkisp1_device *rkisp1);
+void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1);
+
 #endif /* _RKISP1_COMMON_H */
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
new file mode 100644
index 000000000000..64b33774cbdf
--- /dev/null
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Rockchip ISP1 Driver - Base driver
+ *
+ * Copyright (C) 2019 Collabora, Ltd.
+ *
+ * Based on Rockchip ISP1 driver by Rockchip Electronics Co., Ltd.
+ * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
+ */
+
+#include <linux/debugfs.h>
+#include <linux/device.h>
+
+#include "rkisp1-common.h"
+
+void rkisp1_debug_init(struct rkisp1_device *rkisp1)
+{
+	struct rkisp1_debug *debug = &rkisp1->debug;
+
+	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
+
+	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
+			     &debug->data_loss);
+	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
+			     &debug->outform_size_error);
+	debugfs_create_ulong("img_stabilization_size_error", 0444,
+			     debug->debugfs_dir,
+			     &debug->img_stabilization_size_error);
+	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
+			     &debug->inform_size_error);
+	debugfs_create_ulong("irq_delay", 0444,  debug->debugfs_dir,
+			     &debug->irq_delay);
+	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
+			     &debug->mipi_error);
+	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
+			     &debug->stats_error);
+	debugfs_create_ulong("mp_stop_timeout", 0444, debug->debugfs_dir,
+			     &debug->stop_timeout[RKISP1_MAINPATH]);
+	debugfs_create_ulong("sp_stop_timeout", 0444, debug->debugfs_dir,
+			     &debug->stop_timeout[RKISP1_SELFPATH]);
+	debugfs_create_ulong("mp_frame_drop", 0444, debug->debugfs_dir,
+			     &debug->frame_drop[RKISP1_MAINPATH]);
+	debugfs_create_ulong("sp_frame_drop", 0444, debug->debugfs_dir,
+			     &debug->frame_drop[RKISP1_SELFPATH]);
+}
+
+void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
+{
+	debugfs_remove_recursive(rkisp1->debug.debugfs_dir);
+}
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index f8b2573aa9da..c7ad1986e67b 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -9,7 +9,6 @@
  */
 
 #include <linux/clk.h>
-#include <linux/debugfs.h>
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -460,36 +459,6 @@ static const struct of_device_id rkisp1_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, rkisp1_of_match);
 
-static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
-{
-	struct rkisp1_debug *debug = &rkisp1->debug;
-
-	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
-	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
-			     &debug->data_loss);
-	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
-			     &debug->outform_size_error);
-	debugfs_create_ulong("img_stabilization_size_error", 0444,
-			     debug->debugfs_dir,
-			     &debug->img_stabilization_size_error);
-	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
-			     &debug->inform_size_error);
-	debugfs_create_ulong("irq_delay", 0444,  debug->debugfs_dir,
-			     &debug->irq_delay);
-	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
-			     &debug->mipi_error);
-	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
-			     &debug->stats_error);
-	debugfs_create_ulong("mp_stop_timeout", 0444, debug->debugfs_dir,
-			     &debug->stop_timeout[RKISP1_MAINPATH]);
-	debugfs_create_ulong("sp_stop_timeout", 0444, debug->debugfs_dir,
-			     &debug->stop_timeout[RKISP1_SELFPATH]);
-	debugfs_create_ulong("mp_frame_drop", 0444, debug->debugfs_dir,
-			     &debug->frame_drop[RKISP1_MAINPATH]);
-	debugfs_create_ulong("sp_frame_drop", 0444, debug->debugfs_dir,
-			     &debug->frame_drop[RKISP1_SELFPATH]);
-}
-
 static int rkisp1_probe(struct platform_device *pdev)
 {
 	const struct rkisp1_match_data *match_data;
@@ -586,13 +555,13 @@ static int rkisp1_remove(struct platform_device *pdev)
 	v4l2_async_nf_cleanup(&rkisp1->notifier);
 
 	rkisp1_entities_unregister(rkisp1);
+	rkisp1_debug_cleanup(rkisp1);
 
 	media_device_unregister(&rkisp1->media_dev);
 	v4l2_device_unregister(&rkisp1->v4l2_dev);
 
 	pm_runtime_disable(&pdev->dev);
 
-	debugfs_remove_recursive(rkisp1->debug.debugfs_dir);
 	return 0;
 }
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
