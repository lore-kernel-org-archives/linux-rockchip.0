Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBC2CC87FDA
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGAXpCf0ogMqAii0Di6mzr9iijmY23K67sMOro53BA8=; b=vDWq7qzsauDMry
	bpHFeWGC67SQgfnjZ+eEi5ybfbaSDly351jBc0eO/t73v6XtGbAZyB/0YH/erxc0E63efIUf5rl4F
	99f9yp8g1CSBkATB8Mx3IGQFQYY8jOIzirls/GQ4AwH8ND8r9fqF7DslCW5iWXZZOpN+zwTVG7QJO
	2IYOMMc+fgMNPIuyURiHEFQe9Es/fijd3tBVpSRzEp9aEX2etjpffwx3JveTFXSBDn7shSz+N9MQY
	QQQfoZh4GaS65ZU4COtxuC9vwYKVt6YsIj+EHuwM0pbgibVvHMDz2p+sa1CBfL6mWGN1lm/OueLTZ
	iVgDTZti6g+W15XTR7Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbbu-0000000EvSi-3ZQh;
	Wed, 06 Aug 2025 10:43:06 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC3ZV-0000000487H-1BfO
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Nov 2024 21:09:42 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5cf8593ca4bso2388491a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Nov 2024 13:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731704980; x=1732309780; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6uHMCkPLDPF5XZhqTYsDkYOtTqtnVR38dCpXI61ABZc=;
        b=MOeuwQPRPVPRHkJKoLmqC8x6ttJbQQ9YYW3uc6SORry4IKjnfvR6fJX9U6kiuTxmUs
         nhtxcQCQ4PMCqn2T/Bk02Tow4ESoPlIkGirnOPruRGv+epoo9WXso01KVoU1ShkdUNoJ
         qqH4QKXkQ1x6XrJcVFJNFBo/xL8QwGqYy18s87kwnfQinJhJwcLJkKy3XaYZuDTOFk08
         Px5sW+upPP2L3Kw9VUlD5RdTC+F+raau44bY3snrtBjAX2013ewIS5tTn3GtmgjHYS3i
         CmUedywdefCe/VnsqavtAC+GdkKwNnfXWlAFvUwVphxiROoLf7VkyS5f1vfOVD5M07RP
         8srw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731704980; x=1732309780;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6uHMCkPLDPF5XZhqTYsDkYOtTqtnVR38dCpXI61ABZc=;
        b=G2fLL+ZsYKOglZoWdMVFOq7PjrLWhimCu48ca0TT2MfQ6i9isoCmPaPBmB9zWCOezD
         5xbZBhPzHRwX6dYq56/JZzsVn6j4AEmSWMbUR6IYRpUhgv3i98hWWwf/yJ3x649KCw0Q
         nLa/M46MnZYKr/BSR86zQ1GLLcGO3kogqkppKpgoIzJwfhPQnBTVGoV9T4L2HoR7HIH6
         FnPNLT6DwpzsXKz09+MRC2lu+vM7NsZQybOUnyGxpBRowPWWW5D4yIX1wFta6fpkpdCI
         OCO4qeq2IddnKffUM4Pu52PYEKH/lzStjP4zijwprs/lmKxmHDr43H9YGa1nQmMRkDq6
         HLhQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3jWAs5gg63jTDPUvJ/Bc2gyLOn0T8BvOcFbdWRMKCUP4fQ1L8DCY/KDI1WHnvoHpzOmNBqU6XAOZGwFJWkg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7UPrAtMqwgkZjlmpcoohCX1ahD/R4jgUMUp/15hMAsPRxPgdq
	HEFjKeB23X5cB0tzHnyMlcq+Sj2/He9MSElylG7yzCfwMboBesTGRPW09NW+DJ4=
X-Google-Smtp-Source: AGHT+IGxHaf9fcl9XH3Yy4K6OzfNJb+yIGPjb6McxskUEb9IogL1YLwYggNBzkIhim2sOLfufDW+VA==
X-Received: by 2002:a17:906:ef08:b0:a99:3c32:b538 with SMTP id a640c23a62f3a-aa483528a6fmr360455366b.42.1731704979697;
        Fri, 15 Nov 2024 13:09:39 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df51648sm219626366b.62.2024.11.15.13.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 13:09:39 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Nov 2024 23:09:27 +0200
Subject: [PATCH 2/5] drm/amdgpu: don't change mode in
 amdgpu_dm_connector_mode_valid()
MIME-Version: 1.0
Message-Id: <20241115-drm-connector-mode-valid-const-v1-2-b1b523156f71@linaro.org>
References: <20241115-drm-connector-mode-valid-const-v1-0-b1b523156f71@linaro.org>
In-Reply-To: <20241115-drm-connector-mode-valid-const-v1-0-b1b523156f71@linaro.org>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
 Danilo Krummrich <dakr@redhat.com>, Harry Wentland <harry.wentland@amd.com>, 
 Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
 Alex Deucher <alexander.deucher@amd.com>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Xinhui Pan <Xinhui.Pan@amd.com>, Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Liviu Dudau <liviu.dudau@arm.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Peter Senna Tschudin <peter.senna@gmail.com>, Ian Ray <ian.ray@ge.com>, 
 Martyn Welch <martyn.welch@collabora.co.uk>, 
 Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Stefan Agner <stefan@agner.ch>, 
 Alison Wang <alison.wang@nxp.com>, 
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>, 
 Samuel Holland <samuel@sholland.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Mikko Perttunen <mperttunen@nvidia.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Gurchetan Singh <gurchetansingh@chromium.org>, 
 Chia-I Wu <olvaffe@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 nouveau@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
 freedreno@lists.freedesktop.org, virtualization@lists.linux.dev, 
 spice-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1747;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=8PHqNvYNhd077+yMZGdRVPVQtJwqcuP4Sa84pHByMBM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnN7iIkCEBV+I5bR4TS78RU0e2MvivZF+Q9IyXw
 EixhTur0JyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZze4iAAKCRCLPIo+Aiko
 1RrDCACt21MZrMiNUMyxvhABQ0cPHvM9U/AgIbDDO7KsAj2vwEdyLShml6B1R559Jq8voETjEL9
 +078yb1nu6CV+kEVMsCLyWFw6UxeB+cYhzNHLNY0XaEijGUK9+P7bqa1vk5P0ciW3yNlxIBE4bG
 Pbi3ypuJJQOMFd2qx/gt5R3ZNRVS0e/OjOmoRuxABzzNp/GA862gAioxCBoETiqKvawiyBMRFOi
 2ofeAeyKDJWD0PfvL2vatCO6Dh4kmfG8TJG7CkGnJtYNGqCMpr+WoR8TW/0eoaN+Rs47pTYqp9X
 88uGqYaDw6lWG+6NGKvhI0epp0XANid8bh3EOloIMBAU71W4
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_130941_343937_3B8B641B 
X-CRM114-Status: GOOD (  12.78  )
X-Mailman-Approved-At: Wed, 06 Aug 2025 03:42:49 -0700
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

Make amdgpu_dm_connector_mode_valid() duplicate the mode during the
test rather than modifying the passed mode. This is a preparation to
converting the mode_valid() callback of drm_connector to accept const
struct drm_display_mode argument.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 75d6b90104f8fe196df06383b20ee88196a700bf..d0ca905e91eafe6c53f3f2ebdf3f2ae9589d7f89 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -7381,6 +7381,7 @@ enum drm_mode_status amdgpu_dm_connector_mode_valid(struct drm_connector *connec
 {
 	int result = MODE_ERROR;
 	struct dc_sink *dc_sink;
+	struct drm_display_mode *test_mode;
 	/* TODO: Unhardcode stream count */
 	struct dc_stream_state *stream;
 	struct amdgpu_dm_connector *aconnector = to_amdgpu_dm_connector(connector);
@@ -7405,11 +7406,16 @@ enum drm_mode_status amdgpu_dm_connector_mode_valid(struct drm_connector *connec
 		goto fail;
 	}
 
-	drm_mode_set_crtcinfo(mode, 0);
+	test_mode = drm_mode_duplicate(connector->dev, mode);
+	if (!test_mode)
+		goto fail;
+
+	drm_mode_set_crtcinfo(test_mode, 0);
 
-	stream = create_validate_stream_for_sink(aconnector, mode,
+	stream = create_validate_stream_for_sink(aconnector, test_mode,
 						 to_dm_connector_state(connector->state),
 						 NULL);
+	drm_mode_destroy(connector->dev, test_mode);
 	if (stream) {
 		dc_stream_release(stream);
 		result = MODE_OK;

-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
