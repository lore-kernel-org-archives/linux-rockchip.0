Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AC46C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 11:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBIqWK7sblp3oAbagsxHMkC9iY7TmUN888INKqJkfOk=; b=JM6mzM1IFJuUZ+
	TfTaD3pPnpRmkuTbuL4uMuRQTabOgRKUpmryuTj5szqRzc8DbX5t0eCupxEZjYi+i1uX9x/dkPpuk
	lL0RWnAHa5pY+TYuIvEWQ2mm96AuP8vLm5pLyq2JpuGdvJzU8b7L/WIIEZgDp9IRtrR4389Se7aS6
	RBUniSLZlJdl21n2A69S8rLMd2vo+b2FEYICIDraqFPiJDljlt9ztgEed8w8czdPx3xr3KOK9GeJo
	EFDfD/9e5w8AkMw9ecZIijjybv2fkNX3PuKtJ2wCgmwTjLNDeXVr2CnirorUs3mq9uMdNulfAFoEW
	Sahfyg5bKD8JbW3omfig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Ad1-007VCR-T4; Fri, 17 Jun 2022 11:59:07 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AcA-007Uq2-RU; Fri, 17 Jun 2022 11:58:17 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:faf2:1a12:f903:cc5e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0F50A660179B;
	Fri, 17 Jun 2022 12:58:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655467091;
	bh=p1IL0WApAId0OF2roNkCC1LN0QMRN6h/Fzya6tDqTJk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=O6latk3LWVF1Zw3HOlI6NzxIuXB815MakCNbc3pJmtgKdofzf6w08jd57TXK/Eh50
	 s9WBWe/hiDYqdPXNM8UQanOMXEkmE3GELVblXCsSRAIIpjUdiQy+FTtlAYxReVpQQr
	 cMFITh4k19Q0S0AIv5FKNuU+YT9AtQzfeV43nsIm+QoOqnZ4ctJ6NnXpWygkBaomOH
	 MsgIL7ELBB0sbMdm9/UtCkIPeJMm6yMv4ZYJjOB7A8IvWiGDrenDxyjeiiqdtR3fJD
	 365J04MD9DgFqFKYXBV/p1g1lvqsBC+6yB4FyFC877kowvJ/hAT4b5LYN00pmv+fQ2
	 UC2aJjRGXK+Bw==
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
Subject: [PATCH 1/7] media: hantro: Store HEVC bit depth in context
Date: Fri, 17 Jun 2022 13:57:56 +0200
Message-Id: <20220617115802.396442-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_045815_205893_26CE3EC9 
X-CRM114-Status: UNSURE (   7.84  )
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
