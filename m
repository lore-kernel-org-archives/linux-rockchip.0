Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC5F6C7EE26
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 09:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oK2FokLDnDsK33YAm1G/GW1SgHBYrGqsXmdrIypom0U=; b=UNpglxtGaEKvNT
	7fuSyg6B0Vg30YoJbkZ4ywwynanZaQdMmUKg+V79YDhE3wXW6Y4093bJ0LU89Z3UwhQHKLn0y2jQ3
	73g3bGdLmC9P9iqYzcDMOZZSx4yxx/gXAV5rv+4PwpUl/gZNhPIuBphyX9e1LMQx6ZB+CUQKVqKVu
	jyCBqCbOyuompZImAcBDgLWbNH55B5Aq4V1lj8UgQFi69Nc423bu6yzx34Z5Q4RrOFD1FjQL3r3q2
	OQT7CdVGY1MxApNjRUd9nRbuxaUvCoB3D+3kIWkZ51B7XkygvSHCBCnglq54g9VkMriWPlbm30Kc4
	7yU3u7QrM6oo5f6E4jiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Nvg-009Xsl-1d;
	Tue, 23 May 2023 09:03:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Nve-009XqP-0F
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 09:03:39 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1q1NvI-0001oU-3j; Tue, 23 May 2023 11:03:16 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: jacob-chen@iotwrt.com,
	ezequiel@vanguardiasur.com.ar,
	mchehab@kernel.org,
	heiko@sntech.de
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de,
	m.tretter@pengutronix.de
Subject: [PATCH] media: rockchip: rga: use v4l2_m2m_buf_copy_metadata
Date: Tue, 23 May 2023 11:03:09 +0200
Message-Id: <20230523090309.3323983-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_020338_109790_438B0249 
X-CRM114-Status: UNSURE (   8.85  )
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

The v4l2_m2m_buf_copy_metadata function correctly copies the metadata of
the buffer. Use that function instead of open-coding the metadata copy.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 67dcf22e5ba3..e4b8ce9ab3c6 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -76,10 +76,7 @@ static irqreturn_t rga_isr(int irq, void *prv)
 		WARN_ON(!src);
 		WARN_ON(!dst);
 
-		dst->timecode = src->timecode;
-		dst->vb2_buf.timestamp = src->vb2_buf.timestamp;
-		dst->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
-		dst->flags |= src->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
+		v4l2_m2m_buf_copy_metadata(src, dst, true);
 
 		v4l2_m2m_buf_done(src, VB2_BUF_STATE_DONE);
 		v4l2_m2m_buf_done(dst, VB2_BUF_STATE_DONE);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
