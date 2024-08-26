Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55BE6C5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/pUGCpyLRYjOCeEsZTedUIQtFSDg6KhcDBUzYlmfUA=; b=jDPJ60O0MTyjJK
	nwhWH8w4hFf7V/oW1ys35nFTxykZ7WojrFycjx+Kjey8AXSn5y115ry3x+YvqLpgIcc0ll7aJBIXx
	bmF+vHY2uBbps3nWkFR+enwi0U98EgJJhf/NzesR/tx2460llKy9/SRBmhPIiewsAyaIi9IcggzC2
	rdhNujfOfoYc74FnswMfgf21DhB8kpn7dEAW2Puvd/PvtvDxlG7999r6arAc8IWSZPisIjwHl8zld
	BmeVDaFXPDNhllWsKOiTtqnplwCjeuqkwQar4cPAgcK7WzsOIuT6ziYwRn2BwLRVpv9fjK6wxgYE5
	Q6DD1EMGlAC1u8Re2GMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sicon-0000000842S-0qKz;
	Mon, 26 Aug 2024 16:43:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sickg-000000082rU-244w;
	Mon, 26 Aug 2024 16:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=+i2AlGYsoxr4BsaWm8n7FjsczEQSUj3cbbi624qx9q0=; b=IXr9kDNkOyxomlLhZtEKg+hELp
	nrg+DMiMOeTqpKysyvfcxSAIpoQ0/cAl527kW6GmwEGHvINxVYJfRwUtEhXlOGy6hjOEadAXQGelJ
	KJ9FU9AfTlU2Bg3cL3lCjW4eKLXrqqGQ5pN+Zb7apzJZnEoGfCbqJWEIb0w5wDDrmmJk0wnFSqNji
	XQAKVm8ixlz5H8xYUqz8kuAznPlNCtZIcIWw9usyqLRh75NKW8KlxlQ7a6PiY0SHyCBlizNHHbVOT
	rzsNpaYbt/pL16/EDroMj0fAYMzjQ1pcQ+Yt9+nf24ET7SbXx7vKELx2qMm6PaD/b3462rQ2GwCn5
	yIpgUffg==;
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sickd-0000000AgRb-0BNV;
	Mon, 26 Aug 2024 16:39:33 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2f3f99ccb76so1954361fa.0;
        Mon, 26 Aug 2024 09:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724690367; x=1725295167; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+i2AlGYsoxr4BsaWm8n7FjsczEQSUj3cbbi624qx9q0=;
        b=XvBS4idCvd9fmz911ZZwpJcZG5GJMds1i7OUdG97IgtoGYJaNCjZiEV1dsWs3g9rHX
         wBa+avMFbCxU9kyQNBRo2AF2+/TjfPcUJZpHHXqVG1vSvev0BvbQgsuZmh2MU7FRLSmw
         /lOCTJ9PF59FklL/5t+z2oSD5TVodcUXCYfUPVcjUt3bjzWAb49i+OXI10Ev1BeEw5xh
         Lt0zwltip2ay2M7ddz8I3dDfX1CTSYhuLXUIqAmIapOD5sKIHpXnPQNCG3dfrCsHiyrF
         IpPluEiw9gtfH62IHj3BUziton6k4alrLJKNG1O7rkRJQvY6isHbERzeqJJrqoSKEISz
         ADXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724690367; x=1725295167;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+i2AlGYsoxr4BsaWm8n7FjsczEQSUj3cbbi624qx9q0=;
        b=Cix1dkNL+Uto4iurmEcZ6+Cji/2GN3rmEYxx/8cdtmjvtM/jQvzcnqSoNoGIRpW+F1
         xuS/ix3UsQe9uRTqp2ZV8FIcIBLKFzS7WTJ5BwRdS88elLFN6i2UgHsQjSIGVzXz696/
         jRUcyF9SzmXvaF3v+S1wHiif/j/TexXv/l0za1np5XY02v0IeI3OeBBc6D7+7rSYpT/w
         z2e9Dvrn4FxL2b1DX3pBFFdskA504Gkh/cHO9HXWZuz/qf+DoteEXiC28ROJG88MX1uz
         AUiHHFJQ4y4g1dPcdTXC2teHNhiHq777rGsDwpR048njlOepCqUKfK4tm/vvA3CmsdCK
         5caw==
X-Forwarded-Encrypted: i=1; AJvYcCWZdvYfgsVWmruLWFdg8ucxi5DeUSKK+aSpKFwkUGICFN5XvSsj+KwKIXaIvotPu+4LB3BO3vpTeinF5vDzwk5Y@lists.infradead.org, AJvYcCXpS2YX1gTYC1fsvKTbos9zNmD9buXFtr/Rlr4BZnngNXkQ1k6hP2LmgikrePA7o9np2//bBXRHbsvZgfUta6c=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGLxbtohHS+Vd7JyB+R+2td2Kxt3Tb2kFYUh4G8bQ0yoQgX5ii
	cn0eBCF7hvvTwZehRf459uzE8aebhEupk+SWXbUADKGgOmcXxjls
X-Google-Smtp-Source: AGHT+IFlY9yEz9cwzKGmpwql9VSj73wxFguXPTKKyguV45o2cj0X7EvoITq5F+dR8W084K0HOgqukA==
X-Received: by 2002:a2e:bea3:0:b0:2f0:29e7:4dc2 with SMTP id 38308e7fff4ca-2f4f4944d49mr48761801fa.5.1724690366281;
        Mon, 26 Aug 2024 09:39:26 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? ([2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c04a3cb0b2sm6101451a12.22.2024.08.26.09.39.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 09:39:25 -0700 (PDT)
Message-ID: <2a19c3cc-5f4d-4d03-90b2-e0bb13b0502f@gmail.com>
Date: Mon, 26 Aug 2024 18:39:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 7/9] clk: rockchip: rk3368: Drop CLK_NR_CLKS usage
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
Content-Language: en-US
In-Reply-To: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_173931_311889_1F1A9C6C 
X-CRM114-Status: GOOD (  11.46  )
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
 drivers/clk/rockchip/clk-rk3368.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3368.c b/drivers/clk/rockchip/clk-rk3368.c
index 2c50cc2cc6db..04391e4e2874 100644
--- a/drivers/clk/rockchip/clk-rk3368.c
+++ b/drivers/clk/rockchip/clk-rk3368.c
@@ -866,6 +866,7 @@ static const char *const rk3368_critical_clocks[] __initconst = {
 static void __init rk3368_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clk_nr_clks;
 	void __iomem *reg_base;

 	reg_base = of_iomap(np, 0);
@@ -874,7 +875,9 @@ static void __init rk3368_clk_init(struct device_node *np)
 		return;
 	}

-	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3368_clk_branches,
+						   ARRAY_SIZE(rk3368_clk_branches)) + 1;
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
