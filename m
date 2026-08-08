Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EA25C5AD4E
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Aug 2026 09:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rciOLkrFy8/l4KAtLG5x8WGr9Tf2fngO3L6YHpL/OZs=; b=vD3CI5O481Z6dn
	pTBfASaCvJWqftjeXmCrxS0f9tDJEIIxqRxC44kfhdRK7LAGoBNzjQCZuhQ+twkj9v1Qn13rFYN8B
	saWG3Bs3dBJZAkx+Nlp1ENhoK1hmrfEZa4Cmi2DxoGUUQrabTLL0JSCwwMame34XKf5JyFg30APpJ
	VqmlnLQ/14nXUzQUBEMnof+lb0lB/Dw179TxnBS0ytTirjdib1rAOSHi84dGybdvyvXUSljKYFCil
	G4XzE/ajBJZ6uWqpMn3zmJSvCYJbhsokyj7+ZiQ5rpa8JcrOykCKlZU2/x+bGyLla3SeuN4k8VhhP
	TjXqhQ5oARZwRlrb574Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdow-00000009F2I-0ThR;
	Sat, 08 Aug 2026 09:58:26 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdos-00000009Eyt-42W0
	for linux-rockchip@lists.infradead.org;
	Sat, 08 Aug 2026 09:58:24 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-49967f24eedso6485e9.0
        for <linux-rockchip@lists.infradead.org>; Sat, 08 Aug 2026 02:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786183101; x=1786787901; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=g22IUbt8ZLLCFwaMoIL3xYIHr/pNgXlbdNwWp0/GjnE=;
        b=T9aEtzZaXgyy9fmcHYeaDVK3SfN8PiM/FhtflOlkLaZzpYe337VmqmQ1AmL0ACsjn2
         Epb+mnn+s4nr/dxWpEE9n4SuW5TDZPL1SCIUirj7FngGqXIurOyStgrSoNlnFH/kVDED
         vOF4DHppNYqd/SD9s3/6iPmINN/MQsh0wkJCIX2iDv5o0YyZQNDOxogfbpiePWQQi8RH
         tjtP3Vb5nlz5nNEYUidwdfAylcqdV6przuotsOsvpNb6MgLAjBw7wAiQ+edP5oe+ZBSO
         5KT7Wo63OHdx2l7Eif1Mcon+oMZQg/Wig8OqnCEB1MCrnWsJyBCHJYHLc6yU2Lq4rtb9
         kFoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786183101; x=1786787901;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=g22IUbt8ZLLCFwaMoIL3xYIHr/pNgXlbdNwWp0/GjnE=;
        b=c3BWx2PiI3uchyx7Qf1Ggy2fMtiJqZAsD3i65+XlIX46SOMtGIcVdLXzHbUlxab9qt
         F5k+NYYVIe70rBQ7Lj+xJn6FSTqr/1qz4SQvVGKlHQ2uepMugIsL1ZXbJo17mteEf+pz
         3TJ88KAtGbnwHv3GV4Lah+idKSQLTERsvfsT615unYy0GHiw5YFjoIGDjty2AyhtsrCg
         1e23so7U99qy2QqSShgUp27rvr5bZgbeW1Kj5XgRv6S6Jwbz29RG0fdczZAk5XgdMoOr
         J5WKG2wDHojXRtzp+YVCHFd1YrXs3+MrrHajxU4AvnKNEO1aqF7wlqwbQP6XTkVBC7X3
         O29Q==
X-Forwarded-Encrypted: i=1; AHgh+RqSEGqg4sw8+iR0kwZWE0DKXzrejK32vlr5Uy+5oIX6vWtSu3SFYBDqPvUxn/LrZIkjGUPrnPdOtImANqJLaA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwoA2lTYgMU6k7XElQCe/Mtx5Ekshiwf0RBUr4Qvl0j7M1CvKTg
	q6q3NWw6elitMMHhQ8jft1RRbX4CprHUax+Pp4PRv1787OZ22W0WvOQd
X-Gm-Gg: AR+sD12SJNVVmS9NHhruqf23AmC4GFIvCouEs946NwUdlxK3+ulW6R7yDvMkzpdY7gH
	27eul/hsC/hTVrsMCjY3FmxafDAauTPuUTzF+VO8DdOUJ9Y+v6OpuR8AvSX2KF+fSGa9YV62nvR
	+3uiiTPP/zE2ur1rg4prYu0d09TQuP7jCqpzRFdaOpI6N962ahM5KSKYD9bjrd0ffuaesQBncBw
	zkvUdnPxIfR/aFsRWl5RUhy8IJTQIOZ6gyKHtdYbR0gVOV7+OnsngW2jV3n7854MqUCejkE1CCo
	EcX+hBm0dhunZX/BzRH7zFUPypwmkUVBQ1u/Hk90XLNeEbziGkD2RzhmLYr41wri5+/kcQhVsrZ
	rJuV/vt08ehpOE0NFFjLaCRJcQcC1vSxKkPIo7XBFifk5vbb3kAxdvzQn/Ae2vvd5WJP0Q/grTD
	yKtiWNTSNs/dHz/FnNopWskmnsxdJXftRdAPKfuDClFAsKSNOnpl7USNANw0kIsci7ZY7bzEkEd
	IOV/cd2oYk1FfjV70v26CSpaYbnOo+7nHMVSqhUdco+apAYiMjHKLSVwtunbkLPhwFB7Q==
X-Received: by 2002:a05:600c:4514:b0:493:f42e:1b3f with SMTP id 5b1f17b1804b1-4994e7c7360mr190359775e9.3.1786183101054;
        Sat, 08 Aug 2026 02:58:21 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8E20009911270F4BEC2300.dsl.pool.telekom.hu. [2001:4c4e:1b8e:2000:9911:270f:4bec:2300])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-480020be8f3sm13255725f8f.0.2026.08.08.02.58.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 02:58:20 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 2/5] drm/display: bridge-connector: Preserve max bpc across connector reset
Date: Sat,  8 Aug 2026 11:57:21 +0200
Message-ID: <20260808095749.9428-3-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260808095749.9428-1-royalnet026@gmail.com>
References: <20260808095749.9428-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_025823_046839_264BB8D7 
X-CRM114-Status: GOOD (  19.00  )
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, Imre Deak <imre.deak@intel.com>, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Igor Paunovic <royalnet026@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, intel-gfx@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

drm_connector_attach_max_bpc_property() initializes max_requested_bpc
and max_bpc in the connector state, but nothing restores them when the
connector state is later thrown away and re-created:
drm_bridge_connector_create_state() returns a zeroed state for
non-HDMI bridge connectors, and drm_mode_config_reset() installs such
a fresh state on every connector that implements
&drm_connector_funcs.atomic_create_state instead of a .reset hook.

This matters because drivers can attach the property before
drm_mode_config_reset() runs. Rockchip, for example, binds its
component drivers (which create connectors and attach properties)
before calling drm_mode_config_reset(). After that reset,
max_requested_bpc is 0, so drm_atomic_connector_check() computes
max_bpc = min(info->bpc ?: 8, 0) = 0. Any driver that filters output
formats on conn_state->max_bpc then rejects every format, and clients
that never set the "max bpc" property - fbcon in particular - end up
with a black screen. meson already attaches the property on a
drm_bridge_connector before drm_mode_config_reset() and so already
boots with max_requested_bpc = 0 today. dw-hdmi's format negotiation
does consume the value there, but meson attaches the property with a
maximum of 8 and the 8-bit fallback formats are not gated on it, so
negotiation yields the same result for 0 and 8 - the change is a
no-op for meson.

HDMI bridge connectors are immune: drm_bridge_connector_create_state()
calls __drm_atomic_helper_connector_hdmi_state_init(), which
initializes both fields from connector->max_bpc. amdgpu likewise
re-initializes max_requested_bpc in its own .reset implementation.
Non-HDMI bridge connectors have no equivalent.

Mirror the HDMI helper on the non-HDMI path: record the upper attach
limit in connector->max_bpc (drmm_connector_hdmi_init() already stores
the same value there) and restore max_requested_bpc and max_bpc from
it in drm_bridge_connector_create_state() whenever the "max bpc"
property is attached. Connectors without the property behave exactly
as before.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
 drivers/gpu/drm/display/drm_bridge_connector.c | 6 +++++-
 drivers/gpu/drm/drm_connector.c                | 5 +++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index 632cc3ae3b54..d33c4fc42fbf 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -282,9 +282,13 @@ drm_bridge_connector_create_state(struct drm_connector *connector)
 	if (IS_ERR(conn_state))
 		return conn_state;
 
-	if (bridge_connector->bridge_hdmi)
+	if (bridge_connector->bridge_hdmi) {
 		__drm_atomic_helper_connector_hdmi_state_init(connector,
 							      conn_state);
+	} else if (connector->max_bpc_property) {
+		conn_state->max_requested_bpc = connector->max_bpc;
+		conn_state->max_bpc = connector->max_bpc;
+	}
 
 	return conn_state;
 }
diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 8b4baed060f3..0400a6a92e2b 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -2866,6 +2866,10 @@ EXPORT_SYMBOL(drm_connector_set_link_status_property);
  * @max: The maximum bit depth supported by the connector.
  *
  * This is used to add support for limiting the bit depth on a connector.
+ * @max is also recorded in &drm_connector.max_bpc, so that
+ * &drm_connector_funcs.atomic_create_state and &drm_connector_funcs.reset
+ * implementations can restore the property default when re-creating the
+ * connector state.
  *
  * Returns:
  * Zero on success, negative errno on failure.
@@ -2888,6 +2892,7 @@ int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 	drm_object_attach_property(&connector->base, prop, max);
 	connector->state->max_requested_bpc = max;
 	connector->state->max_bpc = max;
+	connector->max_bpc = max;
 
 	return 0;
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
