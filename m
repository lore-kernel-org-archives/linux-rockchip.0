Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F7FEC27C55
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 21:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKSLeOJ/FjTmGqRRyO2fyvdcJx+idbLi2exFdp82rZw=; b=rRDgoUumop+3wg
	ykHkDZ0FJyjSy2nfUyMgfSKa/SkG8F4SUlWkmojiulXfoBqESVAG8hWXA+SffdNES81oR74w2CjDO
	7eUhVhWLLOw0EYUiu9zIPunHYFb8XaVZ21uER2T+pE1jxUt5gK10c40/B71cp4ZWU4y+E9cYuR3mO
	lWHFu4xfYNWHuvRCU9hWuxm6ZCIsJMwnwr64oC3Ssiegouy2IKPIqcetWnQj69wnllLDjGsNJDUGf
	YDP1MYy0kFvcuT0MTYfWAS4n2aG3SB6Zdp1Be3QXmJu/MMSPuRs+oecEpMpJHGcbd9QQd3o1u+rDm
	GttubdJ5C2Chn9DTSSuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExkg-00000007XPo-3Yct;
	Wed, 05 Jun 2024 21:00:58 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExkb-00000007XMj-3wJ4;
	Wed, 05 Jun 2024 21:00:55 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-354f3f6c3b1so201397f8f.2;
        Wed, 05 Jun 2024 14:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717621251; x=1718226051; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SwbtZSg+KieEl718DTPhm+GILj3m52AXbprU8PF/yug=;
        b=RFXLp4zBG7Er/RjE9vNl/1y/eYG/ntx//Gn9iGN0JXjE1wBdHs2FH0bOtUgO7/LahT
         on36ZABCluxBKdROlx5NVhIlA9UkKT2+jCu2MZ9KVgfW/dpvxVeuQG7JFT3HjLV8tMso
         QohLDx+fjBKmXTO+fJbzFHCWIdO9zN3b4ZAdGMB1FiSEXzIzLH6o2g8P7c/XTiHLgOU+
         hTWKd2LQHJzEZUnsKdSCR7CT80z6G0Rn2DkY0GxnoEAE7ARiWIcVU1x9FLpKfu2H8EkY
         VRb6yIcaz9MMaNzU2f/Zd6TD/1vTZXoHYpKuXhymJwOFQTD4m4PCFpauKFe3S0qGwsPY
         lLOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717621251; x=1718226051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SwbtZSg+KieEl718DTPhm+GILj3m52AXbprU8PF/yug=;
        b=I6+g9klCSFkSaMcY7TFaHZXMRszoX/KLZJ7hNyQdCH0Rbk3IdRoh9AxkYlVjCc7lYR
         QxYl1RoPwpSGqt083WYrROIPS2SEwq6be0ZSlXXsZkAh05luIr10a/3rSnvpH42r89mu
         lH1ICmxgULLga4a2m7WpkYTxmSZPtuoq8aKsUHGscXMRsEBZdyztAIRUyhTXagC3Y4b4
         +BPekTfLiBLZWDjNvlUGQTnvhjpVGnqFOgWKIKB0+/7G7J5rcLV4fuVt3ghNYeZ9p31S
         iAOSLovSEjJEOcjKBg1zcj6ItHCkPAGfR80IaeWQYaPg1jzzjzDaksK8yUIRD32fnGKf
         AJNQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0MPxMBXlO91mNc5pJrbHMopMHmVv5lHM2w+g5VIuHSQ709+q38EUY4f+IUwLRGvRHk+LVwjQzX5xZP60brBXAQd2y5r3cBNbnVTjQ69yms/AeM7olD6I11zfEd+if7KI8w1IZ87xMpfisgbXmWDfKSUnd/byick0=
X-Gm-Message-State: AOJu0YyKLCZirducOXbMe7SkOA6SqfFG7QT4jOA7eKXOGcv5JV+bekzN
	U42JXoeRyrwokb36Snx5yHdX+ZG5XS0xC83nbKyv5EpkxKI9940=
X-Google-Smtp-Source: AGHT+IE/9gjfgWZnYQXOAj5tp9SUA5Lk6QARVK16iFxrgqIbxjEEWBQNATeesl0pbTjRSU1L32AXIA==
X-Received: by 2002:adf:fe0d:0:b0:35e:60e6:c8a8 with SMTP id ffacd0b85a97d-35e8405dd0emr2592276f8f.10.1717621251632;
        Wed, 05 Jun 2024 14:00:51 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04c0d77sm15955721f8f.5.2024.06.05.14.00.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 14:00:51 -0700 (PDT)
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
Subject: [PATCH v2 1/5 RESEND] clk: rockchip: rk3128: Drop CLK_NR_CLKS usage
Date: Wed,  5 Jun 2024 23:00:45 +0200
Message-ID: <20240605210049.232284-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605210049.232284-1-knaerzche@gmail.com>
References: <20240605210049.232284-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_140053_984254_3185DE75 
X-CRM114-Status: GOOD (  12.01  )
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
