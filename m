Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 230EBC41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 18:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+u9Uy56qWnaKX3GydNlQTwaaCEzMlbVHGoRlkBGI26Y=; b=GlMUVqkd/zqjmI
	EbL7o7+gOCjA+B8WT0HtE1oiaVfTQnzdRtzfyq4y44DalFW2aL43tUQlBEqQ29kxXj2d8sY5t3/Au
	AdrgjY/6pf4UK7QTYMTUb5u5ctkSg3m9lNdTtx51JHc8GUvv1ripOI8o/0O5ev7UqvxobsGZjs0Lz
	pqxWDlO57SLGuGfvF4YT079oDnOZ2pfNmOVrr4HNrk+jHvYncWGQtDDzINRHjnhDAaPfoecyz+OCC
	IPZeQJiSRgunL1QnqLCJ8INux49ua7yRXW1MvGsXHEgf1+r6C85WD53Dmi78/3VWaIhGmO5gAt78m
	8+YJ66w/jV8idskXjP+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFee5-00FALS-2V;
	Tue, 19 Dec 2023 18:16:45 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTJ-00EoLo-0W;
	Tue, 19 Dec 2023 17:01:37 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40d31116dbeso618035e9.3;
        Tue, 19 Dec 2023 09:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005292; x=1703610092; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=arQ8xIKVUtWj1nUwdouDUReL6yFeDt+BlaNGpwFH10c=;
        b=Ol++Gc2ug0d6koNV5yfH8AVFGrJjoxsWhA8/zhOfX+Roe3TIVx0lkXF7+15z3lZ2Eg
         KgmVieJ25SuJWx4syvJJkxhwvjKD6rsFAgETgXhjCdLkR7cxQUVbjs63BQw1qnHwhc6Y
         hdNHuhyKYYbA6DoQOL1iJb2H0jp9xm4En8SEjMJ/9Om+f0p+5wSYACceaJ8u+ugap1J3
         7JvCtv65yroajj8z/dgkmyVyMJ1ijvMpRMkMhZiI+/NFcew1AUbu/ZJGogu3XAcjeFJD
         SE7trglzgVpTNOa/v8m9kLGaNiaP2aMjHQAj04cIiy9ltS07un7pCxuDoKgkkZwFZgZQ
         ZNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005292; x=1703610092;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=arQ8xIKVUtWj1nUwdouDUReL6yFeDt+BlaNGpwFH10c=;
        b=aE3GCZYkEGkvMAMqrwSkQtkqc+qWJGIAez0VmzQQVC5JsqKzQjNf2dc0L8WHtIWSZ9
         yUEgkZ81tHWd5/E5M9+vTGRdIZpnzOa+Ex1DBv5RY5W4I/YkX1iio+3n2Jx4CX6r+Heb
         C1Xhl/esKRH0dVgMU+TBeYWu3eeniIftURASmkD7N15cV0zUFxPkbmTJum3BJDJd+6vg
         A8kFVkN8icFwqlNkhGsPBMAOTq1fvTfVzwsIMcRiBLS/eqzv4fuRUQzBTe05euFdvdC3
         xAu2BN4IwE5fjN0tNEP0dfxM+TV6DJQBEC1f9Q+mEJJDVYyFelfnHLsVGvzlcWp3CiiS
         /fiQ==
X-Gm-Message-State: AOJu0YxgAigPwLW2uTvP7OFFs5ALecwCeoOgs+RtfKKh+zjfixxtx9+T
	VRDCLGMGl0bV6MIU7Uw6RA==
X-Google-Smtp-Source: AGHT+IEm8HS6oHyVinKk2y2E+36YVQQ/TKqJ6BvNP4pRKrkPrVlgTtkIQOEcQo7tQa1nD+AR7BZaTw==
X-Received: by 2002:a05:600c:4f52:b0:40b:5e21:d362 with SMTP id m18-20020a05600c4f5200b0040b5e21d362mr9931502wmq.107.1703005291752;
        Tue, 19 Dec 2023 09:01:31 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:31 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 26/29] drm/rockchip: inno_hdmi: Drop custom fill_modes hook
Date: Tue, 19 Dec 2023 18:00:56 +0100
Message-ID: <20231219170100.188800-27-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090133_236470_3B9DC898 
X-CRM114-Status: GOOD (  11.82  )
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

Now that we have proper pixelclock-based mode validation we can drop the
custom fill_modes hook.
CRTC size validation for the display controller has been added with
Commit 8e140cb60270 ("drm/rockchip: vop: limit maximum resolution to
hardware capabilities")

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
---
changes in v2:
 - no changes

changes in v3:
 - collect RB

 drivers/gpu/drm/rockchip/inno_hdmi.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index a2a9e54b76c0..29a2c1b87294 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -631,13 +631,6 @@ inno_hdmi_connector_mode_valid(struct drm_connector *connector,
 	return  inno_hdmi_display_mode_valid(hdmi, mode);
 }
 
-static int
-inno_hdmi_probe_single_connector_modes(struct drm_connector *connector,
-				       uint32_t maxX, uint32_t maxY)
-{
-	return drm_helper_probe_single_connector_modes(connector, 1920, 1080);
-}
-
 static void inno_hdmi_connector_destroy(struct drm_connector *connector)
 {
 	drm_connector_unregister(connector);
@@ -691,7 +684,7 @@ inno_hdmi_atomic_destroy_state(struct drm_connector *connector,
 }
 
 static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
-	.fill_modes = inno_hdmi_probe_single_connector_modes,
+	.fill_modes = drm_helper_probe_single_connector_modes,
 	.detect = inno_hdmi_connector_detect,
 	.destroy = inno_hdmi_connector_destroy,
 	.reset = inno_hdmi_connector_reset,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
