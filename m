Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 776B7C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 08:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rr+xOZ8f5nqCGJQ/wt3N8F/PLP5X1lUp6yu0YD6vRGU=; b=yEcEUX+oi1FWk6
	MXr1DmtqwUOpcbfE3ZJ+Ypt4F0lXaJTWG0ycNN6QJD1fUR7x44J6IcTxcDebZMZ9ff5ugr18eQia6
	SmH+DztUayLRSqXzYkpsw/RymqnF301mr5jl5KKjP4dkqYvEcF8nAbf8H37K2cO0z8hn0+dA8JTq4
	YguC5ec4FUERe0bd2LV8ZePxoA1Xnk2oAlmOzkTgjsRg9nmshOokizJLiq6DwJxNnauXCYw5i0bBr
	U/lgbDNasznOww1aI1hDhH6bJRL8jpkd0D1YKIYZDIOnkPz6Gr2vpxmd0uyqLKsb4W0gx/I3HpQwl
	EhdldNzefFy7jVxDxqhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDMIx-00BoEN-SK; Mon, 18 Jul 2022 08:40:39 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDMIH-00Bnto-31; Mon, 18 Jul 2022 08:39:58 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4754:89ee:32c6:e620])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 441056601A12;
	Mon, 18 Jul 2022 09:39:53 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1658133593;
	bh=VGO6bJB0It56njxoW1ZluHISXuIAwk0hlWOpYr3qvh0=;
	h=From:To:Cc:Subject:Date:From;
	b=izorKfV6D59nkihSVVKwQzSDN6Be6j30U2dXb1Obk6eo/wo2kD4uc10x9gpPwKBez
	 LCuYFa3wmKb1txsaIlMzbu9X3P9OY7ldwE9iQVKcchwLub1flI/Al8DY6J2Wrg+Us6
	 +dQUhW1zx0fLkn6aDgZ5mr382mVn1Xgi5nfywkJbjYPa0rAnxsbZ+aaZRkrlAPeAeD
	 oZn3P0PbCbYtXQAjp78j3SZx/b+XceGR9DHogelEN05zCeKLFPjJmhALUHUVRcCgP7
	 kX+uzdMm4NyQcA1xnayA5AM/u8WgZHUBN2XCWDrYUm/QhPdNYe+s8KMv8hPa38TPyQ
	 4OLYDHIsr+zyg==
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
Subject: [PATCH v2 0/7]  Enable 10bits bitstream for Hantro/G2 HEVC codec
Date: Mon, 18 Jul 2022 10:39:38 +0200
Message-Id: <20220718083945.200845-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_013957_289546_23ED1EC9 
X-CRM114-Status: GOOD (  10.67  )
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

Since v1 Jernej patches to support 10 bits decoding have been merged.
This v2 rebase the previously send patches and add Ezequiel reviewed-by
tag.
This series add 10bits support for newer hardware blocks (i.e without
legacy regs) and for HEVC codec.

It based tested on IMX8MQ with HEVC conformance tests.
The results are that all 10bits bitstreams are OK.

The problematic point raise by this series is the question of where 
to put HEVC validation function. Does it have to be only hantro_try_ctrl()
or shall it be done also in .run().
This series doesn't change that behavoir so I will argue in farvor to
merge it and to work on this validation time problem when unstaging 
the driver.
Hans, Ezequiel may that sound acceptable for you ? 

Regards,
Benjamin

Benjamin Gaignard (7):
  media: hantro: Store HEVC bit depth in context
  media: hantro: HEVC: Fix auxilary buffer size calculation
  media: hantro: HEVC: Fix chroma offset computation
  media: hantro: postproc: Configure output regs to support 10bit
  media: Hantro: HEVC: Allows 10-bit bitstream
  media: hantro: imx8m: Enable 10bit decoding
  media: hantro: Allows luma and chroma depth to be different

 .../staging/media/hantro/hantro_g2_hevc_dec.c |  4 +--
 drivers/staging/media/hantro/hantro_hevc.c    | 13 +++++----
 .../staging/media/hantro/hantro_postproc.c    |  7 ++++-
 drivers/staging/media/hantro/imx8m_vpu_hw.c   | 27 +++++++++++++++++++
 4 files changed, 40 insertions(+), 11 deletions(-)

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
