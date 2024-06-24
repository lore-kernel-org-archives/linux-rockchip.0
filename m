Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25C93C2D0D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 11:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L2h96pN/DjkZ4GkbRD3Ewt+E0CkIs1R643ZjGQ0oxF8=; b=2gEUKBaV2sgZ9v
	el7ZI2WdKoWDHgsmv50wFl4Fk4O0MUmLm3d3+xReFBUjHVOI5X9Un8TBBvJD5JIlU919PuncgCKze
	4fkGCTyDSP4MohWGq/MjCtlCuRfV9483WeZtJiNdN+gvN1qL1AR/cFn12IU+HHuPLXgHU61qBMZ4s
	aTMxYB3uidK/j9khleBe9057s6CLH516s6saLc35kTGsflXL5R6Y8/p6WutZIHJ6CpkpK8D/kGpVJ
	BNj1fR9A/YhJLWLZPqIcd453ovPpfSvTYo+Qjs5FF4fBjeOVztwKLAcUL1dzhEcxZnUsJ49hiD8JA
	Z12iLxNtzREo8mc9az2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLi3Q-0000000Ge5d-2Y1a;
	Mon, 24 Jun 2024 11:40:12 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLi3K-0000000Ge2o-2gDH;
	Mon, 24 Jun 2024 11:40:07 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a6fe118805dso180357366b.3;
        Mon, 24 Jun 2024 04:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719229204; x=1719834004; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x2nxtEYTMtc39GIl327PDzD9Ljyt5YP8MxnbXGhepIY=;
        b=XmNB7BCcmzuCELwutSyRnIiWEWswS4hLAACoo8dd9rDAQ+vm6Hm7wqZKj+4IsTlXYV
         rsF9fwjuWkFE3KGP9iN0Rm9csQY2lSEK3PLavecj9MrcWY8SUJOkncXH1yTp3gkyxI15
         7eCw6JdBMvqTKcjUIbPCPL/yso9p+SDN1JIobuPp3KLsUZidbGAv/TPOtnzLtgKXhZku
         SLKjeLLsIxsIQxfmwOO2n5SnEVMXsn2c4DEmIn0wXtpi5e3jbGJHnedKz5k5ZCrFgar9
         C+hfEOFEQhCxbtF4IUooKzH8S7Fkbv/yOx2sCBxtLBqMLl4BJDAi2bCx9AkdFJGi81n/
         tNhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719229204; x=1719834004;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=x2nxtEYTMtc39GIl327PDzD9Ljyt5YP8MxnbXGhepIY=;
        b=Uwx5AQhlzsn+iep8lP3oXMHuFrGfZIUxPPfCA9jzwvBAtGbi1kvDXNeTzDdyhBjwwz
         9NGZCHz4mkacPoIN3JfPOen2HumfC+vJmDs/UFmbpMCvGVFWQjkTBRkK3lTFNA+69OqU
         jiU3Yapgg1RLzp+xesTsusJxmL8nroAxTChOI5qNp/XAZNZuIJ+wytuIrh7bPIh9TqC3
         9kApD/h6b9QolxeM2OmNLZMl+pM3NFuPAto+Qk4AiaWBAtXiSHpFlje/rXddYLYxV3rX
         iF9Xo0mDb80yIlxgbcKQhBR61zWP1uPxrdO8o0NJ6ifpsoF8++L2R2aQiBUZN9XHuuGz
         K/7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWWqrfkPfutESTG27cty2EntyCdza9t+tuw4kVnsYOwuTIUFle2jVR+rm3C2hIY0J3Ntz87rxa9vIAdddyQq+tSN5rrrsaZA6dbONXpw8ZoaOmlzTKQ67t3OLdNooLM4Kmf8hdi02hE8IkN3CAivf1gIo1e/8qLgs0=
X-Gm-Message-State: AOJu0Yy7MxI0IPjVY/X4aEXiJDmFIS5R8ZPOQFwcMezZXwGmu/HG7nL1
	/YyyJFyGGFmWdDhMvlGbj8oSottl7XINzUB9QZBrWZOdY5/eZssGKh4f6Q==
X-Google-Smtp-Source: AGHT+IE7ua8tr4fotElRzbb9ZE9N9J2SRRVzmmEB5E2CwHxAW1trh0N00sZtAm2FzIZ7aoBdEw0yzw==
X-Received: by 2002:a17:906:a2da:b0:a6f:61c7:dea7 with SMTP id a640c23a62f3a-a7245ccdab7mr267050166b.18.1719229204264;
        Mon, 24 Jun 2024 04:40:04 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? (2a02-a449-4071-1-32d0-42ff-fe10-6983.fixed6.kpn.net. [2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7260566aaasm28542866b.18.2024.06.24.04.40.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 04:40:03 -0700 (PDT)
Message-ID: <1cd309fa-a4d3-4283-aa47-1330a40448a7@gmail.com>
Date: Mon, 24 Jun 2024 13:40:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] clk: rockchip: rk3188: Drop CLK_NR_CLKS usage
To: heiko@sntech.de
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_044006_724843_91845F48 
X-CRM114-Status: UNSURE (   9.38  )
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

In order to get rid of CLK_NR_CLKS and be able to drop it from the
bindings, use rockchip_clk_find_max_clk_id helper to find the highest
clock id.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/clk/rockchip/clk-rk3188.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
index 9c8af4d1dae0..30e670c8afba 100644
--- a/drivers/clk/rockchip/clk-rk3188.c
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -757,9 +757,11 @@ static const char *const rk3188_critical_clocks[] __initconst = {
 	"sclk_mac_lbtest",
 };

-static struct rockchip_clk_provider *__init rk3188_common_clk_init(struct device_node *np)
+static struct rockchip_clk_provider *__init rk3188_common_clk_init(struct device_node *np,
+								   unsigned long soc_nr_clks)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long common_nr_clks;
 	void __iomem *reg_base;

 	reg_base = of_iomap(np, 0);
@@ -768,7 +770,9 @@ static struct rockchip_clk_provider *__init rk3188_common_clk_init(struct device
 		return ERR_PTR(-ENOMEM);
 	}

-	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	common_nr_clks = rockchip_clk_find_max_clk_id(common_clk_branches,
+						      ARRAY_SIZE(common_clk_branches)) + 1;
+	ctx = rockchip_clk_init(np, reg_base, max(common_nr_clks, soc_nr_clks));
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip clk init failed\n", __func__);
 		iounmap(reg_base);
@@ -789,8 +793,11 @@ static struct rockchip_clk_provider *__init rk3188_common_clk_init(struct device
 static void __init rk3066a_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long soc_nr_clks;

-	ctx = rk3188_common_clk_init(np);
+	soc_nr_clks = rockchip_clk_find_max_clk_id(rk3066a_clk_branches,
+						   ARRAY_SIZE(rk3066a_clk_branches)) + 1;
+	ctx = rk3188_common_clk_init(np, soc_nr_clks);
 	if (IS_ERR(ctx))
 		return;

@@ -812,11 +819,14 @@ CLK_OF_DECLARE(rk3066a_cru, "rockchip,rk3066a-cru", rk3066a_clk_init);
 static void __init rk3188a_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long soc_nr_clks;
 	struct clk *clk1, *clk2;
 	unsigned long rate;
 	int ret;

-	ctx = rk3188_common_clk_init(np);
+	soc_nr_clks = rockchip_clk_find_max_clk_id(rk3188_clk_branches,
+						   ARRAY_SIZE(rk3188_clk_branches)) + 1;
+	ctx = rk3188_common_clk_init(np, soc_nr_clks);
 	if (IS_ERR(ctx))
 		return;

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
