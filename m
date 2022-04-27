Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA755C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Apr 2022 17:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GY+o4Qwl5LsqNivuv8CNyx8Ltgz/6ctvjGnzGBlqqAc=; b=iqRWn8YwfKgaM4
	a0GIF1M9kyU7VBQQPKtLYvPXyys18X2fTK39Vj533e7ZTqa7yCR+WaLy3yVPKIpppN/cePddXZlLf
	qlBSCTOXxACxFOmOkroA6DPbZX/CeeM2NWa86vm4PlY8cKuiaEpXIpaiNw9A5+eC0yAWV/Ss6Y3fE
	lUrjfB1F7GUqJYPPUnwJMeywAyRLfqyqq6xMLuD6e2dgDhuGAlqob03yLWox0QjXmLPiA7fbHcjMz
	GnEdG+ijY+eH1pcOZbK+HVHzl10TX4G4gmoujvie5xGIpvN4nBE3qW6izFgrfGHsnwZ8BUlnt+cNm
	bpzTQDCuyF28Tx/dhZQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njlpS-002oEb-CF; Wed, 27 Apr 2022 17:51:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njldg-002jKq-Hb
 for linux-rockchip@lists.infradead.org; Wed, 27 Apr 2022 17:39:46 +0000
Received: from benjamin-XPS-13-9310.. (unknown
 [IPv6:2a01:e0a:120:3210:2c00:b769:f52a:a984])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id EC0611F446E5;
 Wed, 27 Apr 2022 18:39:42 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651081183;
 bh=wubek6jsK6/qsanCIGdPiaJ1o3gzVzBo/gvth1wB/vo=;
 h=From:To:Cc:Subject:Date:From;
 b=Y79/wIxYTbOwPYixAGTaBBZNRB8zmd3SZGjCnvJfsNZuvLmEbWYnslZK5M6WvQ6P5
 JxK16BOcFIrkY3jGUv26y92R6MejCsgD6c6Z/mAZRflie9cpLpzuBvFPmWI17ul61U
 wr4M23odwjjKx+6B9eajZykjqQNi76CmliFGZpQpO1PWoTT7udjFd2SgYuP4y4yw6O
 gPLpFcV0XJME9s8onFeTdEdGiA3KcpSVdbXDj9cfU99FU9QqAPEc9tPhE2UbWZI8Wg
 TZxQUY4ak+HCJ5SHRwoOqJcWStTzGg9nitn/dWyrlaJDKieEbVyloWjjzLpA/Jyh4w
 Bow5OUVMSEyIQ==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 jon@nanocrew.net, aford173@gmail.com, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2] media: hantro: HEVC: Fix tile info buffer value computation
Date: Wed, 27 Apr 2022 19:39:36 +0200
Message-Id: <20220427173936.17092-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_103944_766255_967F09CF 
X-CRM114-Status: GOOD (  12.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Use pps->column_width_minus1[j] + 1 as value for the tile info buffer
instead of pps->column_width_minus1[j + 1].
The patch fixes DBLK_E_VIXS_2, DBLK_F_VIXS_2, DBLK_G_VIXS_2,
SAO_B_MediaTek_5, TILES_A_Cisco_2 and TILES_B_Cisco_1 tests in fluster.

Fixes: cb5dd5a0fa51 ("media: hantro: Introduce G2/HEVC decoder")

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 2:
- Add Fixes tag, thanks Dan

 drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index bb512389c1a5..ffeb2fbeefd2 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -74,7 +74,7 @@ static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
 					no_chroma = 1;
 				for (j = 0, tmp_w = 0; j < num_tile_cols - 1; j++) {
 					tmp_w += pps->column_width_minus1[j] + 1;
-					*p++ = pps->column_width_minus1[j + 1];
+					*p++ = pps->column_width_minus1[j] + 1;
 					*p++ = h;
 					if (i == 0 && h == 1 && ctb_size == 16)
 						no_chroma = 1;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
