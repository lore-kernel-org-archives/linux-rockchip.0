Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5CCBC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 08:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruJiWF5gF6jUVlC2YlfeWi5qxTc6cPdNkIe/R8JwZIk=; b=ICOaOHrPf4iNvj
	10D43ASLHBIgbUi/5ddxW7AXFxdNq80X7wmvBM1TZDKgd0rvXU9parKVH0OL3vvN7kp3Ah4WXBcDz
	0MI17W4RSMd+WpByeTlOAEFALUEZUAei2N6kHJyN2fxt9gASye0kx5L8y80heHoWJYpxCtMETok9N
	pGx+/lD4MxtP4W3q6t/PXCmR4Bk0RVBmxiHWx/xfSYmPQMr0YkWvgsGxSrXnOSGlejXMHOh3Mhrt1
	eUDeaGH4Wg2Zu0SeqswVk93rT2QZ14++jXcSbLPR8BJ480+w8+lRcdqEu+opUAhy95pVsLP5QxKy2
	lDB6MzJWefuSGGs+G+ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDMIw-00BoE2-KX; Mon, 18 Jul 2022 08:40:38 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDMIH-00BnuH-33; Mon, 18 Jul 2022 08:39:58 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4754:89ee:32c6:e620])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5EA206601A3B;
	Mon, 18 Jul 2022 09:39:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1658133595;
	bh=H6nrAjLgpn/y5TqeB35GnAnTu40ZKr0Id6XGySDlajA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=j2S1hCrrScBQVSyg8bwkhfigF2Lxw1SwBr6U/RjWvRzdEQwhMwiLHolvVRF7xcK2Y
	 1OUEAWLdrceH1JIbwgclCGjpaUSyA4wvIkjqLVU3qCVPe5HrErUbS10mMUWSCu9q/D
	 dE1S+t65oGdOkdVfSFmG1BUmYuJlJivR9ywOSlv761aLLHozwvLge58Z5fXOiGkeEp
	 DVvghtymxkYXCAp2A6XHiY98jMqIhiG6HnBbZB/c02X+cHt3Z9PNnh771B8a/PaV9A
	 n67w3YYO69YsZvaI0sHFCEogSL8jtN5Dazkf2PYNffa0KFHk1Ee6AgF3stW5dChcO6
	 CJMkUXVcnpiJg==
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
Subject: [PATCH v2 3/7] media: hantro: HEVC: Fix chroma offset computation
Date: Mon, 18 Jul 2022 10:39:41 +0200
Message-Id: <20220718083945.200845-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220718083945.200845-1-benjamin.gaignard@collabora.com>
References: <20220718083945.200845-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_013957_287374_A9CB827A 
X-CRM114-Status: UNSURE (   9.94  )
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

The chroma offset depends of the bitstream depth.
Make sure that ctx->bit_depth is used to compute it.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
---
 drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index 233ecd863d5f..a917079a6ed3 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -12,7 +12,7 @@
 
 static size_t hantro_hevc_chroma_offset(struct hantro_ctx *ctx)
 {
-	return ctx->dst_fmt.width * ctx->dst_fmt.height;
+	return ctx->dst_fmt.width * ctx->dst_fmt.height * ctx->bit_depth / 8;
 }
 
 static size_t hantro_hevc_motion_vectors_offset(struct hantro_ctx *ctx)
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
