Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92D2FC77B7C
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 May 2023 21:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tAtiZPhlzFFnXZZl930J70i9+bQ0D9VlIuWFYoIFCM=; b=SXjX+8E7FKDryW
	NtHdv3Xbb7f/XgJxEzJgsBygJQhCgeVvUGApeb8IzJzoMDXyia2uARTDgZNpNfEhq4PgcXrJKTHjS
	dhmqVRB1UKezt5YYExpw7BQCgDghBJy0feBbGuLTHy5DdI7lBW/6gUtY6MBh1w/R9jRhTHa/7Ofkx
	ZXR4ieCQTQ1hHge2zSBuKjvEkXL2xqJVMr3ObZGlP6CXdl1wyg3FHgyFeFgtowOeCin7Q8N1Wa3IK
	zpHF5tGFiv8ndXVZnjzcUvIZPGufpXU/rOt3TM2XOvQ5CHUcurO17sydJ6PPaxlgo2/mCdT2/paoa
	EwVOdF5uUfrC6tpkiTQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pugIy-00914A-0Z;
	Thu, 04 May 2023 21:16:00 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pufJb-008tlT-2P;
	Thu, 04 May 2023 20:12:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=yL2k7/HAHDyyNgrl1iAhxlgb9ms7e7E/tFMo9NbqJ9E=; b=Ea8UPot8M2GF2YCdC9+quZgVKi
	1y+p3DZYbAV6ed/3DofglEfnJAuMXZcgmEr+UFmEqs1IiJxxxbXX8kUV9CJFPtYu31NpxKJYDIYFX
	i4nS8z6Iv1n9jMFKsJ+OJakKas/Gf5LFhcLizgRF1adGx8f/oULZ3L9R99K76PPMhFvdbCmksm/Mk
	DhuDpJxGtgCx+N9q81Z7RJBvAKHmyIDHJrnqOlNlUk9DmleEPwaIUfd3Y/AnnfVAyFp19ux+MY8y4
	IL9JHmrr7BnLGQmxO5LhbottuV4yjLxwagTDsh7Ms2Go1qTuKlxW96XfRuBcurXyEaLzTlIXsvU+d
	X/pguWrQ==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pufET-00Aw5Q-Gs; Thu, 04 May 2023 20:07:19 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 60EA866056FF;
	Thu,  4 May 2023 21:07:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683230834;
	bh=liP+soMrPQDOXxG2SMtxGxRaMcIPp5ZaL+QpnsunI+8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Mog/gRj1ztd5K51jKBGYdqmuisZiPHDnvVb5L5W0/NkdTgORXgtK2QJ29Rov0kYQP
	 7dcSIu/NYIixTxqqAaljb1XMfnBGfY5giCriXv+sKPrVy0FfRtSlABBG9X8tysw5yZ
	 8wzCHbvT9l84lc5cq96B4ax0XwxlClSGkBhmbky+fYLVTcNVvMdxwI0s2Xv/pc3TfL
	 K0I8AhLvAzIKIHdacgqJY3n5wbpa0QukcYmipZbefRAy66o8fCaunv8MVGT4zXdwdQ
	 bXTmiTONhmJe8jZE2dK4Bfn8YxjtEh3erIyoZewTqSWDafVguO4i2M0/4iPuM4Uybf
	 57OYJEmZ9UVkg==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 6/8] nvmem: rockchip-otp: Improve probe error handling
Date: Thu,  4 May 2023 23:06:46 +0300
Message-Id: <20230504200648.1119866-7-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
References: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_210717_736396_FBDCF27B 
X-CRM114-Status: GOOD (  13.15  )
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
Tested-by: Vincent Legoll <vincent.legoll@gmail.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/nvmem/rockchip-otp.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index 439aea1f8874..84bf956cc4e1 100644
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
