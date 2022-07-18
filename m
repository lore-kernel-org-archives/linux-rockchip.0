Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DB44C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 08:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBIqWK7sblp3oAbagsxHMkC9iY7TmUN888INKqJkfOk=; b=VW1j3rN014KFka
	PtvE0emZFrIuvofgffTarVROgSYLOkOChnUz1SaRX94x90G1IiGOkk/YSX5TYQK35bEgVzfNyN93L
	QOundueeAl6SDWKkZom0UR2qh2EknaFlvY2GAQ/GP3/X4dAzbBukiFsvCEtol8jnELGrEU7MfSOiz
	w4JG+R4uZxWjdVrxdC+r171lknVhg7D4nsundcDfp7pv2YZr6Z+0AWL+gJwYhCzb4w/pCk7C6Rgmk
	yVOqAkq8TQTgFfu5aZw8ytlPJrdqj94vtnq0easUJ4WeLTpewH9gFIVwmYvWrkSw5CLpP79ZiuyKS
	9rMGvGq3RdAAQ2j3akyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDMJy-00BokL-Ld; Mon, 18 Jul 2022 08:41:42 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDMII-00Bnu0-Ew; Mon, 18 Jul 2022 08:40:00 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4754:89ee:32c6:e620])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F1D786601A1B;
	Mon, 18 Jul 2022 09:39:53 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1658133594;
	bh=p1IL0WApAId0OF2roNkCC1LN0QMRN6h/Fzya6tDqTJk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bNTMEP3NGof4m/05T5ErKNB6zBdxk7o8uu7EzV6O+TXcJGGOesbsBZ5IBBI3S/H4C
	 rY/8idtsmPNdCQVneBfN5sHPBtnMjGW0ysZ7kb0nS9bC845it6XZCjhFveSGrBEDNp
	 S7MFX2hpW7ehPKoOekzqM9ZXqswy6GmJ04mHBuaEsjCLYebLrfRM9+7UtJneXQxdFx
	 R9+EymURvZCcOeYMz7zekaI+LIoawhphJnG6Z1HNdrnQFlJ3ysdoMlZi44ufLC2CDC
	 azATiv/epXe/Ts/MlexbOKpkAbZa5sCW1pj0m482/zO65RhBZLY1SCfaiYj5E7qrHg
	 NthFthxzUvSeQ==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	mripard@kernel.org,
	paul.kocialkowski@bootlin.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	nicolas.dufresne@collabora.com,
	andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 1/7] media: hantro: Store HEVC bit depth in context
Date: Mon, 18 Jul 2022 10:39:39 +0200
Message-Id: <20220718083945.200845-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220718083945.200845-1-benjamin.gaignard@collabora.com>
References: <20220718083945.200845-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_013958_696812_E5A0506C 
X-CRM114-Status: UNSURE (   8.76  )
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

Store HEVC bit depth in context.
Bit depth is equal to hevc sps bit_depth_luma_minus8 + 8.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/hantro_hevc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
index 5984c5fa6f83..dcb5c8703b6e 100644
--- a/drivers/staging/media/hantro/hantro_hevc.c
+++ b/drivers/staging/media/hantro/hantro_hevc.c
@@ -163,6 +163,8 @@ int hantro_hevc_validate_sps(struct hantro_ctx *ctx, const struct v4l2_ctrl_hevc
 		/* Only 8-bit is supported */
 		return -EINVAL;
 
+	ctx->bit_depth = sps->bit_depth_luma_minus8 + 8;
+
 	/*
 	 * for tile pixel format check if the width and height match
 	 * hardware constraints
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
