Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B6ECC5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 19:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMey2aw7MWISQqWw+GQ51x280RvNVXsCy5YSL9aIU2A=; b=nv8DgGLpbYvxOL
	GOi23gcqPezzkgvkvHLlV19Z0XYFUE9vBPoUs3R83lDkti80jqoG4/jd/7YnX1liOO866NiNaHf9k
	JPwEJKiUE3cLYYWcfR20Q6x4+7BSnrZmIB5a8fVwPaRdu+UbVW7mmBchL6zHlMnD1p0jISQ/U78ag
	mYXKI+tIr+y4QqoRmXJDUv7HN0BuQ3Fx4Nfi4oRvyj38L82KU2wGxbAwhiYYt1rY+FJ7CKLFKl2d6
	TDQXMKLFLDvrIIZYbFupM//E9xxIQNB8r+VSOKaSWNTfybJBpC3qf7MrdFESFNUG2thcSH+9IkK87
	nB0+X4cJyJjczFkNcHbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siewz-00000008QPM-2eGL;
	Mon, 26 Aug 2024 19:00:25 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sick2-000000082kd-0L9F;
	Mon, 26 Aug 2024 16:38:55 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5bef259a71fso652242a12.1;
        Mon, 26 Aug 2024 09:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724690332; x=1725295132; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EZu/jBjd1Q70dpjtoHTLkvik+k0qgpVx09i6KQH3MDg=;
        b=KHDPSYFzQoI6qn0CiXzeBO9PHrDFIblS2/YRknewA8v4zqmymCyg2rnbG3jBfaLoIw
         SwHThViMlr5Sj0RNgdYbgQQQsfDA2MZYKi7UQ7xnhzyqyDVYHE1ivvuOvGlqS8bnaSL5
         bBkFQIFakuh/Us/hvQwu4esC+JABmLRzJcAHHj0g7ZhQmJieweOOwENHMaYQxB/XvI9e
         DRYd5Ny6bEOWxgWlMioVwrPyappdTz/l59pZp6JuKgqwZQBmL/zI3E72l+PL2TSgXDyp
         v+ExAyTIc4c5iZVMCmOy8raKkctqCLaUOO5QzWp9S4AQOBMuOLXYv/j4R3BCtfvT0z/B
         nQjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724690332; x=1725295132;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EZu/jBjd1Q70dpjtoHTLkvik+k0qgpVx09i6KQH3MDg=;
        b=X+nqBkoc3BK28qJ2noOVMy2q7CZw31WtAE2TiVKKftb29IRqEf7/CUPDg4aNwVGef6
         WA5AjCkYXHyfEQ1y3Y+HUg35LMhbhuh8SLvKPoh1bcUZxLN1RXxXDqKhFV2H3VFXqI/e
         zGnLHk6tRkLR68DQOLoVlAZdYrExUDBaQd39JRY15oSq5iDVHczIfJK8lyBe+aFZHYVI
         RY8vrzggPdn9FT5Ctpu7ex4EofEV6t/IIO5/vNqMINxJKeRdEQoRfuWCySaTCcvdQ8pr
         wlhmsjryl9tezn3j7Kcj7cj6ymRpImXqk00+xdM7zw9GTIaRDDraE+fe55zIlyHL6o13
         BV6w==
X-Forwarded-Encrypted: i=1; AJvYcCVmaECCMjh3ZnmSq005ALD7F7Xo+UnC0/y18XZQjbABc1ZUHzQZ/Q91jB0kLQ7HZdxbGIe4gCfAY18nEYF0Qfo=@lists.infradead.org, AJvYcCW3/W8Tkg4m/ITHf0Fraei+ot5KgdulnKoQntYASOnhVd56M+Vh/R6VHGODdeSiUGqRq5wmMnaWdt/O3EXYNkyY@lists.infradead.org
X-Gm-Message-State: AOJu0Ywkzi0/UnM/nYAxVjgU3npUQu75UgzCJs4doLbVICKEitnbirUl
	sj9UKw91GD9jmv6TXBKqjzb/qb7NfMMXi6mj8FoFlVn5MlN4HnWW
X-Google-Smtp-Source: AGHT+IF5/mm796lJvJrh2R57EkeRqBcf4GBAINfr26Gtc7NdeyL4EuQ0tSkGoqsTXngxQRCUC4zWNw==
X-Received: by 2002:a17:907:9724:b0:a7a:9f0f:ab1b with SMTP id a640c23a62f3a-a86a54bb7e9mr373585766b.7.1724690332196;
        Mon, 26 Aug 2024 09:38:52 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? ([2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4363b5sm684267966b.133.2024.08.26.09.38.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 09:38:51 -0700 (PDT)
Message-ID: <af141286-7994-4e3f-93e2-6ee4e718ef8a@gmail.com>
Date: Mon, 26 Aug 2024 18:38:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 4/9] clk: rockchip: rk3288: Drop CLK_NR_CLKS usage
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
Content-Language: en-US
In-Reply-To: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_093854_180185_75ED85CE 
X-CRM114-Status: GOOD (  11.15  )
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
 drivers/clk/rockchip/clk-rk3288.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index baa5aebd3277..90d329216064 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -932,6 +932,7 @@ static void __init rk3288_common_init(struct device_node *np,
 				      enum rk3288_variant soc)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clk_nr_clks;

 	rk3288_cru_base = of_iomap(np, 0);
 	if (!rk3288_cru_base) {
@@ -939,7 +940,9 @@ static void __init rk3288_common_init(struct device_node *np,
 		return;
 	}

-	ctx = rockchip_clk_init(np, rk3288_cru_base, CLK_NR_CLKS);
+	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3288_clk_branches,
+						   ARRAY_SIZE(rk3288_clk_branches)) + 1;
+	ctx = rockchip_clk_init(np, rk3288_cru_base, clk_nr_clks);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip clk init failed\n", __func__);
 		iounmap(rk3288_cru_base);
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
