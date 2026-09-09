Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5CCEC79FBF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 17:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3e+o0IF3TXJ3A1wkmgdyN3FCEbbYXYfJJHDzKRAGcpo=; b=j6CNDuGV6e1We1
	IJrHCBYe1Xat7lQg+ZOav+/X0EQCfWqGxFLFCfMeIZBr9Exz9DbDqdXfmAWSFE/O91O3gWjKlnoir
	yxRn9n6A91BNFvjwlOXyFA0QieCwS82mhUAw+zowtVHNzDAS2jQe+dcMLW3t/WVsZLkfRrKwkDCKX
	EjNHm7XYCXXKLdpAUKBfZidJYVbJkLUEkPSbJT51ooadaxck0BRr21EN8HLJwCLmDJS5OK19EkS+n
	vvdmy4ydUyCuw/1PMihrDROStRMXiQ9grUyIW/dGlOQTtbyT4gEGjUNbCbQM5zYvOlwQpDUGKFWrq
	tUz22McvF0NF5hVosNug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4MDd-0000000CVWo-22rj;
	Wed, 09 Sep 2026 17:36:21 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4MDY-0000000CVQW-1A1W
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 17:36:18 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-48435bcf9d9so580361f8f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 10:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788975375; x=1789580175; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EqyOJwWDc9siUyUIf9HLEiRZ/UBmYkZ2bG5NW9K2GYU=;
        b=CGd0UBrnJV9Or0UH/W44ts/yFKQXWWs4R8u630TJRHUUUamqZ5X9HevJIUpKmy5VWf
         n6uPC5qUhNld0q/QQXSbF1tuAI48VqJH8GIvTP3og40Ajjh+Y5OZTra5K43YG4V32ORs
         kB3+iH///PT6DxiIrEnqbSHIPf+S9NPTBPUqV/SMFOngLDn09rfVD5zNVOhmsc7nti2b
         mZxogqHYBNe+gAGqYlm0nB33a7i1rbcgJbRRHrZBHYgTt+itJoZqQHjZqRxtkUbLD9l1
         o/zEeNMethdw/LfgfLan37T+Y9MlSTlc3Bg8NSLJN6El0Ny2feBdK13PXJPD7USWlIpf
         0n1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788975375; x=1789580175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=EqyOJwWDc9siUyUIf9HLEiRZ/UBmYkZ2bG5NW9K2GYU=;
        b=MaehHn8OhJ2vLqlhaN74Sj75yDLXYY5qAn7o74aURfw+1OPWa4ucILWeqKIalN4AyS
         Xz9fTbcbYcwC5Pp1ll1Y4diLhz2KTV+knD4fnTLg3CdVVFZUZ4MJ9+0zqBx4ajxs3Htj
         +2mHqmvNdByqOxykXQaBjC+UiPe9fadqurkrGjE4DWklKV2PXtkMQnsGn1FdKjdZI+W3
         mNFPuNNG6TXVowotwFybjUmeYiPV2Gjh6sA1UtwO1118717zYvIety7CtMUcDn3Kgh5E
         hxrbjWe7mxAqT9ZPdZxw8x3htS9De5EHndMv38y/w3TUvhF+PA4nrpTchfuYvzHuHi5p
         3D1g==
X-Forwarded-Encrypted: i=1; AKwUvBx8Mrd8hiS19OgK/mVOcrKZq+Xtz320XLLnCzf9AzG0YTUlMXT9Ma+7vkTOsFGMsIOdyAnevesS/6nkHwh4sw==@lists.infradead.org
X-Gm-Message-State: AFuF++lDZUTH/W1APnevp9ytb1/GawxkkFTjuGVoLTRS6/3LLCXBqbOS
	p1XRH+s/5pnOj9xH/IVEBMDf3ol5NRf0PFlyfCmkDiGz9+TNzLgWkfq7
X-Gm-Gg: AYBFou0irk0HlgZPrfnw/3xBZ/UVOhduywb7WBi4Xa6f0rDSahDcaeELCz5rYFg+8Cs
	5g3YSuAUX3moGCtCSx5KeQIdLUoTdoiCzXIi+z9kWgF0QoZyE7Y/Ks1NyjsKEKNKtnoDlcawifW
	diJti35LybsFdJ29OUlbiX5jkUlxv7LJ6sXveaX859aY3UrUDJDq+oOQ4Y0h1s8ysywKLwHKCr1
	RswFbKhi7GVLfqc9TkzkRugqOysZWWLbyHwSgCz/r5kI1TU1DU1Z8LRm7Y6zVrk7r3h5Rxgikb8
	6y0IvIyL3diViX58OWPZEGMyet+Tn1SdsbYU3NaYp4sAUoePmUkgJv0umPL2AbLTN/U0GiRK4YO
	foq1/7OBq5C3kPOKjKTMGvyzjiBlrqKgjNEGVElZYoXJINvymfD7fh/GAn/u2cFu5oRz1f1YPdo
	AlvIDb2ivRySToS17xpjQA18KCwyxXvsEe7hzdqhNVFZ32rC4p12bUztb0bZ5GNOq37+1K4tDPf
	AEkuVT4XN9jrO3LTzy37cBCkzeE8hdnLdlmGCHde3MPfEIQM3w+97/Kr4sOgEjaoxQqiHBSUUg8
	OA==
X-Received: by 2002:a05:600c:620f:b0:49c:eac2:ddad with SMTP id 5b1f17b1804b1-49d2570acaemr24678895e9.1.1788975374390;
        Wed, 09 Sep 2026 10:36:14 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B836900B0110705BF092680.dsl.pool.telekom.hu. [2001:4c4e:1b83:6900:b011:705:bf09:2680])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d26c06f04sm6876575e9.13.2026.09.09.10.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 10:36:14 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 3/3] drm/rockchip: dw_dp: Attach "max bpc" connector property
Date: Wed,  9 Sep 2026 19:35:40 +0200
Message-ID: <20260909173542.14030-4-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260909163206.36409-1-royalnet026@gmail.com>
References: <20260909163206.36409-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_103616_336157_B0B94A8D 
X-CRM114-Status: GOOD (  16.37  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Imre Deak <imre.deak@intel.com>, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, Ville Syrjala <ville.syrjala@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Jonas Karlman <jonas@kwiboo.se>, intel-gfx@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, Igor Paunovic <royalnet026@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The dw-dp bridge already filters candidate output formats on
conn_state->max_bpc in dw_dp_bridge_atomic_get_output_bus_fmts() and
validates the result against the link bandwidth, but the connector
never exposes the "max bpc" property, so userspace cannot limit the
bit depth. Attach the property with a range of 6 to 10, matching
dw_dp_output_formats[]: the smallest entry is 6 bpc RGB and the
deepest entries are 10 bpc.

drm_connector_attach_max_bpc_property() initializes
connector->state->max_requested_bpc and therefore requires the
connector to have a state. Rockchip binds its components before
drm_mode_config_reset() runs, so the freshly created bridge connector
does not have one yet - create the connector state before attaching
the property, exactly like drmm_connector_hdmi_init() does for HDMI
bridge connectors. The later drm_mode_config_reset() then re-creates
the connector state, and the preceding patch makes
drm_bridge_connector_create_state() restore max_requested_bpc from
connector->max_bpc, so clients that never set the property (fbcon in
particular) keep the full range instead of ending up with 0.

With the property attached, compositors such as KWin write "max bpc"
on every atomic modeset; any in-range value is handled by the existing
format filter and bandwidth checks.

Assisted-by: LLM checkpatch
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index b23efb153c9e6..8ff27353b1417 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -112,6 +112,32 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
 				     "Failed to init bridge connector\n");
 	}
 
+	/*
+	 * The components are bound before drm_mode_config_reset() runs, so
+	 * the connector has no state yet, but
+	 * drm_connector_attach_max_bpc_property() requires one. Create the
+	 * connector state first, like drmm_connector_hdmi_init() does.
+	 */
+	if (connector->funcs->atomic_create_state) {
+		struct drm_connector_state *state;
+
+		state = connector->funcs->atomic_create_state(connector);
+		if (IS_ERR(state)) {
+			dw_dp_unbind(dp->base);
+			return PTR_ERR(state);
+		}
+
+		connector->state = state;
+	} else if (connector->funcs->reset) {
+		connector->funcs->reset(connector);
+	}
+
+	ret = drm_connector_attach_max_bpc_property(connector, 6, 10);
+	if (ret) {
+		dw_dp_unbind(dp->base);
+		return ret;
+	}
+
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
