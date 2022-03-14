Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 554B8C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 08:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISPfxfcIUjDrvvAUFPIomrmTuvy1nikUFboOa/4FWt8=; b=lJS9JyoIGXliHU
	XGxVRTkQeXo97nHdP9DK2YpS5OQBa7ZCRRLRxkKjTmPONmssmps5m95VDc5MnZdisZoswVjB0fU08
	9YLSVs5J2dUFB3C7d6TpiNsfvgzgfaNf4Qu1fKXxpmyRQyUyv24Zlg7LUbMhkSCGvhlTKwYgiR68R
	RNAHuoWEoV4WXUhOzvIyTbcAfP6xR2sYcN+J8WrddAPCPaHMCYyqhhQmO0VUfs5ayumpmRADeuGGM
	fHujHqfsdOryDO28+2/13jrLLNkC8QLeaM4NYveHJtMNRXfxgXE2xTHhdjTw+qIXqMA1YWLrr5/TW
	aXMNNkFLXXSfwV9+uOhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTg1k-004TLJ-18; Mon, 14 Mar 2022 08:26:04 +0000
Received: from desiato.infradead.org ([90.155.92.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTfpf-004LzU-Hu; Mon, 14 Mar 2022 08:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=bFo7j+v7sFDvi2j/oo+NKs6Jv2a6tFj2JhQYKC9mTFk=; b=LRiGVWTO5DMJXxyNcZbOblrYMS
 IJAwgpageEDQCQ8rBrwtdJRU5lBswMv5x0n/7XujdiWCnI8XE7Z+dqM8Z881Ic/ME75GXj0P2MLGa
 v08QOSvEsETwctWJp8ZPnCop8l1RoUfatUFnKzeqcSDWouFW/AJEKlmi7PMxKc2HcjCP+VgSd2mij
 mVwbWDV8HjtD2F+b3fsYSm2t/LF3+3KZkXjN6hEaFzxIKUUDRrjJOH3OmSN7rENoxZz38c+/tTaqv
 JRVn3gaNF9lNi8EsQaQ4BjQijWWUuEHCSJiKSBxjYjHB3grjsFrcejTweDtFV6jQNX9Og6bTfud7v
 aM/a864Q==;
Received: from ams.source.kernel.org ([145.40.68.75])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTfYm-000kPb-Dt; Mon, 14 Mar 2022 07:56:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id DB7FFB80D48;
 Mon, 14 Mar 2022 07:56:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FEF2C340EE;
 Mon, 14 Mar 2022 07:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647244561;
 bh=6BUbVqnuPFKm+gmmzwY62mB7iIjzgP9HCglqzjZpSPY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=p+Cw2dHevoUuB3RTNfqolAAOXmDhCDCpDWxQXBAiB62P2lDEIY+ogMBm/bQX6Hpop
 vwroXY//vY1JyCPaK8312GNyd8F7GnMqFcBbrNHQmO1LQUQsM4SNctrJJcLMboElnI
 4HQwTbNyww5tNUmshXsB57bLvEHgqkF7afiiHI2Bx45wyp5U9ybvnNUBXInVtv454d
 6ztYNecLjgklqqwnSRKGKnUvlPbJ+9YnaTzvQ9AvuW/VztYX8d4JQeurUyQ3wXD/l0
 EYDcwDEpDP1pE4NiruCwOAjABC3AxL7XaQ5DHWhR/mLu/4n4ukvyIHCGkazSGaS7AP
 heDs8OADKe+kA==
Received: from mchehab by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1nTfYd-001kVf-95; Mon, 14 Mar 2022 08:55:59 +0100
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
Subject: [PATCH 23/64] media: platform: rga: move config to its own file
Date: Mon, 14 Mar 2022 08:55:15 +0100
Message-Id: <933414df8ef8eac392a17fb759f79a3ef650a60c.1647242579.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1647242578.git.mchehab@kernel.org>
References: <cover.1647242578.git.mchehab@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_075608_646951_D9D56B20 
X-CRM114-Status: GOOD (  15.42  )
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
See [PATCH 00/64] at: https://lore.kernel.org/all/cover.1647242578.git.mchehab@kernel.org/

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
