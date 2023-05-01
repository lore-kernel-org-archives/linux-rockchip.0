Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC744C77B61
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 May 2023 08:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTR2Kgxi3xPvK3fjRHzLQh29hhkgzzrww8ya5Dogr4c=; b=mV3fv/5Jv9ciDW
	OYUkBGgOYOy+COklZIis7RuX+e9xWL6uQDIZDxWuog1ZRfc7VZYdBMwvIgRpuCgNPkJ4WqoeA/eWl
	B+zVfnoUHVBeU+J9gsNnDN7gqJZdOJocQIWRPJEztRaFvo6fPw36ywRDulvC6eYIWsHhQ1VYZIBNU
	Wn7lehvKzeszPAFXDFeuv7BrAwMlhwQpjdrKVrK/fSUIr7uqQ3IgBcX/SPUgm2a9Ci0hUBcqqYjf8
	SkEZqZ/gaA8PD4tMfSnhp/KKRB9nMHKvKh1u2OUu1K30oXLK9hoxfMaMHB9AW7rHjE3nEWCeppVLE
	o1AInX/eW2sNr3P8Vp0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP93-00FTEg-2H;
	Mon, 01 May 2023 08:44:29 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP8y-00FT8P-19;
	Mon, 01 May 2023 08:44:25 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0A4876602F6A;
	Mon,  1 May 2023 09:44:22 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1682930663;
	bh=eFpFeWyImJpFwgodlftFerx7HEWYmMUA01PlcCUlrro=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fFTI9Pf9U4RPcD9XXPwfu/CVDrBtiM4yD72KEGx3dNlWSaV/qWZxI3W157KB967UO
	 ukEVanU1quhqoOsERuxQEs66gOnBHm7bmebpxtFoI5tJZK1jHVb2jXx9c+Zhm4GUpa
	 nNi5xD5sY1cO3cBOzyfjlndWGOeVXc4mYK/iT2I21tyff3yLllzBeS8m53RZELmKuY
	 u4Gq8DCXieEX3lZJ2C+OlXfVCcrpdrnhs9EZy8DSQnRnuKGHB40O2P27uZqUVp5Ycu
	 OOOgfrtb3MJTdWr0JTD6/Ex6xNseScCt9kNJAJcaOWTCc68DRhQ+vpOb4etdlQ0aJl
	 J6k3z0sUjXPHw==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 6/8] nvmem: rockchip-otp: Improve probe error handling
Date: Mon,  1 May 2023 11:43:58 +0300
Message-Id: <20230501084401.765169-7-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_014424_541039_31CEA501 
X-CRM114-Status: GOOD (  14.02  )
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

Enhance error handling in the probe function by making use of
dev_err_probe(), which ensures the error code is always printed, in
addition to the specified error message.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/nvmem/rockchip-otp.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index b74d98f82ae5..4370d6c5e4e9 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -235,10 +235,8 @@ static int rockchip_otp_probe(struct platform_device *pdev)
 	int ret, i;
 
 	data = of_device_get_match_data(dev);
-	if (!data) {
-		dev_err(dev, "failed to get match data\n");
-		return -EINVAL;
-	}
+	if (!data)
+		return dev_err_probe(dev, -EINVAL, "failed to get match data\n");
 
 	otp = devm_kzalloc(&pdev->dev, sizeof(struct rockchip_otp),
 			   GFP_KERNEL);
@@ -249,7 +247,8 @@ static int rockchip_otp_probe(struct platform_device *pdev)
 	otp->dev = dev;
 	otp->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(otp->base))
-		return PTR_ERR(otp->base);
+		return dev_err_probe(dev, PTR_ERR(otp->base),
+				     "failed to ioremap resource\n");
 
 	otp->clks = devm_kcalloc(dev, data->num_clks, sizeof(*otp->clks),
 				 GFP_KERNEL);
@@ -261,18 +260,22 @@ static int rockchip_otp_probe(struct platform_device *pdev)
 
 	ret = devm_clk_bulk_get(dev, data->num_clks, otp->clks);
 	if (ret)
-		return ret;
+		return dev_err_probe(dev, ret, "failed to get clocks\n");
 
 	otp->rst = devm_reset_control_array_get_exclusive(dev);
 	if (IS_ERR(otp->rst))
-		return PTR_ERR(otp->rst);
+		return dev_err_probe(dev, PTR_ERR(otp->rst),
+				     "failed to get resets\n");
 
 	otp_config.size = data->size;
 	otp_config.priv = otp;
 	otp_config.dev = dev;
-	nvmem = devm_nvmem_register(dev, &otp_config);
 
-	return PTR_ERR_OR_ZERO(nvmem);
+	nvmem = devm_nvmem_register(dev, &otp_config);
+	if (IS_ERR(nvmem))
+		return dev_err_probe(dev, PTR_ERR(nvmem),
+				     "failed to register nvmem device\n");
+	return 0;
 }
 
 static struct platform_driver rockchip_otp_driver = {
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
