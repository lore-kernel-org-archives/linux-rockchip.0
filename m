Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6883C0218D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jan 2025 22:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtUb91VAciYhNl2S5rSYNYccU8jZtCaJrJM9jyrJfTk=; b=rzjP5dIxvQpJRr
	iNyrG+LaE1jiWO7y5aass86SGNjK9mGpXWwXG+KGod52kPn34knreSH6Mo8npVCMgl+TuCdx5QrHa
	q8w1MS1qBUTwCqXGUx9xGt1VdaXMmSgFtYjrD/GiP/xGDS6UWFZBsMirAx71vFZowiuCYbH9pM5C1
	U4bVqf6W3HhqNveTxEIwVKvYdm51GctL9lU8pGALRN3HAnvUwgSgBUu/lYgVzA1Sz3+Q11DWTqh/b
	uvTHbW9Qk/6oRyrcBvTH85d85RWlaC8lAPuGxHhYIoCF2AzIkc8ah5OcDJeFLNqVG/X5pRcJVnqUZ
	N542U3n9OscIad6W4pRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcu7U-00000005wWd-0eIC;
	Tue, 28 Jan 2025 22:31:44 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcu7R-00000005wTI-0meE
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jan 2025 22:31:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1738103499;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uBHgf3oei/qHmIZpbMF9VehDvC+EICOlxAHVG2vbAos=;
	b=jIY3QfC9PtFjT9dAJ7JyzPEEIfHkjAAq6HnhBMQw8Ml54ZWTAWPEe5NbAgVJZCLQf9xKYC
	lg70R/MbLmz06Fjv/bSSqaTQoalhM2ua7I+dAspT5av9FUDrreGDF0mPhjPXjsLJB2iZLl
	rWhH1m4CDWoIDnvZGtpxXHkXwkch+00=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-673-fxGDwM2BPi2Fc2IPObJXkg-1; Tue,
 28 Jan 2025 17:31:37 -0500
X-MC-Unique: fxGDwM2BPi2Fc2IPObJXkg-1
X-Mimecast-MFC-AGG-ID: fxGDwM2BPi2Fc2IPObJXkg
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3F1441800366;
	Tue, 28 Jan 2025 22:31:31 +0000 (UTC)
Received: from asrivats-na.rmtustx.csb (unknown [10.2.16.231])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 67E34180035E;
	Tue, 28 Jan 2025 22:31:19 +0000 (UTC)
From: Anusha Srivatsa <asrivats@redhat.com>
Date: Tue, 28 Jan 2025 17:29:29 -0500
Subject: [PATCH 05/14] drm/meson: move to devm_platform_ioremap_resource()
 usage
MIME-Version: 1.0
Message-Id: <20250128-cocci-memory-api-v1-5-0d1609a29587@redhat.com>
References: <20250128-cocci-memory-api-v1-0-0d1609a29587@redhat.com>
In-Reply-To: <20250128-cocci-memory-api-v1-0-0d1609a29587@redhat.com>
To: Joel Stanley <joel@jms.id.au>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Stefan Agner <stefan@agner.ch>, Alison Wang <alison.wang@nxp.com>, 
 Xinliang Liu <xinliang.liu@linaro.org>, Tian Tao <tiantao6@hisilicon.com>, 
 Xinwei Kong <kong.kongxinwei@hisilicon.com>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 Yongqin Liu <yongqin.liu@linaro.org>, John Stultz <jstultz@google.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Marek Vasut <marex@denx.de>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Yannick Fertre <yannick.fertre@foss.st.com>, 
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
 Philippe Cornu <philippe.cornu@foss.st.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Mikko Perttunen <mperttunen@nvidia.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Alexey Brodkin <abrodkin@synopsys.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Jonathan Corbet <corbet@lwn.net>
Cc: linux-aspeed@lists.ozlabs.org, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 imx@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org, 
 linux-doc@vger.kernel.org, Anusha Srivatsa <asrivats@redhat.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738103410; l=1714;
 i=asrivats@redhat.com; s=20250122; h=from:subject:message-id;
 bh=f2q+dLROh+nmfHqYKZQjWCkJEGeXIqlbeRtQt42VgCQ=;
 b=lhClH7lzArBOUdWbc4Q4UnvQ1RCQ19pVNRVv63WKBHzCVgJMxuArGJpHa8TYtAgCNIzt7DlYr
 NxuKblbIiv5BF/Ek4dNs87o4KLEP61IBFsptwDPsRW00XhC+FVopP4m
X-Developer-Key: i=asrivats@redhat.com; a=ed25519;
 pk=brnIHkBsUZEhyW6Zyn0U92AeIZ1psws/q8VFbIkf1AU=
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: YeVQF44U6svmKBXfqmM1A-MkGBq3x9u-VAyAptwB5cw_1738103492
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_143141_293259_88CEDB07 
X-CRM114-Status: GOOD (  11.30  )
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

Replace platform_get_resource_byname + devm_ioremap
with just devm_platform_ioremap_resource()

Used Coccinelle to do this change. SmPl patch:
@rule_3@
identifier res;
expression ioremap;
identifier pdev;
constant mem;
expression name;
@@
-struct resource *res;
...
-res = platform_get_resource_byname(pdev,mem,name);
<...
-if (!res) {
-...
-}
...>
-ioremap = devm_ioremap(...);
+ioremap = devm_platform_ioremap_resource_byname(pdev,name);

Cc: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Anusha Srivatsa <asrivats@redhat.com>
---
 drivers/gpu/drm/meson/meson_drv.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
index 81d2ee37e7732dca89d02347b9c972300b38771a..6c805805b7a7f675f8bb03944318972eb4df864e 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -184,7 +184,6 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
 	const struct meson_drm_match_data *match;
 	struct meson_drm *priv;
 	struct drm_device *drm;
-	struct resource *res;
 	void __iomem *regs;
 	int ret, i;
 
@@ -220,14 +219,8 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
 	}
 
 	priv->io_base = regs;
-
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "hhi");
-	if (!res) {
-		ret = -EINVAL;
-		goto free_drm;
-	}
 	/* Simply ioremap since it may be a shared register zone */
-	regs = devm_ioremap(dev, res->start, resource_size(res));
+	regs = devm_platform_ioremap_resource_byname(pdev, "hhi");
 	if (!regs) {
 		ret = -EADDRNOTAVAIL;
 		goto free_drm;

-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
