Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5D7EC87FD1
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YI1EpHHIqU050JNIvn37pqb0wmLQXWeoBy26RK3qWo4=; b=DgpMeugYcQB8nb
	MdadHH/U86O9RIKS9whJNw/p60cvM4yhoJIWeoCcgZ746J/QX6QqBjcwjkwZ3fD6zbMpVfEXdOvly
	a56IY6QHpaTVYJABa/ByK71nG3aoQeqbcChBBA/yvskV2kgwlzXjPYloLqUKwIKp1zlCnRfUTKly7
	9qlhgk65djR6zGd+NjDWqtCfR8ylo9s1vd8Uq0bpCPRL7tFjrUGbKq+TuIB8TAjP/N8YaV9Mn2VZ3
	9zWc2lY8mGk3io2kLgvAKXv3xKxJKWneYMayITAfSvLIDm3l5bTX1Gi4IDyZVOe5OScf6Gsvb6TNa
	x5VcY8ogGB8JF63pFy5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbbu-0000000EvS5-1Q0I;
	Wed, 06 Aug 2025 10:43:06 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC3ZR-0000000484Z-3B5r
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Nov 2024 21:09:38 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5cfa1ec3b94so171945a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Nov 2024 13:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731704976; x=1732309776; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MaDJsFjngdpTSC4UtZp0JvItJKL05hX1CQDURe5cIPs=;
        b=xt/qWM08icGytwSVUEhX+SyxxnmCEWdk6B2V7pV1zyLuX4A4NsTj3BH6BrZYGo6uon
         xxLg4UbdXi3WH+onDvzqMK3TbWm4mVP7m0PcuzY6p2BWgluFmX+TIpDiwMPkJfXDDvzT
         NWQEWZ7rVmoabV2G5d7WgHcEHXkHUMNNYRyKfssLWRCrNO7QqiY8HuuRw9b253eznKy4
         xB2Rr6+up1iohoXxUpBTQBn4nA56F/ZkFxohLrfOqnj2EpTXPb1Lo8lDhlBfsvl0tHGo
         Wd9EQ0xF5G/gR7UJlC9SxKg3foenh8wIDKDLrnK3Z5f3vj6cwUlGBf9yTfv+24Pi3uDw
         5mOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731704976; x=1732309776;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MaDJsFjngdpTSC4UtZp0JvItJKL05hX1CQDURe5cIPs=;
        b=UhmDfbPk/CHT6Vb4/dojXN8E5ibTyMwM7l1od8OupaAtDxkTJYo0bnCaqqzDQmSkHx
         MBWS7JQ8UROmp2NVXOLazOwzTk4L8Tk7D0XGCo3G4Js5q0TRhtV2uNzVYRJ1n1q4ThG0
         4WJRRQF/yYEho9pUngtiGuwAlujpnFgFphX8swgOh1UEJNDqWNTesa8uVHtTzn8OzMyk
         Bt35SZPiagI7l7y1rRQuJVzNlfq4cJyg/Bm1tZIi3P6ItpeK3042uynQ+0DcKZ/2YIEk
         WFam2c0Aw8cKEamvvxQTAaHYkhEC2AyoDHu6NEZ+i8/ARE8A9hMd+4WRQE4ejgEUHqnB
         E28A==
X-Forwarded-Encrypted: i=1; AJvYcCUZu1hWfKSFfaMgNAnpHoqdv+McWDbwAqRbgdAtiI4rAGYXWZS010Wx1lH1xUt8cdJWOxhek4KVrTG044Qc8A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwPK1QqtplldEqim0r9gnLMeiEQkCBi318aXr/TxYEyDS2DBsYt
	mPbRgrlAXcyeQ9r+5Oq2JAW/oQusYI/mNtCa+8JU9hcogtKtM3SA2ojlmgROOLQ=
X-Google-Smtp-Source: AGHT+IFPY3knSoOjFOSw+FKqV/bCUh7TKMDj4KEvXFLpvr+Y8ELhi4rkKluEpzqZePJKQVtb4lya7g==
X-Received: by 2002:a17:907:2d91:b0:a99:43e5:ac37 with SMTP id a640c23a62f3a-aa483426214mr277344666b.15.1731704976085;
        Fri, 15 Nov 2024 13:09:36 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df51648sm219626366b.62.2024.11.15.13.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 13:09:35 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Nov 2024 23:09:26 +0200
Subject: [PATCH 1/5] drm/encoder_slave: make mode_valid accept const struct
 drm_display_mode
MIME-Version: 1.0
Message-Id: <20241115-drm-connector-mode-valid-const-v1-1-b1b523156f71@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2918;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=p73O++3wotedHVxEc/OS0iEeK5HjHEeyRJw8kmUrclY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnN7iHg3HP+UcGCGKYRySmptq7KP9Ng42lKX9lx
 EK9A+ybXVWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZze4hwAKCRCLPIo+Aiko
 1VmgB/9rxQm+iAzl+wi6vwGpdl+HNgPJZFXzu5cOtg8Q8IyEKfG0Mk/5Adwoa3BqRSDtrUZaI3X
 KiEQo8V0xPwWrJFzEmGzfoN72i6nWFebnQbjfIXt70HZPw6Gu7ufcvJsS3Duq/b/Th8/f3taLfo
 LJj+f+TWV1lC+9ObG14v3/4i6FFKkzzncn8HnS22OpAQ2AxdzLXYGSy7+E4Y7P2T1gDNumfgOHE
 juevCTvhN61ldGGOZFeCPby6Jjgp0M25sRRQkSL6SPQwau7HwCMbjckQexv5lAB9H+6+C6D8p9d
 nSe3+Sp7FKCb/pi71OeXv3z1csTh2P2cNnmAWuGLZ/zAdpir
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_130937_804095_AF984EC4 
X-CRM114-Status: GOOD (  12.66  )
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
accept const struct drm_display_mode argument. Change the mode_valid
callback of drm_encoder_slave to also accept const argument.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/i2c/ch7006_drv.c          | 2 +-
 drivers/gpu/drm/i2c/sil164_drv.c          | 2 +-
 drivers/gpu/drm/nouveau/dispnv04/tvnv17.c | 2 +-
 include/drm/drm_encoder_slave.h           | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i2c/ch7006_drv.c b/drivers/gpu/drm/i2c/ch7006_drv.c
index 131512a5f3bd996ad1e2eb869ffa09837daba0c7..a57f0a41c1a9e2006142fe0bad2914b0c344c82a 100644
--- a/drivers/gpu/drm/i2c/ch7006_drv.c
+++ b/drivers/gpu/drm/i2c/ch7006_drv.c
@@ -104,7 +104,7 @@ static bool ch7006_encoder_mode_fixup(struct drm_encoder *encoder,
 }
 
 static int ch7006_encoder_mode_valid(struct drm_encoder *encoder,
-				     struct drm_display_mode *mode)
+				     const struct drm_display_mode *mode)
 {
 	if (ch7006_lookup_mode(encoder, mode))
 		return MODE_OK;
diff --git a/drivers/gpu/drm/i2c/sil164_drv.c b/drivers/gpu/drm/i2c/sil164_drv.c
index ff23422727fce290a188e495d343e32bc2c373ec..708e119072fcb50c31b5596b75dc341429b93697 100644
--- a/drivers/gpu/drm/i2c/sil164_drv.c
+++ b/drivers/gpu/drm/i2c/sil164_drv.c
@@ -255,7 +255,7 @@ sil164_encoder_restore(struct drm_encoder *encoder)
 
 static int
 sil164_encoder_mode_valid(struct drm_encoder *encoder,
-			  struct drm_display_mode *mode)
+			  const struct drm_display_mode *mode)
 {
 	struct sil164_priv *priv = to_sil164_priv(encoder);
 
diff --git a/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c b/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c
index 3ecb101d23e949b753b873d24eec01ad6fe7f5d6..35ad4e10d27323c87704a3ff35b7dc26462c82bd 100644
--- a/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c
+++ b/drivers/gpu/drm/nouveau/dispnv04/tvnv17.c
@@ -308,7 +308,7 @@ static int nv17_tv_get_modes(struct drm_encoder *encoder,
 }
 
 static int nv17_tv_mode_valid(struct drm_encoder *encoder,
-			      struct drm_display_mode *mode)
+			      const struct drm_display_mode *mode)
 {
 	struct nv17_tv_norm_params *tv_norm = get_tv_norm(encoder);
 
diff --git a/include/drm/drm_encoder_slave.h b/include/drm/drm_encoder_slave.h
index 49172166a164474f43e4afb2eeeb3cde8ae7c61a..b526643833dcf78bae29f9fbbe27de3f730b55d8 100644
--- a/include/drm/drm_encoder_slave.h
+++ b/include/drm/drm_encoder_slave.h
@@ -85,7 +85,7 @@ struct drm_encoder_slave_funcs {
 	 * @mode_valid: Analogous to &drm_encoder_helper_funcs @mode_valid.
 	 */
 	int (*mode_valid)(struct drm_encoder *encoder,
-			  struct drm_display_mode *mode);
+			  const struct drm_display_mode *mode);
 	/**
 	 * @mode_set: Analogous to &drm_encoder_helper_funcs @mode_set
 	 * callback. Wrapped by drm_i2c_encoder_mode_set().

-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
