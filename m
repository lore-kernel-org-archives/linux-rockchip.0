Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4313BC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGZiMcRgvQAJjLXN9FXOEkb68FSF2YUP+E356kCJQxc=; b=YxXVctukZ1LPR2
	vLrYpgriqqQqaV+I8ZoFiM/0TkBliu5spFHX0HOYqQfolzo8lxuab/YogcUWipryrF/PA/Ef0gBYW
	Jk4GExKFtZ9+mwMC3eT1LBjPOQZeJBsaiscDX9XiIY0EAZ50G247a9Jw5QvDmuwSEbmQNw/ede8If
	PZ3m1hsYj9AvlItxopOGRuDKWJqBK4LNquFcch5VAXFzOLoZ/YTmyMwBWUK9j6pVE7wdg8X2tm2dL
	EO0CdWWfQ8mjG4YQmHZLC3ptM1Jjjzb6GXCFtcc+yEnJrZIvu3gru3zKPZ/bSFIfY5EYaqq4w6qaH
	PQnUd0ukD6WoYm/AiBgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73HP-0021RG-1p; Thu, 30 Jun 2022 23:08:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73H3-0020qi-6C
	for linux-rockchip@bombadil.infradead.org; Thu, 30 Jun 2022 23:08:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RooSJwKpGwiARlRlHYotg68PVR5C4wNkl1/mA58mFt8=; b=XaaLYUXgwizAcNsLb0yiEdoc72
	lVsuJOaOO88dq8+s3m14cauFR5TY6LArFHD7K0XR22Fh6vvdVU1yaNNFMitJrFIbrCpBeCtoY01KZ
	JsMm3E6BtfeY3Pr3CwAY3fNoRqZWWZt3m2RxE4bsY7kr6YB4APNF2720/qoS1HJwVk3RhNY00vIRS
	8CMRncbqRyNYj4yhKrGl35h4IyCneqVZQie2yeH82+aqqRvA3hkwubBXmy6JMM4uXdcGmjihayyLT
	rS+W1nIQTLckbka1rWZXy65Tg8RZLX09dYqFQMRZg6sQpxUyedQ3kzgwCwzmZSfOJINmlHZ3HoELL
	rLmbuBzQ==;
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Gl-00FRLk-Q9
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:30 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BEA522A64;
	Fri,  1 Jul 2022 01:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630492;
	bh=doPUXHLA66Bs7hvAA6kqF0tvyd3czoKG6rpJmV2hz8I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lWlDUUaBm+3c6QXqJepMsERBWCoMRoGDn7ApUEe5m7UYOLkh7m7XUJwDeguCDzRWQ
	 xF2nYd/6iellXZc4DjM/lVqq606UZf1H92Y4P+Xl4ZMphRTXN6AwoegsUZFYH3h2s+
	 EkAuRIsg3qL7YwSCrEVA6jJT9pIa4cFEwc63QYi0=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 53/55] media: rkisp1: Shift DMA buffer addresses on i.MX8MP
Date: Fri,  1 Jul 2022 02:07:11 +0300
Message-Id: <20220630230713.10580-54-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_000822_926482_47DB19E9 
X-CRM114-Status: GOOD (  12.74  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

On the ISP that is integrated in the i.MX8MP, DMA addresses have been
extended to 34 bits, with the 32 MSBs stored in the DMA address
registers and the 2 LSBs set to 0. Shift the buffer addresses right by 2
on that platform.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 19 +++++++++++--------
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  1 +
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  3 ++-
 3 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 3c1ade601bf4..a4b88947a621 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -624,6 +624,9 @@ static void rkisp1_dummy_buf_destroy(struct rkisp1_capture *cap)
 
 static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
 {
+	u8 shift = cap->rkisp1->info->features & RKISP1_FEATURE_DMA_34BIT ?
+		   2 : 0;
+
 	cap->buf.curr = cap->buf.next;
 	cap->buf.next = NULL;
 
@@ -636,7 +639,7 @@ static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
 		buff_addr = cap->buf.next->buff_addr;
 
 		rkisp1_write(cap->rkisp1, cap->config->mi.y_base_ad_init,
-			     buff_addr[RKISP1_PLANE_Y]);
+			     buff_addr[RKISP1_PLANE_Y] >> shift);
 		/*
 		 * In order to support grey format we capture
 		 * YUV422 planar format from the camera and
@@ -645,17 +648,17 @@ static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
 		if (cap->pix.cfg->fourcc == V4L2_PIX_FMT_GREY) {
 			rkisp1_write(cap->rkisp1,
 				     cap->config->mi.cb_base_ad_init,
-				     cap->buf.dummy.dma_addr);
+				     cap->buf.dummy.dma_addr >> shift);
 			rkisp1_write(cap->rkisp1,
 				     cap->config->mi.cr_base_ad_init,
-				     cap->buf.dummy.dma_addr);
+				     cap->buf.dummy.dma_addr >> shift);
 		} else {
 			rkisp1_write(cap->rkisp1,
 				     cap->config->mi.cb_base_ad_init,
-				     buff_addr[RKISP1_PLANE_CB]);
+				     buff_addr[RKISP1_PLANE_CB] >> shift);
 			rkisp1_write(cap->rkisp1,
 				     cap->config->mi.cr_base_ad_init,
-				     buff_addr[RKISP1_PLANE_CR]);
+				     buff_addr[RKISP1_PLANE_CR] >> shift);
 		}
 	} else {
 		/*
@@ -663,11 +666,11 @@ static void rkisp1_set_next_buf(struct rkisp1_capture *cap)
 		 * throw data if there is no available buffer.
 		 */
 		rkisp1_write(cap->rkisp1, cap->config->mi.y_base_ad_init,
-			     cap->buf.dummy.dma_addr);
+			     cap->buf.dummy.dma_addr >> shift);
 		rkisp1_write(cap->rkisp1, cap->config->mi.cb_base_ad_init,
-			     cap->buf.dummy.dma_addr);
+			     cap->buf.dummy.dma_addr >> shift);
 		rkisp1_write(cap->rkisp1, cap->config->mi.cr_base_ad_init,
-			     cap->buf.dummy.dma_addr);
+			     cap->buf.dummy.dma_addr >> shift);
 	}
 
 	/* Set plane offsets */
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 6ce92b5fd465..3723aa415a16 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -113,6 +113,7 @@ enum rkisp1_feature {
 	RKISP1_FEATURE_DUAL_CROP = BIT(1),
 	RKISP1_FEATURE_RSZ_CROP = BIT(2),
 	RKISP1_FEATURE_MAIN_STRIDE = BIT(3),
+	RKISP1_FEATURE_DMA_34BIT = BIT(4),
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index a9c93191020f..345d3f490f8f 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -516,7 +516,8 @@ static const struct rkisp1_info imx8mp_isp_info = {
 	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
 	.isp_ver = IMX8MP_V10,
 	.features = RKISP1_FEATURE_RSZ_CROP
-		  | RKISP1_FEATURE_MAIN_STRIDE,
+		  | RKISP1_FEATURE_MAIN_STRIDE
+		  | RKISP1_FEATURE_DMA_34BIT,
 };
 
 static const struct of_device_id rkisp1_of_match[] = {
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
