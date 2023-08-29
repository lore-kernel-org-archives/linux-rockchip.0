Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D68DCC83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gb8ZS/L1iqD21uF2YiWHAHfqq09BNQRqN0k+ZB5mKGY=; b=MXMLaahdM14BPG
	3kCQIqGawFpB25JhtnCRdqHctPDDV7J2zyGPUY4CV0hrpV6NDh2E/YaILFZzvG49Kll9WVsufahtB
	7jcilRU9M5dfVLuN7DxgZu1afz4G5F7DrrT5OE0W2wu9YIemz5Ri+dMIEDfXgfN/WDwG/iwnci4BE
	sz/EVJ8IU2sPCispqGRmQre92iYNSFPHKv37R8Q7xevAb7MMa+AseWcWiMhJlxNL6MdiuYiWRK8GF
	HfRoEa+Iwt9cSnsQWtmMCKGSs+4wwhU/shF+XSICvcDgWtTKXlEvUxeiMYvLC/GANv8qOcSxILSW1
	Qm58Fw02sWFs09EtX+HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Lo-00Bvni-2w;
	Tue, 29 Aug 2023 17:18:01 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LL-00BvJ4-2K;
	Tue, 29 Aug 2023 17:17:33 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-991c786369cso601756466b.1;
        Tue, 29 Aug 2023 10:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329450; x=1693934250;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bfzC+/2ZWaml8G5FoMVqEV7cfUPth65LiMOYJOwJeN0=;
        b=bZLW+p0zlfsLlVcBzVygKS55P0IRebfmfiqzvn+vw5Svt3aaCxEmAf/zNj4HxrSb3q
         CHnOvzQ8j2IRQp89lqASBmTMaDuVAlOqF67lYkaX0qkNbvZhD+R3bJntKXa78jgmITAm
         2DrvIUbAK8VifA3j4MPRrKZMMfmGgMhoQhZgwJDu4rLZXqE1lFOhDFB8kOHL3DWwlndP
         pjs//iT2Q/1C+vivTrj4iPoL6TyQVWojgwxQvJQTyBhgSgxY8mn3U4y6sfBl+JArMVty
         RsUGpKZBYW4fV4MlYjswm92/89GXO5MLr57K3JCxIoAiZqRuS/0xNbUN+CXSFTQEoqz+
         IPiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329450; x=1693934250;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bfzC+/2ZWaml8G5FoMVqEV7cfUPth65LiMOYJOwJeN0=;
        b=CalsxRRUeX/aGxl3GY6POnYkoV0xe7jj4FxPJpepkN7Bc/B0/WAuZCUsGXr2rsnUVZ
         0VuX5XL9GqWtc5xE6vzA6X9AUlxdtAsRCb7MmrEQw7lh7U+ZUeSFYBn5VxluMdtmaDY5
         on835bHzwQl4QWZwKecwnF48+mQSuh9Ph9HuPTJ0w+SfpWIBcLZciHUPRedOhO/MTzMT
         wfW8Fh0AE1VYBEHqiCoSUrAHuMlyjrfkDfzzyPrx21H/oEcQXfMh73Lp8HIp+CEiFoy4
         3nhPHw/AtVzDhaAnw+36aXhC8iMckhkETjLvCJQ7odm07gwlJqFaykZ2nbGQr10D2F3I
         /cCw==
X-Gm-Message-State: AOJu0Yw4bqpX8Y2+sS57SCSgsXkeqqIkgoQuj6jRmAH0OdJorvH2g8CO
	GT0aaxGIu2R3LLfMaoD+ug==
X-Google-Smtp-Source: AGHT+IHd4qS1gu6W8/rBDv9L8vXPbe681EHcWWDTg19iW5zGN1XHAmvdeOISpan8OWf8b/vW0vdbkg==
X-Received: by 2002:a17:907:2e02:b0:9a1:f81f:d0d5 with SMTP id ig2-20020a1709072e0200b009a1f81fd0d5mr12345626ejc.54.1693329450187;
        Tue, 29 Aug 2023 10:17:30 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:29 -0700 (PDT)
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
Subject: [PATCH 06/31] clk: rockchip: rk3128: Fix hclk_otg gate
Date: Tue, 29 Aug 2023 19:16:22 +0200
Message-ID: <20230829171647.187787-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101731_782738_911D0BD4 
X-CRM114-Status: GOOD (  13.09  )
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
