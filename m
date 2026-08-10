Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46419C5AD7B
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 15:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehRwG/as9K7jFyJlld6e5W6SBZHFVHIgQDJfIjN3dgQ=; b=BgCpNiXvMC6mN2
	bIdHED/CdLGynKgo8O2LmErK3xQN8yi4Y1g/B54GyltaO5RXlNpy/b+NATFxVxy2dP4Y+RkMM5maR
	XXL3+eOImBaTg1Ql8vQriyDwWZc2DDqg4dnoMpQKHiwxgL7526ByV5BUNJFuZI8ZsFlckhLvoXN1r
	znO/ERNRbVT7V1Xi1jPdZf4uE9gn4cR8atJhP25NpoUw9fN3HT75J0Z+CC2lbhg6cBLN3POUxydvC
	iKctqnKYzT4aacv/dr9dvrKIFF/Nw/YoN/Fggm6rryOa1ivZjUw928ouf+vvy7b3kaSGMdS3ScMHq
	BuiT/dLl4Ftn+nzTlRHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtRpj-0000000CDUC-0Ix5;
	Mon, 10 Aug 2026 15:22:35 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtRpc-0000000CDJo-0Xid;
	Mon, 10 Aug 2026 15:22:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786375344;
	bh=HzMa2TTTRJC/kAywH5NeQSXaEXmOU6CGDcW/QAwpxFc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=M5e99HWylpG40RkL06JrSwYDxRNs/1/5J0ycDw3+7Qp4D2IvfiPhsxcsBU3ZTaz6m
	 Yn94hdayDeeVmVRSE7P1QJmuZJlazLBEKTgGAJXTEBTRlnQ0vVFSCxuMn4PTTNZ6LI
	 wn9nAwSXROAOCMac/vK8cnIJtNE5BmonT5f1+gPh6g8uX+ppDptf4MbCP81Jn/9Ogp
	 e9tY0YHVXc6lEF2ytpkNTsUbdCRnaZyecP73esfsLp5QQ/Zz3C3DiEkmSVQ8bF6sVx
	 rOSjzUT3K8HjdTf+CSXD7aq0GmEkuMkfHNDBAz33yOJs1ZJnuQ+qarcyOAqJtQWDLA
	 iH54CYCoOkFtg==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3D72317E0899;
	Mon, 10 Aug 2026 17:22:23 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
Date: Mon, 10 Aug 2026 11:22:12 -0400
Subject: [PATCH v2 2/5] media: rkvdec: Remove unused need_reset
MIME-Version: 1.0
Message-Id: <20260810-rkvdec-multicore-v2-2-986f89d22cdc@collabora.com>
References: <20260810-rkvdec-multicore-v2-0-986f89d22cdc@collabora.com>
In-Reply-To: <20260810-rkvdec-multicore-v2-0-986f89d22cdc@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Hans Verkuil <hverkuil+cisco@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 kernel@collabora.com, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_082228_327190_EA23C1EA 
X-CRM114-Status: GOOD (  10.82  )
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

A left-over from the iommu restore mecanism was forgotten.
As need_reset is never set to true, the if has no use.

The actual restore function is called above it vase the IRQ isn't in a
success status.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/media/platform/rockchip/rkvdec/rkvdec.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index 31ddfcc58894..db2731af06cf 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -1462,7 +1462,6 @@ static irqreturn_t vdpu381_irq_handler(struct rkvdec_ctx *ctx)
 {
 	struct rkvdec_dev *rkvdec = ctx->dev;
 	enum vb2_buffer_state state;
-	bool need_reset = 0;
 	u32 status;
 
 	status = readl(rkvdec->regs + VDPU381_REG_STA_INT);
@@ -1478,9 +1477,6 @@ static irqreturn_t vdpu381_irq_handler(struct rkvdec_ctx *ctx)
 			rkvdec_iommu_restore(rkvdec);
 	}
 
-	if (need_reset)
-		rkvdec_iommu_restore(rkvdec);
-
 	if (cancel_delayed_work(&rkvdec->watchdog_work))
 		rkvdec_job_finish(ctx, state);
 
@@ -1491,7 +1487,6 @@ static irqreturn_t vdpu383_irq_handler(struct rkvdec_ctx *ctx)
 {
 	struct rkvdec_dev *rkvdec = ctx->dev;
 	enum vb2_buffer_state state;
-	bool need_reset = 0;
 	u32 status;
 
 	status = readl(rkvdec->link + VDPU383_LINK_STA_INT);
@@ -1507,9 +1502,6 @@ static irqreturn_t vdpu383_irq_handler(struct rkvdec_ctx *ctx)
 		rkvdec_iommu_restore(rkvdec);
 	}
 
-	if (need_reset)
-		rkvdec_iommu_restore(rkvdec);
-
 	if (cancel_delayed_work(&rkvdec->watchdog_work))
 		rkvdec_job_finish(ctx, state);
 

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
