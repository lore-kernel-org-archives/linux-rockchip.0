Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65BB5C5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 16:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/3gy5TVFpZGgp++gf78/Cp1U1/JSej/xxFmWe7Nt/A=; b=VK5ifGEulCXO4O
	Hd4BOMSEHYxwPsd+PxD90CLSc8Kq+MIjK5b0zDmfxCh2YpWMiA6Uw+7GqDVcWbmI9gtJsCpYmZ4G7
	cJ24JRKf0tRb2RoDU77/kx8ZwxMk3t6FVNdB/vekDNp4ZzClHJ5pQpQoSnPXXpSRFstRHfCRPASN1
	MFiiGgOlB+2SuFRQMyESVI+k2cojySwX6mVArgMsMIbCZw8AXgZD+6H3sPcH8ImAb+Sec/OmKcuVf
	ow/iHNPO/CJEJk6hvU8e8/vhF7ZFwRm4o19McQac9/Iph4GGvzi6bGFUxAskFBUVLXNrDcvCBE3dD
	PBQNfvbZ1CK6HjbFJf0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sicnF-000000083YX-1ihX;
	Mon, 26 Aug 2024 16:42:13 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sickE-000000082mS-0ZvU;
	Mon, 26 Aug 2024 16:39:07 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5334832fb94so1004593e87.0;
        Mon, 26 Aug 2024 09:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724690344; x=1725295144; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0pQNjRvPbGFwIbtiuAF6ctUFukzjUNsN4+HfbcLCR3o=;
        b=jWdg257ZDeeeiqf/g8IGnj4zFcBmVf8G0/Ol/DQHdHUszkDolvuJsU6Db6vcXlM/QF
         7QtGO6f79d326OGInlwxKFq97z839ajvmZyifX+w1p4Rr+PHo+jYlIidMsz2/ilhhGF4
         SL36ZgvYdlUv36Y6K4XLhedJis8M8Bx/u2xsl5xemQHgqm3BW5mhTRsThk6F25ghnSRG
         37BseVuzUDvimbSgp9uw6LYJAUZesqUQB8AwXx/ARI2VQ93X0byxyp0nGb+XS0SBu4Tj
         o/HGwgSkY8bKdfL47IIjYzrx2rvhOdkiiBkbNUO6r7XCRq1ytNYrHzr85ipxbI9JrolT
         x+6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724690344; x=1725295144;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0pQNjRvPbGFwIbtiuAF6ctUFukzjUNsN4+HfbcLCR3o=;
        b=pPn0PNqmBEusNycCr//KTLQ2mleiRqnGodRbfZEKqWfl4/3AIGHOrwYYFgBHGE3sRR
         byoomFZghiZT2hDr7ihzJtcBatz89Q/tPJ2Qd4VW/51znJ6U5Q2XijFIpnWQuO7nVsLp
         u+hhZQCqUJGxOU4Gx9Tg+DGiB8ABkxTUpSX6wCiB7dA2AgKgH+2ZSghdjJNkBRE3cjnA
         af/kdeGG5o8NnS3B4c8IGT/CgOjUC78SsojglsLFF0PcoIgy2yMFrOi2dL9ahz4nykXz
         FprXsVAwPHee4y8Ym4l4ehX4bDR9+16SM7NgbRMgNVEFk6mpZiXeGLxi5hwiriE6s2jn
         3NEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgG0tXBzur5LUcK1ZSUVsr6RmWUPvhN29FSsMZ40qaGIqQXuWbQSpFJ7FF9+DVsXc6pd+/etNj+iLjXPN0BBE=@lists.infradead.org, AJvYcCVxCOG8Joy/cw7YwL2rklvpRqd28zbDCzG+Ofa983pxrSCoz4rKZ+L7mkBPkDwCdvjczQMj9/W/rOLa3EKHddZR@lists.infradead.org
X-Gm-Message-State: AOJu0YyvxjUQPx/7J71Ako4EhQRDmDmzQQpVlPi1Nhkbnj6jiez/IRdb
	kPjkB16IimqZTSF5/u/9t76HzeYHrL8mLxkfjiSMPcQ13fJCenzr
X-Google-Smtp-Source: AGHT+IEM7G/1hSJu1S8jVW53HPtYBrabXkywCD2sERfCFLDL6cK0F7718zBUberYt362t0n/nsDo3A==
X-Received: by 2002:a05:6512:1592:b0:52f:c142:6530 with SMTP id 2adb3069b0e04-534387c4976mr3999893e87.6.1724690343597;
        Mon, 26 Aug 2024 09:39:03 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? ([2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484b51sm696457466b.146.2024.08.26.09.39.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 09:39:03 -0700 (PDT)
Message-ID: <9fbca2d8-f904-4913-ba05-8715e748a454@gmail.com>
Date: Mon, 26 Aug 2024 18:39:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 5/9] clk: rockchip: rk3308: Drop CLK_NR_CLKS usage
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
Content-Language: en-US
In-Reply-To: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_093906_217956_AB2EB8CE 
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
 drivers/clk/rockchip/clk-rk3308.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3308.c b/drivers/clk/rockchip/clk-rk3308.c
index db3396c3e6e9..95a9512a41a3 100644
--- a/drivers/clk/rockchip/clk-rk3308.c
+++ b/drivers/clk/rockchip/clk-rk3308.c
@@ -917,6 +917,7 @@ static const char *const rk3308_critical_clocks[] __initconst = {
 static void __init rk3308_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clk_nr_clks;
 	void __iomem *reg_base;

 	reg_base = of_iomap(np, 0);
@@ -925,7 +926,9 @@ static void __init rk3308_clk_init(struct device_node *np)
 		return;
 	}

-	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3308_clk_branches,
+						   ARRAY_SIZE(rk3308_clk_branches)) + 1;
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
