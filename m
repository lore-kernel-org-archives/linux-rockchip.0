Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AC40C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 17:23:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9950F20809
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 17:23:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="pM31W6GE"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9950F20809
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linkmauve.fr
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3EOSaLuV5fgStlzUL97lYN8phrfMXxeprumH/OgIZ4w=; b=pM31W6GE7xrWrQuJnpbwg7Kb/
	Ei+XCNQmZAiqDZF5pCaAwXqMWCabXq0Qd4yvRf/GuEVCTHvx4uRN9w7O+/gD/8spoDg6AxXOQad31
	82ITsS7AGPXpTWTESBP8jQWB7zhHqdovdwC6wfIH34VS8ste94ZJ2rKLTjqFiNYg0iQfppVjqkPeX
	RVxGU70P3m5lOoreg9uSdO0UoLAvmOkIjTWE1gIiRjQsXv59BiFgsbS7o7/pM43SF+U1BsYzaSno2
	aPwppo1m00dHo30Hc3qG0vNWIyIHSHpjiUqgjmyrr2G/qtCEZn27ZxzvSwSzeBWzOs+m2oVKlZX5G
	rrt96rbIQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcAtV-00032H-78; Mon, 09 Nov 2020 17:23:53 +0000
Received: from [2a01:e0a:828:c7c0:49:5ff:fe41:d261] (helo=luna.linkmauve.fr)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcAtT-00031f-LW
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 17:23:52 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
 id EA159F41592; Mon,  9 Nov 2020 17:23:10 +0100 (CET)
From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH 2/2] media: hantro: Use VP8 lengths defined in uapi
Date: Mon,  9 Nov 2020 17:22:44 +0100
Message-Id: <20201109162244.16531-3-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201109162244.16531-1-linkmauve@linkmauve.fr>
References: <20201109162244.16531-1-linkmauve@linkmauve.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_122351_809017_8F721D43 
X-CRM114-Status: GOOD (  10.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
---
 drivers/staging/media/hantro/hantro_vp8.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_vp8.c b/drivers/staging/media/hantro/hantro_vp8.c
index 0e02d147b189..91ec9a05645b 100644
--- a/drivers/staging/media/hantro/hantro_vp8.c
+++ b/drivers/staging/media/hantro/hantro_vp8.c
@@ -23,11 +23,11 @@ struct vp8_prob_tbl_packed {
 	u8 padding1;
 
 	/* mv prob */
-	u8 prob_mv_context[2][19];
+	u8 prob_mv_context[2][V4L2_VP8_MV_PROB_CNT];
 	u8 padding2[2];
 
 	/* coeff probs */
-	u8 prob_coeffs[4][8][3][11];
+	u8 prob_coeffs[4][8][3][V4L2_VP8_COEFF_PROB_CNT];
 	u8 padding3[96];
 };
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
