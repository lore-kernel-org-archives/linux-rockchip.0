Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77A57C27C54
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 14:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKSLeOJ/FjTmGqRRyO2fyvdcJx+idbLi2exFdp82rZw=; b=U1yODvbBWBUiEf
	bk8m8Z2D7v3o1lTjrtgjrfT6GJ6ua2i0n6LCjHDVZwSiBonr8MWby0LodQnpZdvS5i53/mU3n2b7f
	D5uqLTXBiTcTzoMkCoYlmD2GxWaUwScGmmsZXrdI4GMy4LnOeaPoc5qoRUynzis6lpIcSITvlKX5+
	uXNQ4ArPKTwgbQA6i/5Ys0TPNTr9jIhbzJQ0Nzl3fodgNoGptWJww4Zh7EfSpOiZp5u3YUw/HHxql
	HfgrAUoAA/8Ch/ucQVaCfw8B3AIWaCf9Q0eCwDnpFNykq15ApkEpEEHyhNn/RblXZMAQ9kN1+2WFf
	kw52l0GTT9+Ej4b6l/AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEFT-0000000A6wG-34og;
	Thu, 06 Jun 2024 14:37:51 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEF8-0000000A6eU-39Mf;
	Thu, 06 Jun 2024 14:37:34 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2e6f33150bcso10660361fa.2;
        Thu, 06 Jun 2024 07:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717684647; x=1718289447; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SwbtZSg+KieEl718DTPhm+GILj3m52AXbprU8PF/yug=;
        b=l+OHYm1+bE0JokFUVbn9bNws5FVxDjUZW92iZzhZwWsWTHKji7ameafBZJoKTfYFNw
         Q/xNrKu6Tc9Nm3BWQcZMheHiFBonlQ/DWAi/xyw/KzLHcCEgTh2ypO+dSSODSmhmyWGj
         OeQDadJT4iporg+9OnvGnclZtI5pyKgbOV9gULgIcwx9rMdAPuysYt/QIQVsllmle1jp
         aQwRKMfQawz2OtGN1lBtYDhmTXWbwnuqcq9ET97DnbJpf8xiU7N3Op+h70LH0aV00BT1
         bb8CkHWdyp2Uo1rnbKDOo2DOo3SPSqo2ypsp50JXLljxnHsGNeIAOejnpqfsQPfSwomN
         /r3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717684647; x=1718289447;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SwbtZSg+KieEl718DTPhm+GILj3m52AXbprU8PF/yug=;
        b=bpEWwLd8dYk+P+9hvVvOqGDME8spvdwRd6/1nrOpXuNBQU0kzM1ypnZgtEM1KBFodP
         78uk/JDLhfCPUd2nSdq2rmzY+CJ6Dzy1AFnz9QeLCTCdljjcWgm8lwMiTvz4Ikybbedj
         JaY24ff+/pvwWpyeTj3vtcJVjDNz9NnpEHa6jnlPL7kUtY9T6Yn9TzG8AhUYv6SEcyRl
         abj68iAnONcPEszvs8c6zPv+42GUFEA4Kpm21mJwj3LSa7FkJCkhG1p3MqCzLLrGtPlP
         wgundhL/Y0CqDyaH4JFDdQdeKY/HR/nvdvJqSAnkOUhSw8VztTMPIxDBr9uQ+jtvfixR
         bQVg==
X-Forwarded-Encrypted: i=1; AJvYcCWNxy2KwnB+oh2gDoSItq2DXp1tPgBrErteB7yC/tN9jA2zOi5HUe0xsXP3hSbz1S8LDc4Z8XmLHFlXjRyl7+NZD7/T+SMftMAWXfZ1jCon4SBofz1HGHvgifnCrW0bGNpxcFn4oD4Ndm0GQqoDdmcM27yGFMASjU0=
X-Gm-Message-State: AOJu0Ywba4dAbY9d2H+SOYYmR0QuUbIMhLrlqimvd00aNIil7KTJL/Lr
	DD4Ht2PQ66uHhznWMmdmrs5sgafbkNq/J1WI+0Gm9K1bkMBM6X6za5B4
X-Google-Smtp-Source: AGHT+IH1deup0gJuPwta9k775MNhv8GAL/BikALDm1EyiQnDESfz6dwxMRWHIj+6oNfeitvvhv7KfA==
X-Received: by 2002:a2e:9ac6:0:b0:2de:74b1:6007 with SMTP id 38308e7fff4ca-2eac7a72de1mr38708601fa.36.1717684646965;
        Thu, 06 Jun 2024 07:37:26 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:ed9f:91b7:21f2:3109])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57aae1008adsm1190925a12.38.2024.06.06.07.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 07:37:26 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 1/5] clk: rockchip: rk3128: Drop CLK_NR_CLKS usage
Date: Thu,  6 Jun 2024 16:33:58 +0200
Message-ID: <20240606143401.32454-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240606143401.32454-2-knaerzche@gmail.com>
References: <20240606143401.32454-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_073730_915695_7B33B600 
X-CRM114-Status: GOOD (  12.43  )
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

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - new patch

 drivers/clk/rockchip/clk-rk3128.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index d076b7971f33..40e0e4556d59 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -569,18 +569,22 @@ static const char *const rk3128_critical_clocks[] __initconst = {
 	"sclk_timer5",
 };
 
-static struct rockchip_clk_provider *__init rk3128_common_clk_init(struct device_node *np)
+static struct rockchip_clk_provider *__init rk3128_common_clk_init(struct device_node *np,
+								   unsigned long soc_nr_clks)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long common_nr_clks;
 	void __iomem *reg_base;
 
+	common_nr_clks = rockchip_clk_find_max_clk_id(common_clk_branches,
+						      ARRAY_SIZE(common_clk_branches)) + 1;
 	reg_base = of_iomap(np, 0);
 	if (!reg_base) {
 		pr_err("%s: could not map cru region\n", __func__);
 		return ERR_PTR(-ENOMEM);
 	}
 
-	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	ctx = rockchip_clk_init(np, reg_base, max(common_nr_clks, soc_nr_clks));
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip clk init failed\n", __func__);
 		iounmap(reg_base);
@@ -609,8 +613,12 @@ static struct rockchip_clk_provider *__init rk3128_common_clk_init(struct device
 static void __init rk3126_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long soc_nr_clks;
 
-	ctx = rk3128_common_clk_init(np);
+	soc_nr_clks = rockchip_clk_find_max_clk_id(rk3126_clk_branches,
+						   ARRAY_SIZE(rk3126_clk_branches)) + 1;
+
+	ctx = rk3128_common_clk_init(np, soc_nr_clks);
 	if (IS_ERR(ctx))
 		return;
 
@@ -627,8 +635,12 @@ CLK_OF_DECLARE(rk3126_cru, "rockchip,rk3126-cru", rk3126_clk_init);
 static void __init rk3128_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long soc_nr_clks;
+
+	soc_nr_clks = rockchip_clk_find_max_clk_id(rk3128_clk_branches,
+						   ARRAY_SIZE(rk3128_clk_branches)) + 1;
 
-	ctx = rk3128_common_clk_init(np);
+	ctx = rk3128_common_clk_init(np, soc_nr_clks);
 	if (IS_ERR(ctx))
 		return;
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
