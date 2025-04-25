Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4805AC369C2
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 19:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jV588AMRIZVxPstfsf+Z7MI74B0ngNCpSlc+XIhG+J0=; b=Cc4iOyfkeYww3n
	s61iclQDMMof4JgkJ/zDNkRyNbXSONqy/Hq0zd5wTJ7dmRp/7Ye/uGg0+2KIuRypZVPPdllzTe5Jp
	YT+hDEAyxBqWSUISn1650XaBxKNpbdD74kf4UYy01Ls4r03mYTCRsE7Ajgau2Accok1lT5vStcqtg
	sJBssKDdliG2bminunyP4xZ3VHP8CGY4porO15a1zbkXlqTeA/SJ5cM6IVa4jZBTC9Gp2L/bsUyHx
	pavViYyjk/BumKYRkR60/2YeDkfMN6KW6bxE+kv3C/8NB7ApjkuC99y/BMEwBWq6QvM5faP3YN7jC
	6YTPQfcT+XhNCJIclSMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8OgT-00000000eAn-1A2E;
	Fri, 25 Apr 2025 19:26:01 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8OgB-00000000e7c-2NA0
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Apr 2025 19:25:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1745609141;
	bh=neGbJ6Lymfsq8nEeLfmyJwBxDlpuW4G5Q1AEGS8l+uw=;
	h=From:To:Cc:Subject:Date:From;
	b=nvTKPqNdOBzSU+7+8MLXFwCszgzruXwUSY1c3l4gHmVVNDGWQmfvse4+ekF5hnyJe
	 a+S1r65YH1bt6wnHHTnPcV9gqm3QJcijRuyEOFVZCgKE3STFQDxxgVioqWF36HUIyx
	 grzXMhPOkih3z5tEvbBJkQDrm+ShsjNHYIQlELB3gNNLBGBaF0jX2G2OOlyvtoGwkg
	 p9T/VT72boveO3A2dStmpUqPQpxvYyuzjovouDtf5EeoUtVlTWyYbbomKBjGYNF5xP
	 ijJ03P/wQMfx0q/GnLkbLWCF4lp0P1ye+too+xfQLh1WT1SzML4lnXi148oFb48ThO
	 TEsWLvjevCmIw==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DCFA417E0987;
	Fri, 25 Apr 2025 21:25:39 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH] media: verisilicon: Free post processor buffers on error
Date: Fri, 25 Apr 2025 15:24:47 -0400
Message-ID: <20250425192447.227063-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_122543_776902_799C0DE0 
X-CRM114-Status: GOOD (  10.74  )
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

When initializing the post processor, it allocates the same number of
buffers as the buf queue.
As the init function is called in streamon(), if an allocation fails,
streamon will return an error and streamoff() will not be called, keeping
all post processor buffers allocated.

To avoid that, all post proc buffers are freed in case of an allocation
error.

Fixes: 26711491a807 ("media: verisilicon: Refactor postprocessor to store more buffers")
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_postproc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index c435a393e0cb7..9f559a13d409b 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
@@ -250,8 +250,10 @@ int hantro_postproc_init(struct hantro_ctx *ctx)
 
 	for (i = 0; i < num_buffers; i++) {
 		ret = hantro_postproc_alloc(ctx, i);
-		if (ret)
+		if (ret) {
+			hantro_postproc_free(ctx);
 			return ret;
+		}
 	}
 
 	return 0;
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
