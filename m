Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67100E9537B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 11:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmT3Bp9b6ID3fcgVN9dUaCTSgEDhHoa3tGHkMqEOln4=; b=eJXdOA0jCzbbgg
	snikXQZVD2nAAi/rqCc31WWlnOD+IdpX6cVGQjDDzyjLA+OyIjgKwTRVVFVH6janWmt0104gE79DA
	SZQymPnM2qOKHeBp8EdURThKen49NDFqoz6A1L0aZapDI1Irk3EoIJT8LTxuQhF6TXTddnk8rlUtV
	IMoUMTEdZjC5GkBO/N/jz6IcaxJxMF0sbNei3xLLeev/bN9S7y+JOGpyqqD/VuKemwfTRnzUzjqbP
	UqgZhlAoL6Jt0jvAZIUgfVrUmKgdPGP1uqV4efx/D4T7vR1kyooUB1TUFpz1v978NzQbshyPGP6Gs
	0QLksU8p1L9EI3kQSjdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnb0e-00000008M6B-0Ig4;
	Wed, 04 Feb 2026 11:25:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnb0a-00000008M0W-2Kkw;
	Wed, 04 Feb 2026 11:25:21 +0000
Received: from t16.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8580013CA;
	Wed,  4 Feb 2026 12:24:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1770204277;
	bh=UusNAsGsuADFh1LH6Jjf0gCE90ONPblIBTQZe3RyvTY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pYTgLfH4dCqrkwTHh3DyTlB/tVpX+dr3Bj6rgebnkyOdUQg9ljmR6905Ya0RlILki
	 7qwVR4wA2Liz1HfhBSL4WxU2krZd9hBbY2O1bPNJER5m93VuXDz8BMiPEd5REw0a57
	 b8J+P8fnFPQ7fjbWvkxL9ahytugVAVLKdH4SRWEc=
From: Isaac Scott <isaac.scott@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: dafna@fastmail.com,
	laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Isaac Scott <isaac.scott@ideasonboard.com>
Subject: [PATCH v1 5/6] media: rkisp1: Give buffers back instead of dropping in bypass mode
Date: Wed,  4 Feb 2026 11:25:05 +0000
Message-ID: <20260204112506.3706049-6-isaac.scott@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204112506.3706049-1-isaac.scott@ideasonboard.com>
References: <20260204112506.3706049-1-isaac.scott@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_032520_737312_619E181B 
X-CRM114-Status: GOOD (  12.32  )
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

In the data mode used for YUV passthrough, falling VSYNC events are used
to determine when a buffer is complete. This means there is no 'Frame
End' signal.

Previously, all buffers would be dropped when bypass mode was active.
Instead of dropping every frame, we should return the buffer to user
space if it is marked as complete by a falling VSYNC signal.

Signed-off-by: Isaac Scott <isaac.scott@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 867cdddf9f89..2753be39ab33 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -832,6 +832,11 @@ irqreturn_t rkisp1_capture_isr(int irq, void *ctx)
 	for (i = 0; i < dev_count; ++i) {
 		struct rkisp1_capture *cap = &rkisp1->capture_devs[i];
 
+		if (rkisp1->in_bypass) {
+			rkisp1_handle_buffer(cap);
+			continue;
+		}
+
 		if (!(status & RKISP1_CIF_MI_FRAME(cap)))
 			continue;
 		if (!cap->is_stopping) {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
