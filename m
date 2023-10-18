Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC0CECDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 15:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJIEplFrxHLjC4XxXejR+vBKKFmEz3QCJcINDdoyKHo=; b=aIipXqUXxkDJXn
	ei7/UDFInXdNI1X5lnAUYO7med4aTYLR521V8s9ftF5ZdXwlhBEwqXyFG3NZCQvr9WLf1MDkHk9Vy
	rmuj7dmEHVEYFcb/25BzL3v2k3D9mWS4cfr+/DeXylIrwhI1t9tANOry2lXYEE9e56k1S0NMkFZO2
	IPXRTE730fye6BG19pBvZ2kP+hDvvSjQCNX6SN/1RVNn/HiSJJejIpsgpmP+8FfXpjLQQpgDw123d
	Y660Z7PfLySP+CEz9nf//yS7j1IS2q9OxemajJQ1lpKgBK0UCN0waEQFRuz7G6XE0TNS4qCoSv8IX
	HorMhxUc7l2xDfJThyBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8Yt-00F3f9-0I;
	Wed, 18 Oct 2023 15:34:19 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8Yq-00F3eY-1r
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 15:34:17 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-57de6e502fcso4041117eaf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Oct 2023 08:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697643255; x=1698248055; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HmlZgOTohheR5Sz3o+FLczWrX2zS7o2K2yAxRk2cDpU=;
        b=J3lm4qm5oj6BRaEVNmGzvNhWQRk/1nghV/ySFQNK+BpMBc5l6CYao4yD5jSmACNyrB
         WZpTtPGDnUdtsAl4IJv7SkonEDoV8ssuw7Bb8qCbZo5uAD3ceGbm/hLCJ+HTeLUxPk7q
         aKkXXfkP7MTS/EpuE4ESwnVbkYy010v2Oje1Ph00+gLF207fKZd5tHKPb8rzZ/VzX9ZC
         PLVcSbpYeI2AyBwPktAsRVuOaIKqx6147JeSYVjebs8B7kCcIshvslwJ/c/8TzNc6gwd
         gEwdw9EhnN74yEEDdYmlfOUubO2PXi+z3D3Vn+/DMzUgZFxpm18pR7UBlcc6w2QWjycd
         W5Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697643255; x=1698248055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HmlZgOTohheR5Sz3o+FLczWrX2zS7o2K2yAxRk2cDpU=;
        b=fkaTSORn8UFdOAYMoUCbOpg1g3pyh2ujmJ0824alUoGeiR8+EHUAcClowHRgodLb6X
         LMWX7uyGEhKFD8xi1vGbn0FA+GPf4ju1GbdrHbz20JZohEiuk+a8G40ODGiukujfQ+qw
         4bqguFoKql2hwiJeEfwq623BkgKGTQOGg4e/ByO6m6o293V8v19+UvuTGjxI5YzSuHVb
         /QvGPCu8ksBUQi4W+dXr6ZAlB42XIOZSoBdQnRpk7odSRfHOQPI3DxxBpYZLJ9HQQAIg
         JGbodnvfASCZvK1k0oREg8qOVC3r29thwD0j3BTxk5t3OPKlzVTAdfJ62GKdxCFK8TXL
         TnBw==
X-Gm-Message-State: AOJu0Yww8LI+03OOsxnm56bAkZX4nncdaYb7e9VhG4baadaIetpdRtoU
	oMNkwjbGtDBm5oGWG7tXLchrwMfhfVc=
X-Google-Smtp-Source: AGHT+IEVNbZ56UZRmNC6SHChpVibk8/f3CmobKd/aVSmcbaI5+8ojfX7HdJisupGUtNmr2zqNWv3Ug==
X-Received: by 2002:a05:6820:200e:b0:571:1fad:ebe0 with SMTP id by14-20020a056820200e00b005711fadebe0mr6705464oob.3.1697643255377;
        Wed, 18 Oct 2023 08:34:15 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id h16-20020a4ad750000000b00581e090fd1fsm523782oot.8.2023.10.18.08.34.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 08:34:12 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] clk: rockchip: rk3568: Add PLL rate for 292.5MHz
Date: Wed, 18 Oct 2023 10:33:55 -0500
Message-Id: <20231018153357.343142-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018153357.343142-1-macroalpha82@gmail.com>
References: <20231018153357.343142-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_083416_613251_2CD38638 
X-CRM114-Status: UNSURE (   9.26  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for a PLL rate of 292.5MHz so that the Powkiddy RGB30 panel
can run at a requested 60hz (59.96, close enough).

I have confirmed this rate fits with all the constraints
listed in the TRM for the VPLL (as an integer PLL) in Part 1 "Chapter
2 Clock & Reset Unit (CRU)."

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/clk/rockchip/clk-rk3568.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 16dabe2b9c47..db713e1526cd 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -72,6 +72,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(408000000, 1, 68, 2, 2, 1, 0),
 	RK3036_PLL_RATE(312000000, 1, 78, 6, 1, 1, 0),
 	RK3036_PLL_RATE(297000000, 2, 99, 4, 1, 1, 0),
+	RK3036_PLL_RATE(292500000, 1, 195, 4, 4, 1, 0),
 	RK3036_PLL_RATE(241500000, 2, 161, 4, 2, 1, 0),
 	RK3036_PLL_RATE(216000000, 1, 72, 4, 2, 1, 0),
 	RK3036_PLL_RATE(200000000, 1, 100, 3, 4, 1, 0),
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
