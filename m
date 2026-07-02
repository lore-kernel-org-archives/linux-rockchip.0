Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 523E6C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 20:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nWYyugE00JBgGr61kDWdPpi1yX+xYjnCyMGMDKGqkc=; b=dAcYCRUJXl6KVq
	T45gVPA08vDGhen6o795u0ELjD9VP77SKzBL1JCSVwZ8qqHXahojuR89zJPKXeIKGDWjP/Al0aYAQ
	hnOX2ITleRuiHZYickVrlrIvV6vD2uNvLcoHTh68HTXTSlR07iBfS6Bdqr71QjqH++waKvDKsImoO
	DEuKt09jevhT35xNP4cjYsQy+RqOM14cseeQ0pBKzvAPQtUbvjoLYv4ip+W0S+OQkcOGVJ5yrPaq6
	vD2XEGBPSt3yiV35A0vdvQ0SJ7gfyKpnR+0MgElEGv7r5BP36RzCxENAMs9OzcQZXfngKxokBZ40q
	gZNrafWOGG7D9sQvr+Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfNsQ-00000005Qy3-1SC8;
	Thu, 02 Jul 2026 20:19:14 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfNsN-00000005Qx9-1cfc
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 20:19:12 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-497d3e4460aso1145108b6e.1
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 13:19:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783023549; cv=none;
        d=google.com; s=arc-20260327;
        b=f7RYh23LsOMqmy2Qko2Zt3qsxnmQexzzEAo53d4c62POpirrsI0pTQytwKhRKSHABN
         kPW2Rbu0RAmuHH3BAY0rCvkSqTPOWT+Qwy10KJjGCFhexx2j9LTbnJye0Qwc8TJQ0b/c
         lhE50ZCSbAKAREbL9jlpZP8QIEtjXIy+OYqky6w1EQxNsRG7wrtsHk3BHMSMxwwwkNBF
         dvv1g7pFAhAZj+gh+M3ozhurh1t/2Dwh+IM6jfkMIu6e3uc5+RrPQSDbHH7EtXEUJggr
         GuM9EgRTZVSKZXtTwFJOZa7fqetihuNMAnxHYLH3spQIVAu7njKVCeDEF7mak44IoZl4
         8UfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bwqt02/5YgI2sWimxuqpEvjJd9luKWmmhf40MhWLG54=;
        fh=FikrTLNwxNTq5SrMuV+s4RW6HZ1FRjvsHSHKfC0toKI=;
        b=mBd5wX3vMNa910D53wIQXFrZt9hLHj78cqwUPI2dhwMpKCniFQRe1zhsPJ1BSB9YSo
         EzQ1cXK2TDmzw2x4DsUz4v5M29T/PN2OiLzafuqybsirhVyp4a83k2K/hzh69LmsXc3C
         AKkbdHfaUmd6FUAdcAyInri0WgWa+bgiYeYRi9ux0KskPX8KS4klUdTQ9M/rRB6vwGL1
         aHJK+BKqXSmJw+Dma2wfl8GIJh4armlo6I5FAcaSbAfoyBr6fDXODZvwNR0QvGQVBCic
         A6hmPTVI6t9xXGqtNjTZXVQFSDnj00Mbvnxo9cs/gs9RbE0UluHxUMYO5twknsbMqdIl
         omWg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783023549; x=1783628349; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bwqt02/5YgI2sWimxuqpEvjJd9luKWmmhf40MhWLG54=;
        b=fc/BccUU5RiPn8K5zBBYugSU5JiFf71qqzI2//QU+lsqgMrwneieQTi+5gAG9QO8IP
         cC6ESkykXCuV8p4gGV3Ah3pOyGmCQH2UCL4JJX18l/atouI8dwcpmQAmR6mbk9muBycI
         t8IHW6+XfcU8x5Fhb2HuYzfWlElA9cSOY9HrhtwpasVJ2dF/KrSNUpAPAjfE7U7DCBQ+
         OAgJ7b2gyzdqjzCtJ3yQF1s1vziRAZGoseWUQ+XaLMwcdqtjRmIS9g/vepFUTSzgYJbW
         ZaLJt8h3nk+G8IwK2uAttTJnqsNzvWlYbbtGZHB0pc8PJbmWUv4mjrGEFJ08XVWJKDYD
         gTkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783023549; x=1783628349;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bwqt02/5YgI2sWimxuqpEvjJd9luKWmmhf40MhWLG54=;
        b=OiB95XGmyo8mQQALXFQv1wqsYiQimvf/TST4AEwede3WTy+qT28EijgY3H7wXJuZYY
         PrqvDpXNIPGVg+GpkuJv7kzmr/I4PlMh75zxYwji9ggif3zapb2xKsFARgwhFU7U8HIm
         8dsBm29AL2qRKYO6wTb/UTGRjVntN4NCTZsencl+fhmYAKWtyTMmbMpEmGPQSDKDlvqu
         qkBJ67uxbwiy5Yar/mzNgm/H+a9qWFCnGg32kuEGLWmvcBM2O3QceWLNgEKLvClNmaRi
         IEw2Kvlq4FFwC1GDkyESm+PbB2sqDZlIU0evAwGnhU7Yvbf/XgyPuP5gI2NzYJgZvMN2
         vKZg==
X-Forwarded-Encrypted: i=1; AFNElJ9iIDh0yU52J7qOBA+Wy0dbGcOHuT1n+x/2+O5fexBLVHLwf78kindyx6+0EAQ1QCkT6Ep8YFuaLXJfre7bUg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxe4egrlEFoP/oCo3PXvWj6tScVbkiuRPn7pDGtmub44Icsff9t
	DDLMzW6bbmy0XU9H81+5G35e4xShUHNg9Jp0kGKhLpr0jD4plQNnIPA/8leq+9p8l7wdxLvWj8a
	m0lYgjqX4QsdxJMYpgKdE2diaZhbAuBs=
X-Gm-Gg: AfdE7clgG44hRzg+a3Fms+6FI2QAJRnA7Q5Izil9W7IUXX+Py5+D/rVfNr/K8pJpPP7
	kiT/aJNjoe+xjuqINtigDVjDmPIuB7PFuQl23Z2o39gf6EwIMf4UAjKfziEdqSFfM5EgB2GNB9x
	2d5mswEY6UoiQFSnFE0IHM1bFmGfVx5xNgjcLUSZ9nNeAhrPhrsZLLjPL6eVGyxoDtnjyy9gJ7h
	OW++480T1CaEWF0DLxPxYX693cgynm1XA72STvc2qI49RMAtMkwOQDSq+Rsntho/U0oQHgeD9oG
	/CwddAlj
X-Received: by 2002:a05:6808:19a9:b0:496:976:acad with SMTP id
 5614622812f47-497e1be6f40mr910146b6e.1.1783023549180; Thu, 02 Jul 2026
 13:19:09 -0700 (PDT)
MIME-Version: 1.0
References: <20260608124018.480365-2-diogompaissilva@gmail.com> <CAJpoHp6DnspnA0rirGb6E=A9wCS3eaDn=eFaqmae98Q+39b1PA@mail.gmail.com>
In-Reply-To: <CAJpoHp6DnspnA0rirGb6E=A9wCS3eaDn=eFaqmae98Q+39b1PA@mail.gmail.com>
From: Diogo Silva <diogompaissilva@gmail.com>
Date: Thu, 2 Jul 2026 22:18:58 +0200
X-Gm-Features: AVVi8CcqPIisQrq5CFS72_ZRI36P5g5rqpVd9s6Wr_RpOGpHUQHdD0aZPxz7mCM
Message-ID: <CAJpoHp489qKfkfLOX-XPLpOWo86gibZB=NM_dXPbv0yDGmxysg@mail.gmail.com>
Subject: [PATCH v4] drm/rockchip: Remove dependency on DRM simple helpers
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, David Airlie <airlied@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	linux-arm-kernel@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, "javierm@redhat.com" <javierm@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_131911_452809_CDF652EB 
X-CRM114-Status: GOOD (  16.01  )
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

Simple KMS helper are deprecated since they only add an intermediate
layer between drivers and the atomic modesetting.
This patch removes the drm_simple_encoder_init() helper usage in the
rockchip drivers by open coding it and using the encoder atomic helpers
directly. This is a step to eventually get rid of this simple KMS helper,
once all drivers that use it have been converted.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Diogo Silva <diogompaissilva@gmail.com>
---
v4:
 - improved commit message based on Javier Canillas feedback

v3:
 - rebase on drm-tip tree

 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c  | 9 ++++++---
 drivers/gpu/drm/rockchip/cdn-dp-core.c           | 9 ++++++---
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c  | 9 +++++++--
 drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c | 8 ++++++--
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c        | 1 -
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c      | 1 -
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c   | 1 -
 drivers/gpu/drm/rockchip/rk3066_hdmi.c           | 8 ++++++--
 drivers/gpu/drm/rockchip/rockchip_lvds.c         | 9 +++++++--
 drivers/gpu/drm/rockchip/rockchip_rgb.c          | 8 ++++++--
 10 files changed, 44 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 776954c7d052..46c245e35d21 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -30,7 +30,6 @@
 #include <drm/drm_of.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/drm_simple_kms_helper.h>

 #include "rockchip_drm_drv.h"

@@ -303,6 +302,10 @@ rockchip_dp_drm_encoder_atomic_check(struct
drm_encoder *encoder,
        return 0;
 }

+static const struct drm_encoder_funcs rockchip_dp_encoder_funcs = {
+       .destroy = drm_encoder_cleanup,
+};
+
 static const struct drm_encoder_helper_funcs
rockchip_dp_encoder_helper_funcs = {
        .mode_fixup = rockchip_dp_drm_encoder_mode_fixup,
        .mode_set = rockchip_dp_drm_encoder_mode_set,
@@ -361,8 +364,8 @@ static int rockchip_dp_drm_create_encoder(struct
rockchip_dp_device *dp)
                                                             dev->of_node);
        DRM_DEBUG_KMS("possible_crtcs = 0x%x\n", encoder->possible_crtcs);

-       ret = drm_simple_encoder_init(drm_dev, encoder,
-                                     DRM_MODE_ENCODER_TMDS);
+       ret = drm_encoder_init(drm_dev, encoder, &rockchip_dp_encoder_funcs,
+                              DRM_MODE_ENCODER_TMDS, NULL);
        if (ret) {
                DRM_ERROR("failed to initialize encoder with drm\n");
                return ret;
diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c
b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index 190cce9530c8..c3f41a4449f5 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -23,7 +23,6 @@
 #include <drm/drm_of.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/drm_simple_kms_helper.h>

 #include "cdn-dp-core.h"
 #include "cdn-dp-reg.h"
@@ -671,6 +670,10 @@ static int cdn_dp_encoder_atomic_check(struct
drm_encoder *encoder,
        return 0;
 }

+static const struct drm_encoder_funcs cdn_dp_encoder_funcs = {
+       .destroy = drm_encoder_cleanup,
+};
+
 static const struct drm_encoder_helper_funcs cdn_dp_encoder_helper_funcs = {
        .atomic_check = cdn_dp_encoder_atomic_check,
 };
@@ -988,8 +991,8 @@ static int cdn_dp_bind(struct device *dev, struct
device *master, void *data)
                                                             dev->of_node);
        DRM_DEBUG_KMS("possible_crtcs = 0x%x\n", encoder->possible_crtcs);

-       ret = drm_simple_encoder_init(drm_dev, encoder,
-                                     DRM_MODE_ENCODER_TMDS);
+       ret = drm_encoder_init(drm_dev, encoder, &cdn_dp_encoder_funcs,
+                              DRM_MODE_ENCODER_TMDS, NULL);
        if (ret) {
                DRM_ERROR("failed to initialize encoder with drm\n");
                return ret;
diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 3547d91b25d3..a09b382d208e 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -25,7 +25,6 @@
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
 #include <drm/drm_print.h>
-#include <drm/drm_simple_kms_helper.h>

 #include "rockchip_drm_drv.h"

@@ -825,6 +824,10 @@ static void dw_mipi_dsi_encoder_enable(struct
drm_encoder *encoder)
        clk_disable_unprepare(dsi->grf_clk);
 }

+static const struct drm_encoder_funcs dw_mipi_dsi_encoder_funcs = {
+       .destroy = drm_encoder_cleanup,
+};
+
 static const struct drm_encoder_helper_funcs
 dw_mipi_dsi_encoder_helper_funcs = {
        .atomic_check = dw_mipi_dsi_encoder_atomic_check,
@@ -840,7 +843,9 @@ static int rockchip_dsi_drm_create_encoder(struct
dw_mipi_dsi_rockchip *dsi,
        encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
                                                             dsi->dev->of_node);

-       ret = drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_DSI);
+       ret = drm_encoder_init(drm_dev, encoder,
+                               &dw_mipi_dsi_encoder_funcs,
+                               DRM_MODE_ENCODER_DSI, NULL);
        if (ret) {
                DRM_ERROR("Failed to initialize encoder with drm\n");
                return ret;
diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
b/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
index d2e76d36d724..9dc207c2d20d 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
@@ -23,7 +23,6 @@
 #include <drm/bridge/dw_mipi_dsi2.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
-#include <drm/drm_simple_kms_helper.h>

 #include <uapi/linux/videodev2.h>

@@ -275,6 +274,10 @@ dw_mipi_dsi2_encoder_atomic_check(struct
drm_encoder *encoder,
        return 0;
 }

+static const struct drm_encoder_funcs dw_mipi_dsi2_encoder_funcs = {
+       .destroy = drm_encoder_cleanup,
+};
+
 static const struct drm_encoder_helper_funcs
 dw_mipi_dsi2_encoder_helper_funcs = {
        .atomic_enable = dw_mipi_dsi2_encoder_atomic_enable,
@@ -290,7 +293,8 @@ static int rockchip_dsi2_drm_create_encoder(struct
dw_mipi_dsi2_rockchip *dsi2,
        encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,

dsi2->dev->of_node);

-       ret = drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_DSI);
+       ret = drm_encoder_init(drm_dev, encoder, &dw_mipi_dsi2_encoder_funcs,
+                              DRM_MODE_ENCODER_DSI, NULL);
        if (ret) {
                dev_err(dsi2->dev, "Failed to initialize encoder with drm\n");
                return ret;
diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index 0de822360c8d..b23efb153c9e 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -20,7 +20,6 @@
 #include <drm/drm_of.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/drm_simple_kms_helper.h>

 #include "rockchip_drm_drv.h"

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index cffc0af5190f..b6e154c35e7c 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -18,7 +18,6 @@
 #include <drm/drm_managed.h>
 #include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/drm_simple_kms_helper.h>

 #include "rockchip_drm_drv.h"

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index f35484715c2d..af34062685cd 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -24,7 +24,6 @@
 #include <drm/drm_managed.h>
 #include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/drm_simple_kms_helper.h>

 #include "rockchip_drm_drv.h"

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index 1996f8656612..b4ba9f894360 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -12,7 +12,6 @@
 #include <drm/drm_of.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/drm_simple_kms_helper.h>

 #include <linux/clk.h>
 #include <linux/mfd/syscon.h>
@@ -454,6 +453,10 @@ rk3066_hdmi_encoder_atomic_check(struct
drm_encoder *encoder,
        return 0;
 }

+static const struct drm_encoder_funcs rk3066_hdmi_encoder_funcs = {
+       .destroy = drm_encoder_cleanup,
+};
+
 static const
 struct drm_encoder_helper_funcs rk3066_hdmi_encoder_helper_funcs = {
        .atomic_check   = rk3066_hdmi_encoder_atomic_check,
@@ -696,7 +699,8 @@ rk3066_hdmi_register(struct drm_device *drm,
struct rk3066_hdmi *hdmi)
                return -EPROBE_DEFER;

        drm_encoder_helper_add(encoder, &rk3066_hdmi_encoder_helper_funcs);
-       drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
+       drm_encoder_init(drm, encoder, &rk3066_hdmi_encoder_funcs,
+                        DRM_MODE_ENCODER_TMDS, NULL);

        hdmi->bridge.driver_private = hdmi;
        hdmi->bridge.funcs = &rk3066_hdmi_bridge_funcs;
diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c
b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 7a0c4fa29f2f..f3be2c91d147 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -24,7 +24,6 @@
 #include <drm/drm_panel.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/drm_simple_kms_helper.h>

 #include "rockchip_drm_drv.h"
 #include "rockchip_lvds.h"
@@ -427,6 +426,10 @@ static void px30_lvds_encoder_disable(struct
drm_encoder *encoder)
        drm_panel_unprepare(lvds->panel);
 }

+static const struct drm_encoder_funcs rockchip_lvds_encoder_funcs = {
+       .destroy = drm_encoder_cleanup,
+};
+
 static const
 struct drm_encoder_helper_funcs rk3288_lvds_encoder_helper_funcs = {
        .enable = rk3288_lvds_encoder_enable,
@@ -594,7 +597,9 @@ static int rockchip_lvds_bind(struct device *dev,
struct device *master,
        encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
                                                             dev->of_node);

-       ret = drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_LVDS);
+       ret = drm_encoder_init(drm_dev, encoder,
+                                     &rockchip_lvds_encoder_funcs,
+                                     DRM_MODE_ENCODER_LVDS, NULL);
        if (ret < 0) {
                drm_err(drm_dev,
                        "failed to initialize encoder: %d\n", ret);
diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c
b/drivers/gpu/drm/rockchip/rockchip_rgb.c
index add3123e5ce7..2ad24b914989 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
@@ -17,7 +17,6 @@
 #include <drm/drm_panel.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
-#include <drm/drm_simple_kms_helper.h>

 #include "rockchip_drm_drv.h"
 #include "rockchip_rgb.h"
@@ -65,6 +64,10 @@ rockchip_rgb_encoder_atomic_check(struct
drm_encoder *encoder,
        return 0;
 }

+static const struct drm_encoder_funcs rockchip_rgb_encoder_funcs = {
+       .destroy = drm_encoder_cleanup,
+};
+
 static const
 struct drm_encoder_helper_funcs rockchip_rgb_encoder_helper_funcs = {
        .atomic_check = rockchip_rgb_encoder_atomic_check,
@@ -127,7 +130,8 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
        encoder = &rgb->encoder.encoder;
        encoder->possible_crtcs = drm_crtc_mask(crtc);

-       ret = drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_NONE);
+       ret = drm_encoder_init(drm_dev, encoder, &rockchip_rgb_encoder_funcs,
+                              DRM_MODE_ENCODER_NONE, NULL);
        if (ret < 0) {
                DRM_DEV_ERROR(drm_dev->dev,
                              "failed to initialize encoder: %d\n", ret);
--
2.51.2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
