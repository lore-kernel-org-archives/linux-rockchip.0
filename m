Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E071EC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 11:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4VP7kEO72rcIAWiHNdGYQKCDuzxmqJToQarffnt/RI=; b=a9QoANuKcDJWGT
	nEGjGDbwqNICN2kExfFzK0nQA4iUyOSMaRsMWTkeL1F9PdWv6vIchpbzLExO2SJT4Dl5f0rq2pAdq
	Zr7AJk4r+OsBFn/E4nhoVbprx5zt3zNNJPrVioodSeg0nOI+HLYnDP9qFytr6aUdiG3iut/pNDzOf
	af4ckD3d0qDwYkPpag3Jyq+i97hhRhCPajfGcaNWlwlkDMUgwk+ZfQj8u5D4Hfpg8wxpCzRfVeTJy
	zlihTK1HxQOVEMxxdjCDBO1DCrFDXNNJP82dAyzoE+5ei4QY4Q/992bja/yZyfyt55SLB+hk/hsxt
	GGJOPgl+vs0i9B6rjxTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AdT-007VXa-SL; Fri, 17 Jun 2022 11:59:35 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AcF-007UsQ-3S; Fri, 17 Jun 2022 11:58:20 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:faf2:1a12:f903:cc5e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 433E56601856;
	Fri, 17 Jun 2022 12:58:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655467095;
	bh=3gDGpkk06mAHtR7r2AdzFP7ojDo8eosyId0TYaAzb0k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=V7ijhT1PVDl59M55MviVPo+G6c0DxIIFvfRu69WWtAtXq/iaVJqQQmk1H3Og4NeP7
	 9h5bCty+9M24d82c3OiJ52fVcagAyjAzEesEjqrBb002UmANOLi3tBXue4EDrdz2QM
	 na0bYj4KWvuB0ooFjuERsuY9w6yFrmzhBz5xqnuptTieA2IzMOLWdmz+PUpFTIPYip
	 /cBvjF9pRhcWNPiDDtqv08/g1pdl8Ei4U4a1HoiQbuBFeMpFlrInjkWdelRAmTLhaK
	 EJtjNHhBkIMb3hSwifY7alxjuuUp1AExSaiYr7V1TuO0JIMhuqvw//S7kuytSBEZXX
	 emR9803mvXbxw==
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
Subject: [PATCH 7/7] media: hantro: Allows luma and chroma depth to be different
Date: Fri, 17 Jun 2022 13:58:02 +0200
Message-Id: <20220617115802.396442-8-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_045819_317284_A44A1EFE 
X-CRM114-Status: UNSURE (   9.16  )
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

Luma and chroma depth are set on different hardware registers.
Even if they aren't identical the bitstream can be compliant
to HEVC specifications and decoded by the hardware.

With this patch TSUNEQBD_A_MAIN10_Technicolor_2 conformance test
is successfully decoded.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/hantro_hevc.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
index 85688a4df166..26b1329893f7 100644
--- a/drivers/staging/media/hantro/hantro_hevc.c
+++ b/drivers/staging/media/hantro/hantro_hevc.c
@@ -156,9 +156,6 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 
 int hantro_hevc_validate_sps(struct hantro_ctx *ctx, const struct v4l2_ctrl_hevc_sps *sps)
 {
-	if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
-		/* Luma and chroma bit depth mismatch */
-		return -EINVAL;
 	if (sps->bit_depth_luma_minus8 != 0 && sps->bit_depth_luma_minus8 != 2)
 		/* Only 8-bit and 10-bit is supported */
 		return -EINVAL;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
