Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6929C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 06:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUvjRqQLwIdL5g7YyY4PuwQtlnJQXiutaFtes251bm8=; b=N3ZqAsYyZIYoj6
	eTlKkZpIzvRUbVtR3V6r39XFd1+vJbVh04boO9YLWJ3NmW1SWnQ4dKWI/yB2iQtFH5aBqbAN2JpY8
	4v8ypSsdJjisiB6KjD2jlFA3LVZMJOeV9PHm1xgk9LozK2zjxUm2OLfvAWQ3YglTDmzfmjbVVGo43
	bRv+PHYXpOeMHLVblo+4x2atGmWzNqUfkL5UTcqoizGklBfDfW9I697ESJffb0Q8zZYWaUtCX9J1y
	74MbTA2N/48KQoWKlTL5Udc5yBJqdXPqzM+6X+GCf5MlosALryT4riqIw3ZoXL08M8JRUUkSq7PJ0
	bHM8EDdBHRXy0aX66UAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTFHH-000000062kw-1jUD;
	Mon, 15 Jul 2024 06:33:39 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTFGx-000000062RO-0qzG
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jul 2024 06:33:23 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-52e9a920e73so4389182e87.2
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jul 2024 23:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721025197; x=1721629997; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hbJUOmvW24quAtGM4HEWCKTnos6XbtfhPM+nK5+e2Tw=;
        b=nFf2SiAULzqa4KuU4LQDMwN4V+eZsgQYcYt75Sqlcye+U9YYIGs3IMfOO0H2acKq2D
         hkUHIrCgDwuE+peMB3BHd3LSzMKt8qd987XvFgdp/lRZZPa0fPFMy5ZHtmmC2t/Uht7T
         SjQXk9z8U+whGo/8peegE7HubwKcB2rS4t8oc6sSbWs2jmq76cR9NXWJTW4tFnDtkIOZ
         m9Zx27i6sfTkETZmL0Bd2uTyP0furSwYvPoobl4VaePEaciAHY3b+Ntb1LhllqNvtbvQ
         0IrGV5qDbKodTz5yedZFrl3PJNAK2J9g6Mkn0LZtWoLyeeSUMuUdNy9KSPQAWteMzhYp
         kKAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721025197; x=1721629997;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hbJUOmvW24quAtGM4HEWCKTnos6XbtfhPM+nK5+e2Tw=;
        b=uRhzR/RCW+GpSoEeg7cMhDB7Sj95iwP2DkzAYsRna4IJ2VJ2mbpVDbDIWuCamP+8dc
         3cbXGe43O3l7HSABHm8yVrqXLMQteT67VL2o8Y5OFaHpcDAczpbwy9AyQPKRmLxi2WBC
         tspc4V5PKdvpdsgYFea4R+RmWQYsPkVcE2s0zirfTCqeIIhzIW34grYBKlBLNHr9zTNC
         afyyus967wbYhy0sZjkRT6IxMVjFgUt/DUMFrLtrj2IWsEOmr/YH6yRRHbRyhNb54ynK
         HYPa9jA9j8XrBeCafPoO5Ck0ouNyx2qqlUQSyTIdnAEy7dRQB8ZaLElYnjEx9C/6NWPw
         agZQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/taer470UquDrdS878BjaGGjZjRVH0NUBdUezxEKyWB5CDEK6GF0azC40+bGFjxdi2E5N6MMyBeZaoqarI3yTWlZ6IEw4cbyDdeMAMksCZ8T4
X-Gm-Message-State: AOJu0Yx2WuMBz5nb/gNVd2tWshZKHyUL9XWO4wpOd9USNjki0l9fp1+D
	DFH/H3cypqxT0ARkrQj/ePgp3alGxOX7AxXfPcFB7krodaWc09UkqSKCF8TKmPc=
X-Google-Smtp-Source: AGHT+IF+V86J6/2ZIQK/CmixClQVdJF7hjnWLmCjjdRBB6FFYX5j0s7A+kP4jnSIFrfgBCt8vnJuQA==
X-Received: by 2002:a19:f706:0:b0:52c:c9d3:a30c with SMTP id 2adb3069b0e04-52eb99a0639mr9397218e87.29.1721025197267;
        Sun, 14 Jul 2024 23:33:17 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed24e188esm743543e87.47.2024.07.14.23.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jul 2024 23:33:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Jul 2024 09:33:03 +0300
Subject: [PATCH v4 3/5] drm/connector: automatically set immutable flag for
 max_bpc property
MIME-Version: 1.0
Message-Id: <20240715-drm-bridge-connector-fix-hdmi-reset-v4-3-61e6417cfd99@linaro.org>
References: <20240715-drm-bridge-connector-fix-hdmi-reset-v4-0-61e6417cfd99@linaro.org>
In-Reply-To: <20240715-drm-bridge-connector-fix-hdmi-reset-v4-0-61e6417cfd99@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
 Anitha Chrisanthus <anitha.chrisanthus@intel.com>, 
 Edmund Dea <edmund.j.dea@intel.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Biju Das <biju.das.jz@bp.renesas.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Mikko Perttunen <mperttunen@nvidia.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Jyri Sarha <jyri.sarha@iki.fi>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 dri-devel@lists.freedesktop.org, igt-dev@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-tegra@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1164;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Ogj1qgSBFy5LiaMGrph8HSRVcootU6FeEO747BTFj9E=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ9qUQysu/J/Xl5n/9o/EfmHLmdY1x3fJXa8q/t5631Izp
 6VP4f30TkZjFgZGLgZZMUUWn4KWqTGbksM+7JhaDzOIlQlkCgMXpwBMRPg8B8NKPS4j53+nGRhP
 VBcpNN70edCVY/lnJcPcZSbfTc/NZDjqy6J4IKKOJ5lRyqf+pLljwNWcn8dbq5ta/jC3fL5Surt
 8VnHwiZ8ube0uSdOfHZtUofj4yj2FJZ909eR959nxx9g9rdtcmORwy69fzvGuf/mlJ9ITLxRdKU
 /VyNt9e8HWnyJSNaJvsvvjVOZ/8xJcrea+Le6pdpiL04no7ZG5l+apXb1wf90jpyWPt1z035Z38
 UmCspiUQ5HjJzXNXLbKp8oVKQ0yzQwbTWba5eanp9nPFBKUKtof79uV/nmO00QFK+krh9kFBW1Z
 lM+2PipLcPhrUlgXZKBucDBt5ZLW8y+WpX08IzaNs3cFAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240714_233319_434247_F5A5D44A 
X-CRM114-Status: GOOD (  11.33  )
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

With the introduction of the HDMI Connector framework the driver might
end up creating the max_bpc property with min = max = 8. IGT insists
that such properties carry the 'immutable' flag. Automatically set the
flag if the driver asks for the max_bpc property with min == max.

Fixes: aadb3e16b8f3 ("drm/connector: hdmi: Add output BPC to the connector state")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/drm_connector.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index ab6ab7ff7ea8..33847fd63628 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -2610,7 +2610,12 @@ int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 
 	prop = connector->max_bpc_property;
 	if (!prop) {
-		prop = drm_property_create_range(dev, 0, "max bpc", min, max);
+		u32 flags = 0;
+
+		if (min == max)
+			flags |= DRM_MODE_PROP_IMMUTABLE;
+
+		prop = drm_property_create_range(dev, flags, "max bpc", min, max);
 		if (!prop)
 			return -ENOMEM;
 

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
