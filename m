Return-Path: <SRS0=mUlv=I3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DATE_IN_PAST_03_06,
	DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CACAC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Mar 2021 18:09:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 920FA61929
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Mar 2021 18:09:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 920FA61929
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U8cv6UzCh1plwJajLelKYAKpCAZUEijJC7m0IfJakwQ=; b=DMT10OijLJqBNMW0jjpS4PMG7
	Z/OmGwC8Jtk71I/3Aa74ftrQCx1bNbGqkOdwYQYNm4Owa8PurlFmqS9urnk4WXGF5hN2cXUGHdZBG
	dAunC92WQLGB2EP4eMm8wsP9hpZbP00Va8bCKOXTyCvXD4Q3bI9CiLQo0IByHRSqFZTn427Rwb8wH
	g6ApIaNdVcS8a+6UrSrpKi+o9QgdfdqF378OmJ6AZu4usaLfjHbqSNnnZKKa9S0Cfw7QNc3mBi8YM
	y4FaJO2UcxwPR6JKymFTPe1SjI6UmgxhPHKX2bfQF1uKEJGQh8Y6Tc8qr+z3AMurXVf+ACnmCGEsH
	7chW1y/OQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lQwKY-000zUw-95; Mon, 29 Mar 2021 18:09:38 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQpDO-000aOs-0h; Mon, 29 Mar 2021 10:33:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 92C761F45B94
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v7 08/13] media: hantro: Only use postproc when post processed
 formats are defined
Date: Mon, 29 Mar 2021 08:57:38 +0200
Message-Id: <20210329065743.11961-9-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210329065743.11961-1-benjamin.gaignard@collabora.com>
References: <20210329065743.11961-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_113346_189935_70F01EF1 
X-CRM114-Status: GOOD (  12.38  )
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

If the variant doesn't offert postprocessed formats make sure it will
be ok.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/hantro.h          |  8 ++------
 drivers/staging/media/hantro/hantro_postproc.c | 14 ++++++++++++++
 drivers/staging/media/hantro/hantro_v4l2.c     |  4 +++-
 3 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index edb4561a6887..7a5ad93466c8 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -414,12 +414,8 @@ hantro_get_dst_buf(struct hantro_ctx *ctx)
 	return v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 }
 
-static inline bool
-hantro_needs_postproc(const struct hantro_ctx *ctx,
-		      const struct hantro_fmt *fmt)
-{
-	return !ctx->is_encoder && fmt->fourcc != V4L2_PIX_FMT_NV12;
-}
+bool hantro_needs_postproc(const struct hantro_ctx *ctx,
+			   const struct hantro_fmt *fmt);
 
 static inline dma_addr_t
 hantro_get_dec_buf_addr(struct hantro_ctx *ctx, struct vb2_buffer *vb)
diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 6d2a8f2a8f0b..ed8916c950a4 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -50,6 +50,20 @@ const struct hantro_postproc_regs hantro_g1_postproc_regs = {
 	.display_width = {G1_REG_PP_DISPLAY_WIDTH, 0, 0xfff},
 };
 
+bool hantro_needs_postproc(const struct hantro_ctx *ctx,
+			   const struct hantro_fmt *fmt)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	if (ctx->is_encoder)
+		return false;
+
+	if (!vpu->variant->postproc_fmts)
+		return false;
+
+	return fmt->fourcc != V4L2_PIX_FMT_NV12;
+}
+
 void hantro_postproc_enable(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 1bc118e375a1..77d7fe62ce81 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -55,7 +55,9 @@ static const struct hantro_fmt *
 hantro_get_postproc_formats(const struct hantro_ctx *ctx,
 			    unsigned int *num_fmts)
 {
-	if (ctx->is_encoder) {
+	struct hantro_dev *vpu = ctx->dev;
+
+	if (ctx->is_encoder || !vpu->variant->postproc_fmts) {
 		*num_fmts = 0;
 		return NULL;
 	}
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
