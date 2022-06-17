Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B150CCA479
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 11:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5aqHHph7q2mBHn4+CFdEKAwQOWpL4inuMQFOLZN+IQ=; b=ehmO3LzdcRC9n0
	+3+1ubxSYbUB5bmmKzpjFIeflEEEroNirzNQTU+Um4CBO7e1+MDQNHB3jG6dSVKydIyuzTDz5WzDc
	gylNWX0+tT0ZvLMyMJYVrWMlGLD+zJ+0lIYJQVfH6k4fBrcxcjyvXnbYsL6xLUeGZk15AmBvOG4ru
	iGX3ULJ3hjxb4w1suaJ5AIbBAIcxkJjCzBxeeDTz/EOe0R3gP9WNbN12wFszWsAfKdxvBgJxSgdq1
	9kwj3VNRomNBaaIuwGD+smjD/vm+L82lvDUkZgXcBnFCo4DjGhYLC8DrHSaiVlR0EHp2kIE4Fixp7
	RPmh7lAPiTHcVs7wplCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Ad2-007VCh-D0; Fri, 17 Jun 2022 11:59:08 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AcA-007UqA-RP; Fri, 17 Jun 2022 11:58:17 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:faf2:1a12:f903:cc5e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7B38066017E6;
	Fri, 17 Jun 2022 12:58:12 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655467093;
	bh=UCYAWxfH7NqhDgW2LvrbsQwdBrhxn/zmxyr+y6/KCnw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gpL482i9rVqH8nuvkKstUQRydbw9K6qvl1weUz0Qvvi2hCu3gWoKEXUp7ATR/OeH9
	 yqSt0AB0X2ZZLXxLULLJLZoJa1zuZ4Pwb/Y0L5WZaBRwL0LnXH6hdh9SHILYPKEOBc
	 duFRTtLJsT40jracOgjtXRwUXVquPVD8K2TX7ASEQIRD7G8RxlXlepEW+xtSXgjs6K
	 5X0lzuqj8zPDiZh194vkfaZxEXjREDTA4KNHn/Ny/z3lzDmWhxjrgZsk85VP4NUDUT
	 Sb+93VPYO2ksa/Vf33gMIOQZbyOc4t7kEDlpU9lqi3bWef8N0IQjNLFwgR5BCKwvmu
	 TY6CNssUSUz7w==
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
Subject: [PATCH 3/7] media: hantro: HEVC: Fix chroma offset computation
Date: Fri, 17 Jun 2022 13:57:58 +0200
Message-Id: <20220617115802.396442-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_045815_182137_43AA971E 
X-CRM114-Status: UNSURE (   9.04  )
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
---
 drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index 9eac133bda68..8407ad45b7b7 100644
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
