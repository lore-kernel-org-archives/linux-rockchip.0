Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 200CFC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Nov 2022 11:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGlKvXaSFJN5drOImxml0+b30reyfIaBwDNoH+ehJSg=; b=CqOkBpLsLdNhzU
	sPehZ64jZ3pg/00l47kXyb+igviwFy2m0HlnYGBKMzWhEN4+w5z234QiIqBwaiH8Xy2dwfItgl+aj
	75eWjb0i5YYjKO9T44NTyRMcrKwW6CnHfEJMffrEZpnR3AhZ54/yDl+yG4hgZA7+W6zmANMy6YntQ
	lXTw95L89sBaLalhKizYNIKrPYn1IclFWYgl7xTEO4tnq+j/4ZhuxJAJiQFsreGcBKjyU0GH22g9t
	Z2OhoRawvvvHkprx/78EDR9Vu6wrKmaA98Hn9djfsCtYDzR7o7XwsamzDoz/TBVui1mfgpguL9GID
	nci11gBw4CIIIdwLD7Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oppS1-004bQ3-A4; Tue, 01 Nov 2022 11:29:01 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oppQx-004afn-S8
	for linux-rockchip@lists.infradead.org; Tue, 01 Nov 2022 11:27:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 867E5B81C9C;
	Tue,  1 Nov 2022 11:27:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8A12C433D6;
	Tue,  1 Nov 2022 11:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667302073;
	bh=ev0VM6Oimx9Zw4+Ukn4/pCJJiqGUwoJw4OAPFesTkmY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uupu94SFPGGUWoDTfi/C5/M1imqDVWmlSNMQU51J5lqNH8eidNHgosB4CGvHhkP78
	 pGt2zlprLd4hKR1tW2Vat2xmU40Z1WJysCwdsefOR4jcVLCXPZVttrdSgz6pIyF2JL
	 2DgQ6rJCFjxJf1XjSH67rvaemMLElU8MC33m9+aTpapXGf5G1mP9UMMOK4MA8oDidi
	 +6xlLb1XiPwA/r1vjDdZh3dspeEXhV9btMY2PYj0WnUP3zCUuONccIHbQG7P7Zhpqf
	 KdV5Tf0H0UrD/GIVEjgFjSr7izoWbyztN4cD/6SBhlaSTAvYRYGF+2bKRiyRPF6PWi
	 TRcuWdeszuYqQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev
Subject: [PATCH AUTOSEL 6.0 12/34] media: hantro: HEVC: Fix auxilary buffer size calculation
Date: Tue,  1 Nov 2022 07:27:04 -0400
Message-Id: <20221101112726.799368-12-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221101112726.799368-1-sashal@kernel.org>
References: <20221101112726.799368-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_042756_099560_648A5FD1 
X-CRM114-Status: GOOD (  12.28  )
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

From: Benjamin Gaignard <benjamin.gaignard@collabora.com>

[ Upstream commit 8a438580a09ecef78cd6c5825d628b4d5ae1c127 ]

SAO and FILTER buffers size depend of the bit depth.
Make sure we have enough space for 10bit bitstreams.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/hantro/hantro_hevc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
index b990bc98164c..9383fb7081f6 100644
--- a/drivers/staging/media/hantro/hantro_hevc.c
+++ b/drivers/staging/media/hantro/hantro_hevc.c
@@ -104,7 +104,7 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 		hevc_dec->tile_bsd.cpu = NULL;
 	}
 
-	size = VERT_FILTER_RAM_SIZE * height64 * (num_tile_cols - 1);
+	size = (VERT_FILTER_RAM_SIZE * height64 * (num_tile_cols - 1) * ctx->bit_depth) / 8;
 	hevc_dec->tile_filter.cpu = dma_alloc_coherent(vpu->dev, size,
 						       &hevc_dec->tile_filter.dma,
 						       GFP_KERNEL);
@@ -112,7 +112,7 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 		goto err_free_tile_buffers;
 	hevc_dec->tile_filter.size = size;
 
-	size = VERT_SAO_RAM_SIZE * height64 * (num_tile_cols - 1);
+	size = (VERT_SAO_RAM_SIZE * height64 * (num_tile_cols - 1) * ctx->bit_depth) / 8;
 	hevc_dec->tile_sao.cpu = dma_alloc_coherent(vpu->dev, size,
 						    &hevc_dec->tile_sao.dma,
 						    GFP_KERNEL);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
