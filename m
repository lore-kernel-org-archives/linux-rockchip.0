Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 050A2C4707F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:06:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B6A3061028
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:06:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B6A3061028
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PnyrJb+nG7rbHav5oDfZ5OUbTg9q3rz6kRsjF+smnOA=; b=QiVvGxuB0xJLRB
	dIdeTS8kG1y8Dw0AWMqkD93YesynY6Zbe4WoCiP9K2TrVGrrgcYo2jh1yAXrknNZlobxO1DJ9Tw0Z
	ZgQA/DtSFaAi1pAedXvp+WRuxqOO41h76KMXVpzq418+fdpDbY+d65gwKqY4rZsM6gNsfrSi5Tp1W
	iuFuEtVQLH6H0oWISnHKl1UWpyO4CO5rMWnL9ce/xTto0iZucb39p79g/voAYpYKBskVdBpV1Lx2j
	ayWIbaj/FT9nWx91pnjoKKBE+Ew8APi0zXqilOrUXx0YRnhtxX0yU3Y5Q5IeZ6SJp18LwCstpmCBy
	/BTkJOfnjmF2645Um27w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmJSN-007vBk-UP; Thu, 27 May 2021 17:06:04 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmICJ-007KJx-45; Thu, 27 May 2021 15:45:25 +0000
Received: by mail-ej1-x631.google.com with SMTP id ss26so830794ejb.5;
 Thu, 27 May 2021 08:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tWh5VnD7cFHZl8C6HW0Fm8ub9f2GQzag/b5XhoSI/fU=;
 b=q9fQcC7wLe3lM0iph0SsisC3/aNTsM/GvBZwFDBeMPskHAlxRJak3yrR5oACerI8QO
 sOP97Qu/BdABWfOPRMwtEofpFUkYV/kuw5pmh5JPGcZe/ZQhQbjAjIbbi5NV8aLYCVmr
 IGe/1iz0dMUE5AmqStxMoWET4S1SuwowwRiRSBTQ0TKMQ/r20Q5dHuVkZ9WR3k0OaK2r
 TfjGqMpNunVJXd+Hi3ipSzUdo08wD+6qjsjjUlBqwW+NL6lAQUPV2WTom7Q3BJ8bVdfF
 wMaOPBmiUB7xrh0cVBbXlRuCckH1oo5gCq4YkEPZR9p5TPyDS6rtLxVsx9ytEPJWDUIL
 zYTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tWh5VnD7cFHZl8C6HW0Fm8ub9f2GQzag/b5XhoSI/fU=;
 b=FoFnuA3TtN9gjTAI0aTIeO0ENCWiIz0IktfACF5SROugredGrzcckkP8WlX2yKwBlk
 tvcQdg6TSo1FpsrJGBByL3PFMKxNMToLnwu99L72NycgAUM9X/RrM4gixYpZWHLBUy2w
 ok4qCHWzbOEyCuY1fa6FVpzGECENpIRjGNIBHoBAgjnoI/H3aRmg3Ntd4Y0LPbdyti/2
 G4DV8eVsf639HnkZiE9ICjDNjzxemD8TyEJnD8YCwmwTPKa5ITYN8J8hwKefW+81Rfsd
 VGVXuzwBh+DoyJ3pH1U01RSgj6HGxRKIq7ZS3qfVg28bTJiPOWyANABF4fbYxJ86+mf2
 CsVg==
X-Gm-Message-State: AOAM531GYMGsYRKjR+bL92PF90MIpiTIO2kvOW+APEIWjjkRP8hvWSoD
 R8k15IU3q/aZe/Ygh6AfzQ1dv0/bfDfT
X-Google-Smtp-Source: ABdhPJx72nszVqk+UI7jolgi7GYA7GGvBFxILd6po326xUR5QN1cFlYUVmwLbXdRjxkIy45WaDcKRg==
X-Received: by 2002:a17:906:5211:: with SMTP id
 g17mr4525723ejm.281.1622130321132; 
 Thu, 27 May 2021 08:45:21 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:fefd:4d98:c981:7f97])
 by smtp.googlemail.com with ESMTPSA id
 u6sm1178826ejr.55.2021.05.27.08.45.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:45:20 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/12] media: hantro: reorder variants
Date: Thu, 27 May 2021 17:44:47 +0200
Message-Id: <20210527154455.358869-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_084523_514135_E117DB3F 
X-CRM114-Status: GOOD (  13.75  )
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

Reorder variants in hantro driver alphanumeric.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

 Changes in v2:
 - added patch

 drivers/staging/media/hantro/hantro_drv.c | 4 ++--
 drivers/staging/media/hantro/hantro_hw.h  | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 2f6b01c7a6a0..2f7035a14804 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -486,9 +486,9 @@ static const struct v4l2_file_operations hantro_fops = {
 
 static const struct of_device_id of_hantro_match[] = {
 #ifdef CONFIG_VIDEO_HANTRO_ROCKCHIP
-	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
-	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
 	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
+	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
+	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 3d8b53567f16..bbdbdb90b628 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -160,10 +160,10 @@ enum hantro_enc_fmt {
 	RK3288_VPU_ENC_FMT_UYVY422 = 3,
 };
 
-extern const struct hantro_variant rk3399_vpu_variant;
-extern const struct hantro_variant rk3328_vpu_variant;
-extern const struct hantro_variant rk3288_vpu_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
+extern const struct hantro_variant rk3288_vpu_variant;
+extern const struct hantro_variant rk3328_vpu_variant;
+extern const struct hantro_variant rk3399_vpu_variant;
 extern const struct hantro_variant sama5d4_vdec_variant;
 
 extern const struct hantro_postproc_regs hantro_g1_postproc_regs;
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
