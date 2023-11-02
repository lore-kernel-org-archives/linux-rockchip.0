Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A061C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Nov 2023 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HlSBm/4hFFYPo6NOK2v7lGEeHOI+Nj7OJ8FXdufIbgg=; b=A2wF5uTk0/0Zye
	zMG3flAA4+437vB7D0LoSakQjRzm4T6vAap7kp6iuyuQoTTYLuy8a7LT4xvEjy+8mOXguDKHkRW9Z
	VaFvV2ciO9KfUeX2fH0dcUnUjUr4dHAOKkUZ2Zq8DsK9WhX5FaimOIW9SQNUIIvK976U9qg3klJOz
	P6HjR+sUbufEyIPKqp0XEbI6H4s/6tAgECNmXeLlLtkBzHG5amX4vamNo4ein4sgpIxDC+6TN/E5S
	sAi7j3ohNUZnJPCn+7lEaxglNOsICmrOwOn/V4LKJtKnpU4AIABdW5/cHqMSY6zlfTwvQS+dl6pot
	CaqGA8Gj91tkuIV1gFVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyXxc-009YST-2C;
	Thu, 02 Nov 2023 13:42:12 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyXxZ-009YQr-1M;
	Thu, 02 Nov 2023 13:42:10 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-53e2dc8fa02so1558630a12.2;
        Thu, 02 Nov 2023 06:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698932526; x=1699537326; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lK/vWnmM0KVaM6vCg3VvvClqSJH14OWzepShm2ndJ8I=;
        b=c+f2Q5kBUzN+BSJ18IDlgFn3+5iWS6bnuz5Zv82ra/EUGDvaYs/N2qMOUFYto5FFYa
         6pGLDuzpEJSBdIJEVUUaYjktlx91c5hpcz9vBAf4BFoadxyWBs6LLVHaCJkIsLz4JgAp
         FYNSrte5Hpn/BbYwAj3UkTUAd0RwZaRyJ4Hd6204avAVRUMAe62hfJI9vKiTcTXOTaUK
         2ntm/r0fkg7gik9ih9nK4dcCdLx7TE62kfA0aUplbl7zMGEsfcNVFJ0RRq5GtiYRgwXh
         QL02gduU/2eAXmZmOvh7ZQ5/YsuU+UB7s8mfw35covbmltYqD/25DOGtdb05UwMeYV/G
         pNLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698932526; x=1699537326;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lK/vWnmM0KVaM6vCg3VvvClqSJH14OWzepShm2ndJ8I=;
        b=imOSD5P1SczqlPe456H3ZLZJM88z0PL05XOvVtrmsCZfcGWXe2MJdWMzOLowyhqIZx
         ySRuLCPhO7uSnSYyoYUb4P3bpmW2vXodBVro3SqgMrPGzmH0sCEtlQ3bOEwutHZ1JV00
         8dq+K1bzwRAe0pBO0yRT/jsvXCaSMeancXh+4GfC/98mn0YLv88NgX6qei/NTXXtc+EV
         NL+gG2hz6qED7uJzODVDWrc2bG4spMYgTLL6LqWKU0KkIIXqx3oTDAGx69E+dOQrSNua
         ScxSQ8BdAjgj0mUBpJJ9FPub+KXWTWgePshD9S4YOEuI83bRp7Ydjq2Dm5J8t1ZnlaSe
         Jmmg==
X-Gm-Message-State: AOJu0YyoPgqlfygg9ohCc8KAdxNsj+8wJ9VVlsWCOr63uZ+KHhomnwuz
	RLJC2q26cmNp/ytoXTGG01E=
X-Google-Smtp-Source: AGHT+IGV7tL5vnuqy+ywj5JlmDgSzOHEisn1VYUrvxqfFveF+L1CIsGQpPMLlZCZMZDql2U/Dza06A==
X-Received: by 2002:a50:9544:0:b0:543:595a:8280 with SMTP id v4-20020a509544000000b00543595a8280mr7749934eda.37.1698932526017;
        Thu, 02 Nov 2023 06:42:06 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id q32-20020a05640224a000b0054130b1bc77sm2347915eda.51.2023.11.02.06.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 06:42:05 -0700 (PDT)
Message-ID: <034c3446-d619-f4c3-3aaa-ab51dc19d07f@gmail.com>
Date: Thu, 2 Nov 2023 14:42:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/4] drm/rockchip: rk3066_hdmi: Switch encoder hooks to
 atomic
To: hjc@rock-chips.com, heiko@sntech.de
Cc: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
Content-Language: en-US
In-Reply-To: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231102_064209_463670_AF81BC9D 
X-CRM114-Status: GOOD (  13.62  )
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

The rk3066_hdmi encoder still uses the non atomic variants
of enable and disable. Convert to their atomic equivalents.
In atomic mode there is no need to save the adjusted mode,
so remove the mode_set function.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 35 +++++++++++++-------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index 5c269081c691..0e7aae341960 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -55,7 +55,6 @@ struct rk3066_hdmi {
 	unsigned int tmdsclk;

 	struct hdmi_data_info hdmi_data;
-	struct drm_display_mode previous_mode;
 };

 static struct rk3066_hdmi *encoder_to_rk3066_hdmi(struct drm_encoder *encoder)
@@ -387,21 +386,21 @@ static int rk3066_hdmi_setup(struct rk3066_hdmi *hdmi,
 	return 0;
 }

-static void
-rk3066_hdmi_encoder_mode_set(struct drm_encoder *encoder,
-			     struct drm_display_mode *mode,
-			     struct drm_display_mode *adj_mode)
+static void rk3066_hdmi_encoder_enable(struct drm_encoder *encoder,
+				       struct drm_atomic_state *state)
 {
 	struct rk3066_hdmi *hdmi = encoder_to_rk3066_hdmi(encoder);
+	struct drm_connector_state *conn_state;
+	struct drm_crtc_state *crtc_state;
+	int mux, val;

-	/* Store the display mode for plugin/DPMS poweron events. */
-	drm_mode_copy(&hdmi->previous_mode, adj_mode);
-}
+	conn_state = drm_atomic_get_new_connector_state(state, &hdmi->connector);
+	if (WARN_ON(!conn_state))
+		return;

-static void rk3066_hdmi_encoder_enable(struct drm_encoder *encoder)
-{
-	struct rk3066_hdmi *hdmi = encoder_to_rk3066_hdmi(encoder);
-	int mux, val;
+	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
+	if (WARN_ON(!crtc_state))
+		return;

 	mux = drm_of_encoder_active_endpoint_id(hdmi->dev->of_node, encoder);
 	if (mux)
@@ -414,10 +413,11 @@ static void rk3066_hdmi_encoder_enable(struct drm_encoder *encoder)
 	DRM_DEV_DEBUG(hdmi->dev, "hdmi encoder enable select: vop%s\n",
 		      (mux) ? "1" : "0");

-	rk3066_hdmi_setup(hdmi, &hdmi->previous_mode);
+	rk3066_hdmi_setup(hdmi, &crtc_state->adjusted_mode);
 }

-static void rk3066_hdmi_encoder_disable(struct drm_encoder *encoder)
+static void rk3066_hdmi_encoder_disable(struct drm_encoder *encoder,
+					struct drm_atomic_state *state)
 {
 	struct rk3066_hdmi *hdmi = encoder_to_rk3066_hdmi(encoder);

@@ -449,10 +449,9 @@ rk3066_hdmi_encoder_atomic_check(struct drm_encoder *encoder,

 static const
 struct drm_encoder_helper_funcs rk3066_hdmi_encoder_helper_funcs = {
-	.enable       = rk3066_hdmi_encoder_enable,
-	.disable      = rk3066_hdmi_encoder_disable,
-	.mode_set     = rk3066_hdmi_encoder_mode_set,
-	.atomic_check = rk3066_hdmi_encoder_atomic_check,
+	.atomic_check   = rk3066_hdmi_encoder_atomic_check,
+	.atomic_enable  = rk3066_hdmi_encoder_enable,
+	.atomic_disable = rk3066_hdmi_encoder_disable,
 };

 static enum drm_connector_status
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
