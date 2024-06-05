Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CA14C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 20:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TfMFCLjY+LEzD2qDvuB3RI/aGC4SKc4TjfpxzkavFKs=; b=qqFb7V32byX2UE
	OZ/PVHrZCik3jtal0s+lZF8j26X7+bhw+A23sBXSPON9gK+JWbwEMMN4EVeUTU66rNoCxnVEB4ekV
	rAAjMg6ZuIUpROY+yfFMFiWIONKCKb2lUXJqxtKgUG8A1k6524ZWlWDZMDYHgPF8+mRBRkFihHjER
	FCiC22ChRXEcj88vVmCNVtFbWpzSmCkAqE6uY69OOCZpyxlY+cQdp3CZ38JSL8I0E3t6/AbfnVQ2G
	bNfeX/W/iWZgaXuNKo+Jj6VbsUqadYWYtffuO406kg4eBkU9A6+z3Q97mZCjXLS3qbUxVFYWHJvHx
	EWBKTEm4LKXcVjrlkfnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcI-00000007V3v-3bWw;
	Wed, 05 Jun 2024 20:52:18 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcF-00000007V2s-3W7W;
	Wed, 05 Jun 2024 20:52:17 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-52b992fd796so294047e87.0;
        Wed, 05 Jun 2024 13:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717620732; x=1718225532; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tRZR2FIRT4kLU11sqM7VA2ozbtsr+hE+nmcdAqWhupg=;
        b=NXJa5iWOZNPvIXfXyxnj/XZ+YSaOPiVsNBtril0jfBiug52Sg4G/+ff3yNuPHyae2p
         nhagQsFH7y5VuoJuwBTu/fCgY05Q8d8k3pRGwovhryU/EyIsrlKfAoQrH010bV4PmU29
         22/FUyDQCENMfoRoMRGXbp8lXTDrQuHMKgC6xVCuKi2XbVh0nEP3GJ1BGplA0GR5cN4A
         FmguxNMxAAyxlPQBtuukY4BopxipMo9UVHQoOExGHOI1ZHZErgPXiOZszvpZA0GNQDI4
         bOC+sYU9izHjtXc1F7gApO2qsbT0nKlKRZxSzv5QhMesRCUYYHo+atTpNkAKTn7EQyO+
         2AAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717620732; x=1718225532;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tRZR2FIRT4kLU11sqM7VA2ozbtsr+hE+nmcdAqWhupg=;
        b=xEZxvVDYVPt90wSRBLPvDEBE2yn2CL3fE/hisFqbuX/3/doYrW1bsyCj6Xi/9tKo/D
         U6lKhBWPwhDmGA37JYpqnDxy+SSRPA0HjJGASXg2eW2G4vRqF2mdCfiKELuhMgbuzPWw
         9oallBw7qXCwP4bEbNGUYbNg0cQl8OO8OtWc+1YnFzKNnlN5ZWekXcPRaRWDJz0hTB6p
         BnPpSfjY9gl1v3JaXMilJvS5ygZQtzOX7BmRAUHhXzfflRJpqsv2PDQOHUSj1IHNtAGQ
         IhRPQH5QGOQrNkCvtqPyw2iWYyc1sqvz08SUrZHNjAVhksnG5y2uRVHB1P624HtvXxDD
         v0+Q==
X-Forwarded-Encrypted: i=1; AJvYcCX+8JpupyaB1qzQ2kF+LfkRivZ+57K0VBYO+WD0gobDfwoxweJ+mLsOJB+3TXxLnj89jYQme4vk2Rw2f0s/YpF9s2tz+lk6Wt03CASGYd+xIzdDiCR6TC+/bN64zqEqlIIBVga2jqfL52lP9crkbApaWihkXSoTbAk=
X-Gm-Message-State: AOJu0YwCM3OBn0CgXdqWeOSRtQL8v66CxXQqzZovpjJxtWnSq0yHfIhr
	PN1WTfSAs/4T2wzTvC5hEI+dAP79s7c2/s2FNgPEEtnKCgmJdvg=
X-Google-Smtp-Source: AGHT+IGj0rVw+PbaW//1K6g6mF5yaX4g2jKv2yrK3ycmj8fN1glaSqwLjxl18e4/YdglcXhTAkU7pw==
X-Received: by 2002:a05:6512:3b97:b0:52b:8847:ad0f with SMTP id 2adb3069b0e04-52bab4cb7afmr2982121e87.11.1717620732322;
        Wed, 05 Jun 2024 13:52:12 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c71bb5affsm72265866b.147.2024.06.05.13.52.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:52:12 -0700 (PDT)
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
Subject: [PATCH 1/5] clk: rockchip: rk3128: Drop CLK_NR_CLKS usage
Date: Wed,  5 Jun 2024 22:51:59 +0200
Message-ID: <20240605205209.232005-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_135215_897520_08466EF8 
X-CRM114-Status: GOOD (  12.16  )
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

Similar to
commit 2dc66a5ab2c6 ("clk: rockchip: rk3588: fix CLK_NR_CLKS usage")
this drops CLK_NR_CLKS usage from the clock driver and instead uses the
rockchip_clk_find_max_clk_id helper which was introduced for that purpose.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
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
