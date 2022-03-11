Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AEA7C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 14:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5PWfiaNGVeliDSmOiiJdLfmAFzB9wmbkMRMxUsQjiXk=; b=JI+on3wLubGMj9
	FVDK7ZBNUwv3ptsXcjt+KhFF8lNqpzT+W/HNPFhF4/QCQ719pxdAMw8uH2PjXwxcszc+vdddmAzmd
	vsnYyu/2aX2G64RGu7y5OAaJtsOEa0JasgDw404Sem6LQ3VpVzRFcOanl7s9hR0FzDyg+nUWX0A6g
	CjSR37IVpZwO0otz5qZRNQSKtLws+e7ytdm/9fxTD9wAqctUbpMri+2jiD7mXgTKYQ+NoT6Ct1tW/
	b7F16eqX/20Qi3OUXjYVKUkpRdhUwrlj45CiWNPVLP0IHfUxZ1FDgbrJtJAz1IJwAJZ4HlNMEuE+6
	VYcr3xit3mc2ENRcTrIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSg7l-00GjXm-5h; Fri, 11 Mar 2022 14:20:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSfxo-00GebT-Ur; Fri, 11 Mar 2022 14:09:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=XCqRWrtYITPjzk0j3E7YYOzK7/aqmGhfEeEW8IkqjK4=; b=WaPxzYzIoF8LdlET/7DqjcjLlJ
 1GZSpZxiQNr9TKOOP9U1jZeHUMR0zjd03z9yWtagpRg6CZz9AfupAJ8frgG4rP4q+A6wlfR+sqUx3
 NsfKTYlKm4VlC7uEwAX6zhgkEXGOE1DW1U+YiiwYZlSp+Dh3E5lOO3gL4Y0RTBOjk76iXzrU+oKjG
 Lqu+zW2sfq7v4q37TrAs1QFLwfcP0zYmZLp13lOs95wo4GPD4VOoHnY2yXyP9N49zEAM9Q72TFkxL
 9cGJ6h1RnhZPldMsNkmHKy+Jq9GPRTT324U9CZYPOjpOQkjUS5MLNTHs3c4/Be85KxZjPNFWsCYYo
 Pw+BmOJw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSfxk-00HSTQ-N4; Fri, 11 Mar 2022 14:09:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 41BDA61EF7;
 Fri, 11 Mar 2022 14:09:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4B36C340F4;
 Fri, 11 Mar 2022 14:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647007777;
 bh=AzY3Nr9GTcfaKVfk1EjWhHpKPBPquJbEl5wAhuZ+XYM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pgf7ou1GLRqsrYFZtxszfIJA2oHV3AWjMEdoPetwo1JRZue5QbD2vXtV/ktxT3wdW
 VNBBoJhHgr1vBxQQfS542YbrNTtSv0w4tBqvncWoKEMub9CNYCBuiEuJfBZUOmn9vs
 CNOh4L2Q1BB0FLPAGu0HRz7RnQKjau+fLssUnHCOSI/pTah01wf0EU64s5wmWN1Qsq
 9+YLUduYgmkbv+i7KVelJTnFeB2/n8bRIfI9/T9T85tbR+6DbwVn2mEJo/9+adfsf2
 Geq9zURG64nEX1rQGePuJVSsk854CmP3ro/IKdkuaVHf8rpcvhu2A1p3OGexU3aiYT
 I5X8aS112TuDw==
Received: from mchehab by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1nSfxX-000lHp-KQ; Fri, 11 Mar 2022 15:09:35 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Dmitry Osipenko <digetx@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Ming Qian <ming.qian@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 23/38] media: platform: rga: move config to its own file
Date: Fri, 11 Mar 2022 15:07:36 +0100
Message-Id: <9d04ba0dbbd81de287180957ce32e27edbada7e5.1647006877.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1647006877.git.mchehab@kernel.org>
References: <cover.1647006877.git.mchehab@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_140949_119738_75C2EF46 
X-CRM114-Status: GOOD (  15.83  )
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
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v2 00/38] at: https://lore.kernel.org/all/cover.1647006877.git.mchehab@kernel.org/

 drivers/media/platform/Kconfig              | 16 +---------------
 drivers/media/platform/rockchip/rga/Kconfig | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 15 deletions(-)
 create mode 100644 drivers/media/platform/rockchip/rga/Kconfig

diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index a423b16a466a..2d2942e5187c 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -65,6 +65,7 @@ source "drivers/media/platform/qcom/camss/Kconfig"
 source "drivers/media/platform/qcom/venus/Kconfig"
 
 source "drivers/media/platform/aspeed/Kconfig"
+source "drivers/media/platform/rockchip/rga/Kconfig"
 
 config VIDEO_MUX
 	tristate "Video Multiplexer"
@@ -294,21 +295,6 @@ config VIDEO_STM32_DMA2D
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
