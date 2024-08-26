Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D84F4C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 16:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eeXcK+YBFEU8fu+BGEmhEuQ1Lrb2yOUBisv/W+pet4s=; b=B6VHBh6eWe6K8O
	HZVjrW49lHCOXWYJXdF0ft2BfUOZad8ISlZ0ckDrQnV2TCoENrILrT9inhyQe8zOq5DWCSnmuvwpo
	6+53GzlVQpT0YXPRcHYQKfkmWqh2zdrPihXUUoewm5j/PSt6yLddZU0n5HXsPsN1Rt7qqZDl3/25L
	jBJ91+5kp4H7KWxKrBvZjrbfmNBBRUqguTAtZGnG7cZ5RVT+HdrbNM2OWTolJl5EeTvUJ7OSYvWjm
	upttjwiIgobZZIUqpoUC8dAW64GnpPVq/64pZdHNIUPxesY3glpnGKXPf7DTqOoNpOuQLj63dqfKa
	rSN5e3ZaDyvEXWkG+U3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sico1-000000083qH-0uf8;
	Mon, 26 Aug 2024 16:43:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sickT-000000082pL-0me4;
	Mon, 26 Aug 2024 16:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=tOSmg+U9ko9Cd03A5hlrj+MTA2zfydTPh5GQ0xhJtAk=; b=Hhx4GcokOUHU/v6wg2XXbw2Guo
	VJ9OQfK7PhQNqer9ORXhkwMF5Cd2RBC0LQr228KGdAB7d1PWLbNRK+1MqXPGR6Ygu18bPOBk7+EFl
	PBSTAgKF+3LSQDSTPMiGzUsdOVXMmKaFO074WolXCu8trxO0ItPuVOraP6I7gTnriB0OvKig+7p0z
	JWDXWHSOtJgPuxxVXZXX4kVZJq7Be6xiDJG2BMFz2D8N5OpAE9Sf/nUcOknpeNBA3eEOrkZh0q5vm
	HQZNBjlEkj/TdB3chnZkPBtAs/9PiKsvzsjXD/D5lnLHVwKNmBNSvZlpyIkYNLcZCA0tD+EfDS4oH
	WjMwPYSQ==;
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sickQ-0000000AgPZ-0Zeg;
	Mon, 26 Aug 2024 16:39:20 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5beceb61e62so622688a12.3;
        Mon, 26 Aug 2024 09:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724690355; x=1725295155; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tOSmg+U9ko9Cd03A5hlrj+MTA2zfydTPh5GQ0xhJtAk=;
        b=era8zXhQjVro3pF38al2ncus1tNzPOOvKgvTX59gfdA6wPJSsPEUGSsDTz9MxMoFaL
         trDv5aOjAbXXOcY+MB1UmhP/HT8/ZeBelW2ZgrqlghHVJXciqEMBbO1EqAI+2mNM5LpU
         oDX33ebheKLf1tzqXLwoh61VNtIlncA3B/1IzdNROrEoMR7/GlXnwB7qO6LMw0Wzthzy
         9X4l4w0NFNFxl8iY6g7Lwo7Pzc/SpYtyyM2z3iPmZZbg3XWUNDqz3sg6Jedl8KkOvm7c
         EB5D26fMiKUS+Pf6HTpHomU3wcaxaogUK1hcgMnXWswYjfDMMcx4s3zgwMwbfTvZVt1D
         yzrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724690355; x=1725295155;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tOSmg+U9ko9Cd03A5hlrj+MTA2zfydTPh5GQ0xhJtAk=;
        b=obq8kSeJNds3e6ShNwKdDjk5wm4rxrHocgZ8a4o8zcFs/ZdT/T6wGDrpW9zA/TW/vD
         MVOk9b9kPr4HACLRtapaaZ0NwZKAerzYpvJDaD6MLarQIS8Rh0ovjK6f8GZcLqRrwhUl
         /1hnPKkmFLbZQlDpUeJPDAuMmSeTdLV545nrf0Unz7TzR/+q7Gzzcchq35uT51bnXwZY
         kFyG4MjZdi2WGHvrSQR7JTOWSJrQoPB/mmHOj6XkkXITAcZh29qMNsrpN9ImIYHCDYf+
         fsVvcD8M0/4ltdfZaXyUzyq6YwA+vEe53QV13V47ubobFriV25q/0xoW677vz3TNQqXn
         lCfA==
X-Forwarded-Encrypted: i=1; AJvYcCUel/tiZt+x6FzVBUqdRJjN5fKTLtAVo8cDWL5OxHTrzOaeBiZQVIxtQ3hp+AK9SajgQ5Hb35Na9yhul08Sjzk=@lists.infradead.org, AJvYcCUft0nizTRKTX4z49eeYeo0W7jNLveShSwTaDjFCgLZlxN/+v7MfZOtV6xr0hXJtWuIT8Mhwp9IyMGdJlVa7bFx@lists.infradead.org
X-Gm-Message-State: AOJu0YzuULTe1mxF4ePqmzLvoz+Afs47BGZqlE/DXx3ICf5GXljhNiDc
	E/xNMXnrgSQnU6/G1LHnl0nkudLmGberc3eVy5q/1vpg9t1rRugi
X-Google-Smtp-Source: AGHT+IG1NTXW7GOuJLnWfkEVMy5ehfNd0YoEsMP2KyOoOKtU5dmeMYDV86OyxSCX9fEeyld4pF2lcQ==
X-Received: by 2002:a05:6402:4307:b0:5be:9bc5:f698 with SMTP id 4fb4d7f45d1cf-5c08910dbdemr4226209a12.0.1724690354491;
        Mon, 26 Aug 2024 09:39:14 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? ([2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c0515a961esm5781754a12.83.2024.08.26.09.39.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 09:39:14 -0700 (PDT)
Message-ID: <38ea6be0-3596-49ec-8de9-aef9c7f2bbb6@gmail.com>
Date: Mon, 26 Aug 2024 18:39:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 6/9] clk: rockchip: rk3328: Drop CLK_NR_CLKS usage
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
Content-Language: en-US
In-Reply-To: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_173918_346013_A54BEE84 
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
 drivers/clk/rockchip/clk-rk3328.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index 267ab54937d3..3bb87b27b662 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -881,6 +881,7 @@ static const char *const rk3328_critical_clocks[] __initconst = {
 static void __init rk3328_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clk_nr_clks;
 	void __iomem *reg_base;

 	reg_base = of_iomap(np, 0);
@@ -889,7 +890,9 @@ static void __init rk3328_clk_init(struct device_node *np)
 		return;
 	}

-	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3328_clk_branches,
+						   ARRAY_SIZE(rk3328_clk_branches)) + 1;
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
