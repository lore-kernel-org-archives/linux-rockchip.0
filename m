Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 586A5C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 12:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgdkXdHDlutGWAaT3gITpewt1jKG7nKs/mvFPIwp0aQ=; b=w6EE/tcFFGnnNZ
	jBHQoG8JB0mPzIJtmDiyj0rWJyjhrn3rKOmreXVtFx7m7k7dy6/jmTjoITJSjt6Djry1+R2+4/ua8
	0ZAw+JiqBcGil3Z/ShxPNxgP76u2tRFxM5TI/BOaGB6RT5vX63L6DPy2BKjY9986Dixa6VPPz7HhG
	nCqRU+hbxvadtYJoWjheztdEGmUkSCk2/Fpefz2fz1Qf2v8S4b34h3WI6hJlWtmiZI96ayg5ADeI/
	JIx44IqmeaoIrLX7KgV9OVCA8BE7O1iyjjPUuB7DPCSMV1HXUoO65qS+Wa2/C0gZ11/J3xlfUaiE0
	ny2Kep7j2/tfluY17sUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shToI-0000000GluW-30qR;
	Fri, 23 Aug 2024 12:54:34 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTlO-0000000Gl9b-2S71
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 12:51:35 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a866966ffceso8870566b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 05:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724417493; x=1725022293; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iRxioGT7mc7f/KyEL+IMNJTNgSsqnXXhip1lqUSU6yA=;
        b=rmmCBU3RVp1KqQU9LclXcdpAdtIV6fbIu/tHmxhz8Uw6OF8VXQjsVzVGE6uypRn4sc
         pSPxOMl6eNpD22Lqmsc4rYLrKTaN9Zjz88BJLKwHnJxGhllBDnFhvaW2+czhneaWhaNs
         /5VXio5ugNryIYx6rJhJjaf+WXqpSX0bJO7/juNTkM+IiUHIs8nwoGon/QvWm3u7QMjg
         C6u9RG1KmKn0x3wSfc+8q+c8IX4cU+TMlfsRT4WJLhVVgUbN/El7Cyelm+yF19UCOspD
         wMoTNhfkUD5hx13fxG4aTVdpYKi0uwXb0cixsQMsCW5AsWi9GeP3LLW8bWoHiMWFCZVu
         wqvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724417493; x=1725022293;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iRxioGT7mc7f/KyEL+IMNJTNgSsqnXXhip1lqUSU6yA=;
        b=wMUuOyPCz/1vmnoknP++lwpBoJS1XkzFnwgUtF+vcHFu+z0NE1VGE9EM2weGkvEoCi
         RhU2rOSsPz9nbZ1AZaNZ1kdfx3u/Z0Bi75+wU1N5mOjD3njtV1wGYad7jqGDDz1Q7kmm
         Ej7mDfHqRx5+TXp4qfEK6KBjl7CTXxefWnlZodXGjnxtF1M3ApLFShFjN1bieXJI+K5R
         FfmQehM3asXLB0VsFOr+y7rFAk1R/WQ8rUvp7AIZFMobvqP4uBDQMjYmkvd/KpN5RvMM
         tSuKMui9CuZKpVxIH2qfFHGpx9lvrRlfE1C0hlRcTlKihOWVgez1Km8ega1jchtAtymw
         ZgIA==
X-Forwarded-Encrypted: i=1; AJvYcCUcUgii2/K3c7wGO+0kjTApoGZAoJF96RStdRTPWh+ZTJY95aDeaIGjTvn8D043VjHHDGhOY0oWpV3HhQtWxg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/2f9uQUrs7D2oHbOMCWEl+kKWqMBPNyomdOGQSGDKFWb3IzYq
	Izr0CoXye+VvQ/n/B0uknEmCWWHjuu4nXqgErElZSsHMtUWRSsTXYc5W7gWmLNk=
X-Google-Smtp-Source: AGHT+IHMocKCRFEh+CWrcVL8T1z7ail94X2HtRLfeci96aOjLekKRRPWfihiPmUqT2nRTIvout3Lmw==
X-Received: by 2002:a17:907:7e95:b0:a7a:87b3:722f with SMTP id a640c23a62f3a-a86a52b15d1mr93167966b.3.1724417492678;
        Fri, 23 Aug 2024 05:51:32 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f384bsm255931666b.192.2024.08.23.05.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 05:51:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 23 Aug 2024 14:51:07 +0200
Subject: [PATCH 03/10] pmdomain: imx: gpc: Simplify with scoped for each OF
 child loop
MIME-Version: 1.0
Message-Id: <20240823-cleanup-h-guard-pm-domain-v1-3-8320722eaf39@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1900;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=6qWKewqo7/bxcFlu9EkD12hoXBrxu7JPlLAdc+zUmSI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmyIXGryEowWY/W/NRlv0M7ukHF8AYtODYM2+yB
 /lAA0KMckOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsiFxgAKCRDBN2bmhouD
 18Q2EACKdgYqni98KR6DjkFKNTDdlnmQiPfC/qbDuSnGBnEHXyalbvgwz/aMLrsZ3GSBujZsFhU
 r7C2rdmokdifJOlhbP2COkCyb4D2KLy+EMJbLpqxQck74O3r7gLnBLe/Mt0e8RstNveD9o04L8N
 IMeUE8J3ASsB+IDsZ3KaFzO5+0q3PzFNPLkU0//h6a1ecdI7hDQlzv3moQkVjP5c1pnpd6prkbD
 n4lXn80mN4rSPMzRgIau/BXt3rxEOk4raqNjnWfcnkYcTpmz1LsKkN/ELHKd4ocNArnEhMB8jNU
 c/7vsNUOZPwLCJftpXX3fIbEOD6gN6khFFtkDJprS5po4aAFbSTwgvdDXnpqz8PA9DTMXkCSs9U
 xgUaLY1eJcIqudLRYBSSUIpnn2MAQjNi0jPxfQAkXBuMKJoC2pBMs7sZPzOGkcECbGH6BLqG1cY
 26ZXqF9QACoOltgPRiNpO+mcx6ugDyvzoOF4kfXn2aN75iPIcbP+iJdJyyeYa9WoTo/juGjFdZC
 gq+M5hrVm68lUiJVb48Izn2LMSc8oAcXs2Kcu8XrNJcWzpnwYvk7cMQro4V/7xv0xTh9wQYodP5
 AtRTAd0er+83B7fur7r3B5K6piGdH50PPRVLIy36uZPybik94FX61eQrBhk5oNtnT673W6jg7L6
 eiFD4ui7kSmU3xA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_055134_640452_A288CFBC 
X-CRM114-Status: GOOD (  12.92  )
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

Use scoped for_each_child_of_node_scoped() when iterating over device
nodes to make code a bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/pmdomain/imx/gpc.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/pmdomain/imx/gpc.c b/drivers/pmdomain/imx/gpc.c
index 9517cce93d8a..80a4dcc77199 100644
--- a/drivers/pmdomain/imx/gpc.c
+++ b/drivers/pmdomain/imx/gpc.c
@@ -455,7 +455,6 @@ static int imx_gpc_probe(struct platform_device *pdev)
 	} else {
 		struct imx_pm_domain *domain;
 		struct platform_device *pd_pdev;
-		struct device_node *np;
 		struct clk *ipg_clk;
 		unsigned int ipg_rate_mhz;
 		int domain_index;
@@ -465,28 +464,24 @@ static int imx_gpc_probe(struct platform_device *pdev)
 			return PTR_ERR(ipg_clk);
 		ipg_rate_mhz = clk_get_rate(ipg_clk) / 1000000;
 
-		for_each_child_of_node(pgc_node, np) {
+		for_each_child_of_node_scoped(pgc_node, np) {
 			ret = of_property_read_u32(np, "reg", &domain_index);
-			if (ret) {
-				of_node_put(np);
+			if (ret)
 				return ret;
-			}
+
 			if (domain_index >= of_id_data->num_domains)
 				continue;
 
 			pd_pdev = platform_device_alloc("imx-pgc-power-domain",
 							domain_index);
-			if (!pd_pdev) {
-				of_node_put(np);
+			if (!pd_pdev)
 				return -ENOMEM;
-			}
 
 			ret = platform_device_add_data(pd_pdev,
 						       &imx_gpc_domains[domain_index],
 						       sizeof(imx_gpc_domains[domain_index]));
 			if (ret) {
 				platform_device_put(pd_pdev);
-				of_node_put(np);
 				return ret;
 			}
 			domain = pd_pdev->dev.platform_data;
@@ -500,7 +495,6 @@ static int imx_gpc_probe(struct platform_device *pdev)
 			ret = platform_device_add(pd_pdev);
 			if (ret) {
 				platform_device_put(pd_pdev);
-				of_node_put(np);
 				return ret;
 			}
 		}

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
