Return-Path: <SRS0=sEzw=ML=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0209EC07E95
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 14:38:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC1D4610FB
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 14:38:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC1D4610FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNevn4Vh+gTvOQYKrXvgTviDp5FKlVdV/aF8QE7pKWc=; b=cTEZ92jPY9VTgW
	bP7UqKlDWLfmi1jW6YV9g+zXcl9mC4SKCvvsRpkevQkun7R9ahf4WzwJWIx9t4KJU5I9tvK+wIu1a
	XwBLMJUEocT+A993N2gd51TGWBDG9f7fWOLxBEjxPp7+AbhLf4b2Lzv6A0qhfaCYT9nWjegXWXhYE
	D/z8NSIF8LK8/x13XifPa8CKJ6HX2294fbZAPEWjVK0hAlzihT2dN1JHBiiUQcW5F6ZQjy47Bq9kK
	cN2Ki2q7QjofLZ/hLtwlS0Glv3E6O80gx+dfYhpy3Wbo01kOhxkSDATOX8H6FUlC5iHRXbZEg7xyJ
	EboHXx7AAFGF+7wdGrHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5UPp-009ukc-Qx; Mon, 19 Jul 2021 14:38:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5UPA-009uRN-9d
 for linux-rockchip@lists.infradead.org; Mon, 19 Jul 2021 14:38:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id B9D061F42C35
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>,
 Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
 maccraft123mc@gmail.com, Chris Healy <cphealy@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: [PATCH RESEND v2 05/10] media: hantro: h264: Move reference picture
 number to a helper
Date: Mon, 19 Jul 2021 11:37:06 -0300
Message-Id: <20210719143711.55749-6-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210719143711.55749-1-ezequiel@collabora.com>
References: <20210719143711.55749-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210719_073800_511225_06B3A06D 
X-CRM114-Status: GOOD (  13.50  )
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

Add a hantro_h264_get_ref_nbr() helper function to get the reference
picture numbers. This will be used by the Rockchip VDPU2 H.264 driver.

This idea was originally proposed by Jonas Karlman in
"[RFC 09/12] media: hantro: Refactor G1 H264 code"
posted a while ago.

Link: https://lore.kernel.org/linux-media/HE1PR06MB401165F2BA0AD8A634FDFAF2ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com/
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Tested-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/staging/media/hantro/hantro_g1_h264_dec.c | 14 ++------------
 drivers/staging/media/hantro/hantro_h264.c        | 11 +++++++++++
 drivers/staging/media/hantro/hantro_hw.h          |  2 ++
 3 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
index 6faacfc44c7c..236ce24ca00c 100644
--- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -126,7 +126,6 @@ static void set_params(struct hantro_ctx *ctx, struct vb2_v4l2_buffer *src_buf)
 
 static void set_ref(struct hantro_ctx *ctx)
 {
-	struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
 	const u8 *b0_reflist, *b1_reflist, *p_reflist;
 	struct hantro_dev *vpu = ctx->dev;
 	int reg_num;
@@ -143,17 +142,8 @@ static void set_ref(struct hantro_ctx *ctx)
 	 * subsequential reference pictures.
 	 */
 	for (i = 0; i < HANTRO_H264_DPB_SIZE; i += 2) {
-		reg = 0;
-		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
-			reg |= G1_REG_REF_PIC_REFER0_NBR(dpb[i].pic_num);
-		else
-			reg |= G1_REG_REF_PIC_REFER0_NBR(dpb[i].frame_num);
-
-		if (dpb[i + 1].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
-			reg |= G1_REG_REF_PIC_REFER1_NBR(dpb[i + 1].pic_num);
-		else
-			reg |= G1_REG_REF_PIC_REFER1_NBR(dpb[i + 1].frame_num);
-
+		reg = G1_REG_REF_PIC_REFER0_NBR(hantro_h264_get_ref_nbr(ctx, i)) |
+		      G1_REG_REF_PIC_REFER1_NBR(hantro_h264_get_ref_nbr(ctx, i + 1));
 		vdpu_write_relaxed(vpu, reg, G1_REG_REF_PIC(i / 2));
 	}
 
diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
index 6d72136760e7..0b4d2491be3b 100644
--- a/drivers/staging/media/hantro/hantro_h264.c
+++ b/drivers/staging/media/hantro/hantro_h264.c
@@ -348,6 +348,17 @@ dma_addr_t hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
 	return dma_addr;
 }
 
+u16 hantro_h264_get_ref_nbr(struct hantro_ctx *ctx, unsigned int dpb_idx)
+{
+	const struct v4l2_h264_dpb_entry *dpb = &ctx->h264_dec.dpb[dpb_idx];
+
+	if (!(dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
+		return 0;
+	if (dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
+		return dpb->pic_num;
+	return dpb->frame_num;
+}
+
 int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx)
 {
 	struct hantro_h264_dec_hw_ctx *h264_ctx = &ctx->h264_dec;
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index ce678fedaad6..7a8048afe357 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -238,6 +238,8 @@ void hantro_jpeg_enc_done(struct hantro_ctx *ctx);
 
 dma_addr_t hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
 				   unsigned int dpb_idx);
+u16 hantro_h264_get_ref_nbr(struct hantro_ctx *ctx,
+			    unsigned int dpb_idx);
 int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx);
 int hantro_g1_h264_dec_run(struct hantro_ctx *ctx);
 int hantro_h264_dec_init(struct hantro_ctx *ctx);
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
