Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1321FC87FD1
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LxjPAGJtZ/w6gLvIrN6+u364LZajFWok0YaJfzuvhNo=; b=NqbAQbPl5gEyZL
	dIjOODJhaeItSBy8lxyBWyJOjGmwiSfgsff0MMlwe/s60EfLW2v0JWbmfc5UBk/+N7U4fLNQ+AiC+
	jkJFzc45dOIgCTStIaRrE8U+BwuuiKd0gC0NqJmv8NRSmXjKAcCN8m7trN9IBMifqVpGVtjAEUhna
	cjw+1WJR0wg3zKro3phDjQusB+/ztcmXVumUwgtYjGREzSF/li1+u1A8jlC04qmibLleUDWebuqxE
	u8K2JWZzEArahswDqlcftlUZVyz+h7u/ReuTszVet13rebcCpZkNXGEx+bPpL4KcslB12SgUpdmuh
	9GC6838bnfLY49SNX65g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbcG-0000000EvrS-2v5E;
	Wed, 06 Aug 2025 10:43:28 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMSKc-00000006PG4-0MLE
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Dec 2024 13:37:19 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-54020b0dcd2so4127858e87.1
        for <linux-rockchip@lists.infradead.org>; Sat, 14 Dec 2024 05:37:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734183437; x=1734788237; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wdwpibg0RRPk6EpwAQK84EDSpk8VUe5onS1+M5umUds=;
        b=rDpK0ySpGut8zkVRKvxetNx0RPvIr4KWCXF24O19hf/nMXezProfuzFQuOqg3se5BA
         45HBy83bN+M71AgzXMRV1WBkxAB59+1s8QsCOdKfaUlcTpyyGkfsl7VQ7FQuJY3tQ9Ku
         RCKKuhOu3x1re02ielZb4JIr2WIQvSYy0iMoq0XIpjm2Ouz9m62wZuLtnF2BAzzuRtXF
         1TMCnDP1Xm8wDqKfpIaBNS9SDcqb1gTv69SMgTtcJW34ibGisJjx0cxgVq8OlEZ9uSbk
         NImJ8t0WydzW3Y0jGEVX+kHOAG7gDN79e9coptxQhem3iiteROJgeGIHJzjivBMkaPir
         +bYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734183437; x=1734788237;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wdwpibg0RRPk6EpwAQK84EDSpk8VUe5onS1+M5umUds=;
        b=nEShe7NkZieD4wgRqwx82QnLdYYu9aRVBBgIKn8IGFfpzY+k23/JIUVXs+TEldfbur
         AC+LH9z/weyJl5VYApRhxf8VPOxrGTm7RsORp6qVFR4+dSroQWhvvbtQKTZtOEaEn9ht
         Nk8gfxRvjHKm9oBNoMavhd6LyoXNlipv5zNX9/9cVy3HSUAr77ES+3QsOrZ6NKdnwR9T
         TSe3A8ASAFivLU7ub4AY+mVv/9JHyA19rVWv5hjr2FvI3RKiBTWk+Jij9yjowGJEpTDH
         iwmTMku5g4HzeohRuRmaRx3gvnXoydz+EHChTTxVGeFTHZITLVrZVlJGdWAUuydvtc6f
         F1iQ==
X-Forwarded-Encrypted: i=1; AJvYcCWs7fDSVa2iqajm3neBnU6Q10CrLtzMJd/BtS9OB2mol7pcXj5lPxH0auG++pyYFdy0t/ZiJ3N/lFbje/G4+A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2f8x7lbMqMWNXu2J1tzkdnM2/hByPqLpKuxaFWRE90wcl4gGi
	bLCOv2dWnzhXzLHZv+z9srpI/yJldIHvI9+BxOw+U9X4pWsx3g2vj0gUBnUvNEU=
X-Gm-Gg: ASbGnctDC7M0fm682tgpZ8yYk5VBmSfCUiXeSg4YNsVRK8+9FeJR4zNhjNwgNnrdCqI
	vNULNlPbqBVwPuv4AHJn+fWb0oqkTZmojIof4+TpPTLIakdYX4o3fl0sM5gZ9ZC+Z2g9ku1kJNk
	q+GcyU61z6fUhTPWlFl30GboVP0g+uWvtN+jNt5KI6gIKCfSaR0GW1JiRlILKqZhHGUXgX0p9zj
	y0ZgGNAgyZQoDdhfSzuBd3obc1/3qQW4MO/fyaZgo8BLVbhXNGzfPqUfNHNEhx8
X-Google-Smtp-Source: AGHT+IFDFHsf0YSq3F9U24ZzRaZqLHjwAZuUnskSeXvaHoyC4Tfjr1H/Oi+lGDIZJQoDaEfr8W2dtQ==
X-Received: by 2002:a05:6512:1591:b0:540:20c5:f847 with SMTP id 2adb3069b0e04-5408ad76276mr1606863e87.22.1734183436550;
        Sat, 14 Dec 2024 05:37:16 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120baa474sm220131e87.90.2024.12.14.05.37.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Dec 2024 05:37:16 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 14 Dec 2024 15:37:06 +0200
Subject: [PATCH v2 2/5] drm/amdgpu: don't change mode in
 amdgpu_dm_connector_mode_valid()
MIME-Version: 1.0
Message-Id: <20241214-drm-connector-mode-valid-const-v2-2-4f9498a4c822@linaro.org>
References: <20241214-drm-connector-mode-valid-const-v2-0-4f9498a4c822@linaro.org>
In-Reply-To: <20241214-drm-connector-mode-valid-const-v2-0-4f9498a4c822@linaro.org>
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
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1822;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=ZBQ31V6liiRq6vidYEbRih6I4hmj1n9WetjDV7X3pNY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnXYoEN8DdEbQT15+majQu+ePNp1xNEKgZhouhG
 e8cSSkRWPuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ12KBAAKCRCLPIo+Aiko
 1bo9CACKI34mpGW7I5SEIWTnqccfI1E5Dtim4SK/n6/h7bhcZ4fIdi1jPZNDeFfoInJlcQC8kND
 J2yGE2Waz+dJVLeD9HrrAIss+FWiq5KGvzYWgYBmjLuJJCE3PKkqoV+6+sFD44LUIBLxdTRdh6F
 1T4gKfvqmlDPQFnUhlG3DwphgtSkVOEHHExB8YC0ysIBaeNXz7rClOEu0mGlIZuDjJS/sjgrall
 atWiYOaDofYW+7dTZ9u0SDpxMVllsbKKomyCy6kf/BSVOIp9veKIrgbybIWQXyNIZgk95KFTa4/
 BfCF2//Diwl9V4b6EJ2CMV1tWTpGoVbvzyIZV/xfq0Bc89tB
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241214_053718_146799_B429C09F 
X-CRM114-Status: GOOD (  12.39  )
X-Mailman-Approved-At: Wed, 06 Aug 2025 03:42:50 -0700
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
converting the mode_valid() callback of drm_connector to take a const
struct drm_display_mode argument.

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 5a503104e38d1514103914a4d012969105877e52..0d9d2e1c4b4fd48baa19f16fb832a9ce5ed09108 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -7420,6 +7420,7 @@ enum drm_mode_status amdgpu_dm_connector_mode_valid(struct drm_connector *connec
 {
 	int result = MODE_ERROR;
 	struct dc_sink *dc_sink;
+	struct drm_display_mode *test_mode;
 	/* TODO: Unhardcode stream count */
 	struct dc_stream_state *stream;
 	struct amdgpu_dm_connector *aconnector = to_amdgpu_dm_connector(connector);
@@ -7444,11 +7445,16 @@ enum drm_mode_status amdgpu_dm_connector_mode_valid(struct drm_connector *connec
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
