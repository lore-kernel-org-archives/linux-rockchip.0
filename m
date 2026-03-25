Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A11A9FEA806
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 05:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x62MGRWTVg9r3W4eWa6ZWjsEpNcTdVHT1HcKK15CdWE=; b=2pNw8Rd7eWbW9n
	i4WQ/8AANrhnGWdRoFFxw2w/hbCH83PRBQ9GKyaifaUtheJhVcvLGzDzzKJoesJS3h0CZTG8Mq62O
	Dmgfr84/1KpRauGHPPSAZG++V2irknNCa9pDRfsXlAW7EWAfgBGxLGGFBMq73NdWkSaG68F6rZ1UQ
	V+/Xw6hV2rtStiueF8kE3EAhGulo0ZdV7kEEmDdSaMzpmEz8q02uVexZy2jdmhzOgHcvYLIwDeqPK
	yfxBiS+X58he4P/t1mM0vhvdXRJb2sVmt7k1MjB62uLgjfwztWFFKQXkbqAw9wL2SQpX7GIiuYwIs
	bEvPi7If4yKIC54ghxuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5GOT-00000002hNA-025x;
	Wed, 25 Mar 2026 05:03:01 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5GOO-00000002hM4-1uge
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 05:02:59 +0000
X-QQ-mid: esmtpgz14t1774414917t8a91143b
X-QQ-Originating-IP: YA39IovNu+xF2BtdXDpqSOiGqc6qPqKRXAAI3HsTMkw=
Received: from arch ( [175.11.89.206])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 25 Mar 2026 13:01:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12467882065645595347
From: Luo Qiu <luoqiu@kylinsec.com.cn>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] media: verisilicon: Remove unnecessary memset() after dma_alloc_coherent
Date: Wed, 25 Mar 2026 13:00:55 +0800
Message-ID: <856D681C2A51EC65+20260325050055.1187863-1-luoqiu@kylinsec.com.cn>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:kylinsec.com.cn:qybglogicsvrgz:qybglogicsvrgz3a-0
X-QQ-XMAILINFO: MwQdfXoP8nuzUD75Qpq1YHHBvq0ikvwaaoFHa3+WcBM/gb194p6cmz5I
	zWx2ZbVS5l0NgPY5ZJQopthPGv4/TlkRNDhJHilxxfVNIp2MBn6OHM4HoeLYhsAOAMk7J90
	NBTzm1EGVdGjyJTcV/dzRPe0kvBAZjUuejn1YMFkbQlYbEy4vDBI5z+kTs5b1d7UQIpCVu9
	d1IhOY8rPu0GsX/gnaO/gIGBIcD6u3Iki/VKNHkXMgnv0sEXcAJWp0RB08WQrXqdIR0Lx9x
	iY6cYe0Q6/5RcHUlsSa9r+CfS+voNGm/wf7b69kV+dR/3sNcehRvYp30tEsGAgoSC/LYbmT
	uoWIGOR6/tfDayL80K51lKoAhwRO+1wJ7X3cHtsN8dOshqk0yE9cKNH8Z6fdy+rTrPu5y+p
	I5ZU+KUXrDm4XA/wXNzt+jXeY4+or6djUVGeB48ZkHp2yZgYp8igJAWBTlNxmNI3xRM0YRt
	3NMINPiRgcKQEyKUIChpLSx1p+aSuJA8cDqa8uHLzqI2PktCXcfefsVrDf35dY0GQYepBIE
	Xd4FqKxkLocnwyzyQyw1N44pYeaS7ujce7Ri8RMwnFk0CsphlSneK5d3ZV18SyGMULuOgcl
	C0bDdDYUYO/fK7J8/hMc0oFlbfn26QxXDiSS5czxm17PcOJcLBqHPiyoN1bBBx4rw3Izs3J
	fzjEwgBoWGxN5pR1G0VgYJicVzVpKVD9YveQIL189HGE1UZmTYp7KUCdG8J+/M4A718KGkZ
	MEKbnemmJGAbRStYmQOMxv6SjvfDSbBYsqwkQUthCdaR08bvyVJz9dWmpwYOEILGAcAzM5h
	k02O3NxOQnaPIxL+sZrxEbnNSC0a94nfwaG9A2vALDp/jAPhUFwUBGbkj+zcgvMn5INJ360
	iambzHF+vCXagjHe0rUrjwMp50QcqrOwDOMQm//2OnaUdEX2gzfo0yxM6Dh4ACCws7EUbjg
	XE+3my+DR4RECn2WZrBHg+BqToS7eC8XjGFaV6UC9tGfloeyLqv62hxHVZ0z24EwP2oQXF3
	RXUUNpRQ==
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_220257_327625_03DB3882 
X-CRM114-Status: UNSURE (   6.93  )
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

dma_alloc_coherent() already returns zeroed memory, so the subsequent
memset(0) calls are redundant.

Signed-off-by: Luo Qiu <luoqiu@kylinsec.com.cn>
---
 drivers/media/platform/verisilicon/hantro_vp9.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_vp9.c b/drivers/media/platform/verisilicon/hantro_vp9.c
index 566cd376c097..607d618e8f4a 100644
--- a/drivers/media/platform/verisilicon/hantro_vp9.c
+++ b/drivers/media/platform/verisilicon/hantro_vp9.c
@@ -187,7 +187,6 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
 		return -ENOMEM;
 
 	tile_edge->size = size;
-	memset(tile_edge->cpu, 0, size);
 
 	size = hantro_vp9_segment_map_size(max_width, max_height);
 	vp9_dec->segment_map_size = size;
@@ -198,7 +197,6 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
 		goto err_segment_map;
 
 	segment_map->size = size;
-	memset(segment_map->cpu, 0, size);
 
 	size = hantro_vp9_prob_tab_size();
 	vp9_dec->ctx_counters_offset = size;
@@ -211,7 +209,6 @@ int hantro_vp9_dec_init(struct hantro_ctx *ctx)
 		goto err_misc;
 
 	misc->size = size;
-	memset(misc->cpu, 0, size);
 
 	init_v4l2_vp9_count_tbl(ctx);
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
