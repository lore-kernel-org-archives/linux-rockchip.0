Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 489ABC4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Mar 2022 07:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aso/hJIV6Z8JNkI2tskcme3xinS6zT4tPdGTY1uRjtk=; b=TiVK5n9wPMyzSv
	Iw7J+a6VbcNXQYnshnZYaZ3JK14rScEdrOXQvQQP67sLPG/cJLl8E1NrACPsvKAi3EOFH/5PbX3uu
	CjjAvspvOtzjy3emI58gaEGjU+0rVc39aCvHmyQ0aTPTOGWabKaNaxQP4ihhzdrEgwO+INqigWyZZ
	nfU5cL/8QIPUyn6WnciXqFUoZMN+TveX/xKHfBvOngFbdifkwVLvQVidOwqVgbVAhRyY5R0xOcEin
	6YWIE+sCjh8IbJplnTXR/1QQgardv5pyZx3yPBjm10BipWJtkGqlmg/BK6FvNDuwj62+zCvvmRdJj
	X8qCh66vSbI1LuPQ9kDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTIYp-002J4y-0s; Sun, 13 Mar 2022 07:22:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTIY8-002InC-Vd; Sun, 13 Mar 2022 07:22:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0A21760F7F;
 Sun, 13 Mar 2022 07:21:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32CFDC3411A;
 Sun, 13 Mar 2022 07:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647156114;
 bh=KA+6RqKKL2tHInP+Yl4ffLWSNGYgen7X1gnannt2kJE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Sbtm6lguq70itw+2+zO3LQcf9ciHKmLp7SjM0Wi5TaoQ9kRyk7T/3jS39eBE/823y
 w7cQl1Sq3EZRKUPyrfzO4iwZVtu1gqZ3R6S60fr36BhGT5sfATa3SH3ePlBov6+BRC
 RSpsM1axYumc601KR37nw9CdTSzpvsAJ07oCJy4Oil6rxMMgUK1ofFg4B2jCq9t+3f
 hl4p7oQJA93d6gHan3ipEpK6aIvFVffQgtqwm1eLJZ/8EJo69NGNy1XIMD1ETsSXNe
 0adv4KEnkfR6lAe3BRTinOzb/VMSR7h5ldB0N1ky6ftUZGxwC3ud/vyMyNjvTHog8m
 0PdcNyYW6XWRA==
Received: from mchehab by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1nTIY4-0012wy-14; Sun, 13 Mar 2022 08:21:52 +0100
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
Subject: [PATCH v3 23/39] media: platform: rga: move config to its own file
Date: Sun, 13 Mar 2022 08:21:32 +0100
Message-Id: <9ad75561524a2a99999405e0d689bd162e6fbb3d.1647155572.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1647155572.git.mchehab@kernel.org>
References: <cover.1647155572.git.mchehab@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220312_232157_202042_173F141E 
X-CRM114-Status: GOOD (  15.43  )
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
See [PATCH v3 00/39] at: https://lore.kernel.org/all/cover.1647155572.git.mchehab@kernel.org/

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
