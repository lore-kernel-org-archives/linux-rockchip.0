Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8CC0C6FA8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pb0oy0mXbC7qSjGvF8lnReJBJ8PyuvVJXl0bh5TEmSY=; b=PkOr5T280mXqi5
	IyxbhUCDdfCH0+GA/X6ieyLtic3zLNtvkyz/9HfQQvUsfHtx/akEjWo2Y3FbLAgKwFCiaD7KSuXPO
	lLu/ZJwyeVYTTJKm1oGm4ZjtwBmt4N1G8ehmsFyYcmfWIRULWrPh2BqPNrnvfMUuwhTs+Jeu3zn1n
	XUVHQiKO6iEvnntRwUnFLoNe8OAbDZxQ89VZHnVpiBDQLoUDtQZH4/RX7sbtemEkJcAOmCuHc2BS1
	3TjrYPabEKXYJuOoxvjF//F7mp0UHMuqqnwNXenlo7XbDJ/RWZx+wS0V5KTpmY1D+S6AR4ISdXSwW
	FUrptbQQLyIKAPDrhxOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Lh-00Bvfd-23;
	Tue, 29 Aug 2023 17:17:53 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LL-00BvIP-0k;
	Tue, 29 Aug 2023 17:17:32 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b974031aeaso71897381fa.0;
        Tue, 29 Aug 2023 10:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329449; x=1693934249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eNxQT2nW9mlsSDnVrDv6HQBpykI5WwmT69S9mmtvT8k=;
        b=rIZufC/gg1cYUNWmECI/46YrswF+nz0k1qq+H1hHISIBeklCOGZL8h2zth49s1RZVn
         eMS3vy1eFt2ISgqitOHnd4xuxo8+iIWNjZlqmvBCCd87J02vlKd9Zv2ixpmsy3+NU0X9
         E6adDktPfEsTttBTxou7dNp3mYCHJNgYXp560go1foEMofcjlXypG662p63Ig8m3cmIh
         UFn69k7Ma5DeluYhdc/QnbUg7APs4PdqWBW62MJ5Ot0JzD4YKKxqVIb5DHUgpvEQGy3r
         mpTSAiIAR3NgLP3rxocc0Zn+PefKtU9K8u1OLjR5xxIB3SeSayWFc+RP4TW8MGuVV22m
         +lag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329449; x=1693934249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eNxQT2nW9mlsSDnVrDv6HQBpykI5WwmT69S9mmtvT8k=;
        b=TBAZsVj7q9YiD5+DzhPC0kke1Z59Lk/XXSHEH29BBOqG3n9oZbN2CIiBP0YKjKAQ4K
         rHdcUgY/dWOO3hvL298lIdvsXKBXjf4CJYbszS+vfD38M0rFzx3MD859om3QREbt67Bx
         iekT1uH6B2kTmyShS9oMF7eRpo3i6K1rRG2wZExM8qvakjcaZfHPOnGILIQKTSR1Q/YU
         TxMDm3hR3ft4avdeyjuhs6kdZ/LaHvDEBI7aK0LZhD0YATlCHmJetY7YWBz2HFLiaKUw
         hrNvoeIy+c/chIOEO5pRy2hVqmnhjTyGCYq5po5jAPX93NZ8LdW+XxGtBb4E5fBKRunN
         iVdQ==
X-Gm-Message-State: AOJu0YwlpeEREqWklsLycx0TWa/rVWXeIU96FCTmCokFfI9pxk5tuBtI
	KRE0SCcRVDjW9Nv7kQWzyw==
X-Google-Smtp-Source: AGHT+IEznm3zQlYtjDygMW1JWLcjCU2/3FhOjEydGc5ISDGtGkj+FNhlC7tDKoYprU72zEt2ma8PQg==
X-Received: by 2002:a2e:9b97:0:b0:2bc:b694:6d6e with SMTP id z23-20020a2e9b97000000b002bcb6946d6emr21085768lji.27.1693329449142;
        Tue, 29 Aug 2023 10:17:29 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:28 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 05/31] clk: rockchip: rk3128: Fix aclk_peri_src parent
Date: Tue, 29 Aug 2023 19:16:21 +0200
Message-ID: <20230829171647.187787-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101731_272406_0C805B9E 
X-CRM114-Status: GOOD (  12.69  )
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

From: Finley Xiao <finley.xiao@rock-chips.com>

According to the TRM there are no specific cpll_peri, gpll_div2_peri or
gpll_div3_peri gates, but a single clk_peri_src gate and the peri mux
directly connects to the plls respectivly the pll divider clocks.
Fix this by creating a single gated composite.

Also rename all occurrences of "aclk_peri_src*" to clk_peri_src, since it
is the parent for both peri aclks and hclks and that also matches the
naming in the TRM.

Fixes: f6022e88faca ("clk: rockchip: add clock controller for rk3128")
Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
[renamed aclk_peri_src -> clk_peri_src and added commit message]
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/clk/rockchip/clk-rk3128.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index aa53797dbfc1..fcacfe758829 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -138,7 +138,7 @@ PNAME(mux_pll_src_5plls_p)	= { "cpll", "gpll", "gpll_div2", "gpll_div3", "usb480
 PNAME(mux_pll_src_4plls_p)	= { "cpll", "gpll", "gpll_div2", "usb480m" };
 PNAME(mux_pll_src_3plls_p)	= { "cpll", "gpll", "gpll_div2" };
 
-PNAME(mux_aclk_peri_src_p)	= { "gpll_peri", "cpll_peri", "gpll_div2_peri", "gpll_div3_peri" };
+PNAME(mux_clk_peri_src_p)	= { "gpll", "cpll", "gpll_div2", "gpll_div3" };
 PNAME(mux_mmc_src_p)		= { "cpll", "gpll", "gpll_div2", "xin24m" };
 PNAME(mux_clk_cif_out_src_p)		= { "clk_cif_src", "xin24m" };
 PNAME(mux_sclk_vop_src_p)	= { "cpll", "gpll", "gpll_div2", "gpll_div3" };
@@ -275,23 +275,17 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 			RK2928_CLKGATE_CON(0), 11, GFLAGS),
 
 	/* PD_PERI */
-	GATE(0, "gpll_peri", "gpll", CLK_IGNORE_UNUSED,
+	COMPOSITE(0, "clk_peri_src", mux_clk_peri_src_p, 0,
+			RK2928_CLKSEL_CON(10), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			RK2928_CLKGATE_CON(2), 0, GFLAGS),
-	GATE(0, "cpll_peri", "cpll", CLK_IGNORE_UNUSED,
-			RK2928_CLKGATE_CON(2), 0, GFLAGS),
-	GATE(0, "gpll_div2_peri", "gpll_div2", CLK_IGNORE_UNUSED,
-			RK2928_CLKGATE_CON(2), 0, GFLAGS),
-	GATE(0, "gpll_div3_peri", "gpll_div3", CLK_IGNORE_UNUSED,
-			RK2928_CLKGATE_CON(2), 0, GFLAGS),
-	COMPOSITE_NOGATE(0, "aclk_peri_src", mux_aclk_peri_src_p, 0,
-			RK2928_CLKSEL_CON(10), 14, 2, MFLAGS, 0, 5, DFLAGS),
-	COMPOSITE_NOMUX(PCLK_PERI, "pclk_peri", "aclk_peri_src", 0,
+
+	COMPOSITE_NOMUX(PCLK_PERI, "pclk_peri", "clk_peri_src", 0,
 			RK2928_CLKSEL_CON(10), 12, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
 			RK2928_CLKGATE_CON(2), 3, GFLAGS),
-	COMPOSITE_NOMUX(HCLK_PERI, "hclk_peri", "aclk_peri_src", 0,
+	COMPOSITE_NOMUX(HCLK_PERI, "hclk_peri", "clk_peri_src", 0,
 			RK2928_CLKSEL_CON(10), 8, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
 			RK2928_CLKGATE_CON(2), 2, GFLAGS),
-	GATE(ACLK_PERI, "aclk_peri", "aclk_peri_src", 0,
+	GATE(ACLK_PERI, "aclk_peri", "clk_peri_src", 0,
 			RK2928_CLKGATE_CON(2), 1, GFLAGS),
 
 	GATE(SCLK_TIMER0, "sclk_timer0", "xin24m", 0,
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
