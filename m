Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61DEAC5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 16:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hM9TXZTf5Tq6Cb8hvWtcknn8sOyEAPlrohr0D6jsoSc=; b=Zrmrf9aOJsFLHF
	AuhQbaJy7cR6GYG8763r9z5xQFD1l5LHJ4f8LBdSBczmD5Z6UpTMqpYuy4X5XnAvHqDmqFNM6dnV6
	OgBszWqK/bOX2jpobSzVFugnhofPyoS5CYEEOKxmEcaNzH1ToNkgeEoCOw2BtPDpQoWGRP2ihGne5
	xFOpelJUaEa/GH5giypIfZcNqFDwoVJsB/DCzArydHU+A8z54TP1h15eKWhdi+HZ41upq5H2ZnVSL
	fIIPjSgdJVUcghjS6TSXReb7oYBJCM3vs716oF/yWxYbl4B0VxFXKy49moNFyNIBNbHml9OZcQt0C
	wUd9e+sibYiI/MVpy3Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sicpZ-000000084Gt-3cQg;
	Mon, 26 Aug 2024 16:44:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sickp-000000082sL-1YCP;
	Mon, 26 Aug 2024 16:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=FLEI1Cb2UP4A1vC0h0p4/XVr36pqAHZWOGV9GNwqygk=; b=eGT0yP8kLw8JP7nIIDEHOKpjF6
	7AzBmQCfllrbFBOJUOwAmjVNykMhboAmwotCkR3YIU9jo+Ish7hd/frkjxpEUa8xpAZgrYFp3n0D5
	PfXpyAAj7LRC2N2QcnH6/M5qBB2DGs4/dLu7zbTgUqFiTPjD8Rc5RJFgkb43syW0vGdZvjPC2vXV5
	c6mYWDsC+gjMrJBmMWsnp7rxxVQZQZ+r07zerFzhnqekpvtkLmB5Upa1/mGXkV52lPKI6n9P+9O5j
	5BIarPeqiJcLtwPU/BjQuPIMQJEOO4ebQy7FzGq6tcp15Ou6G2eaqRk4VybwS83Al1uoetS7oYMQa
	VpYS8DTQ==;
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sickm-0000000AgTl-0TeF;
	Mon, 26 Aug 2024 16:39:42 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a86a1abc05eso18821566b.0;
        Mon, 26 Aug 2024 09:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724690377; x=1725295177; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FLEI1Cb2UP4A1vC0h0p4/XVr36pqAHZWOGV9GNwqygk=;
        b=LITtLIlaRX1tipXOmgWpLgaHQp2sonXURHg94FnszE0B1G/rulDzoZgmpW65WfjmZQ
         XoO+PXlTAyxmLUfj2s0TNymGy+lBDLkBxEQSVqb9xPVeAtnehbj53WupSd/iV26FSD3W
         8Rg+mhmF52qje7YnTIj1WuABJeadJklYWgA/svNogOZr6XffrX/zRNHdyOUk5Fjs21P1
         C6wY5uT2hjbKsWsFQT2ZAoFoPzAtWRbnjbBEblgHcbTaronT4cUA76vLcItyPcyqh69t
         05AKKpJG0cmUZ053bqPM2ZFw+BEwksXjGZDOaBAC9VdMsskuEbUhCYrscYW4kXet+HbF
         cJFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724690377; x=1725295177;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FLEI1Cb2UP4A1vC0h0p4/XVr36pqAHZWOGV9GNwqygk=;
        b=H7W+JHy/I2w6HE1VdywzQMaI9moSWSlG2jv5KQSbvSCrsXXWsvdrYKtTdt2S/p7CWE
         rpn3Y8eGGItPaEogvLc9PFJHYelGzmUc5j4xBAuc0l+5yGDBfbrCepM9fwMACzd2L/zk
         fetGP/O5GPi9h22ZCgWP5c0kHQ6egVyoXg6jpbJjl6rurLyEDpM/1Xiuewvdzg58Ag5X
         jz6fV+S6oXQ4ndfq3Gg89xFaNaKW50Z4ZzBxHN2s9+XLjLKP0Qqb4/bKBRT6Snty/mzW
         R6gYvwMQDLJNoBV/3HM/Gn6V33IEjrVM4RErP5RS+xe9Ly+NHnOvSr4hXGla/N5/wWNv
         3xCg==
X-Forwarded-Encrypted: i=1; AJvYcCVvNQJYRxFk8HcEGtcu9w3u6Ed/ntfv3cgFhZzLew4wFwNH8AZk5UdUQtbNz1A6hOE5bhnyniRMnSJpZNxaUAI=@lists.infradead.org, AJvYcCX0SXJQnNz5mDJOCDWI7g2VPPY/LtIhE5gOqMzoLFXrUQb47IXyFSNGCCCvqd+IOWVIvMGTe+kdWL9LXDDYxAMn@lists.infradead.org
X-Gm-Message-State: AOJu0YzL7wDzsTGQCwwBVwbGvCBn4z/y6GfqQZ6pru7KtX6S3LBaZZda
	FIvt2mkg4nZdJCR3pHTmaHpdduyX4mJZ4NZPT0zJhSgbY/QpvJrY
X-Google-Smtp-Source: AGHT+IHL+FuBwtBkHSQziYl5NkPCUp/kCmo45U6Hon3dXAoeItbf4Y2lDeqQXqnhrhLcmTgJXrrRqQ==
X-Received: by 2002:a17:907:7e9a:b0:a7a:b895:6571 with SMTP id a640c23a62f3a-a86a550b68dmr508411966b.9.1724690377077;
        Mon, 26 Aug 2024 09:39:37 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? ([2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f220cfesm685727266b.1.2024.08.26.09.39.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 09:39:36 -0700 (PDT)
Message-ID: <45f83b1f-64f8-4ea5-bc93-ebf7507a9709@gmail.com>
Date: Mon, 26 Aug 2024 18:39:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 8/9] clk: rockchip: rk3399: Drop CLK_NR_CLKS CLKPMU_NR_CLKS
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
X-CRM114-CacheID: sfid-20240826_173940_377116_704771AD 
X-CRM114-Status: GOOD (  10.82  )
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
 drivers/clk/rockchip/clk-rk3399.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 4f1a5782c230..c2b243d7a5e2 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1531,6 +1531,7 @@ static const char *const rk3399_pmucru_critical_clocks[] __initconst = {
 static void __init rk3399_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clk_nr_clks;
 	void __iomem *reg_base;

 	reg_base = of_iomap(np, 0);
@@ -1539,7 +1540,9 @@ static void __init rk3399_clk_init(struct device_node *np)
 		return;
 	}

-	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3399_clk_branches,
+						   ARRAY_SIZE(rk3399_clk_branches)) + 1;
+	ctx = rockchip_clk_init(np, reg_base, clk_nr_clks);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip clk init failed\n", __func__);
 		iounmap(reg_base);
@@ -1577,6 +1580,7 @@ CLK_OF_DECLARE(rk3399_cru, "rockchip,rk3399-cru", rk3399_clk_init);
 static void __init rk3399_pmu_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clkpmu_nr_clks;
 	void __iomem *reg_base;

 	reg_base = of_iomap(np, 0);
@@ -1585,7 +1589,9 @@ static void __init rk3399_pmu_clk_init(struct device_node *np)
 		return;
 	}

-	ctx = rockchip_clk_init(np, reg_base, CLKPMU_NR_CLKS);
+	clkpmu_nr_clks = rockchip_clk_find_max_clk_id(rk3399_clk_pmu_branches,
+						      ARRAY_SIZE(rk3399_clk_pmu_branches)) + 1;
+	ctx = rockchip_clk_init(np, reg_base, clkpmu_nr_clks);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip pmu clk init failed\n", __func__);
 		iounmap(reg_base);
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
