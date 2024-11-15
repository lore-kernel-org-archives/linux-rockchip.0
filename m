Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA3C9CA0EC3
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MCKOW2zNDlZnpeUZ14LpsYo17uFeEt6U/N6Csq/a+G0=; b=krtaGtK6INHuT+
	rrUP+ywhUCpQQneNI50nrRuM7c9ujfBbAkzy76fx7J82SvdVPJvrfi/Ett0SChuA1pKiLsgU/m9yD
	t6j5yEziyFogq6aNPtmVxYP8wYbS+KWv5HfQRidX2fYF0rQ1rNdNOd5BL8PBkEhL8Tsi5gzzKn/jP
	1kpvCrcWMLK5CyLDBYg0iIjDh21kbjngOdvgD4NfsTW7mFtI/ebyWLcEZHepggxXOTPvU1KL4oPBA
	umvKaPpVS4bXfGFet4yFnMgIjR/OaE7tgozkC7xybSTtHJc1IYvd9ZhNzlGlHU7ZKZLh/Q9BQxpxI
	KmbBi5G34ew5FcMzXcBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbbv-0000000EvTx-3XO8;
	Wed, 06 Aug 2025 10:43:09 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC3Zd-000000048F0-0APJ
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Nov 2024 21:09:50 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a9ec86a67feso406762566b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Nov 2024 13:09:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731704987; x=1732309787; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JsYKkvhpGxYN/nsXndcDcczu/pyOBha9maYVfqCaIuo=;
        b=BP5sucxIJin2cz5t/N4s/K0dDJr83R5b77Fa4gpVZVvFPUtM1PbwMgwF3qaF7EI1PN
         uKMEY8WRyFKCMuIJ5gf6y+GWrxd2AwhyFwqjPNNqPSibL0nxqF15z8wiNfwM0rHRbNYy
         xMvusX63JsGhulk5MLwkiJakltbetmuX2yzlrnbY103aCqMSe9cnOea4MB4v+SrTnQtG
         m7GG9kEw17xTz0TmB1ZEOTjkpqdffOFwroLJESx73yQutUT2jtYYzV415uJ79oM+KUqe
         x8U0qQrUK9NkKfNyWPhb6pajlRXq6Tj0NiRGveiTEiJ0hy48Je4Oy46fuOC+a9S+M/IU
         eKEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731704987; x=1732309787;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JsYKkvhpGxYN/nsXndcDcczu/pyOBha9maYVfqCaIuo=;
        b=ujV6AWdBzjrUZqYXrBE4jfE1vyT3f7IpqfibyhAHiRAz7M3JkF56RLTZ5Ve037vqKF
         QNr1Kjxj2Kwuz0Q3FOhyiTVlhCH7DotHZWQgZV6qxNnGpxeTPRCk2D9JLrBH3ImNxzx2
         gE3F0+cVdsQ8AvYIyfchbYQqVWcPB8dlumAtr+yh8DKA0cDLX2+rP3XCu/7dGg0g5kjK
         o8Fa2JYOM0F0c2a9nGiiXueRG486yclbYxIg3mvuoJCXgQHqmtPxURYcBsITOgUVFAfN
         +Bqf+XZ5L0BTrtlOyaG7V3dfERG63vdkl6E3EtfP1C8X6o+wBkhPoe3pRV5eCI+c++ir
         uHjg==
X-Forwarded-Encrypted: i=1; AJvYcCV0gVc91eVuS8B97jAvoZ++a7VJa3qloCnIpAiETRSASwAdMmS72g8quYyuVC91QrOk85GDIzOpYab5QedB2w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yynb/L8bHCypVHtXkRKA5GwdT3MJ6ohpCGWL2/B/a0vIIcw2e2s
	LMgy6L/THMx/ZMG1CYm8BcYx2B7SmLMbsqLe4fD+oT5WQb7QRIIb3lABGNFKV5E=
X-Google-Smtp-Source: AGHT+IFDdo4Ez6qAhnttBnH0913iVcsIQD4O+jaLTiUgGyLyyVbk2JIgfGuTK7H0cxIlhnYIHXnI6A==
X-Received: by 2002:a17:907:3f8c:b0:a99:f1aa:a71f with SMTP id a640c23a62f3a-aa4833f7487mr324293366b.11.1731704986921;
        Fri, 15 Nov 2024 13:09:46 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df51648sm219626366b.62.2024.11.15.13.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 13:09:46 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Nov 2024 23:09:29 +0200
Subject: [PATCH 4/5] drm/connector: make mode_valid_ctx accept const struct
 drm_display_mode
MIME-Version: 1.0
Message-Id: <20241115-drm-connector-mode-valid-const-v1-4-b1b523156f71@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1695;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=oLY7+gEEQX5y+IrkZsspi4uhz4i0DjMFBoH6fdvMkJw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnN7iIEAveRWXmQWe1stGwllWWTGsdTdE1s1iig
 2BzWZCF0MOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZze4iAAKCRCLPIo+Aiko
 1VHTCACzeIvQM2U7UstBpUccYyFqIL0ngRGXT9/4FmsiQcx0+H2ouTVyisjg/LLZ/vRZ+Sy9Dap
 CcwztsrQ/32zb6SYfgOsdyQRoOBbTT5d4lzTS3Pe9PABuei6dm0lj3mJUX/Od2xwaIJT3Zqa/Du
 JVKMw0vQvye08hlE3x6j/j8rF64zNh4t+0I5ejSfX+SAor0P0cJvSZQSJyi541ezhAuP0uOH1Mr
 rZ4A7KbZFucqd4yp5jfQ5ttsyivo13fQRvEsVxt7dLMmFxP7HQgPei8s2hZj530wtj+eTAExRFs
 NJFXe4LNfD5wLcUeRZiZMoWytSAqd5NxU3rpWQDXs06KLhfd
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_130949_102680_122705E8 
X-CRM114-Status: GOOD (  12.47  )
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

The mode_valid() callbacks of drm_encoder, drm_crtc and drm_bridge
accept const struct drm_display_mode argument. Change the mode_valid_ctx
callback of drm_connector to also accept const argument.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 include/drm/drm_modeset_helper_vtables.h    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7be8fb047b6c17cb37b9021a2dbf430f0aaecfa2..cfefd89209ca864e19771c538ca00016f9322e74 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1432,7 +1432,7 @@ static int intel_dp_mst_get_modes(struct drm_connector *connector)
 
 static int
 intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
-			    struct drm_display_mode *mode,
+			    const struct drm_display_mode *mode,
 			    struct drm_modeset_acquire_ctx *ctx,
 			    enum drm_mode_status *status)
 {
diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
index ec59015aec3cf3ba01510031c55df8c0b3e0b382..fa9ee6a128bec0205f501df6f7634757f5fcb9ee 100644
--- a/include/drm/drm_modeset_helper_vtables.h
+++ b/include/drm/drm_modeset_helper_vtables.h
@@ -1006,7 +1006,7 @@ struct drm_connector_helper_funcs {
 	 *
 	 */
 	int (*mode_valid_ctx)(struct drm_connector *connector,
-			      struct drm_display_mode *mode,
+			      const struct drm_display_mode *mode,
 			      struct drm_modeset_acquire_ctx *ctx,
 			      enum drm_mode_status *status);
 

-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
