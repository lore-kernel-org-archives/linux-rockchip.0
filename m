Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D489CDB484
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Oct 2023 14:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8CnicFVquf/GN21nSt5SEUu7D74/sRYfc14gQ70KGA=; b=aUi5bH8pTc9GJd
	25+3KoRuN5YHRLVZi3vjSllJWoE0sJqmXlgYO6GPRpp2p6Ul/g+vjNkcElTE6+Kr7dh8RcAAoKvOx
	njlUAvyLalHZKl12PUQK9TGI/pZSXasxxpLz2dZkemLmqL3wFLgozAMfBWPJ9KK5cInO0R0v8PMEq
	5EKQN/pEYFJ+CY+Dh14N1EVrWvDULFccLPQaWFpRC3rVhqHrzO4AeL7YPOkqjzfwsFjSp0z3c3eMJ
	RsqlaWIZQK+UlkpNNcKzUthaCGO5NkrJClYZOtdxFqIOQ6j0oCM/ZrT/ZW1nBCM1tG3xjuPuWBec7
	fp/2csSBV6sLH1/mgaSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslRD-00Cdxo-03;
	Tue, 17 Oct 2023 14:52:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslN9-00CZRY-2X;
	Tue, 17 Oct 2023 14:48:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hQaDgVchBvfZHzmenfrSC7XPkayVYBFGO4QaGIVF8jA=; b=Ea4GazSiLXd3h0IYTQ2ITazLdM
	k/kmIXUUYcYe/9ciTQsHqDnJvFZ1D1pEn+jRK9I3pdg0yyPRLKmwOEjO8L2QM2z8rwX5ZdbHw6Y3u
	w1OJO/9E/ecI92ibb8xnbF1AsxR87IYRDKfOCzS14ASx4D0f5lfuxhBDI2ZDb5NbI/vo5rpoDFRHO
	r87Hry65vJdGYjxpPKCM5SU7k9+QjIW+nDWRqejYNa3Y87f+T8cVjV8fWIg0Cg63+OCBpNiupobJ8
	257XYXHPfOl6xvak403epB6NNMQeXhxfC4jgzGHmeFXFvAZHUNr0LNmgGo5OVv+6CfBX09gDGHOki
	XxsV2wxA==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslN0-007A6W-0Q;
	Tue, 17 Oct 2023 14:48:34 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:7205:da49:a7e8:59f8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9169B66073BA;
	Tue, 17 Oct 2023 15:48:28 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697554109;
	bh=deJM8nlQ4g4jiYxn4KEycstS3ftyfWcamvuNgnfVl08=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PBFKrFF+nN51eSSFF+Xf4oC06zGnG/a9oFCxdJMzAjqUwEMuWf5L/1UJc+awVuUdn
	 GHyb797d1pWl+A1tg4MevxQqogXIk4eC7riWIJJ2PpvZNe2iUjAWclKo7/CvZ4Jnbj
	 SIkC/6+SY10J6lThE9hotjR4zHdMK3aYrLSf0/V0VQcvlRbKNBo6EeOiuCtl8cLDSL
	 66GgbPpnyoBxNB++oUcAEZClK8OpM4Sa0EzCf9Dkg/Bz5H3dWYJc78ynsK24mA1P7e
	 OL738HUPV2NqKv/+0oTViaZSJwCi+8SVGSB5LbO74jS3yRXRgRS5qurTundmvoejVE
	 XKHH4IrwzQqsw==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v12 48/56] media: verisilicon: Store chroma and motion vectors offset
Date: Tue, 17 Oct 2023 16:47:48 +0200
Message-Id: <20231017144756.34719-49-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017144756.34719-1-benjamin.gaignard@collabora.com>
References: <20231017144756.34719-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_154830_862667_06A8134D 
X-CRM114-Status: GOOD (  10.68  )
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

Store computed values of chroma and motion vectors offset because
they depends on width and height values which change if the resolution
change.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
CC: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
CC: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/media/platform/verisilicon/hantro.h            | 2 ++
 drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c | 6 ++++--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index 0948b04a9f8d..6f5eb975d0e3 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -328,6 +328,8 @@ struct hantro_vp9_decoded_buffer_info {
 	/* Info needed when the decoded frame serves as a reference frame. */
 	unsigned short width;
 	unsigned short height;
+	size_t chroma_offset;
+	size_t mv_offset;
 	u32 bit_depth : 4;
 };
 
diff --git a/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c b/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
index 6fc4b555517f..6db1c32fce4d 100644
--- a/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
@@ -158,9 +158,11 @@ static void config_output(struct hantro_ctx *ctx,
 
 	chroma_addr = luma_addr + chroma_offset(ctx, dec_params);
 	hantro_write_addr(ctx->dev, G2_OUT_CHROMA_ADDR, chroma_addr);
+	dst->vp9.chroma_offset = chroma_offset(ctx, dec_params);
 
 	mv_addr = luma_addr + mv_offset(ctx, dec_params);
 	hantro_write_addr(ctx->dev, G2_OUT_MV_ADDR, mv_addr);
+	dst->vp9.mv_offset = mv_offset(ctx, dec_params);
 }
 
 struct hantro_vp9_ref_reg {
@@ -195,7 +197,7 @@ static void config_ref(struct hantro_ctx *ctx,
 	luma_addr = hantro_get_dec_buf_addr(ctx, &buf->base.vb.vb2_buf);
 	hantro_write_addr(ctx->dev, ref_reg->y_base, luma_addr);
 
-	chroma_addr = luma_addr + chroma_offset(ctx, dec_params);
+	chroma_addr = luma_addr + buf->vp9.chroma_offset;
 	hantro_write_addr(ctx->dev, ref_reg->c_base, chroma_addr);
 }
 
@@ -238,7 +240,7 @@ static void config_ref_registers(struct hantro_ctx *ctx,
 	config_ref(ctx, dst, &ref_regs[2], dec_params, dec_params->alt_frame_ts);
 
 	mv_addr = hantro_get_dec_buf_addr(ctx, &mv_ref->base.vb.vb2_buf) +
-		  mv_offset(ctx, dec_params);
+		  mv_ref->vp9.mv_offset;
 	hantro_write_addr(ctx->dev, G2_REF_MV_ADDR(0), mv_addr);
 
 	hantro_reg_write(ctx->dev, &vp9_last_sign_bias,
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
