Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAC8AC54E90
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 May 2025 08:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QrK1i3l0DPplHBWozmFDMwG1JJMlDsXu8WJo581s+Iw=; b=d1wWTc/Yn3uwy5
	e1v/CkfqQQQb4oICz4nYSW/3rO4LSJg8OLAK1gQAr3uAAijRnvW8dDBtjRat4qvpcHjs4omS8NUhQ
	CA+QSp/fuVUxHz56UjGEcv0bW8ftZQh0HGBePqgyFHrOodFo5wIA/BG+kB1/P38iAKY02bfWEeOfM
	2EEzJDAc4YHFnrncwDfwBhBSj6Y85Vk1NgJxtDr6R9le4hE6Y4Gas599AnZ++K5pW0dSYmdEwAp+g
	/ytCTCrNQx6+HwgLDkwVkW188SiwDkjbMJaPWu5vROAQczrOhJyJquJxQh982LvOujJBxisCmH5D7
	PDIEMp//ELS3dv0q19pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJ6Sh-00000006ixv-0b4f;
	Sun, 25 May 2025 08:12:03 +0000
Received: from smtp-17.smtpout.orange.fr ([80.12.242.17] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJ6Sd-00000006iwY-2Dxl
	for linux-rockchip@lists.infradead.org;
	Sun, 25 May 2025 08:12:01 +0000
Received: from localhost.localdomain
 ([IPv6:2a01:cb10:785:b00:8347:f260:7456:7662])
	by smtp.orange.fr with ESMTPA
	id J6SWu3jyuMqmCJ6SWuXGnC; Sun, 25 May 2025 10:11:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1748160714;
	bh=N+pgtmqMp3jMY4j4S+MJ+ysG/AM3yFc0FScY5jqdHn0=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=Oxv1u+vOEMDGGYIIKVt/zDVhn+TOc9iuPkwoPTCdGpZr+88hgmRAmYBMXAWcUbzBm
	 n1aU4PBnjr23sTdyzUdxzPhn9SuhkMwtVch4fS6nXNfqMnc0UmLfaFjAkM4GoFAmSZ
	 EiJaUjVHq5qsg+sBtDhOUVwwj+3w+1NadVUKw5SqB9LEzqVf/Zx4xH5yeCGr506Fnb
	 B8+J8H8xDrToMSzwIaQvYx1wReDBE/0JaTcMiMAgwmy9+H36mdOhk345f8r/msZ/mF
	 TCxw/6VcFgPd5dSQf8x46+jng4Eqy2eA3YHnALSj5keGzEAtChT4QBZQYVh/FdtDv1
	 bxzMTrGH7Imow==
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 25 May 2025 10:11:54 +0200
X-ME-IP: 2a01:cb10:785:b00:8347:f260:7456:7662
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] media: verisilicon: Use __set_bit() with local bitmaps
Date: Sun, 25 May 2025 10:11:44 +0200
Message-ID: <d2d01891c97fcd727ef508dffca10fc55d8ff145.1748160684.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250525_011159_970442_7AE27C9F 
X-CRM114-Status: GOOD (  10.31  )
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

The 'used' and 'new' bitmaps are local to this function, so there is no
need to use atomic access because concurrency can not happen.

Use the non-atomic __set_bit() to save a few cycles.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/media/platform/verisilicon/hantro_h264.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_h264.c b/drivers/media/platform/verisilicon/hantro_h264.c
index 4e9a0ecf5c13..2414782f1eb6 100644
--- a/drivers/media/platform/verisilicon/hantro_h264.c
+++ b/drivers/media/platform/verisilicon/hantro_h264.c
@@ -325,12 +325,12 @@ static void update_dpb(struct hantro_ctx *ctx)
 				continue;
 
 			*cdpb = *ndpb;
-			set_bit(j, used);
+			__set_bit(j, used);
 			break;
 		}
 
 		if (j == ARRAY_SIZE(ctx->h264_dec.dpb))
-			set_bit(i, new);
+			__set_bit(i, new);
 	}
 
 	/* For entries that could not be matched, use remaining free slots. */
@@ -349,7 +349,7 @@ static void update_dpb(struct hantro_ctx *ctx)
 
 		cdpb = &ctx->h264_dec.dpb[j];
 		*cdpb = *ndpb;
-		set_bit(j, used);
+		__set_bit(j, used);
 	}
 }
 
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
