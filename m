Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6118DC67871
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 08:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1VMnDUk4dxEgfvN2Mr97nCK2oO7l7iKqd0IbXbv491Y=; b=R6nc1+V9dPF/uS
	ZbFmZ6crA2Hp4FHGFTIjnj3o8niJpZRCJQeGUu7Br2kR8nmKI0o5NLXneEwuqyR0A2hP2Tdx5n0/f
	wSINDnsoLIVNGnEacHM4WlIb1mJUn8Snc1ODkYateGUZZlTXwouX1UNjH3Tdw0EfhM+cCN6zU0U6C
	ORGFX2dOhmoLRYEe+LQwfDke1lePuree3AaBcZw0yHB2mODJoVNceUDwPHKuwRJdGm6/hNEwduKKE
	GcLMDNimlV9jifJiDYxPgGXFaA1RbaJKHHLdZu092eOfMmdT/67+fzx2wj6mqqwrjQ6LvK6TaCcBp
	KNK0bIg/Sy7jhAgcSzDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onxqY-00CHi6-1C; Thu, 27 Oct 2022 08:02:38 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onxqU-00CHfR-Tg
	for linux-rockchip@lists.infradead.org; Thu, 27 Oct 2022 08:02:36 +0000
Received: from localhost.localdomain (user-5-173-210-98.play-internet.pl [5.173.210.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7FBF466028B1;
	Thu, 27 Oct 2022 09:02:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666857752;
	bh=KWD1Fnlb9uRjgL3h0/EH8ZSvpkejRsdIerwN16+4xyE=;
	h=From:To:Cc:Subject:Date:From;
	b=hpcvyo9e+8lsYMSceyD60mQKXwsMF65yh2Nq0ulnRnw3oyIOFWBkwIsax5oRwfuNz
	 WdG3fQhxW+omST83kFGoOzcZfD+aDyx788BWBe6QWFATfnHsBzv2JgxvFV7bBiKM50
	 IS3ETPPgA+FE+T/AdmRDXT087QgGrygR7AaCASJxz28Ix+i7Vp7iZ8j4PsBoVUNWl+
	 kfQN5ssQGNEVKJ5ViSfsLpZFgTaT9qUzj4iK9lY04YXKkYTbTzTY6tMwKuJgHHFzxG
	 UqXjunbN9a+He7rjlM38pjLqt0DYePPqhs0D+l3nz6LZc9OB9UDOdkSfqZ2wLTphNX
	 F3kRKxptrjQjA==
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Ezequiel Garcia <ezequiel@collabora.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	kernel@collabora.com
Subject: [PATCH] media: rkvdec: Add required padding
Date: Thu, 27 Oct 2022 10:02:17 +0200
Message-Id: <20221027080217.6290-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_010235_127891_46DE56AE 
X-CRM114-Status: GOOD (  11.25  )
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

The addresses of two elements of the segmap[][] member are passed to the
hardware which expects 128-bit aligned addresses. However, without this
patch offsetof(struct rkvdec_vp9_priv_tbl, segmap[0]) is an odd number
(2421) but the hardware just ignores the 5 least significant bits of the
address. As a result, the hardware writes the segmentation map to incorrect
locations.

Inserting 11 bytes of padding corrects this situation by making the said
addresses divisible by 16 (i.e. aligned on a 128-bit boundary).

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec-vp9.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c b/drivers/staging/media/rkvdec/rkvdec-vp9.c
index d8c1c0db15c7..cfae99b40ccb 100644
--- a/drivers/staging/media/rkvdec/rkvdec-vp9.c
+++ b/drivers/staging/media/rkvdec/rkvdec-vp9.c
@@ -84,6 +84,8 @@ struct rkvdec_vp9_probs {
 		struct rkvdec_vp9_inter_frame_probs inter;
 		struct rkvdec_vp9_intra_only_frame_probs intra_only;
 	};
+	/* 128 bit alignment */
+	u8 padding1[11];
 };
 
 /* Data structure describing auxiliary buffer format. */
@@ -1006,6 +1008,7 @@ static int rkvdec_vp9_start(struct rkvdec_ctx *ctx)
 
 	ctx->priv = vp9_ctx;
 
+	BUILD_BUG_ON(sizeof(priv_tbl->probs) % 16); /* ensure probs size is 128-bit aligned */
 	priv_tbl = dma_alloc_coherent(rkvdec->dev, sizeof(*priv_tbl),
 				      &vp9_ctx->priv_tbl.dma, GFP_KERNEL);
 	if (!priv_tbl) {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
