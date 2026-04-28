Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92D22FF886C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 08:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FWukrwKcyvbQxhUDhUrrBOlxT76BOAK3ss32C1gvHWY=; b=aqxZ1sX+qCKKIe
	AmlOfNgwOKWZq5Nsyb3NNvAtf0XyXpVnfUE/Iz4Um30ZJ7wa2hLU5GS4ww4KJLlFUFXaNFa3FZ1h6
	NYSHssuVH4ZfMzZyxPhKFm20T6cR4p7IYr3FUfiXWy0ZtLU6CuYsf2QuInj3c1fd6mb1uK2JktT9+
	ZHtr8aNkMifZZAyGctfx+umzNKoCQxgaFxKeJB6zeXpCOp3fYA9g9iV81d+DKCD19rb5x/Y9/DNxP
	4rVdud+fH3si7Hv1X3URknFuXRDpZC5mh1nhU9K3v50s6gf0xA1F9uHqpgvuBM5xAZ0ia+VnTjFvL
	at4eb7kT6G977uMMNS1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdwp-00000000ttC-0Ahm;
	Tue, 28 Apr 2026 08:37:39 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdwm-00000000tsI-0vjX
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 08:37:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777365452;
	bh=IeT500gqLTot4aUr5UON/hNQJD/41U0aoYoeo1sGEUI=;
	h=From:To:Cc:Subject:Date:From;
	b=pExvFEprJk5rletvW4RpV3GLebQ7heCN7UfoYoOpiPKyKtwOf74ug3h3odnMUg2ST
	 c88gQRMIxwZ7vJ3EhaZxDjWZEAReiQxhvkVsMtg7wyLpgW+cfOmg6ZIrYlwF7hlOfl
	 z/gI/t9wUYLXp9n10DS2FZDnDTfl+RMyojArJV6zdedz6Gx0Ioaz9pA3yJX5cn7Bf1
	 b7iT+z2ak1Q226VS4204vRlnLuoRg+8X+tE8moH8dUKY/hZXl/S/0Mb9IRc8EYXbKK
	 RGFbloPIabFev8fIA6MyTka0pJv8Ee0fXt/2are7nNbFTOdxA4JoCW7CoCoG4Piu74
	 +onhqjd1qQY0Q==
Received: from benjamin-XPS-13-9310.. (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 861A417E128F;
	Tue, 28 Apr 2026 10:37:32 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	hverkuil@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: Fix format enumeration when post-processor is mandatory
Date: Tue, 28 Apr 2026 10:37:23 +0200
Message-ID: <20260428083723.54314-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_013736_407428_699CCA2A 
X-CRM114-Status: GOOD (  10.75  )
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

When a post-processor pixel format is mandatory (i.e. when an AV1
bitstream use film grain feature) the driver must only enumerate
post-processed format.
Use the context format to know what is suppose to be enumerated.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Fixes: 80c7373a456e ("media: verisilicon: Conditionally ignore native formats")
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index fcf3bd9bcda2..f538d4562744 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -242,7 +242,7 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	 */
 	skip_mode_none = capture == ctx->is_encoder;
 
-	formats = hantro_get_formats(ctx, &num_fmts, HANTRO_AUTO_POSTPROC);
+	formats = hantro_get_formats(ctx, &num_fmts, ctx->need_postproc);
 	for (i = 0; i < num_fmts; i++) {
 		bool mode_none = formats[i].codec_mode == HANTRO_MODE_NONE;
 		fmt = &formats[i];
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
