Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C88E9C5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 16:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1ef0ZgIeytgtGeqF1Ltuq+G3tCdvYhTbP9LP4eoH3A=; b=y9nYJ53DamO6o1
	YJ4BiqmFTOiu7g0ZGj6bz+qIMOcDlOIKFBZqBIpSv6NL/loR+kcmdPmleyEL9rRtHtwUu+f+hwmKY
	+djQws6txTnRbRD/5KKtzYgpPenyZLQ/hBm201F9IDyVSoLi8xYo3EZVsiw50JTFNtzUC9wIla0+w
	aJvmC2W9UjRPXLvLQ1+HeP9q3qd+8hjHBm+GhvlTxMfJpiJ7ffjt1Kol09MT9GKI18QD39s/boNvq
	9gtiF5LWxxmn1l6vh5KXxek8gcRuLCy48kLgReI6TUd73pHHlkC7wfieRB4L8vhRcDz/G86HW6cCV
	2woHnFzj9q2nJVx+fkYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siclj-0000000837q-0ifZ;
	Mon, 26 Aug 2024 16:40:39 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sicjq-000000082gy-3LD0;
	Mon, 26 Aug 2024 16:38:44 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-53345fe848eso1019459e87.2;
        Mon, 26 Aug 2024 09:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724690320; x=1725295120; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=752Mrptz3EsbmUrr2Glsdy9heW92gw97tgRdBEx4Wo0=;
        b=NTAqYKhx5XRHv25z5RG4e8Q8UIrtkBV4Pv0KdMp3iIDpN3FPR65Ss98XEWRmh0FQst
         I/7hj9TA4y6u7wvEMACfqqcsjqOvNgUS5Lhl78NQyhKlIEU/q8gjgJLrVyr4DcsXkm7u
         UuKE3lyc7wcjllbNp0n0hoBM2tIzw/kxu6P9rLhXDWfsU0aWh++KGUU08c5LHFO6e/Sb
         n5NMAyyLDHd1h4g1BVYiCJ0GRxsU9C+RmRAB9dnUCeReKcIIa6wtWN9kH92fnERK0gvj
         zgrbPKlIerkCIAe1N3SI3uGFXp2Cru3vNM8wdpqILJZBjBB78zx82/+H14CmXpbtjAdX
         YwCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724690320; x=1725295120;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=752Mrptz3EsbmUrr2Glsdy9heW92gw97tgRdBEx4Wo0=;
        b=TCzY87/YhOg6GR0eqRU0W+Ln7C0TqlwoYeODiXeChYQzRZcvFGRCKO9lS275HaZy5l
         nPiv581zDhqfdgtXTEy02UZXmJ/4sVdYQz/XMx0AgqbUGcuvw/7WnjD58lZ5qcvEB86Z
         fquoaLY5LRFkqpBAtGyGJSvWZiZhzETFWrWCcHmD/kDPUr6W9UGCSwpAjkib/k+v+J4j
         GZJ+KSNcXE5RLNLIdTDpLfMNOYlGSa7Bi2NMw0eZRM5wJ1ohGOc6H5bCW6uyDwKxCrP7
         9L/V1bUFbEbhMWnwfjsX2iPfLBx2MI4g0eVHZ0wz0UMPDJlHK9Palqd152892TKhWhiO
         5vAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZImwVwtPKM3JYHi1K5UKLDWpZWDxRJJAh/88r79bae/WjA9jGMUNtsq48l442/a6Qb/G9ApLmU3FLA4Ea74Z1@lists.infradead.org, AJvYcCWQ8f7YrrqB5rEvq5L3xQ0mvCWzFZFsWK8QmaMckEggkDJeyL6f9kYJtW8yf7x5T64vSW4024w3bgr9CNi1Fig=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNtK1EEPyXRh0y67X94d1Iy+gtdwxcQ2jI0KBFo/S+kXeLr8Un
	/9b6vd8ncoXwXbynPHW7clCWjdg0ou2nhV6aNxDwfJDvDHbwLg9O
X-Google-Smtp-Source: AGHT+IGc/UAzFSmVQIQ+Hglo1jjzZjGNfHpwVXB7AZL+IUlmod8yK3tbxu7FQIRBiL9BAjkK0n1CwA==
X-Received: by 2002:a05:6512:b11:b0:533:dde:bf07 with SMTP id 2adb3069b0e04-534387be364mr5038397e87.5.1724690320147;
        Mon, 26 Aug 2024 09:38:40 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? ([2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484b29sm680320966b.162.2024.08.26.09.38.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 09:38:39 -0700 (PDT)
Message-ID: <2ee6f0a5-a1bb-4b62-ae6b-8f3828f8eccc@gmail.com>
Date: Mon, 26 Aug 2024 18:38:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 3/9] clk: rockchip: rk3228: Drop CLK_NR_CLKS usage
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
Content-Language: en-US
In-Reply-To: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_093842_892056_5CF9BE19 
X-CRM114-Status: GOOD (  11.51  )
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

In order to get rid of CLK_NR_CLKS and be able to drop it from the
bindings, use rockchip_clk_find_max_clk_id helper to find the highest
clock id.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/clk/rockchip/clk-rk3228.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index 7343d2d7676b..ed602c27b624 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -683,6 +683,7 @@ static const char *const rk3228_critical_clocks[] __initconst = {
 static void __init rk3228_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clk_nr_clks;
 	void __iomem *reg_base;

 	reg_base = of_iomap(np, 0);
@@ -691,7 +692,9 @@ static void __init rk3228_clk_init(struct device_node *np)
 		return;
 	}

-	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3228_clk_branches,
+						   ARRAY_SIZE(rk3228_clk_branches)) + 1;
+	ctx = rockchip_clk_init(np, reg_base, clk_nr_clks);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip clk init failed\n", __func__);
 		iounmap(reg_base);
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
