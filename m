Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC0B5C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 17:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YVkbsI/LjXsvdIhedGcCxCFX1LZQSVKXRumvoRunmwI=; b=FAIlf+ZG5zn8aK
	EQmHj3ZtMrpGEsbrfRFThkQshV9k1Nffe5lpT0QquodGrlMJf4ONBD/CHKBHO0kq1/1pqAqx35woC
	kjWQ72UQmCQNCCiK3mM/LYFH03xaOztTT9CasRfeQycihQMzTZ/NlkJfRsTnEzFgSNWyEMq+bWIWz
	PVP1kkajWpvxQ6n2tnOm36ekGdrSTghVeO2ppKmwLLiaNacjWoO/gJ368TmRz/KqIvGCnbNXsFTAN
	2NvPt8seGQEMVVxKjs5ztLFYeT5co/6Sx3x+L+8wzVCvb7B1AFVMtyLOajf4Jema8LPWo9S9Ri8vD
	v7vhImXyuutMQq/OFd1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nToBV-006GlV-1x; Mon, 14 Mar 2022 17:08:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTo1d-006Cfr-91; Mon, 14 Mar 2022 16:58:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=bt4YTP6ITjuFi80ToJRqO/Gb4DdMgqp5PcYcJVfJmQs=; b=dmQiUqEGmQQ7k4CuDxKyayMX3I
 szYrUuo/6elulxNnSCy7mDDBSzB9yDrmOrIwNDmNI7kWO3Tz17OL1YDj4ESDgQuK/WuiCqgfpXRwR
 oD7pfZyRbgUWB3TqDh1xECG1jXqkjBwHzWjxZI00hrGAtnwf7l2yly78sYjd6JUcWqdCxuh8/n7jG
 DUnesz6Tkjg3YmdHcv3e3q3aCcyIYDM5DwFgK+maKUHTwihT4x88hp29C5GdNh53G3LsSzAXrrDvn
 d2LRV5QVMb+556OB5+QjE56VK0v9PhSsKypVYK3mPVGnLitTACb4ABhK5MV9LUAe6a/M+3fjnuQGr
 C4R+vtwQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTnfB-004DOx-86; Mon, 14 Mar 2022 16:35:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 39B896146B;
 Mon, 14 Mar 2022 16:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FD4CC36B0D;
 Mon, 14 Mar 2022 16:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647275707;
 bh=PPlZL/SB0tCVqUNa5+hEYDWbRfVKycaXFHPXViRWxog=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Rw3skd91+m0Bb4GFijkmNg4xwrbQwkV4paNOWX/EMRLsxRkRiYOmzqpLSvd06uZdy
 iI5Fl/3v5xPubAsxQ3oYnNnzlfjXLG6x92dynUs/ai+IwvhtfAQP3PdTfaMHEhCWKj
 435JWetqWTptL5OME05iE2pfhYJCGknkV8cBQTrcFjgTUbk6BdIBhPcGJYQLWnCR87
 RVDboYaDmkmJz6yu+FxY0tpJS2qAWeN+8PzidQedLCqwJz57vcWx7ZxP8vafLTr6Z7
 r4GG4lAqVpRfDf+uuLUSxcmYTyPYyOqV0SDVssw1W8u9aaYf8VIpLDq0i9OCv3mJA9
 fBvx9uNf9QGhA==
Received: from mchehab by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1nTnez-001wxb-DJ; Mon, 14 Mar 2022 17:35:05 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Dmitry Osipenko <digetx@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Ming Qian <ming.qian@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 23/67] media: platform: rga: move config to its own file
Date: Mon, 14 Mar 2022 17:34:18 +0100
Message-Id: <2feaaa94cd80692cdcfe4488fe8ee08b40c80a63.1647274406.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1647274406.git.mchehab@kernel.org>
References: <cover.1647274406.git.mchehab@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_163517_543965_03243205 
X-CRM114-Status: GOOD (  15.85  )
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
rga-specific config stuff on a separate Kconfig file.

Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v2 00/67] at: https://lore.kernel.org/all/cover.1647274406.git.mchehab@kernel.org/

 drivers/media/platform/Kconfig              | 16 +---------------
 drivers/media/platform/rockchip/rga/Kconfig | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 15 deletions(-)
 create mode 100644 drivers/media/platform/rockchip/rga/Kconfig

diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index 5a8495338fd4..314e25dd7ca1 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -58,6 +58,7 @@ source "drivers/media/platform/qcom/camss/Kconfig"
 source "drivers/media/platform/qcom/venus/Kconfig"
 
 source "drivers/media/platform/aspeed/Kconfig"
+source "drivers/media/platform/rockchip/rga/Kconfig"
 
 config VIDEO_MUX
 	tristate "Video Multiplexer"
@@ -284,21 +285,6 @@ config VIDEO_STM32_DMA2D
 	  The STM32 DMA2D is a memory-to-memory engine for pixel conversion
 	  and specialized DMA dedicated to image manipulation.
 
-config VIDEO_ROCKCHIP_RGA
-	tristate "Rockchip Raster 2d Graphic Acceleration Unit"
-	depends on V4L_MEM2MEM_DRIVERS
-	depends on VIDEO_DEV && VIDEO_V4L2
-	depends on ARCH_ROCKCHIP || COMPILE_TEST
-	select VIDEOBUF2_DMA_SG
-	select V4L2_MEM2MEM_DEV
-	help
-	  This is a v4l2 driver for Rockchip SOC RGA 2d graphics accelerator.
-	  Rockchip RGA is a separate 2D raster graphic acceleration unit.
-	  It accelerates 2D graphics operations, such as point/line drawing,
-	  image scaling, rotation, BitBLT, alpha blending and image blur/sharpness.
-
-	  To compile this driver as a module choose m here.
-
 config VIDEO_TI_VPE
 	tristate "TI VPE (Video Processing Engine) driver"
 	depends on V4L_MEM2MEM_DRIVERS
diff --git a/drivers/media/platform/rockchip/rga/Kconfig b/drivers/media/platform/rockchip/rga/Kconfig
new file mode 100644
index 000000000000..0106cc8a93a7
--- /dev/null
+++ b/drivers/media/platform/rockchip/rga/Kconfig
@@ -0,0 +1,14 @@
+config VIDEO_ROCKCHIP_RGA
+	tristate "Rockchip Raster 2d Graphic Acceleration Unit"
+	depends on V4L_MEM2MEM_DRIVERS
+	depends on VIDEO_DEV && VIDEO_V4L2
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	select VIDEOBUF2_DMA_SG
+	select V4L2_MEM2MEM_DEV
+	help
+	  This is a v4l2 driver for Rockchip SOC RGA 2d graphics accelerator.
+	  Rockchip RGA is a separate 2D raster graphic acceleration unit.
+	  It accelerates 2D graphics operations, such as point/line drawing,
+	  image scaling, rotation, BitBLT, alpha blending and image blur/sharpness.
+
+	  To compile this driver as a module choose m here.
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
