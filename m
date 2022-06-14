Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F346AC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kw/ogvaTw1k2o+r2Ozd7Pphw4b6JOsosckRFdQ1v/0Y=; b=f6JrCS4EWOCz7t
	3QWvbZxgsXVSv1OsakMjk7VKKXsfklCH1cDWA9Bm+V/e4Fi4qrlyzDdDDHwo6szFB4X/b3XNDoWLt
	legBVwg6mreIejyOgPTfMkmytE5ER7SdhVdMZqkJbM4fAdk9VtFS/qJGpD5hBPcOvJGmhRxdDUNFp
	cYUPwwFdDm2JaVCOqIxMnogtyFuLv2Y2BJjRc4DPWYOfppJ7PQrR2Za42cnOpOF9QiEfXbXw7SyIG
	0pk9T9dDOPcJSb+mOUdHS0/jwzz36+Ze27+gAkDOiIn1l/Qw8RFKcy+QrZnsIZA19sPThOTiwxshn
	kroEk6bivfhXcV/eipKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzK-00Auik-5Q; Tue, 14 Jun 2022 19:14:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzG-00AueG-Kc
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:14:04 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CEE6E825;
	Tue, 14 Jun 2022 21:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234041;
	bh=wr50jMmPTcrTYRpC1bC0bf83xxKPsRG6ZsJ7EZ3lTdQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bcexBvJWPuSJI6jlSOTSnEn0NFxh/mS1vX5nI9A2Alvn0ly3ZNE4Faoy29g9eIu2M
	 OgOpiAkLKIvfYDbNn/M5I2oh7gdehEp0r/+hYKKX1Jwy31ncLVEYYmJ/tJ5xnJTZ31
	 vlCmegAGPs24p9ULV/U8yUb7A6jOBlq0Y914Rayk=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 33/55] media: rkisp1: isp: Initialize some variables at declaration time
Date: Wed, 15 Jun 2022 04:11:05 +0900
Message-Id: <20220614191127.3420492-34-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121402_873582_9485B32A 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Intialize the src_fmt and sink_fmt variable when declaring them in
rkisp1_config_isp().

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 4496af991c82..bf44f10200f5 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -142,12 +142,11 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 {
 	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, acq_prop = 0;
-	const struct rkisp1_mbus_info *src_fmt, *sink_fmt;
+	const struct rkisp1_mbus_info *sink_fmt = isp->sink_fmt;
+	const struct rkisp1_mbus_info *src_fmt = isp->src_fmt;
 	struct v4l2_mbus_framefmt *sink_frm;
 	struct v4l2_rect *sink_crop;
 
-	sink_fmt = isp->sink_fmt;
-	src_fmt = isp->src_fmt;
 	sink_frm = rkisp1_isp_get_pad_fmt(isp, NULL,
 					  RKISP1_ISP_PAD_SINK_VIDEO,
 					  V4L2_SUBDEV_FORMAT_ACTIVE);
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
