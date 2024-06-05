Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A6E8C27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKSLeOJ/FjTmGqRRyO2fyvdcJx+idbLi2exFdp82rZw=; b=iS8EiPp5Oxpceo
	zhndAu/+Xu/w556OAWuq+hbHBK7f2uTt3edNQarBVbAElBdaVk0TTPSwFs5MsgtoH7AqlPX8FRWuc
	08SF1HH2U+J0oncarJe4q5i6xTzQF6j+AXSv8Io2lymDIwIpRGri7NyhJwxg0HO2qfmoCaK2JABFH
	LiUB78zydMLYmUFQs3u+Mz1iLK+/FXEiD/K3IUOpu0PjsjLM0oVireBvvLqsKyZMD2Hjv/FLGoU5T
	WXnGPyIOJPHtaxGMfDb0sXdstkSGdfwD+Dl3P3HHM81Ph1iAGiuvGku7DNXHZQrNKYtuN4LTyjulU
	9fmZcM3GZYcUTaJWqnwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcm-00000007VQz-3Bcv;
	Wed, 05 Jun 2024 20:52:48 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcK-00000007V3N-3sea;
	Wed, 05 Jun 2024 20:52:22 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a68ee841138so29148166b.1;
        Wed, 05 Jun 2024 13:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717620736; x=1718225536; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SwbtZSg+KieEl718DTPhm+GILj3m52AXbprU8PF/yug=;
        b=gxw+e0mWctv8FnF9Fmarica1eeTIhZNjj9XyrQWdnWKZKczh17DXAzAFLVjWIAaoGs
         75h6+D3J0wJipv6528bmsmNJOeJaYrjr4s3trJY7s/hLN4oBeO0/3TmrHPBQSn3ZZD2V
         Qq565sj3s3bAQg/X5sV/bqJmZIwnStqqQy8XUwVU0zHhhOlA5q9zfnzvIlabc24MjMBM
         yj06ioUo5+CJ5hs/VfbJ1SuxsPx5yAmJLP7H5Pjp0lg3zlECnkj0CtHQJpBFhz/Ps1wW
         aNdtwJan6WorqrKKJS3NjxSkgXFRBTwGG1+YKkiORyVBWptIHGRSWEDAH5z8Y+DVFEHZ
         IfoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717620736; x=1718225536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SwbtZSg+KieEl718DTPhm+GILj3m52AXbprU8PF/yug=;
        b=dedoOI095JiPSpvyGj/tagQ5jThKz+dCQhmysCGVHSmCtUZz/9lUBQcavl8Yys1vJT
         U+BGq5aIyKAhDUrjzHZ0xFDXT3eup+xuqmEfzdWFB374gauq7G8niZiMd0JxJvKIbGf4
         ws3synDd+azWfnhPmfCmwiK2t5lMnOKS4tstGDC4BJKbZVuZZRKclcQF5+5Alg4KOJ15
         RqeeFR2NfZ8imSGAwajj5hN6hbM4FJ2BoqO3LAP3dqGDo7rvzX75dSUsVTex1qp0a6Vf
         LjDNzpG1eGp4L3jtCJmUIeYakv/+gx2JO8rkA+rvraMUBSc1gNmWzvKGIdKKynuD1/+6
         LcKw==
X-Forwarded-Encrypted: i=1; AJvYcCVhai5V62CruAvQuRKdGzDoqF3KWcX82dPuCz2KWA+9r9ngN1SUqKUVAoYp7D7vikIg9uIeEiYzrAz/NwIcGqc41vvSakPVAE4Lj3SWyTadkeZ0Xjk1jZ8efwhTlmqar2+hofcMoxgsJXhdJOfIwFbEUpuUgm9BN6Q=
X-Gm-Message-State: AOJu0YxPYzLKsqZVW93NvCwsqOiDr6wkwhGDhGtRxFy/PUp6x9VBGK6u
	QqgnhyBMP9+/YD2zlaVGnRHmLci6JFwVQg8b1MJSFgjpGza5b/Q=
X-Google-Smtp-Source: AGHT+IGUnMdIVufGuJqx2NAVZkDmWMS51VfiKdCE/FwjeZA4u1Q5WF1rgZ2eBaMEhn+7c3tMJ6YzAQ==
X-Received: by 2002:a17:906:384c:b0:a61:c462:c612 with SMTP id a640c23a62f3a-a69a002e316mr235653566b.53.1717620736131;
        Wed, 05 Jun 2024 13:52:16 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c71bb5affsm72265866b.147.2024.06.05.13.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:52:15 -0700 (PDT)
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
Subject: [PATCH v2 1/5] clk: rockchip: rk3128: Drop CLK_NR_CLKS usage
Date: Wed,  5 Jun 2024 22:52:05 +0200
Message-ID: <20240605205209.232005-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605205209.232005-1-knaerzche@gmail.com>
References: <20240605205209.232005-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_135220_984205_6D81AFC8 
X-CRM114-Status: GOOD (  12.68  )
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
