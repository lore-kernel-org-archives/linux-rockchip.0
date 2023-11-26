Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B00B8C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Nov 2023 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgQaVcPBD3gXxIgkMPbwGkVt2gIJf1MBr0Jui3VFf5w=; b=JN0losEGOSlAyr
	wpjv1mFdfwxOvRC9jbUFzQ1pmSfCfZ1KH8j0czB9gO7+08Nh1Klj+lYJilh1luM0I2tQyx1Y7+OWP
	GCdXBG2m/1XyJM11FxRKJbmjalDni+1Qtyq6NT9ReZ4XMmuWZktsDeFlDBkcEitaCizzTTWiPruVx
	NSDk5LWKWuPJOWI1iPssDvsD3c8RcJ6WsAK77fPZ0LCv5BBsWH/lyv83nX+uYQSWz9t6oiGgTQ8Uf
	hmGw4Y8hGaEuJ5lpaNaknUgddZP5apSqT6pE4eMxIVK7wPhIWkarQHVb2nI/LAyo0ImE+nE/ZimjN
	f5vPMeR6aQNWhp+NDzTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Coe-00Ai9X-23;
	Sun, 26 Nov 2023 10:56:44 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Cob-00Ai87-0N;
	Sun, 26 Nov 2023 10:56:42 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a0b65cbf096so116879566b.1;
        Sun, 26 Nov 2023 02:56:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700996199; x=1701600999; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I3GW50siPE3V/OZVTf7EbN7pnDFJwfRoAQudNo2WQ48=;
        b=YgIjbNis4TnW3y1RhdauablH6xcfJoWzXzUjNHAtlaeyuiEdRuPktB3sFfaKNrbLqD
         NjPzkgX/Xf6Jc24SVDyn5hE/JZ9DFb0LZzCY8xWpKzp8t5zN7EneR6rGhQp55oNHkN6a
         9XDmPxtujKbnV38adF8I6TtFtF6l+TWPPbYltp24obGJpmaLMLqEhRQTgoKXH2wVHBeD
         Qr1r7EM8SCf1nN0/+LhseiHXxYX9xbJHNyzpn0Ot483iL/TBAWlhJ+K2pSJLf1Bh6r8m
         6ktS0SsjNY/hJE6mMkxNG7koRfGfjLvUEtJyM7bGPD0NVJUWaR03dwAtOB+YI7oN2+aH
         MHGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700996199; x=1701600999;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I3GW50siPE3V/OZVTf7EbN7pnDFJwfRoAQudNo2WQ48=;
        b=C+hGA5ASaKgi6TO4IE1KZXcasnaKt8LXv7FcrnXw0MBnkivY20hyNEweAZkCmGfwqs
         rSQzw60pD4Wd5MfDfYFTQqtmxNYmi7XtFxG6dYKnz0bNvcoOQcFvbb+dglhkRJoHDllw
         CSoQwESFyIJMr3/9Mv3KHQnWKN7q+G0KdS4iBrQ4HV//CmnFAoXLKUNazYazBtBuJO4F
         8Q1EWh90Bpi5HOkdQrrsJUwF115MrUcehjHMYJI0QIIZ4cYIVVHO+mP/MCFgmNkwtfoy
         OfL/1YE/TwXpIHhFO+GgbRHWY3EJFnhjCm7cLhwsCrrHWZQzDgvbFjyoGUEkvZ/EPJH+
         pdcw==
X-Gm-Message-State: AOJu0YxUS83/8d61zCN5Xd7Jwllzw2J1qyeUbFXqPzEbm1g8cfjl/OdU
	4HaYk0oQhgq5DmQ22zKbKTQ=
X-Google-Smtp-Source: AGHT+IHyK6mjmTRZ1o7XFvGUgHdwO4eWCrwMMAGqlF4KESwgSObaJJInGnzGUjM2H/elSkwoTRxo2g==
X-Received: by 2002:a17:906:209e:b0:a0a:f9af:c159 with SMTP id 30-20020a170906209e00b00a0af9afc159mr3795403ejq.25.1700996198924;
        Sun, 26 Nov 2023 02:56:38 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id r21-20020a170906351500b00a0bd234566bsm1763175eja.143.2023.11.26.02.56.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Nov 2023 02:56:38 -0800 (PST)
Message-ID: <eef4e548-0b5f-4ae5-725e-1cf706322a14@gmail.com>
Date: Sun, 26 Nov 2023 11:56:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/3] drm/rockchip: inno_hdmi: Switch encoder hooks to
 atomic
To: hjc@rock-chips.com, heiko@sntech.de
Cc: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org
References: <2601b669-c570-f39d-8cf9-bff56c939912@gmail.com>
Content-Language: en-US
In-Reply-To: <2601b669-c570-f39d-8cf9-bff56c939912@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_025641_162605_7E6DBA5A 
X-CRM114-Status: GOOD (  13.25  )
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

The inno_hdmi encoder still uses the non atomic variants
of enable and disable. Convert to their atomic equivalents.
In atomic mode there is no need to save the adjusted mode,
so remove the mode_set function.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V1:
  Combined patches
  Include drm_atomic.h
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 46 ++++++++++++++--------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index cc48cbf85f31..535cca30c256 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -5,6 +5,13 @@
  *    Yakir Yang <ykk@rock-chips.com>
  */

+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_edid.h>
+#include <drm/drm_of.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_simple_kms_helper.h>
+
 #include <linux/irq.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
@@ -16,12 +23,6 @@
 #include <linux/mutex.h>
 #include <linux/platform_device.h>

-#include <drm/drm_atomic_helper.h>
-#include <drm/drm_edid.h>
-#include <drm/drm_of.h>
-#include <drm/drm_probe_helper.h>
-#include <drm/drm_simple_kms_helper.h>
-
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_vop.h"

@@ -62,7 +63,6 @@ struct inno_hdmi {
 	unsigned int tmds_rate;

 	struct hdmi_data_info	hdmi_data;
-	struct drm_display_mode previous_mode;
 };

 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -491,26 +491,27 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	return 0;
 }

-static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
-				       struct drm_display_mode *mode,
-				       struct drm_display_mode *adj_mode)
+static void inno_hdmi_encoder_enable(struct drm_encoder *encoder,
+				     struct drm_atomic_state *state)
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
+	struct drm_connector_state *conn_state;
+	struct drm_crtc_state *crtc_state;

-	inno_hdmi_setup(hdmi, adj_mode);
+	conn_state = drm_atomic_get_new_connector_state(state, &hdmi->connector);
+	if (WARN_ON(!conn_state))
+		return;

-	/* Store the display mode for plugin/DPMS poweron events */
-	drm_mode_copy(&hdmi->previous_mode, adj_mode);
-}
-
-static void inno_hdmi_encoder_enable(struct drm_encoder *encoder)
-{
-	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
+	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
+	if (WARN_ON(!crtc_state))
+		return;

+	inno_hdmi_setup(hdmi, &crtc_state->adjusted_mode);
 	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }

-static void inno_hdmi_encoder_disable(struct drm_encoder *encoder)
+static void inno_hdmi_encoder_disable(struct drm_encoder *encoder,
+				      struct drm_atomic_state *state)
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);

@@ -531,10 +532,9 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 }

 static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
-	.enable     = inno_hdmi_encoder_enable,
-	.disable    = inno_hdmi_encoder_disable,
-	.mode_set   = inno_hdmi_encoder_mode_set,
-	.atomic_check = inno_hdmi_encoder_atomic_check,
+	.atomic_check	= inno_hdmi_encoder_atomic_check,
+	.atomic_enable	= inno_hdmi_encoder_enable,
+	.atomic_disable	= inno_hdmi_encoder_disable,
 };

 static enum drm_connector_status
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
