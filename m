Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D525DC001B0
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Aug 2023 14:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K9xJClZrq3C5bBN9JLi5J2AXUIaXoNSbgSFOq19vAdE=; b=PFs7Qmy03eVPe4
	+bGMDi87Et+yLzzPTbzPjF/4U19FjNDRcSPH8R31EDIr4wgwrVp5Tw9ZRryDSEP5T1noEBd788klE
	vq9/9rq4bWUgTQ/vIYdXfZ06FI4E02P/jkVWZ1JOJ9m4M2wjJGaMxEZPpeTKeSc1K/4K3f6qSxGgY
	Px3rRIVaj3fZqWJ/5STtoxrFPO9DcUvhLg+5kZfBS9sDbEs2q1WTFXh62Lk/bdll1GUwI3Po8jVDF
	50xJe4QES1RLGAllrbFvbMfNqCoHKmiYys6M/hjTBLR06NsEinxgH6TVV2ZSxMLpFgNNHcYdyWa+5
	Lw/osNuNsyQUuufj0Isg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVv5k-001ljY-39;
	Tue, 15 Aug 2023 14:32:16 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVv5i-001lhr-1y
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Aug 2023 14:32:15 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3fe2fb9b4d7so49764275e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Aug 2023 07:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692109931; x=1692714731;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xamr+VMNIiHUxs+t0NwOpENr1FFmryIpP13DFeFEEWA=;
        b=LoYhl7NX/UL3BuSxqil5bfW/WK3lS/sX7oKzuSlIs3D6b8d1vrI6S1GUJ0MljNiP1a
         Nx8m5uTAxHEOQLqP5JdVxF6Ncwzl/Ivxk8W8PGkF2r77Zp7Y5764sMNyl3G2UOrjBcHM
         ltW+nhHT5rBAB3+AgdhxwHzDSrNPJ8zyzIRrzoNAo4JTncp+6EPhzoG76abqKPOa6cZO
         Q/K6+nknXLfmorIK8dwhMOZEba6mJq+LP69fKWHeSgcUYTICHb0lsMp23zJL9bXcRzJq
         e43ggn7VpP9aTCIkopUTqDCwyLWTHpEAXAaA/gO2s+7dgfHVDsp/j6DQAu2gFBNmtvo8
         AvGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692109931; x=1692714731;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xamr+VMNIiHUxs+t0NwOpENr1FFmryIpP13DFeFEEWA=;
        b=GjQLEfFTB3jchUt/fygt5kJu6CPUIYCqi2Fz63jwBSlPh+P/BDDlSXU6pYJ5k68+jM
         ejCnBnBgsgCJAzHX6/jnB8feH2nzFABrRVwZre8FKJBQhAZ6Q1DxgJq3MpW8244DqZyc
         VjmCYWjsfoJLit42GsMve2gOA+1BFROTnSml289rSsVDLRyJ//aGPQX+EsamFbUnTyQm
         oqrVMtdwTffXTQGcHsEawMHDLyrWJlZJNqJbfG7Eg0c8t5kJEaA3fuuvHtG5MJpvTnJG
         tp4J+uIWYpWh2rvT/e6rrxXJg+VE1kSnSvwAO8SGMtzs6S61lPZPbRBGDtV9PwlY1Omn
         V2SQ==
X-Gm-Message-State: AOJu0YwCIjqdLinOkwfp6dZAEgxBRxv/rzbf1MTa77xclyQKH+wLagqJ
	a947BpyjV/hFfre9baG8qXOGFQ==
X-Google-Smtp-Source: AGHT+IF1krISD3AJXDPMTk0PBHJrfPjmRe6TLvoVjuU6BZ513y89qdOLID/M+Pv483mdRwQq//j3zw==
X-Received: by 2002:a7b:cd99:0:b0:3fe:14af:ea21 with SMTP id y25-20020a7bcd99000000b003fe14afea21mr9607003wmj.21.1692109931122;
        Tue, 15 Aug 2023 07:32:11 -0700 (PDT)
Received: from krzk-bin.. ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600012cb00b003177f57e79esm5851481wrx.88.2023.08.15.07.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Aug 2023 07:32:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	patches@opensource.cirrus.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND 1/3] ASoC: codecs: tlv320aic32x4: Fix Wvoid-pointer-to-enum-cast warning
Date: Tue, 15 Aug 2023 16:32:02 +0200
Message-Id: <20230815143204.379708-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_073214_667488_524EBF45 
X-CRM114-Status: GOOD (  11.69  )
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

'type' is an enum, thus cast of pointer on 64-bit compile test with W=1
causes:

  tlv320aic32x4.c:1352:18: error: cast to smaller integer type 'enum aic32x4_type' from 'void *' [-Werror,-Wvoid-pointer-to-enum-cast]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Resending because thread got duplicated/messed on the lists. I also
dropped patch for aw88261 from the series, because it was fixed other
way by Arnd.
---
 sound/soc/codecs/tlv320aic32x4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/tlv320aic32x4.c b/sound/soc/codecs/tlv320aic32x4.c
index ffe1828a4b7e..6829834a412f 100644
--- a/sound/soc/codecs/tlv320aic32x4.c
+++ b/sound/soc/codecs/tlv320aic32x4.c
@@ -1349,7 +1349,7 @@ int aic32x4_probe(struct device *dev, struct regmap *regmap)
 		return -ENOMEM;
 
 	aic32x4->dev = dev;
-	aic32x4->type = (enum aic32x4_type)dev_get_drvdata(dev);
+	aic32x4->type = (uintptr_t)dev_get_drvdata(dev);
 
 	dev_set_drvdata(dev, aic32x4);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
