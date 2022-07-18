Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FF3FC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 08:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUMPCcZ6OYqM1+lGA9Ec7nbTkMgF6Uw5nZLdZSjawQ4=; b=GPWAaJV1jbUmjh
	NAb3uO7+sSPNHK/OzHosB5/0vZYBsSgZZ6rT4ArbbDkatSGfIDmAOKxI+GzAkJsyF86msdJY2PIsJ
	+xODR+Y4mcbRlYhzeLmVLgnlBq7n4QEp9VXqzfRmi1HuLeds7jGTEh97tzfMJPjbf4gFRxy5pjJj8
	FDyHhOI99sKDyZvAhWR0rMIuqh2z+x2NKKKmWMStK1qclN6MKC6J/xFLQcbzS/PaW9OC2UtwLPOyp
	RgY7kN4iqxncuy5Pf05y+XFoqZAOvPdu8fn5RjdLYs3R4CZC9C3eIVE36y7f1Z7jok331W2vc3He5
	GLkUgjA/4Auy3hWiz5NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDMLT-00BpcB-8R; Mon, 18 Jul 2022 08:43:15 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDMIJ-00BnwF-NQ; Mon, 18 Jul 2022 08:40:03 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4754:89ee:32c6:e620])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B4A7A6601A2F;
	Mon, 18 Jul 2022 09:39:56 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1658133597;
	bh=CC2ZoWOCrylXUT5toiF6692TYp44s2QcLVUR0tOz+sE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OzBh3ZLuLlS/qkuBDVdX9P1EdoLkmA+Q1mz93CGP12bNJZBBInesA79MVMt/BqKEm
	 LJYTwn0ElubIeELbb775laWHgDnQOkPidDjBv+5/N2i1FiZZyFWS8P3eZLnJ2b6BF5
	 UDrg5Vu4yV3CoTltPiJ9Ot1TNR2CxfdyJCmuenTdEkMsw1fd9+rJ8AhINlF55b63nt
	 WAtSVVXVBEHG7nMhNuLFW7LCiaWQ7wX3kYBpCMrnnFcxQFUEEY+5+wr4HKxR7W7jnA
	 OXM1GXWanJ5M1MpDQo38cub+ieaKhSPnnZ0NrVU2AXIQRIEiicF+Zmxu8X1Ni8YU3O
	 /W24jvjZGhtkQ==
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
Subject: [PATCH v2 5/7] media: Hantro: HEVC: Allows 10-bit bitstream
Date: Mon, 18 Jul 2022 10:39:43 +0200
Message-Id: <20220718083945.200845-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220718083945.200845-1-benjamin.gaignard@collabora.com>
References: <20220718083945.200845-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_013959_933304_0E56C33C 
X-CRM114-Status: GOOD (  10.25  )
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

Stop limiting HEVC support to 8-bits bitstreams also
accept 10-bits bitstreams.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
---
 drivers/staging/media/hantro/hantro_hevc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
index e06837108a09..85688a4df166 100644
--- a/drivers/staging/media/hantro/hantro_hevc.c
+++ b/drivers/staging/media/hantro/hantro_hevc.c
@@ -159,8 +159,8 @@ int hantro_hevc_validate_sps(struct hantro_ctx *ctx, const struct v4l2_ctrl_hevc
 	if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
 		/* Luma and chroma bit depth mismatch */
 		return -EINVAL;
-	if (sps->bit_depth_luma_minus8 != 0)
-		/* Only 8-bit is supported */
+	if (sps->bit_depth_luma_minus8 != 0 && sps->bit_depth_luma_minus8 != 2)
+		/* Only 8-bit and 10-bit is supported */
 		return -EINVAL;
 
 	ctx->bit_depth = sps->bit_depth_luma_minus8 + 8;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
