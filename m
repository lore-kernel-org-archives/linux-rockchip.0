Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE32EC71153
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 19:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gb8ZS/L1iqD21uF2YiWHAHfqq09BNQRqN0k+ZB5mKGY=; b=QyGhhL+ExarGww
	QogMtK3TTzvk/1jz/TvGcdPw1yLLiB/p3a3mm4kCBXkpo8cmcx/kE+JLHocYewfFhV/peMgppsyva
	FSvPK15TChzan5B7hB5T4HkV0n+abWJORJDK1BO1xYn4K1wDpDnHOJFBnhJ/E+PkvM3CaN/gPIBRa
	bh5R3p8RNBczMoftRdcQZwd0Vr4HE6HuZeZFUI9nI/xij8OmDDiQ3Do+VBd9MGTaMrhaXpS3yD3dT
	aNujlVrrsWEPH4bqYhaBfZ5owH3pMp16nQXuifotBXU+Uu0yvWH1Sd9G8hRJhzYrhDRIMTrTwlkg+
	rMisKtvPN3TpMoU/OX5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb4QL-00C8kM-1C;
	Tue, 29 Aug 2023 19:30:49 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb4Q4-00C8hx-1R;
	Tue, 29 Aug 2023 19:30:38 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9a2a4a5472dso25966066b.1;
        Tue, 29 Aug 2023 12:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693337430; x=1693942230; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bfzC+/2ZWaml8G5FoMVqEV7cfUPth65LiMOYJOwJeN0=;
        b=JkJN3G3JOjhW/ON0sxFI1b3sJN3P+c076L7+NyQHqqiY99dz14iMjajuWgfyFDMYjq
         yHQOvaa0p8JUa9LzlhSSxmQArk7tgnaW1MJaRMW7c2c4BhrvCKG+4eShIZjhGeCP26jq
         hO2XimlS+gOTrBBbiVDwz5CATppqnE0qFJgPobpLBnCWSSjsK4thAZhQtf+U5S33c1gE
         YtyUoro5UQBRtrJBLaEw9TXiuNfQvbeO4UApcP0O0j7AXLpZ8XN96HmCGiro7czF6B+W
         hcRCZr4DHJLnVRGvaErQ4rcFYvglLiIOR0yF1UeAXuC7XnkbI8fjv+K8akbQZJQeocVi
         xUHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693337430; x=1693942230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bfzC+/2ZWaml8G5FoMVqEV7cfUPth65LiMOYJOwJeN0=;
        b=fS68NhL8QLbIIPFDp9ptDQZ90ZC6s/4HnwFDCUF87uWwHJ3yjwGKbGJXTY5VAo7Rw3
         jmlj+z/7p0NNkJKDC42ggBTmqwjAF8J81ANIfGiLF2YEhMJ+FCAt0dS9SAtVR20/m2xm
         s38iyQFa4o8Hhoqgxl6E/8yZ2hndRCFfki9ru0DIjz4mKG5cNQtxnQEGWoz1WcTsJuQF
         IHW3gv6ZTrEf1xZlIPJvm9c+vNO7w+OgreVO9Be4sO9/pdlKtjYwRe6HDdNMQ3UaJGYs
         OoB1xF/fX1Xi+VnKLbVaFMHLL08ABFXl7wVuWT3jDOHXEHonkLeAxBthgetlUTyUgNER
         /dHg==
X-Gm-Message-State: AOJu0Yxnhn7UbXmWd0dzo4h1f6mFwbf/7RjHTl39LGNASSbOvysguTiO
	YngBtJCP+TIyTaYXd+cVyVfqhvIDwA==
X-Google-Smtp-Source: AGHT+IGNh4/VCGDQCZHTWgx0EhZ1PtJBqs8JN8DF92lQhMLKLCha86n99pCn/Xj5QM+kGftFnuVypw==
X-Received: by 2002:a17:907:60cf:b0:9a5:aa43:1c7c with SMTP id hv15-20020a17090760cf00b009a5aa431c7cmr5036312ejc.26.1693337430408;
        Tue, 29 Aug 2023 12:30:30 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id o8-20020aa7d3c8000000b0052544bca116sm5940902edr.13.2023.08.29.12.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 12:30:30 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 2/3] clk: rockchip: rk3128: Fix hclk_otg gate
Date: Tue, 29 Aug 2023 21:29:57 +0200
Message-ID: <20230829192958.250248-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829192958.250248-1-knaerzche@gmail.com>
References: <20230829192958.250248-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_123036_812996_2881C7CE 
X-CRM114-Status: GOOD (  12.86  )
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

HCLK_OTG gate is located in CRU_CLKGATE5_CON, not in CRU_CLKGATE3_CON.
CRU_CLKGATE3_CON bit 13 is already (correctly) defined for ACLK_GPU.

Fixes: f6022e88faca ("clk: rockchip: add clock controller for rk3128")
Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
[added commit message]
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/clk/rockchip/clk-rk3128.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index fcacfe758829..17bacf6dd6e7 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -484,7 +484,7 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 	GATE(HCLK_I2S_2CH, "hclk_i2s_2ch", "hclk_peri", 0, RK2928_CLKGATE_CON(7), 2, GFLAGS),
 	GATE(0, "hclk_usb_peri", "hclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(9), 13, GFLAGS),
 	GATE(HCLK_HOST2, "hclk_host2", "hclk_peri", 0, RK2928_CLKGATE_CON(7), 3, GFLAGS),
-	GATE(HCLK_OTG, "hclk_otg", "hclk_peri", 0, RK2928_CLKGATE_CON(3), 13, GFLAGS),
+	GATE(HCLK_OTG, "hclk_otg", "hclk_peri", 0, RK2928_CLKGATE_CON(5), 13, GFLAGS),
 	GATE(0, "hclk_peri_ahb", "hclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(9), 14, GFLAGS),
 	GATE(HCLK_SPDIF, "hclk_spdif", "hclk_peri", 0, RK2928_CLKGATE_CON(10), 9, GFLAGS),
 	GATE(HCLK_TSP, "hclk_tsp", "hclk_peri", 0, RK2928_CLKGATE_CON(10), 12, GFLAGS),
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
