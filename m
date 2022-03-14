Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C97DFC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 08:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Wp8uN51MEDvLchM5cvR7t2I8YZbZOvaP+IthFd8+6Y=; b=fGDPozz0dkuRh6
	3nIML5C7b4Hike4Zj5MI2VRWCdgtzhrPZnOqQMFOJi/VhyxsmHfo5zyCJFXaYy7YnrvKZy+GjAJI/
	R7J5MVa76+pfqsQrn6D5ht3xkBXbEq/xmq+f8/pSmPDfrSv7cOcgTal1XVPDVqWwBDBVMp5hpB1VM
	YXn0IOUQYHLjEbYHpTMOPYrgK4fiXfHAAx23BQu5zwe4aEvi2xUE1QJClEThdbWKv48r8/wZAAjEk
	hJNrKRgL99/+e+DP7xUSMZyj8r6LY3dHNJ/ZeAw5WLIS1q1fD7L06puJxfMxMGsaJ/ld8OMmsESqz
	5BbwHCrVANe5vLhI2fpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTfco-004HXI-IA; Mon, 14 Mar 2022 08:00:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTfYq-004Ff6-4Q; Mon, 14 Mar 2022 07:56:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 42D5061203;
 Mon, 14 Mar 2022 07:56:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6D57C36AEF;
 Mon, 14 Mar 2022 07:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647244561;
 bh=51hp8/N8isUS3r9ozBiX9C2POg/EzKiP2L+ggV/SoW8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=a/HV8Rq4eZDn/XlHOjEehVz01LxWiQWY1sn83jdo3mSSDrhX3CYDwRBARGrRRU2sg
 5p0F06HYZuPSmpVigR79Ec/HmQYMxBlD5zzXTLQejNqOduTQC5ydVx2wkivfyKe6ky
 FaJ53guMR7tN6RHh9bDQJDDYzyjdEJBiCc9+uJ19HsYpjvSyJC7tvLMvifa418ElED
 Jv0IQy+dusW1rZWi57HB/GvcvKH3eXVNQWw3ivzA4gy0I66Bc+dsZ0+RpMh+6kNLWI
 tH9CA9T7vTiYAlfwEnAVzBX+sP1J0e/etWz4vT/xYapXXMY0bC72nW3QACJoTyZLah
 jg4IP9+oADBLQ==
Received: from mchehab by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1nTfYd-001kWF-K7; Mon, 14 Mar 2022 08:55:59 +0100
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
Subject: [PATCH 32/64] media: platform: rkisp1: move config to its own file
Date: Mon, 14 Mar 2022 08:55:24 +0100
Message-Id: <9fd563626f13054b7c410af78f65f161376e488a.1647242579.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1647242578.git.mchehab@kernel.org>
References: <cover.1647242578.git.mchehab@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_005612_282713_C6A4193A 
X-CRM114-Status: GOOD (  15.15  )
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
See [PATCH 00/64] at: https://lore.kernel.org/all/cover.1647242578.git.mchehab@kernel.org/

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
