Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30633C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 12:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYqj7twSXoFq2+MsxQAuVZerFXhQfMBadykieQcVI0M=; b=x6IPAQY6MzZ5NO
	niowEB7G2OPXAHELUGhLsrFuGWIr2UTmsuzaPmJ2mlWc9YtdkISJFMTu8IdO4fZefHXyfyU04qRFJ
	ItbUJ14RSXy8/vpGREbIxYledHGTCNssT5ix00URKo932K4r+thGsVIcvxWQSfBf80yl7XGOT4D0G
	ecWHmXGaSFxiBJP8YpLMObo1Zs5Nh6K80Ht5ETtNynr8oYJ52A4sWOun/gqu/ILS7MOuM8KoZPTqO
	PbWDaWh/rY2YgpWXkjMunL3MOUF+Q0L/AEVQo686CVBYwgLF3wtJytu7lDor8DLzf41ykX/hje9CJ
	8Wpq3/sH8honPaTYQQIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTrx-0000000Gmil-1gQY;
	Fri, 23 Aug 2024 12:58:21 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTla-0000000GlFI-3arx
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 12:51:48 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a866902708fso10065566b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 05:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724417505; x=1725022305; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/rp37AUE8o1pDdOTGLdrCW8KtmisO6ANjwH8PgBb0ls=;
        b=u/WdOdKm2ofphiZfF2CFQQuuN7u/8k1UPlNidb7u9RpVZI1oHO0Lplu7hdysFD9LjA
         EzvGrOLLRDX8/xiOavth+3L+cXYwQgyfaVV3wDecNnptTkP3Wi2IX2W/BGRHPejfNIlH
         C1IX8gB6E3FN1tIrXeaY2qWP2vAiNOa5TV1lP4hGWS/8AbTQv6w6lgPcyjnaPbMabvsY
         jUZj3BCkrX/pZACgzPsr9Gd/36owqy9t2eCxsQketVGZ+FodYaGgsdS2Ou9HwhqBEYvG
         aSwsFXEgAlYfeeqT/L+vv7ByzyPCMC6Q0OYfH7U8Ujt18L8jAt/BYjpKyCvCuHBV0pt5
         vCOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724417505; x=1725022305;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/rp37AUE8o1pDdOTGLdrCW8KtmisO6ANjwH8PgBb0ls=;
        b=IxKgy5oKke7fTb9zNYeB1mOZ1bvEltxqMRoq9Ndq3yeR1n6wJf6QIdXh+eZysNSUZR
         rrYF/QdOboENavbY0cViOWD/t2+mlSIWn+DGh8PiKXZew7r+bnLVnvA0lh8J5f8+vi6W
         Zjb4Ha775AbJqo5R7l+1H2IVL6sceyx17JTcVpyPJ5121QOU9Ldjqbp+9Urr9v5+BJnA
         n3oRBfOXm7adpOOq47LqGoNFsg+miHPvY6rh2wjPkGF0ThnBMIt6VHWfoduJemNundh/
         4QQm/vlvENx85Syq2g5yvvJMUSFA/7eImiSMUE0qyFmVnSPocdvZN/Eloo00CqWOSbIM
         GWbg==
X-Forwarded-Encrypted: i=1; AJvYcCVQo8iLqu6qo5aiUW2OaMDUWTixwxwqPgQmH7ugVOJFIMZZOvdnIGwNDD2ojbqDR1cUATJHaz1v1eDiAQu2xg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwPoPG3UQSiYfsCJsk4Iv9H9Q6ytIKyO85jobkJ37RyTX4IT3vv
	GJ9eMKfy83OphGzVl6LiSy1LAbLCEI4NcKiKShDwZUnpYu0q50Ry7pV/UfYV0PQ=
X-Google-Smtp-Source: AGHT+IE1+3Q98ogeUT94jLgiJMspBnSs1Bmg9/MGG8bMaWFikVo5szbklH8yaPLEJlsyUwI0svusGA==
X-Received: by 2002:a17:906:c355:b0:a86:a694:aaff with SMTP id a640c23a62f3a-a86a694abe2mr75972666b.1.1724417504852;
        Fri, 23 Aug 2024 05:51:44 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f384bsm255931666b.192.2024.08.23.05.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 05:51:44 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 23 Aug 2024 14:51:14 +0200
Subject: [PATCH 10/10] pmdomain: renesas: rcar-sysc: Use scoped device node
 handling to simplify error paths
MIME-Version: 1.0
Message-Id: <20240823-cleanup-h-guard-pm-domain-v1-10-8320722eaf39@linaro.org>
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=3056;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=RaCHoWfcvN19DBMmkgIRc0NGUjytTpFgVMcU13mcxgo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmyIXNR2zayhDCmXFhzQ1RKmq8aC4JQfASOX82l
 qQyhlx44UOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsiFzQAKCRDBN2bmhouD
 1xL8D/9RUFSYlgRZQEabYs+Zlod9oIJejL78n+4Ll7xzEa+aucx3mi/5XlXocpJxNV+gOzHmnL5
 pTAKjf9vr2rrSCFpdxWqcebEDpOfdp3FhZVpBNUc1h/OP5bjr184cjhi7i9TuCDo/iVdB0pUXdN
 M76MCTdDAD/bgYmwRgVMQpXF1J769uZTGjSJmi58B0VRQhOhJgjmrSLchp8/NAEnWPwerPXMCkm
 eB714yX5DLHHI+JfhnayFx/N2/E534xyEO1HvsBvfioJrdNphfVPfe4xI/qOHupvYmd5t+/9Ghd
 in1T0ooZnRBOqqF/8HZO+fb5oZPBETF2hHD6X7fMDmFhHDfW6lReeoDHG+ru1B6TG9NLvU0x98u
 wrOOoAXHWLuo2AT/cJjkItEh9Q4T0t0HZ4GscFMohXEJ+GKyoOgFKiAgIBfVgaeJ9bfTpT6teuW
 zljMa7caswrosPMTvLgRiWDI6NIuUAP1HdpDhMSMerJwDdR3mM18CodSRTqDknlhCH8Tff/UyzE
 YQqB1Shvtr1g7dD8+6Ajdjhu72i65o1lOBEcq/i6nT6QV3efKKqIzTcF1WoXBmdjq5ZQQyxC71v
 yN682xplaXESoBHsCxOVmTmEK5SdClLG2XTLvLhB2ErFuaqOK91wtibYaqRUCEPcNvHLuNxW/fR
 7csJsV6ahkbU4zA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_055146_913727_B5DCAE2E 
X-CRM114-Status: GOOD (  15.04  )
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

Obtain the device node reference with scoped/cleanup.h to reduce error
handling and make the code a bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/pmdomain/renesas/rcar-sysc.c | 28 +++++++++++-----------------
 1 file changed, 11 insertions(+), 17 deletions(-)

diff --git a/drivers/pmdomain/renesas/rcar-sysc.c b/drivers/pmdomain/renesas/rcar-sysc.c
index b99326917330..da169eed638c 100644
--- a/drivers/pmdomain/renesas/rcar-sysc.c
+++ b/drivers/pmdomain/renesas/rcar-sysc.c
@@ -6,6 +6,7 @@
  * Copyright (C) 2015-2017 Glider bvba
  */
 
+#include <linux/cleanup.h>
 #include <linux/clk/renesas.h>
 #include <linux/delay.h>
 #include <linux/err.h>
@@ -348,12 +349,12 @@ static int __init rcar_sysc_pd_init(void)
 	const struct rcar_sysc_info *info;
 	const struct of_device_id *match;
 	struct rcar_pm_domains *domains;
-	struct device_node *np;
 	void __iomem *base;
 	unsigned int i;
 	int error;
 
-	np = of_find_matching_node_and_match(NULL, rcar_sysc_matches, &match);
+	struct device_node *np __free(device_node) =
+		of_find_matching_node_and_match(NULL, rcar_sysc_matches, &match);
 	if (!np)
 		return -ENODEV;
 
@@ -362,7 +363,7 @@ static int __init rcar_sysc_pd_init(void)
 	if (info->init) {
 		error = info->init();
 		if (error)
-			goto out_put;
+			return error;
 	}
 
 	has_cpg_mstp = of_find_compatible_node(NULL, NULL,
@@ -371,8 +372,7 @@ static int __init rcar_sysc_pd_init(void)
 	base = of_iomap(np, 0);
 	if (!base) {
 		pr_warn("%pOF: Cannot map regs\n", np);
-		error = -ENOMEM;
-		goto out_put;
+		return -ENOMEM;
 	}
 
 	rcar_sysc_base = base;
@@ -382,10 +382,8 @@ static int __init rcar_sysc_pd_init(void)
 	rcar_sysc_extmask_val = info->extmask_val;
 
 	domains = kzalloc(sizeof(*domains), GFP_KERNEL);
-	if (!domains) {
-		error = -ENOMEM;
-		goto out_put;
-	}
+	if (!domains)
+		return -ENOMEM;
 
 	domains->onecell_data.domains = domains->domains;
 	domains->onecell_data.num_domains = ARRAY_SIZE(domains->domains);
@@ -403,10 +401,8 @@ static int __init rcar_sysc_pd_init(void)
 
 		n = strlen(area->name) + 1;
 		pd = kzalloc(sizeof(*pd) + n, GFP_KERNEL);
-		if (!pd) {
-			error = -ENOMEM;
-			goto out_put;
-		}
+		if (!pd)
+			return -ENOMEM;
 
 		memcpy(pd->name, area->name, n);
 		pd->genpd.name = pd->name;
@@ -417,7 +413,7 @@ static int __init rcar_sysc_pd_init(void)
 
 		error = rcar_sysc_pd_setup(pd);
 		if (error)
-			goto out_put;
+			return error;
 
 		domains->domains[area->isr_bit] = &pd->genpd;
 
@@ -429,7 +425,7 @@ static int __init rcar_sysc_pd_init(void)
 		if (error) {
 			pr_warn("Failed to add PM subdomain %s to parent %u\n",
 				area->name, area->parent);
-			goto out_put;
+			return error;
 		}
 	}
 
@@ -437,8 +433,6 @@ static int __init rcar_sysc_pd_init(void)
 	if (!error)
 		fwnode_dev_initialized(of_fwnode_handle(np), true);
 
-out_put:
-	of_node_put(np);
 	return error;
 }
 early_initcall(rcar_sysc_pd_init);

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
