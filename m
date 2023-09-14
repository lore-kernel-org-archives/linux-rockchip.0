Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A846EDE9BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 12:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O8d2KzN9OBKaEjJdugWnq633/HmLdXbBEjOxxHfVb2Q=; b=FS5iLyh4rruDfC
	5i8idzhKUg9BdWaXCQaSJ5Felv0lxfrHuCiBBYdBlP8sSeB75uW+SSWi0LgKPZWkJVBfm4UD0SAB4
	Mn2pZv3QeCxfTx+JjnXq7eLdMWeShB354pI9MC+roWCARbPzlrZalLCUe35Fzz59YERdQ39jRX14F
	jLhYAwehAY3RatMVPHn7CUI1HINxsTpTXLso/gGr/+LIjhMXFQU37PwIRY9QAl2vmXBsb2c7QWotL
	iwulC7qczEBDlKlHfup7Kl8ZJSJTNQSf6Ou3U4FtGXjSsOCmIDf+QoOD5g+qERsl1930bbNL+WsUF
	i4GgUaI+cndWYZ0iHugg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfH-008Lqx-1V;
	Thu, 14 Sep 2023 12:41:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglf5-008LeR-1G
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Sep 2023 12:41:37 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qglet-0008Mc-59; Thu, 14 Sep 2023 14:41:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 14 Sep 2023 14:40:39 +0200
Subject: [PATCH 07/13] media: rockchip: rga: use clamp() to clamp size to
 limits
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v1-7-abfd77260ae3@pengutronix.de>
References: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
In-Reply-To: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_054135_466572_AC1340BA 
X-CRM114-Status: GOOD (  10.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

The try_fmt should limit the width and height to the know limits of the
RGA. Use the clamp() helper instead of open coding the clamping.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 149deb1f1e03..49403498bc17 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -480,15 +480,10 @@ static int vidioc_try_fmt(struct file *file, void *prv, struct v4l2_format *f)
 
 	f->fmt.pix.field = V4L2_FIELD_NONE;
 
-	if (f->fmt.pix.width > MAX_WIDTH)
-		f->fmt.pix.width = MAX_WIDTH;
-	if (f->fmt.pix.height > MAX_HEIGHT)
-		f->fmt.pix.height = MAX_HEIGHT;
-
-	if (f->fmt.pix.width < MIN_WIDTH)
-		f->fmt.pix.width = MIN_WIDTH;
-	if (f->fmt.pix.height < MIN_HEIGHT)
-		f->fmt.pix.height = MIN_HEIGHT;
+	f->fmt.pix.width = clamp(f->fmt.pix.width,
+				 (u32)MIN_WIDTH, (u32)MAX_WIDTH);
+	f->fmt.pix.height = clamp(f->fmt.pix.height,
+				  (u32)MIN_HEIGHT, (u32)MAX_HEIGHT);
 
 	if (fmt->hw_format >= RGA_COLOR_FMT_YUV422SP)
 		f->fmt.pix.bytesperline = f->fmt.pix.width;

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
