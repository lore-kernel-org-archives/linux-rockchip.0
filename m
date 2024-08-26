Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96528C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 17:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HSDgk6CH+3fRK8aPrBbFkTQ/WdLVizg5BZLGcw4xQs0=; b=hYJTdlgk3BWv2h
	hTkbNPj3aT9gBvFPjVA6VTiZZSjjNQxtj6v6LNtbGGGmGrGlDCs8YVCzstv08icw9/qt2Wtb7kQvt
	MohYZ0avAzmvs1tr5PdutmRIs+woq63PfTAj68a8fJ8bOlSog+uFZmwMw6yaT30dhpH7s2tZY/aFM
	PZPN6gNOl0teo5BkUWhN0ibMwuh+LPby55kXFmNWhdVu2/nG0Wz5grAnBPfCNrbj2W6Eec5wCWXXJ
	9lK0Qc5ZvMxI2B0kUKgxTrLs6yyAcq9jTcVFFk+2QFYnN8IxJYrvz3MxFCnmcaF/XxRQp0dxKyr2C
	OCu3DOf4XqfemrVDKNGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sidmN-00000008HX7-2MgN;
	Mon, 26 Aug 2024 17:45:23 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sicjP-000000082XZ-28dA;
	Mon, 26 Aug 2024 16:38:16 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a86a69bfcdaso14424366b.0;
        Mon, 26 Aug 2024 09:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724690293; x=1725295093; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aDq9hlxq5SKiY7D4NwdJ+sg4GlIHm5Ue+KqwIBMJ4ck=;
        b=ltDMXo65bBKASV948lIeyosDWox0lSBK2H5hHx0de0xCNYV+uxLnahxes31UaEpkIa
         N61erYpCx31W38IwP+d8dkpNKKoGAntXZgc8l8krYAikpaBLjNA0CCtFEc30h6VUPQzj
         FZKEH9XDiZIvFuqcWOTGBN9wBVrk1dzGhvF/YhHen64UrX6FAbHIOocoIBlNtdIi8Vqm
         k8t3YdI/Dp+UVE69/IDn2an2YKzSKyx42fwk1BT5YfRIded0RcBpiMmB4O0crwQD8l/T
         zWFPOmdzJPdxR+h6YTqfXRF5D+DiOGLsts88e7X3Xxjlfb6FI+KWUzMWe/0AEyE8X8n7
         BXVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724690293; x=1725295093;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aDq9hlxq5SKiY7D4NwdJ+sg4GlIHm5Ue+KqwIBMJ4ck=;
        b=dozMJFp7LCgENKG/pwWNpxZhDNllpU92CB5hB8TWEgGk7FAf0ow8QPuiBBS3vBVx7O
         abZY0k7FH3HYYzw3aDw9AYP5/h45Catoy3jvB460zn58Z4f1vs5KsIAzCoXOIg+fUpCV
         797YPVRzNc2wZ8CkXD33Kplstzm3JcFEXo0iiUWuaTQvTwVJDT8CZDLMGprCVOiNHgW7
         xnj0lYw5rXVP67fCXrXfhdZoywNb6X/Kp8o+rrRyNyEMPLTcVO2xQpqXHB6sPlVDDj6b
         DVy/Gn9bxQlWGzPMYcOg3hfGi2/pgnu+/dTOfcjEaclCI2+s/pj/xeXAHQjf6j03t3Y0
         VgPg==
X-Forwarded-Encrypted: i=1; AJvYcCVqWIyD61RIf/e7Yuj/tzR+cbVryzcNfzWBKyNqpmsenzy5Xs+Qe3mO3fGgH1P7BxbpX9IgtGAf3waii1obd4k=@lists.infradead.org, AJvYcCWmNhBlItBqZnLIpiOcxnchpE2IMs0bszfwrt3fdQRH949j3wD7BYLVISw6uGUE4f9cef3grmtMKwizleFgV9z/@lists.infradead.org
X-Gm-Message-State: AOJu0YwzwuiHJRnk1J9IJvikG+XIbV14ilRKz6HxO//kdCzkY7jwicgX
	BkRlx9iCLJDsWYkPVqiloD9wkr0igaIrbEZgAuQj6hjVClOecvVM
X-Google-Smtp-Source: AGHT+IHLIDKav6SmXKB/LiGyu/BHEreiTXzj+YTCi5/nF4P/IeOMyHMupH0woRlDT69S6BqXYTtVag==
X-Received: by 2002:a17:907:3da0:b0:a7a:acae:341b with SMTP id a640c23a62f3a-a86a550a4eemr453225566b.9.1724690293070;
        Mon, 26 Aug 2024 09:38:13 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? ([2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f436bc7sm685795766b.116.2024.08.26.09.38.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 09:38:12 -0700 (PDT)
Message-ID: <5ad12808-61f5-4e3b-801e-85231375b6a6@gmail.com>
Date: Mon, 26 Aug 2024 18:38:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/9] clk: rockchip: px30: Drop CLK_NR_CLKS CLKPMU_NR_CLKS
 usage
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
Content-Language: en-US
In-Reply-To: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_093815_587939_ACD73DD2 
X-CRM114-Status: GOOD (  10.97  )
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

In order to get rid of CLK_NR_CLKS and CLKPMU_NR_CLKS
and be able to drop it from the bindings, use
rockchip_clk_find_max_clk_id helper to find the
highest clock id.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/clk/rockchip/clk-px30.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index b58619eb412b..caf7c0e6e479 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -1002,6 +1002,7 @@ static const char *const px30_cru_critical_clocks[] __initconst = {
 static void __init px30_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clk_nr_clks;
 	void __iomem *reg_base;

 	reg_base = of_iomap(np, 0);
@@ -1010,7 +1011,9 @@ static void __init px30_clk_init(struct device_node *np)
 		return;
 	}

-	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	clk_nr_clks = rockchip_clk_find_max_clk_id(px30_clk_branches,
+						   ARRAY_SIZE(px30_clk_branches)) + 1;
+	ctx = rockchip_clk_init(np, reg_base, clk_nr_clks);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip clk init failed\n", __func__);
 		iounmap(reg_base);
@@ -1043,6 +1046,7 @@ CLK_OF_DECLARE(px30_cru, "rockchip,px30-cru", px30_clk_init);
 static void __init px30_pmu_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clkpmu_nr_clks;
 	void __iomem *reg_base;

 	reg_base = of_iomap(np, 0);
@@ -1051,7 +1055,9 @@ static void __init px30_pmu_clk_init(struct device_node *np)
 		return;
 	}

-	ctx = rockchip_clk_init(np, reg_base, CLKPMU_NR_CLKS);
+	clkpmu_nr_clks = rockchip_clk_find_max_clk_id(px30_clk_pmu_branches,
+						      ARRAY_SIZE(px30_clk_pmu_branches)) + 1;
+	ctx = rockchip_clk_init(np, reg_base, clkpmu_nr_clks);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip pmu clk init failed\n", __func__);
 		return;
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
