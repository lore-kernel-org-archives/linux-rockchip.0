Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50F93C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 12:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwGAAGGdLHchDUugHEfS2ZCmiXHsp9Rsgx8BQ925No4=; b=lm/fwai2Uvu8+p
	kKoSuAjsbJ4JCwFakMz5QaEUjXNYhkpLfd7YZIOy8l9rFeQaTRZwZj22PSE4k44Dba0OnGzOvDD0C
	tKtney8EZ4EX6nvxF96kNaMY1zY6hpKhxGLC/036X4bf9DZWNagURBiw06Nt2Lsr12Cb/bRGJkOdl
	YiL14mRvNdtw0ffKAmQHV7d0jBla2BxNpYAEdWYdX4s73PXPc8w283g3DrK1txa9H9o9M94b7t8Pe
	VFaXw4oVxi602Q8z2fD+qBo5tAVNDx1xumwF9XaL+UoZGphathhgk/4LLHLNO26XAa+aKGmX9kXh1
	5lGGx7bAs84hs5H1vi9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Ae9-007W2e-R6; Fri, 17 Jun 2022 12:00:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AcU-007UzA-Mg; Fri, 17 Jun 2022 11:58:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3uw9DTlVlL/3p2zPOPmNWGMTwEFie9pHBKmiA6Ivfi0=; b=ObT96/fXaOgdBDiXd0Wp4tmIIt
	xxhsK8MizBP7xxGoSHvIw4tYNQstxLjHywrerqwQbMaJ3aSgUDswtVJmRg+NcHPnQEhTuQ/uDhM5j
	0vB0+7wSUbZM6Z520HignKaGBsi7zBSCecILFaVNQOM/P42TW9PViAjOVW16EZSCDe2AK1D86uStq
	94xqS/qmQ4470X0BBf/8clea30LwVdNJnjuyvWOidSrITWoDosMEGb+VyFC/pueMd3vz165yttKfM
	8TXZRg+O/ZyFJTtLwV/UqK0rDH64YcLo2t7ITWipuqcUSXw8FDnJesutM1ujzKHtSIN1/WqyKg4oI
	TvlbtC+g==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AcH-008g12-GB; Fri, 17 Jun 2022 11:58:31 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:faf2:1a12:f903:cc5e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E532F660182B;
	Fri, 17 Jun 2022 12:58:13 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655467094;
	bh=fxXI7c8YXJnT7vm+g7u/aQWMuoQ0IJrsBIzhoiD/xMM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WHiyH0jeRJY0lzGPOQRJdYu8CI0pnfTp42+8SfKodfAfvThdlVQMp5r36uFQq8KcO
	 IODu9Q6+r6a8D0X5cBPa9XkSSyAkwteXz03/F/5iAvSp0WYK6fi9KRhz5kpxKFJrJQ
	 2gAQMEpdKFXYN2JQcaCl3oGAkQGcio3L1XJ3oucSieTzOt1g4NyvBqqydvylUhwt32
	 hRq+LagLJIGGUL1YuLziWG85CdL8HpR1/3i7OvgK5nf3jh8M1GaS2MzoMzYWxWK3Yn
	 Cg39tZbklkbA14PwW4c6/K5nQhS5XH3bSLNresaPWkIJV+QqWl7QbQAzbTomsDb3xK
	 dPmGYQi84EmbA==
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
Subject: [PATCH 5/7] media: Hantro: HEVC: Allows 10-bit bitstream
Date: Fri, 17 Jun 2022 13:58:00 +0200
Message-Id: <20220617115802.396442-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_125823_740009_07212543 
X-CRM114-Status: UNSURE (   9.72  )
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

Stop limiting HEVC support to 8-bits bitstreams also
accept 10-bits bitstreams.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
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
