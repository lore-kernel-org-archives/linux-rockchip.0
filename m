Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B30C4C41513
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 17:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYUVXCBd3r3DNiFGcNdykaW26QgIn+n4e34jhavxnXI=; b=2DcVHQjkUUYtqm
	7HViRV7S09qK+x9oD3eVWwqa/8G+VqS4HWoWTP+ednVxi6Wg65CX/feerM712A0PosOKPeQ2Gvlgu
	SpEq3H/CoWevABZ18Spc749mXQ3HkVBlm/0UpC3Kl1Snb/jRjSzW/jyMcT2IofWpYyobvQp6cEiNh
	fke8KuPeTWOM0NftFVfaGy/dZij2ljQLT5XCCtG/3Qm+BCQwUS6/6322CAbrRblaOrkCnjuMHO5Rz
	D9R5l0oGd4ZnVvX/gw4uupBIkmWutAaJ5maMRC7HdAi0dr4kpjBx9lA07Go+7AISNQfCaKxO+jiXz
	ysiDVvfgU3FMnNciieHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHRpm-0000000DaQL-3tN9;
	Wed, 12 Jun 2024 17:32:30 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHRph-0000000DaLf-20ll
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 17:32:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718213541;
	bh=KKnehwnapMDXEYhFKS5XsfL67lPPoRVBA2nN+Yi9Q24=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=L00ouhxpqR5XhuMSWrJNBvj0w+0dSXrylM2KwH60f5E1Nean4momD3IEMV5YxXwi4
	 KhokKYcNRRvzpKckrZcWxWMRO7Fao9nD+Z/YNAq/vY8R3NQ2uY0wBUeHjQ6P6W2/+I
	 ZBrik0KeuZJ764dk5+1g1Fsjv0wqXTLBXbvX+RgAC2DfBheHvBjpHUSMYSi6EIyrNe
	 a/rGvJAFXu+fMhQInJ0axuxw9+hkBUwAVm6GvW9wH7YJO2llTZrCIRsmYWHbhnPOdE
	 ddOAX1Ke72O+u0U6vHoQ7Lynf9B1bCciqQ4JgGUeEw00I9ZVzwrfer4uN5JOkK+DOE
	 VpGZP+JrB9ZrA==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C2916378219B;
	Wed, 12 Jun 2024 17:32:21 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5E8E44800CE; Wed, 12 Jun 2024 19:32:21 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v5 3/5] media: hantro: Add RK3588 VEPU121 support
Date: Wed, 12 Jun 2024 19:15:43 +0200
Message-ID: <20240612173213.42827-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240612173213.42827-1-sebastian.reichel@collabora.com>
References: <20240612173213.42827-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_103225_719233_ACD986CB 
X-CRM114-Status: GOOD (  17.21  )
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

Avoid exposing each of the 4 Hantro H1 cores separately to userspace.
For now just expose the first one.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../media/platform/verisilicon/hantro_drv.c   | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 34b123dafd89..b722a20c5fe3 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -722,6 +722,7 @@ static const struct of_device_id of_hantro_match[] = {
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
 	{ .compatible = "rockchip,rk3568-vepu", .data = &rk3568_vepu_variant, },
 	{ .compatible = "rockchip,rk3568-vpu", .data = &rk3568_vpu_variant, },
+	{ .compatible = "rockchip,rk3588-vepu121", .data = &rk3568_vpu_variant, },
 	{ .compatible = "rockchip,rk3588-av1-vpu", .data = &rk3588_vpu981_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
@@ -992,6 +993,39 @@ static const struct media_device_ops hantro_m2m_media_ops = {
 	.req_queue = v4l2_m2m_request_queue,
 };
 
+/*
+ * Some SoCs, like RK3588 have multiple identical Hantro cores, but the
+ * kernel is currently missing support for multi-core handling. Exposing
+ * separate devices for each core to userspace is bad, since that does
+ * not allow scheduling tasks properly (and creates ABI). With this workaround
+ * the driver will only probe for the first core and early exit for the other
+ * cores. Once the driver gains multi-core support, the same technique
+ * for detecting the main core can be used to cluster all cores together.
+ */
+static int hantro_disable_multicore(struct hantro_dev *vpu)
+{
+	const char *compatible;
+	struct device_node *node;
+	int ret;
+
+	/* Intentionally ignores the fallback strings */
+	ret = of_property_read_string(vpu->dev->of_node, "compatible", &compatible);
+	if (ret)
+		return ret;
+
+	/* first compatible node found from the root node is considered the main core */
+	node = of_find_compatible_node(NULL, NULL, compatible);
+	if (!node)
+		return -EINVAL; /* broken DT? */
+
+	if (vpu->dev->of_node != node) {
+		dev_info(vpu->dev, "missing multi-core support, ignoring this instance\n");
+		return -ENODEV;
+	}
+
+	return 0;
+}
+
 static int hantro_probe(struct platform_device *pdev)
 {
 	const struct of_device_id *match;
@@ -1011,6 +1045,10 @@ static int hantro_probe(struct platform_device *pdev)
 	match = of_match_node(of_hantro_match, pdev->dev.of_node);
 	vpu->variant = match->data;
 
+	ret = hantro_disable_multicore(vpu);
+	if (ret)
+		return ret;
+
 	/*
 	 * Support for nxp,imx8mq-vpu is kept for backwards compatibility
 	 * but it's deprecated. Please update your DTS file to use
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
