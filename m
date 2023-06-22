Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68BD5EB64D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 13:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNTckpX5cM1SS4qVXwZsdTme/kywgahAdij64aspAuE=; b=WouLN0f8kio0Ik
	TTrXEZbgcocwizBrE12t0VZGGfg+vcwEIO4PbUdGLkg2LcVQE/luhe5r+i10FYebL9YcMQ7TjxCKO
	wlbelORDvWtnwec1DfDuEsjpsSFMLT3nuv2too22F+Fhv6nm523tbBXL3vQABukEFGHEDzRFpZehB
	y+DOwM/n1wRg566w3U0wCdR5rB8Xx0l+VZUt6V3RF6bNU2dvPVvmsakjHbNLooyI+dBzbwv7Jdphu
	s0l6Ai5pSaXg9jwiNB0+JPjIAwhVoyPJ0lifDxoOfO4erUw5OUNMzlVmr9fQVjUD8qReDVvaYDr2+
	JtgYEPK7e346sUnX87ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCK9R-000k1A-2Y;
	Thu, 22 Jun 2023 13:15:05 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCK8T-000jCA-2r;
	Thu, 22 Jun 2023 13:14:09 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:7d72:676c:e745:a6ef])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C3B7D6607131;
	Thu, 22 Jun 2023 14:14:00 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1687439641;
	bh=UmxaSxfAyduJDEDEY4mpYf+MJsD53OV/RCS4wvgVO+g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LE4QqBKgWv+1EySXMkQVSaD1dNhI+GeD3LlmDyw8BUUqAzjeWKpLgE7nYFbDxEEv9
	 Ati1aQFtBHhVCABtN74rxVbZAa0MJSrZwVIgrgxRkDAIImGtdfaAWTqBawHTNAbMl/
	 HdshjmeOvUsBxHts3OqwHdUtzM8APjBR4H8Dcl06XSpdTrsLjVDi2bXO/6Q+Z2385t
	 AAAr8kZFEeZazGpcyPfMqlpZCv2h3C9HeJ6EXw2PfsfsK9xapfSEcEgXl7Er0SU4wE
	 Y/3OPZhHXGACkMUixRI+7UZiu5cfz2o/DlWmXPnVxS2yL6iB1y+ma9RO+Hn7zvmTu4
	 8A0REHtV4T39g==
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
Subject: [PATCH v3 07/11] media: verisilicon: vp9: Use destination buffer height to compute chroma offset
Date: Thu, 22 Jun 2023 15:13:45 +0200
Message-Id: <20230622131349.144160-8-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
References: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_061406_224068_C36EB257 
X-CRM114-Status: UNSURE (   8.40  )
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

Source and destination buffer height may not be the same because
alignment constraint are different.
Use destination height to compute chroma offset because we target
this buffer as hardware output.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c b/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
index 6db1c32fce4d..1f3f5e7ce978 100644
--- a/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
@@ -93,9 +93,7 @@ static int start_prepare_run(struct hantro_ctx *ctx, const struct v4l2_ctrl_vp9_
 static size_t chroma_offset(const struct hantro_ctx *ctx,
 			    const struct v4l2_ctrl_vp9_frame *dec_params)
 {
-	int bytes_per_pixel = dec_params->bit_depth == 8 ? 1 : 2;
-
-	return ctx->src_fmt.width * ctx->src_fmt.height * bytes_per_pixel;
+	return ctx->dst_fmt.width * ctx->dst_fmt.height * ctx->bit_depth / 8;
 }
 
 static size_t mv_offset(const struct hantro_ctx *ctx,
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
