Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BE83C25B7E
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Jun 2024 13:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwxjkOv2qBAe9EULhauaamtlZHgCEoeGNbD75bZnbFs=; b=TLHuoZ5W/igoZh
	4vHc2p5rCHIkSDyQ/4KQ6mdI+WugWlhamjRfFPhnyiwnRtmm/hkv7AdBPzQHdAjZSefr4/ZJ9qfwU
	dCCaKu2zBU8VXx5TTnsr9YLuUiXX3vUfkNTdYAGW84wj0Ki4BgQQTlXy75GZAbp/rZxCCuaAvmDoC
	Fv8qvNJyJG0VjPQ8ZsQyoYXGwrAcVN/KVEC0NnOc7AiCwqisrYdcmfKD+bceQM5uQEqLl7li7iMio
	csewjL8VpsF+QWk3El++8F846kaRqgPfgEZNTZFwEJNEa7kEUpM25d9EabQfcK1AqlDCQjbsEGvhH
	9EciM5UQ41sQb8pp4Oxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOYH-0000000Cee3-2YFL;
	Sat, 01 Jun 2024 13:13:41 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOXk-0000000Ce9T-1ysp;
	Sat, 01 Jun 2024 13:13:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717247587;
	bh=0XPNMqqFtOhoxjrDgj6/3VgASXxe/+nxRaHRw8jQO2Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=CcIMQRSyY1+Z92ftcrx1DteAUgwOPwlot84JpoOPX/eObZdYfStC0xX4VzqfB53xr
	 r+0ty4/5Fw1SKcNW/6WYGoAGRc7jh8Rme12L9IHJVFY+vT/UpoAVGdUs0/oBblNXtQ
	 KRiUteamltWxYkVn6xDg+DF5ndxcgY7v+Dh+SMnDIzd+LzHFvqCAtBC8Gds6CswbGv
	 4yTRffFSMfkQPeM7tPorG8R0anVEmck3TajYYctUBN8fSiIbHvaDu597h1eu36aAxK
	 yiqHd+U4Y7YZdD2LZwVoGXPLhBBL58hyeZixdKyIgiPDm72+gmxBJhdnyr7u7dIYG2
	 sIuEp4Nrj8HUw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DD74437821EF;
	Sat,  1 Jun 2024 13:13:06 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 01 Jun 2024 16:12:29 +0300
Subject: [PATCH 07/14] drm/bridge: dw-hdmi: Commonize
 dw_hdmi_connector_create()
MIME-Version: 1.0
Message-Id: <20240601-b4-rk3588-bridge-upstream-v1-7-f6203753232b@collabora.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>
X-Mailer: b4 0.14-dev-f7c49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240601_061308_789381_8958FFB8 
X-CRM114-Status: GOOD (  11.30  )
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

In preparation to add support for the HDMI 2.1 Quad-Pixel TX Controller
and minimize code duplication, export dw_hdmi_connector_create()
function, while adding a new parameter to allow using a different
drm_connector_funcs structure.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h | 2 ++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c        | 8 +++++---
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h
index 5fb65db4aaea..512fbaa1bb0c 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h
@@ -161,6 +161,8 @@ void dw_hdmi_prep_data(struct dw_hdmi *hdmi,
 
 enum drm_connector_status
 dw_hdmi_connector_detect(struct drm_connector *connector, bool force);
+int dw_hdmi_connector_create(struct dw_hdmi *hdmi,
+			     const struct drm_connector_funcs *funcs);
 
 int dw_hdmi_bridge_atomic_check(struct drm_bridge *bridge,
 				struct drm_bridge_state *bridge_state,
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index d124c781da20..95c9ccb809ec 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2469,7 +2469,8 @@ static const struct drm_connector_helper_funcs dw_hdmi_connector_helper_funcs =
 	.atomic_check = dw_hdmi_connector_atomic_check,
 };
 
-static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
+int dw_hdmi_connector_create(struct dw_hdmi *hdmi,
+			     const struct drm_connector_funcs *funcs)
 {
 	struct drm_connector *connector = &hdmi->connector;
 	struct cec_connector_info conn_info;
@@ -2487,7 +2488,7 @@ static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
 	drm_connector_helper_add(connector, &dw_hdmi_connector_helper_funcs);
 
 	drm_connector_init_with_ddc(hdmi->bridge.dev, connector,
-				    &dw_hdmi_connector_funcs,
+				    funcs ? funcs : &dw_hdmi_connector_funcs,
 				    DRM_MODE_CONNECTOR_HDMIA,
 				    hdmi->ddc);
 
@@ -2516,6 +2517,7 @@ static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(dw_hdmi_connector_create);
 
 /* -----------------------------------------------------------------------------
  * DRM Bridge Operations
@@ -2804,7 +2806,7 @@ static int dw_hdmi_bridge_attach(struct drm_bridge *bridge,
 		return drm_bridge_attach(bridge->encoder, hdmi->next_bridge,
 					 bridge, flags);
 
-	return dw_hdmi_connector_create(hdmi);
+	return dw_hdmi_connector_create(hdmi, NULL);
 }
 
 void dw_hdmi_bridge_detach(struct drm_bridge *bridge)

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
