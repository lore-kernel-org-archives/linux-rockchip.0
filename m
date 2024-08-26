Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8105C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRBPW1w1errIDxQ9HIXpeEr8JEahZgECeUKleTeQToU=; b=W8UAebcP6xDk8/
	Vf9i5F+Jeus5GJimGz9wEST4wKnUrK/n8rnyXzMLpS9xgOjwT4xumrEl2j9/7gGED/dxDelrY7wzs
	syp6N5BIb9XxiQxdoEfob9vQD7ocZHumk3H7IwiFukXPSYGEooqqPAgImanSU6XzDFFn24xCuBHSN
	OtF073fivxyKIxy8abVl3+ETfe15PvO8gopgZjjQKtg4GpvLoOF4Ie0DMEeWU2DWJ7H3u8QlVAU0m
	HVZ0ybPD7TRdBJcMO00bY2Tm1eQ5ayCwatE9J9HqEtRe2stZzjk05U7kSksT+/jrEAR0KaEIfp4iU
	GCmW7NaYYg1O4uDHOVhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sickx-000000082u7-03X2;
	Mon, 26 Aug 2024 16:39:51 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sicjc-000000082cq-3UwO;
	Mon, 26 Aug 2024 16:38:30 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5bef259a71fso652150a12.1;
        Mon, 26 Aug 2024 09:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724690307; x=1725295107; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yhq/9WJku/9EgEbho9+8mkKwaS95Mme88p8ubN0Cp18=;
        b=h+Kypi1Ai0c8Yh+bOsMXEsns9lnHZMjOsF3gAJhSTDBzuMw755KQX37FJty4LXctV6
         Tllqh6aHE7RLeQqSm0+CSn6ks5hCk/PWyUzv1002/cbsMYXNzes9mfx5sH6xCoSUY+Ii
         b6Eutd7YXKmImKEOI5k6rjDnBnNDkTDcUftYaDCl/D9jg/W7zlKD9ZB+7eIILfvrMbX+
         oopfjZ7iE7hO4xRT5sPp6hJxXU9GnSLqs1Fw37s6Fy067/sSCxRSQuT75VT4QzT4gx5n
         ErYgL/ut6OJ/35gI4h0fZru9FqLNqf1kitoCKyd6HQ6WzpBQg2/rXl1gAVilVJJOCJo4
         NN7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724690307; x=1725295107;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yhq/9WJku/9EgEbho9+8mkKwaS95Mme88p8ubN0Cp18=;
        b=O+qMPOot/ybP90kZFjjU3nijNc5ilQqM2W5XdtXS74ptY5LE9KEhtyQSgmVB0iT/vQ
         gYRvd6vSz0Vunwv4pVk/4KCikVHbmdmq+peymYEgE42sw293Qomz670W5nwpdJ4RTGjW
         2l8qBAQI43ciPm5FtC4nQ2w3G1J3E2XADxTBi3OFL3XCdSLUB6aY1ToqIg+Zn+bGn7yN
         EPcjqBvjnB84wQASTK11+Lh2zAynl1EVL8PHwLdmX4tzEka/UkfygFdGlg7YBOYm568q
         C2Zrv9QEEmW0PGD6CufOt3m53WLURDU+bRRyzYY9YjcF7aON1X6pkoGHVewbBqfxlP2+
         hu/w==
X-Forwarded-Encrypted: i=1; AJvYcCW5TRMKnofjWZRhF9wNzxNbSBaVBS2NuIuIbHtj9SIf6VSctMtG3dc/cojo92BCyyNwPK9lOWuGd0oOwgHqC4ui@lists.infradead.org, AJvYcCX9iIfME4SnS6qMYOjkIwAT8sge5BmuCPQei5uUjWOMkWfeuK+ALP8vUR6k0mMEpDSJw9KfoLfv3jCjNGVrYMM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmRkfkpt05urh9aXCPlg56wED4ylb+6jQl9iUzJrpuG0WPn7Rt
	foiYT71S4Qja/o3te+THfRBISpDMrGZgVpVHc+G/j83x65t6hNej
X-Google-Smtp-Source: AGHT+IHJJKkoN0mudLhREuJFqK/RBwRijj8qeEa1gtLmFiRUc9gIA1e33tIg7ucKuVXcnXRqVW0BTA==
X-Received: by 2002:a17:907:7d91:b0:a80:ed7a:c114 with SMTP id a640c23a62f3a-a86a4ea63cemr395278666b.0.1724690306550;
        Mon, 26 Aug 2024 09:38:26 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? ([2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4361c3sm682266466b.114.2024.08.26.09.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 09:38:26 -0700 (PDT)
Message-ID: <c8e73847-f472-4473-ac55-068cb28b98f6@gmail.com>
Date: Mon, 26 Aug 2024 18:38:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/9] clk: rockchip: rk3036: Drop CLK_NR_CLKS usage
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
Content-Language: en-US
In-Reply-To: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_093828_908854_242DB474 
X-CRM114-Status: GOOD (  11.56  )
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
 drivers/clk/rockchip/clk-rk3036.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3036.c b/drivers/clk/rockchip/clk-rk3036.c
index d644bc155ec6..d341ce0708aa 100644
--- a/drivers/clk/rockchip/clk-rk3036.c
+++ b/drivers/clk/rockchip/clk-rk3036.c
@@ -436,6 +436,7 @@ static const char *const rk3036_critical_clocks[] __initconst = {
 static void __init rk3036_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clk_nr_clks;
 	void __iomem *reg_base;
 	struct clk *clk;

@@ -452,7 +453,9 @@ static void __init rk3036_clk_init(struct device_node *np)
 	writel_relaxed(HIWORD_UPDATE(0x2, 0x3, 10),
 		       reg_base + RK2928_CLKSEL_CON(13));

-	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3036_clk_branches,
+						   ARRAY_SIZE(rk3036_clk_branches)) + 1;
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
