Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD844CD6E4A
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 10:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPlSYk19SJqpcREcjvlZWTsgmfH5JEBcjJlosyZvmF4=; b=lpbWsGx7WgD/yB
	nNn+SSmJoabTRnyIHViCadRSGqhd9HvaSNmKgGSW15bwnZnOc9dK7YZtovgeNbXE61Z4FfaVaL9T3
	URdyu0FJj5q7ztvDFgMua6Fz0iHBrBKe44ammccvzc+ap0Op5PiUSKRbtnmkO4GSqVIk3ZgKqfu/q
	ECC4Lf/EUbrSOseN+nPXcY3epbw51eU/LcL26m5VWemgmknbnrH0GkM+NCIU4/uxfJs8mvGduCfYa
	doo++pu4bTEhUrMWJCIAHKVaeRc0wA203pxfvzuP3OFuTqO4VEt9j8g5ozDjH6mUb8XEMikY7uJLB
	qW5rgMppWp4pyODijYag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUMBB-0000000CkeX-2u4G;
	Tue, 02 Jun 2026 10:17:01 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUMB8-0000000Ckan-2Ty4
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 10:16:59 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2bf20f6be6bso23756775ad.3
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 03:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780395418; x=1781000218; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GPHRLle9I7Nd/qZunsQNy1JsrfMY8rVkIYFRWvNrhY8=;
        b=NEBkZkjEKvAJgcI3OgF1imMtqHvSWSRtSQpcPa/cqSthpJhdkey9lKDma1agYCW+fd
         JBratAntAyOvOc28SFYN183Xd+YeCQTKzsDzSrRU07InRuEq+k34rW9SWWXtFZ0gKj9X
         D9FaZx/7E4UcST+vcwKuaxFeDKt1sH8xOyeK/RVK0kVzv2Q0hUUfmiaxeJj5cN27oQhz
         k8w10yWZHsQOq89/vURHPPDljq38XqX11JNa9wPwsM+57craN9a/HIJ/AJzQX0M/47GI
         iDDVlJssjVyduolsAiFZpHIRRTsiLC0j4rYzowCNwAG4fuEW5T/USLBPbl7K1pkYv7ap
         DAeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780395418; x=1781000218;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GPHRLle9I7Nd/qZunsQNy1JsrfMY8rVkIYFRWvNrhY8=;
        b=G2FmdIeMw85PJSHCIjJGLAKHVv0hMYLR2j5Mv5c71j15YDpD3+fC6GJtscPuICU8CQ
         RI3NRwCd/rihX8oR9UsMsO42lV7DcsI4Owp/xp35auZkhExjE1YrvG/O2e73R+jnV+EI
         Vc1Wa3V1uv7ERfilHVuwjUbH7smwE3sKkxXFzBSRj2c+ORjCkDweP5mhJeVG7dF6up8k
         awbh9GS7kTaj/ZpVGnKFA1DfPPBliUntaOUpm/nZ/D1YSz6cZSgYXgno1rkwznyLu4om
         Le/z5odNaoLDXsGabP4JKPYheM/RkbyP/I+lAlY4isobcdD910d9e4xC4U7Nw4B9Y6T3
         zUbA==
X-Forwarded-Encrypted: i=1; AFNElJ8+o5mNCkNUql86RUQlbEY7ZbCJXrkHOJtzVGPUxDYCvP6QC4emOpSsj1FfR5neK7CS8wm+dGj/4Qz7wULUIg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwvXrojmTxX8Gw6OR/Z41TFa1Lj/BW/Ad58k8MonwnHU11nc7ri
	kGWJjI1SBaO4tnlIX1sx8g1abqZSL3+bWTTp57S+IK7CeFZ62AMUZGa8
X-Gm-Gg: Acq92OH9eiWjw8mwZQqTodSqUjLM/yd9sOtoE1yCunAE+rf2PA3qADYvUQRiGredEnr
	xX7SfY7gyeAUaS92xixZhu4Ju1jLBz4lu8+VUk0JNacctf2712KRtZOKS9dwdg7HuO3cweZXv63
	C6huA6FEbYFyoEx+6pqsA2JlYnJMKj6UPEBDkJwB6SaESNP6MGuXg8cVM4s0joggz1/8SnbvOLO
	wSL5kJa8ng5mj5gTrbPVmpRokRyqBe+EboczONMFaCqhxkB4Kz5g07qH2A2D5j4jOncMAK7/3xf
	6E3l5MX+KpTUvHQfdOXypprVUq3jVesPtG68g0upd6up9N/NMEsDT8UBBcKWHDDr/upM/R9YamK
	Wrb1SZx7w2jiPUzhMeC4jppi6Iax9FAI5YJiO57+m+KcyGDYfEi6N0PGY0Rz1Ol8OK2xMScWSj0
	0PHgis0xT6vOrHog6pRDDUVsiaYHNYQJVB9jtHcGvBZjyAt4oFaNCMA1SsxjsBEiJb8K5M
X-Received: by 2002:a17:903:1905:b0:2bf:23c3:34b2 with SMTP id d9443c01a7336-2bf36867d31mr173447395ad.32.1780395417737;
        Tue, 02 Jun 2026 03:16:57 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf239fd84fsm132766305ad.23.2026.06.02.03.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 03:16:57 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>,
	Sashiko AI Review <sashiko-bot@kernel.org>
Subject: [PATCH v2 4/5] ASoC: rockchip: spdif: Restore regcache cache-only mode on sync failure
Date: Tue,  2 Jun 2026 17:16:07 +0700
Message-ID: <20260602101608.45137-5-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602101608.45137-1-phucduc.bui@gmail.com>
References: <20260602101608.45137-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_031658_669779_A0C7103C 
X-CRM114-Status: GOOD (  11.40  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

If regcache_sync() fails during runtime resume, the driver disables the
clocks and returns an error. However, the regmap cache-only mode is left
disabled.
Restore cache-only mode in the error path so subsequent register accesses
continue to use the cache while the device is inactive.

Reported-by: Sashiko AI Review <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/all/20260522103713.6C09D1F000E9@smtp.kernel.org/
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

NOTE: This patch is compile-tested only. Please help test if you have 
    the relevant Rockchip hardware.

 sound/soc/rockchip/rockchip_spdif.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/rockchip_spdif.c
index 8de5b76cfe79..7f15bc7f8f35 100644
--- a/sound/soc/rockchip/rockchip_spdif.c
+++ b/sound/soc/rockchip/rockchip_spdif.c
@@ -94,6 +94,7 @@ static int rk_spdif_runtime_resume(struct device *dev)
 
 	ret = regcache_sync(spdif->regmap);
 	if (ret) {
+		regcache_cache_only(spdif->regmap, true);
 		clk_disable_unprepare(spdif->mclk);
 		clk_disable_unprepare(spdif->hclk);
 	}
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
