Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C9E1C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nw5D9PL28VLRabcNsgYM46eDfKZGxGP4CknHbj37MtQ=; b=4kQRsQ5NWqlEli
	zerXqVHM+hlmi6Xc3w8cu03Zc0jPqEeagISi3QdxkhVQh09qhyu/srfbYnxPBNlps6NQgpn46abZp
	M/9j96waQHlH+oqQx3QHrXB5hfsTZz+sBttsVzyrHfWAYpoOoust4vaDEKss0PkmXM9E5VHAHQKIF
	2NC2EvQxX1nrulwcMQP/UFCF0Sc33P3siESzg8M60l8Zs0Jt5fd+UjudrzAgE16e/q9et1t0qkrqK
	q0m9QciYRpphKc2D4L00jWdxozDF+xpIJ4BZXpcRpYWAf1pLmxwE71KzrlBoKEmeh619Bm42LLvm6
	630KEt0o8af9/y5NX3Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTtO-0000000Gn1m-3AZf;
	Fri, 23 Aug 2024 12:59:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTli-0000000GlHA-12L6
	for linux-rockchip@bombadil.infradead.org;
	Fri, 23 Aug 2024 12:51:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=FrO9VIOVY0Ri5IaSOP2cHACmrrm/g6eQHTHu7wmBZg8=; b=TdGLeBEhJwtagJbsGakqgoSdLj
	9tNKqRcP2IluMKcCY665AUcQ4bk8WJbIzcSAhm7G8Zq9P51mG0PqHfla6ZB9wcA8Y69EsMTBgY2Vb
	KD49R5nYvkO+bHEM2vl0EEaejTUMAn0M0waDDZLmrCmLXp84GFd1Qw5zJ9x74I1PaiuUyOkufOyxX
	urWu1qynYo3cis2ZfJ7+XHrqObUyvZb8Qi9dpnmQmG2tQfiSebTDUAstLOzsUE1X1+aa1SX6eha2H
	PFWtN2L/Bu2B2c6yhu0XlXertG0bGL4Fr2DJ2IDxWujQdzWBRdksrGoFuQf2RgkoAh6atJ0Z3N8+R
	0EGDaGiA==;
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTlb-0000000A8Wk-0EFx
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 12:51:51 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2f3f2b86b2dso2492841fa.3
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 05:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724417503; x=1725022303; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FrO9VIOVY0Ri5IaSOP2cHACmrrm/g6eQHTHu7wmBZg8=;
        b=O4hDa08fSkOs6UavaMHbIc4h/9d0wNiUu9YjPCA259xWMadbQKLvH0B19kPYOuMNjV
         qhDzddwHePhYhM+BSUOnmlZFvmI6lr5lalPxOMsmrXELhkVW/4M+s8sTUShnlIOr0wcO
         cwVMBUB1X8YNUWRros4J3PwlJBE7iQtYSqQMZl/PHbE7qcVUwngk0+XKMqVxKs2znf6G
         Ih6N5+b54kru/ob4lov6/QdBBpHRnvAeiSuc+76OChNI60+gthglZP/n/vmsFDRDhWc9
         l5QwFbLkTVbwwVcwQFCXBgCbVNC32kMN5L6JYFA2RsXG39h96ZkToIwiCWm4DYfl3Sz1
         yzhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724417503; x=1725022303;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FrO9VIOVY0Ri5IaSOP2cHACmrrm/g6eQHTHu7wmBZg8=;
        b=ldG6jMnSnjZHM3F7UKtHprq2rc/tP96JrHdf6cd/OM8XrIsVFdjtHjpTSkikbTLfKz
         YCoiyHBXle0uXHk58Xo9J4JehfMyh+wb0U41VkjAe7luxuOVazNREmNAm1UpHki7usn7
         /uNlwACD2+fHZmqPNWyZdjd4peutMfLLAvaqaTNh61xgtpS/hfY8oTWd6tm7ZM9sThba
         cyiDz/JJy6sO+rzNp2f9bCMyzopih/GaoJ+TGWVNiBJpxGmnDnKwO8Y/XnnAcWqLjTtM
         Nc5ilO7UZVZjSmimY9D2VnNyDKCr15kbnbqeN84ioWWNqls8PVSLs3abItaL56RL/KG7
         LIdg==
X-Forwarded-Encrypted: i=1; AJvYcCUF8uOv0JDxBHQxGBlRALtsTBitQ7DX+CMJO039D4L7VD5ehOYr3Cqvpu7rreK0pSOkwEeysojNRN9VuBCnPg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzKjl+/D3UhEBuMfABDCyxymiIByBXSJnQ/5l3wzJoGte2tRsi1
	H1rQ499EzL1vtL4ATUyzlGtvdN15SvGjY3tWWwnlm9phtD4c8M1kko2g86Fa+jM=
X-Google-Smtp-Source: AGHT+IHQt6XsQjCUfkUrlag0GNPSCDr9z/SiyDUFBx8p2vfO9ppalFsmm1bqmGaVYaUEm16X8IjYbw==
X-Received: by 2002:a05:651c:2204:b0:2ef:17df:6314 with SMTP id 38308e7fff4ca-2f4f4932c8dmr7795291fa.4.1724417503135;
        Fri, 23 Aug 2024 05:51:43 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f384bsm255931666b.192.2024.08.23.05.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 05:51:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 23 Aug 2024 14:51:13 +0200
Subject: [PATCH 09/10] pmdomain: renesas: rcar-gen4-sysc: Use scoped device
 node handling to simplify error paths
MIME-Version: 1.0
Message-Id: <20240823-cleanup-h-guard-pm-domain-v1-9-8320722eaf39@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2725;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=XWmH+Hl1yGiIFL5fYsxLdEp7Bwy4xbJyw8YwEuJJ1k0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmyIXMuhF/r6XYZvbssPimAH7xSy/VPxtyP2RAn
 SKx6v/2vH+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsiFzAAKCRDBN2bmhouD
 1xx0D/wOZ/Gin9mdDLVFXUWB37LsDCwOjzZhR9qfsq0n6W6JYFtvECA3bgQpv4nW/mYAB85dr+j
 ro8zgDq5YXul9FfRGG0ATZvZT2gcCHL/oAnDreUc8vfZLsSlJ1aX84TFJomiW+mQ3XXwCRmsZHB
 1T0CJt70K1YB2eltp8jp0dig71yi2HdMF6UYhbDo/gYVGtlFtNiYB67Kwdw0UOeW9YzcmeFi6YK
 Tz8GvX3QEooih+bxbIDhHX8Z1IKftzyzty+quNuwmYUOyDi4eSZe2mp4j0/FoaW5MlY31kxW0rp
 3S9JXPQfyAUVLKdG/0FQQEI8YLTvcupNPFisaS4Bby2Sn1U517UKrVFAFpZ9TDPTzWPFeQ7DUUe
 N8kAyUNMyWN+WNJx+ECpszWWFmk9bCNiZvIJN6pNvCy9N7GzJqATm4RWSxqwOZxL8H0sDTvlx5c
 SQz+eEInbU7p0zcJom64jgD1i2plMUsbuoINKbgMq1y+QdsEBmRi6astV/l1pDUIofIKm/A6u3Y
 N6sQEDEDv1e7tknn9+k5mh99Qk2SjG6+f2mhpMyv/XuC4yKpoHnihKWMMjM5xv97lj2iR1d0N26
 3YLDkz0E6IEUTDsbNmc1w4Q/VgIsWFghm2U0TXGnTuF57hccO1BnQ1aFdYOM38AO3rCHpOxw96L
 jO9lsFhJ2yrQ1lw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_135147_702180_2418E254 
X-CRM114-Status: GOOD (  14.16  )
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
 drivers/pmdomain/renesas/rcar-gen4-sysc.c | 26 ++++++++++----------------
 1 file changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/pmdomain/renesas/rcar-gen4-sysc.c b/drivers/pmdomain/renesas/rcar-gen4-sysc.c
index 66409cff2083..4ca85dbdedc2 100644
--- a/drivers/pmdomain/renesas/rcar-gen4-sysc.c
+++ b/drivers/pmdomain/renesas/rcar-gen4-sysc.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/bits.h>
+#include <linux/cleanup.h>
 #include <linux/clk/renesas.h>
 #include <linux/delay.h>
 #include <linux/err.h>
@@ -303,12 +304,12 @@ static int __init rcar_gen4_sysc_pd_init(void)
 	const struct rcar_gen4_sysc_info *info;
 	const struct of_device_id *match;
 	struct rcar_gen4_pm_domains *domains;
-	struct device_node *np;
 	void __iomem *base;
 	unsigned int i;
 	int error;
 
-	np = of_find_matching_node_and_match(NULL, rcar_gen4_sysc_matches, &match);
+	struct device_node *np __free(device_node) =
+		of_find_matching_node_and_match(NULL, rcar_gen4_sysc_matches, &match);
 	if (!np)
 		return -ENODEV;
 
@@ -317,17 +318,14 @@ static int __init rcar_gen4_sysc_pd_init(void)
 	base = of_iomap(np, 0);
 	if (!base) {
 		pr_warn("%pOF: Cannot map regs\n", np);
-		error = -ENOMEM;
-		goto out_put;
+		return -ENOMEM;
 	}
 
 	rcar_gen4_sysc_base = base;
 
 	domains = kzalloc(sizeof(*domains), GFP_KERNEL);
-	if (!domains) {
-		error = -ENOMEM;
-		goto out_put;
-	}
+	if (!domains)
+		return -ENOMEM;
 
 	domains->onecell_data.domains = domains->domains;
 	domains->onecell_data.num_domains = ARRAY_SIZE(domains->domains);
@@ -345,10 +343,8 @@ static int __init rcar_gen4_sysc_pd_init(void)
 
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
@@ -357,7 +353,7 @@ static int __init rcar_gen4_sysc_pd_init(void)
 
 		error = rcar_gen4_sysc_pd_setup(pd);
 		if (error)
-			goto out_put;
+			return error;
 
 		domains->domains[area->pdr] = &pd->genpd;
 
@@ -369,14 +365,12 @@ static int __init rcar_gen4_sysc_pd_init(void)
 		if (error) {
 			pr_warn("Failed to add PM subdomain %s to parent %u\n",
 				area->name, area->parent);
-			goto out_put;
+			return error;
 		}
 	}
 
 	error = of_genpd_add_provider_onecell(np, &domains->onecell_data);
 
-out_put:
-	of_node_put(np);
 	return error;
 }
 early_initcall(rcar_gen4_sysc_pd_init);

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
