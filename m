Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F84BC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Mar 2022 08:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sycXEe2KUud4Mi2xp6EhDQgqpr3cGdl6XUeu5zxNtNA=; b=OBhfIiby4oaUoK
	RkupETFPYAkNWIRM2RwFJX2P4FJLlKqGSy9y6RrSAY6UMRDyWXp91DWwhWl+oxEKT+6qYzz70waIB
	DH0CHERNo3vppY9IDOpzBwSc3WsjRtb4aAdd7r8eHsqoJjA0Aw1L3yaMkAuYpLJ+3hpIv7OQOM0Ec
	wMI8mqAU5BXVJu8UeZlEKWnRWye0GS3eshPA5uezs2j1JNBXCzkKjN4un7haUxkJpgnvCASftZbOQ
	n+V25T2BwIsVFxs4C7a0325uRHye6gwMoOsVLJwPlbXaQtlcvz6BB9HJ+jbSqWBGcVbzgIXcYCS9/
	WJNGy+931CgM785E7dug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTJJc-002PDS-25; Sun, 13 Mar 2022 08:11:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTJJR-002Oym-5N; Sun, 13 Mar 2022 08:10:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=m3uiJmwTk6u1qB+pOV5lnho/GNKPJv5vV0+FP0NCamo=; b=HN6KIRw8qHEkFIlGM2MFhZB//c
 VOEI/RZ34dq1KoAo21djNBAgmZntvdSs+EXdm8+zPCdv1V7ZYMAdZ0Axj6u152HD8W6Hh8oNmNtiG
 foArJZgf29CeHSVWJQbzrk9PkhqmApZf3Ll5dUUI6qTKlXxdct5neL/lBOUHC9jXYWslJxWBPOH4o
 ezfc77jpD1svaYOM2x9G/flo9mV0jm9fmtOexWcZqw3qITzRkcxT9vRInRGMGCDh1CU+uPv7yUqOS
 92bp+EGiatngNR9bdcItBHHPu1WYbDnzaWk3xnX6kJn5fq/C4+y+yutje7I5NUU3RrwUbakooBFeX
 ZZLZI6AA==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTIYF-000S2R-K3; Sun, 13 Mar 2022 07:22:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6161E60F95;
 Sun, 13 Mar 2022 07:21:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DC43C36AF4;
 Sun, 13 Mar 2022 07:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647156114;
 bh=Oj1tq9OVNGY7g6BrcdjBSPqiRKjC3BQ2ykAaoPLfNIY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jbSLp9JnVeFxgPpSYDp86PK3Hd2KclTZLBXz9EsQppHe+4W6BXZyigKOrcVPmJJ9M
 UMBYWf5H9hngrZ2AAavaugp35613ok+c3WEzJbvhm8fQdb5LwXg39N78pO32+wtEsL
 wOXDdMypW5RSDqT5rNuldSCI2f4hRCEifkByDCy39N5Vrces3jr1PA+SB9o16UWM8H
 OEM609W4OETufZ0JlLOaEQAvBWTUbo+5KMzH/3f5QtYo7OwB8mVqzetzjFWlImYjvl
 Jwr5i5D7HeoYzlFHp8V7BfIZEkyi73JyBLx0/oJGdtqOv+58O2zsYSP0gW84N4rkGw
 D7nbFqFD2USZg==
Received: from mchehab by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1nTIY4-0012xY-Cy; Sun, 13 Mar 2022 08:21:52 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Dafna Hirschfeld <dafna@fastmail.com>, Dmitry Osipenko <digetx@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Ming Qian <ming.qian@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v3 32/39] media: platform: rkisp1: move config to its own file
Date: Sun, 13 Mar 2022 08:21:41 +0100
Message-Id: <47bf825ca88b14a49a51b0d57179e1e83ba3b340.1647155572.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1647155572.git.mchehab@kernel.org>
References: <cover.1647155572.git.mchehab@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220313_072203_907614_21D7777D 
X-CRM114-Status: GOOD (  15.06  )
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

In order to better organize the platform/Kconfig, place
rkisp1-specific config stuff on a separate Kconfig file.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v3 00/39] at: https://lore.kernel.org/all/cover.1647155572.git.mchehab@kernel.org/

 drivers/media/platform/Kconfig                | 20 +------------------
 .../media/platform/rockchip/rkisp1/Kconfig    | 19 ++++++++++++++++++
 2 files changed, 20 insertions(+), 19 deletions(-)
 create mode 100644 drivers/media/platform/rockchip/rkisp1/Kconfig

diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index 228881ae0d22..29afef26cbe4 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -59,6 +59,7 @@ source "drivers/media/platform/qcom/venus/Kconfig"
 
 source "drivers/media/platform/aspeed/Kconfig"
 source "drivers/media/platform/rockchip/rga/Kconfig"
+source "drivers/media/platform/rockchip/rkisp1/Kconfig"
 source "drivers/media/platform/s3c-camif/Kconfig"
 source "drivers/media/platform/s5p-g2d/Kconfig"
 source "drivers/media/platform/sti/hva/Kconfig"
@@ -82,25 +83,6 @@ config VIDEO_MUX
 
 source "drivers/media/platform/intel/Kconfig"
 
-config VIDEO_ROCKCHIP_ISP1
-	tristate "Rockchip Image Signal Processing v1 Unit driver"
-	depends on V4L_PLATFORM_DRIVERS
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
-
 source "drivers/media/platform/exynos4-is/Kconfig"
 source "drivers/media/platform/am437x/Kconfig"
 source "drivers/media/platform/xilinx/Kconfig"
diff --git a/drivers/media/platform/rockchip/rkisp1/Kconfig b/drivers/media/platform/rockchip/rkisp1/Kconfig
new file mode 100644
index 000000000000..c2e464317929
--- /dev/null
+++ b/drivers/media/platform/rockchip/rkisp1/Kconfig
@@ -0,0 +1,19 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config VIDEO_ROCKCHIP_ISP1
+	tristate "Rockchip Image Signal Processing v1 Unit driver"
+	depends on V4L_PLATFORM_DRIVERS
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
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
