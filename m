Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8AAFC677F1
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 12:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYGLaIpYedmgO4H8R3Dy5ehqbX81kV+9dK44cxx+V2w=; b=fyDpJZ48vuw8LO
	ChfjXOYINAufDZPOjQLpQM3b/HSHFT92bsdh8eRkWKv462XQa+t7K52xcN0Yn69c37KZie+IarEDL
	nOZw2qRkmXkBUHAJh32mdnYQN7u7z+VzTdvcWSMZ/xl+VtjEbdy/QpDAP1B8JKJKb/smR5eUUiyOX
	897wN89etvJvimIin5OhAUChkGU8YqLUm2YgNf3M6bUerLPqXANLKoumUR4pQwswe7bwqfPe+bXR5
	xpTBvc4vn9IDBGCuuB97QkUsQw8/Wg9dzsxleow65ch29nA48ccXKtoBk45oVOvP97b9XXb1uDBUP
	tI/cMzyB76/Vz2E8n3VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx8d-00F448-US; Thu, 12 Jan 2023 12:57:00 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx8Z-00F3zS-PK
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 12:56:57 +0000
Received: from localhost (89-26-75-29.goll.dyn.salzburg-online.at [89.26.75.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 71D096602DB1;
	Thu, 12 Jan 2023 12:56:54 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673528214;
	bh=NR4NgmAwqSKt432W3wHLkNsbDlb7Ku6yU6hoKm5PFhw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=iFWWVGd0PM+MpyqfisZJ8ZATeRpN9ueRYPloz+zab6riogtw9/H/jMvGclFgaXL27
	 Iecy/xV1AUO4NhXd2HknaBrbA0KNS+e4fS8zCri1Gh8xW2Nod13mZ+LxeV5n8F5yjc
	 +cURbe6rY59CdaVeW9cYcNKzo9bRGgp7M0wXHO+aM/vRP9rOQbnS+mBCiM8vilslz/
	 G93/nO79P39GLfJEMTbEWrRV42SsXRH753uhUx1YgS5OC67wi014XyGjHPU2+rin1H
	 7X5xq9KghhFbMBukRC+/7069InJwB7ymRkR6URNI299eTDzRWoAjRSU5t8Ca41MoFF
	 wfWWZlcj7oERg==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Thu, 12 Jan 2023 13:56:23 +0100
Subject:  [PATCH v2 08/12] staging: media: rkvdec: Add a valid SPS check as a callback
MIME-Version: 1.0
Message-Id: <20230101-patch-series-v2-6-2-rc1-v2-8-fa1897efac14@collabora.com>
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
In-Reply-To:  <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel-domain <kernel@collabora.com>,
 Robert Beckett <bob.beckett@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>
X-Mailer: b4 0.11.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1673528186; l=3157;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=NR4NgmAwqSKt432W3wHLkNsbDlb7Ku6yU6hoKm5PFhw=;
 b=IQDkaNXJm1EiGyDmWoVKY4f+RD7CQ6A9pSeRltErtvX0pqcjW0RWXs2BZkhZonGnlhJ66v4IbQHv
 T3KBCKDWAP+0YbahHXPuYtABeVBdfI70Rp3wIpLpoKQRRGG5TI/Z
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_045656_202932_205F30B6 
X-CRM114-Status: GOOD (  18.43  )
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

Add a callback for each codec variant, that ensures that a given format
is compatible with the SPS that is stored in the context of the
instance.
This is used for two scenarios:
- New output queue format is set, which is incompatible with the
  currently stored SPS
- Start streaming is called but the SPS doesn't match the current format
  anymore

Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 35 +++++++++++++++++++++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec.h |  1 +
 2 files changed, 36 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index e8c750a7343a..8d948bcc4e46 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -52,6 +52,26 @@ static int rkvdec_get_valid_fmt(struct rkvdec_ctx *ctx)
 	return ctx->coded_fmt_desc->decoded_fmts[0];
 }
 
+static int rkvdec_sps_check(struct rkvdec_ctx *ctx, struct v4l2_pix_format_mplane *pix_mp)
+{
+	const struct rkvdec_coded_fmt_desc *coded_desc = ctx->coded_fmt_desc;
+
+	/*
+	 * When a codec doesn't implement the SPS check, handle it as if no
+	 * SPS exists for the codec.
+	 */
+	if (coded_desc->ops->sps_check) {
+		if (!ctx->sps)
+			return -EINVAL;
+
+		if (!pix_mp)
+			pix_mp = &ctx->decoded_fmt.fmt.pix_mp;
+		return coded_desc->ops->sps_check(ctx, ctx->sps, pix_mp);
+	}
+
+	return 0;
+}
+
 static int rkvdec_get_sps_attributes(struct rkvdec_ctx *ctx, void *sps,
 				     struct sps_attributes *attributes)
 {
@@ -375,6 +395,13 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
 	struct vb2_queue *vq;
 	int ret;
 
+	/*
+	 * When the new output format doesn't match the existing SPS stored in
+	 * the context, then the SPS needs to be reset by user-space.
+	 */
+	if (rkvdec_sps_check(ctx, &f->fmt.pix_mp) < 0)
+		ctx->sps = NULL;
+
 	/*
 	 * In order to support dynamic resolution change, the decoder admits
 	 * a resolution change, as long as the pixelformat remains. Can't be
@@ -603,6 +630,14 @@ static int rkvdec_start_streaming(struct vb2_queue *q, unsigned int count)
 	if (V4L2_TYPE_IS_CAPTURE(q->type))
 		return 0;
 
+	/*
+	 * An incompatible SPS at this point is invalid, abort the process.
+	 */
+	if (rkvdec_sps_check(ctx, NULL) < 0) {
+		ctx->sps = NULL;
+		return -EINVAL;
+	}
+
 	/*
 	 * Make sure that both the output and the capture queue are running
 	 */
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 7b6702c360fd..d74821f9fd0b 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -75,6 +75,7 @@ struct rkvdec_coded_fmt_ops {
 	int (*adjust_fmt)(struct rkvdec_ctx *ctx,
 			  struct v4l2_format *f);
 	u32 (*valid_fmt)(struct rkvdec_ctx *ctx);
+	int (*sps_check)(struct rkvdec_ctx *ctx, void *sps, struct v4l2_pix_format_mplane *pix_mp);
 	int (*get_sps_attributes)(struct rkvdec_ctx *ctx, void *sps,
 				  struct sps_attributes *attributes);
 	int (*start)(struct rkvdec_ctx *ctx);

-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
