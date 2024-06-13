Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C1C4C27C78
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 13:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y26/AIbibh2rMaTqsZTZNo/qaAjDLjXnOgy/wN8wIHA=; b=VM822xXUJAkU0e
	+Flucid7YSeLZF2nCvRVxVeiCpceRfNbL7IZv93DN1kVgBFPgetiz48Q6xYvk3pj6+RA4JN+kJs47
	UGjib1wyGNMJnTrZXfk07U7sxyh5jH1UY2ZA17LMjRRUAWxQJw1WcqYZfRk7dVU/5GGjSF3qPLIkc
	TV2NiRzQfHKoSAXnf2rG9IJ+QkkiwbjeuwLXKfdl/u3aieoRxrdDfbOZyHmsBapLjIIrpvXwWaq72
	Z0ubK/efgsId2E77F/M7x9CCqzGAoTY8FiE16CU3FBMUe9sOY1rtoFC68/4T5OylLwR1JPQ6fdZYs
	vRqdjxSit6EDgA2OPe4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkqh-0000000Gp98-1GtI;
	Thu, 13 Jun 2024 13:50:43 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkqc-0000000Gp5e-1r4d
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jun 2024 13:50:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718286636;
	bh=th5seJF3vBX+X27ODP/uDhCZmMW2KCKtk8juv3MEKfg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n0FUOv3agw37r9+4v5v97sFRYeVfEt9Poau2rpub37bk0MsW5XfHXFPpWrAcyZlsT
	 xBiSmd/Av8NAZQjq8Op066tgjYtjv1cBDX9ZUxuT6FKcMDOgz9298q4F4AI/7PzVYP
	 npg6AXeFRXzFZzQgzcnTRWpRIEzJIk+Kv5SYtt0FzlPYXzVc/LsAHnSzxcGT0p+VGc
	 t9tGN/6WY6h++/VeLdedjlzv6liz/UTcmZyM5333OZhlzNWcwJ1NrZCo8QLa1qNm/F
	 7MwLHyywoqROiDYEHrwcSATTvSk3k1l9RmnSgwqTqhO5Bz7s20uaRORvmG47rx6PEY
	 qOdqi/oNebkFA==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 997DA37821B5;
	Thu, 13 Jun 2024 13:50:36 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 36AB84800CE; Thu, 13 Jun 2024 15:50:36 +0200 (CEST)
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
Subject: [PATCH v6 3/6] media: hantro: Disable multicore support
Date: Thu, 13 Jun 2024 15:48:44 +0200
Message-ID: <20240613135034.31684-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240613135034.31684-1-sebastian.reichel@collabora.com>
References: <20240613135034.31684-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_065038_656075_5FB3B0A8 
X-CRM114-Status: GOOD (  17.67  )
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

Avoid exposing equal Hantro video codecs to userspace. Equal video
codecs allow scheduling work between the cores. For that kernel support
is required, which does not yet exist. Until that is implemented avoid
exposing each core separately to userspace so that multicore can be
added in the future without breaking userspace ABI.

This was written with Rockchip RK3588 in mind (which has 4 Hantro H1
cores), but applies to all SoCs.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../media/platform/verisilicon/hantro_drv.c   | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 34b123dafd89..7123479b3eab 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -992,6 +992,39 @@ static const struct media_device_ops hantro_m2m_media_ops = {
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
@@ -1011,6 +1044,10 @@ static int hantro_probe(struct platform_device *pdev)
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
