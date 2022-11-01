Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E8ACFA3743
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Nov 2022 11:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4cQE/UcUjNcrSqeu5PLMyLNd4KYiePwMBKXD9fwQ24=; b=QjtwD/VWghP+BS
	6M3WEYtl01jXcFBP4BMZ8RdKAxDYTuwRHzeAJUBW8mgOOB9nkUECC02UBbrtTAKeX1usk/1lWayg5
	YuLmMBvr515WmJQi6BsmBVm4oOQHJEgnLDbK6q6BajK9NcM9VTG+REFkyQk7j52o1pDUiWyIchY4O
	+idn7CrOdqOL6ZS/3cbDzX7g5AENIvTXmr3pXEWNN0JKql/tpLorKu9pn5ZYckg3fdC3n9IJghQx2
	KKS6u94zysog6TSwNsWPQfi4tgkx8ivhUG169QPfaQvCDkyz5IHpFAV/7fZhxQHcyj2XRr8NVP4fJ
	ZtQQmZQXBtPD2QOO1c8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oppS0-004bPW-Qo; Tue, 01 Nov 2022 11:29:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oppQx-004ag3-ML
	for linux-rockchip@lists.infradead.org; Tue, 01 Nov 2022 11:27:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 42A58615E2;
	Tue,  1 Nov 2022 11:27:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B69A4C433D7;
	Tue,  1 Nov 2022 11:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667302075;
	bh=b+tOwlQfc42Ncz47RnuqxCIhFUSWfgZuPWXMdk9EOzI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=K8x6Te07yn+54I5W0CN7L52abTQvozAySpzSqJWCCyrbdx9hSkS3WsCNFX40WRBHj
	 oNGgvsM/sanzknXwr0/ndG6RQzc+eHi/PcR/wc1ZrTEQrDbgTw1gcscrNl7PzHxsEB
	 a0iS2FTngGkEfLNW3NGUrgXTJ0DMH1fz2PQUS9OdUr+cFAW7YIfc1JxeW80XfykH8u
	 GzHw2kra/efqXtS8Ab1vKP2fxtiffjS6wgvZ38fArJ3XF/gUvhAT9csnMWXJTaEkdX
	 SwJE2kLfV0FbI21/Nd1diYDw4KlIXHVj/SvNzdBOcd6TKfCuTH8DBT7kyF40x1MLRR
	 6uRFCXcTyY6rQ==
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
Subject: [PATCH AUTOSEL 6.0 13/34] media: hantro: HEVC: Fix chroma offset computation
Date: Tue,  1 Nov 2022 07:27:05 -0400
Message-Id: <20221101112726.799368-13-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221101112726.799368-1-sashal@kernel.org>
References: <20221101112726.799368-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_042755_787692_17E0889F 
X-CRM114-Status: GOOD (  12.11  )
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

[ Upstream commit f64853ad7f964b3bf7c1d63b27ca7ef972797a1c ]

The chroma offset depends of the bitstream depth.
Make sure that ctx->bit_depth is used to compute it.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
