Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652DEC433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D74D120797
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="F027CBOC";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="Qnp0FpXQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D74D120797
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DmY9fA/1t1W4LZYSa6BlnrKR3nhKh0G3kx2ydyjpdTs=; b=F027CBOCq49bY/uDn9GS3zAjS
	4fNql+iMTtBgdFpUUzKFy2EjEpQbNwcSZAyESD4rMi1oVoXRVYB9OQyh3plcr2qdil7V1UVR/9DAt
	NXYlWloyGnI5pmQ7r3scjIIGa35fhRgmzPBmWBg8MhUmDmYTUljk5lTj9onAQbYD9kafhTYe14KJc
	TAok3mK5C/eg0/3d0Lv5A5f54AivBplf2mbYkQhjzQxxKxE/MWG0MmblVl8f3ekVGyBD4xp0YpoK1
	wWIMPDWT72xxViFXNHJOwC/8hbAowfYcsYA2d71AqH16UApQ7mMfSr137lz7V8LHOUNf9XpGiOph5
	+FkSSN3tA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS5F5-00085f-ED; Mon, 12 Oct 2020 21:20:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS5F3-00083L-KJ
 for linux-rockchip@merlin.infradead.org; Mon, 12 Oct 2020 21:20:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=4ojtNSP1p/juBL5Jjm6E6cDIXElGQzbxOa4m6IsGVjw=; b=Qnp0FpXQ5fV++6traltKtpcyGy
 vcR2Zy2p9PBt3EgV2+k5a+lOn8ei6Wc3s4lgjdxMmsUjRsx9fbIlSZFA8XFflZb5rjodqNakv1N4g
 kjOyR8P4uBwh49WDteadX19hsH2Zq2qIKxtOf9Ggtnfhd4f11zvljuD3OLtUXFitLtqrau5rQvbgj
 fq92vKcavdsZQU2ItpbcxKae3//dvbWWRy/kKl8fbm3+1p7J+qUatT0ImUtVD1S4CFf/r0L6aEJnE
 CE1XFkPJHgqBQlOjgO8tniG3YREWs+dXNSaI+DWBLlY+mp7eWVYwALzSmshMCbPyPaTLZvlB38YeP
 Z1aW/KaQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uR-0004lc-A2
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 25FF71F44C53
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 14/18] media: hantro: make PP enablement logic a bit smarter
Date: Mon, 12 Oct 2020 23:59:53 +0300
Message-Id: <20201012205957.889185-15-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_215908_431928_14285062 
X-CRM114-Status: GOOD (  14.45  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 kuhanh.murugasen.krishnan@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Now that we support two cores with different PP operations we need
to make the condition to enable PP a bit smarter based on what is
actually supported by each core.

While doing this also move the needs_postproc() test inside the
postproc .c file instead of cluttering the header.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/hantro.h         | 10 ++-----
 .../staging/media/hantro/hantro_postproc.c    | 29 +++++++++++++++++++
 2 files changed, 32 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 2d507f8d3a1d..05e59bc83b71 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -393,6 +393,9 @@ static inline void hantro_reg_write_s(struct hantro_dev *vpu,
 	vdpu_write(vpu, vdpu_read_mask(vpu, reg, val), reg->base);
 }
 
+bool hantro_needs_postproc(const struct hantro_ctx *ctx,
+			   const struct hantro_fmt *fmt);
+
 void *hantro_get_ctrl(struct hantro_ctx *ctx, u32 id);
 dma_addr_t hantro_get_ref(struct hantro_ctx *ctx, u64 ts);
 
@@ -408,13 +411,6 @@ hantro_get_dst_buf(struct hantro_ctx *ctx)
 	return v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 }
 
-static inline bool
-hantro_needs_postproc(const struct hantro_ctx *ctx,
-		      const struct hantro_fmt *fmt)
-{
-	return !ctx->is_encoder && fmt->fourcc != V4L2_PIX_FMT_NV12;
-}
-
 static inline dma_addr_t
 hantro_get_dec_buf_addr(struct hantro_ctx *ctx, struct vb2_buffer *vb)
 {
diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index a6b3e243dc39..653bae37eed9 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -22,6 +22,35 @@
 
 #define VC8000D_PP_OUT_NV12		0x0
 
+bool hantro_needs_postproc(const struct hantro_ctx *ctx,
+			   const struct hantro_fmt *fmt)
+{
+	bool ret = false;
+
+	/* postproc is only available for decoders */
+	if (ctx->is_encoder)
+		return false;
+
+	switch (ctx->dev->core_hw_dec_rev) {
+	case HANTRO_G1_REV:
+		/*
+		 * for now the G1 PP is only used for NV12 -> YUYV conversion
+		 * so if the dst format is already NV12 we don't need it
+		 */
+		ret = fmt->fourcc != V4L2_PIX_FMT_NV12;
+		break;
+	case HANTRO_VC8000_REV:
+		/*
+		 * for now the VC8000D PP is only used to de-tile 4x4 NV12, so
+		 * enabling it for something else doesn't make sense.
+		 */
+		ret = fmt->fourcc == V4L2_PIX_FMT_NV12;
+		break;
+	}
+
+	return ret;
+}
+
 void hantro_postproc_enable(struct hantro_ctx *ctx)
 {
 	struct hantro_regmap_fields_dec *fields = ctx->dev->reg_fields_dec;
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
