Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 612EDC25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zDlPgKJ8xfci9ZgzDK6vRdfKjHupT4tZNJke0G5chlQ=; b=PifuRd/dD/j86h
	1xqdywh9Tg1i7++J4vRgOye+J+cW51RAWaETCG/BLRN2O4IGw/64C+kt0gDJjnz9+/q4ilWqMpgd+
	7SGnHh5tOj9JN1vAuVivl0dfOptLOwMP40EFNle+Fpm8bo8M3e+bccxhW6Ej1wDbFAXUxPLs6zdmb
	HYrOwIvN5ta37mc3eH56PSYuzb2GfTIar74voMo9dWZRrQPKVXlMaouFQTXusQEwdcHiJLPQPHLvC
	iDArc+oZyitSeca7wJhWoj84EwqXoQX+Hwpk4zpNOFYSAKPvloiolgd9LLlbbKKCnm8Y/dYjK9SvE
	Bn2FaMlneIx5EI8CPtpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9RNZ-00000000L0f-0JXa;
	Tue, 21 May 2024 15:26:17 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9RNV-00000000KyM-1Wz3;
	Tue, 21 May 2024 15:26:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716305169;
	bh=ehEGmLPbdflG9SwAJyNTXNFXo36LoESCFkUyqyn/9rE=;
	h=From:To:Cc:Subject:Date:From;
	b=YRcCxUSoYk2jqtJS2oUMkMYXVP2UsiGWYpj6GvD6ACMAvrMToPH4gjF+lTPCTsjdp
	 AaMBchr/vwUGg/XyzzNA3Efh9iIHJSootB6GzHKCE4MXxaTnrBg3RIng/o9eGXHjyG
	 8auuIIJFlzei0KUr1ce2kFTvMehyHkOHVY1BZ0W4BPckuNRC6a+3H8baySiOBr6KXq
	 ouGAP6zR2tuQ9pq5mlNa4mjm19lowg/gQ1D2dN8TD8duZdYWcKckxtyQumCCglzg9h
	 3XZSYJNZMKTYG7WeeyTTVLWaCOSgD7lBFOEP2myOGOYAfZ8rFAdBwu05eOJ5yYiEgQ
	 k0UYBVDpn7y9w==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 94768378212E;
	Tue, 21 May 2024 15:26:08 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	heiko@sntech.de
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: AV1: Correct some registers fields size or position
Date: Tue, 21 May 2024 17:26:03 +0200
Message-Id: <20240521152603.120723-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_082613_739496_0AA09BB6 
X-CRM114-Status: UNSURE (   8.74  )
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

Some fields aren't well positionned or with incorrect size inside the
hardware registers. Fix them.

That doesn't impact Fluster score test.

Fixes: 727a400686a2 ("media: verisilicon: Add Rockchip AV1 decoder")
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/platform/verisilicon/rockchip_vpu981_regs.h  | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_regs.h b/drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
index 182e6c830ff6..990f8e69524a 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_regs.h
@@ -327,7 +327,7 @@
 
 #define av1_apf_threshold		AV1_DEC_REG(55, 0, 0xffff)
 #define av1_apf_single_pu_mode		AV1_DEC_REG(55, 30, 0x1)
-#define av1_apf_disable			AV1_DEC_REG(55, 30, 0x1)
+#define av1_apf_disable			AV1_DEC_REG(55, 31, 0x1)
 
 #define av1_dec_max_burst		AV1_DEC_REG(58, 0, 0xff)
 #define av1_dec_buswidth		AV1_DEC_REG(58, 8, 0x7)
@@ -337,10 +337,10 @@
 #define av1_dec_mc_polltime		AV1_DEC_REG(58, 17, 0x3ff)
 #define av1_dec_mc_pollmode		AV1_DEC_REG(58,	27, 0x3)
 
-#define av1_filt_ref_adj_3		AV1_DEC_REG(59, 0, 0x3f)
-#define av1_filt_ref_adj_2		AV1_DEC_REG(59, 7, 0x3f)
-#define av1_filt_ref_adj_1		AV1_DEC_REG(59, 14, 0x3f)
-#define av1_filt_ref_adj_0		AV1_DEC_REG(59, 21, 0x3f)
+#define av1_filt_ref_adj_3		AV1_DEC_REG(59, 0, 0x7f)
+#define av1_filt_ref_adj_2		AV1_DEC_REG(59, 7, 0x7f)
+#define av1_filt_ref_adj_1		AV1_DEC_REG(59, 14, 0x7f)
+#define av1_filt_ref_adj_0		AV1_DEC_REG(59, 21, 0x7f)
 #define av1_ref0_sign_bias		AV1_DEC_REG(59, 28, 0x1)
 #define av1_ref1_sign_bias		AV1_DEC_REG(59, 29, 0x1)
 #define av1_ref2_sign_bias		AV1_DEC_REG(59, 30, 0x1)
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
