Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB46ED46942
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 14:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiDeByvDu47u4iFDgesg0NkkcYrsMXtuWYGcUydKbWU=; b=JHGOfEzAprt/Zi
	3y+qbv3c5t9YVHsPPXflpccdbQHp8fLq22F3ql3LT+GhGXS+1KcdZj0GmmV+eh5NBHwgooX9aZnKj
	m5zQip5gzot/E6YGXLN5BDvvPW3+2aQSeGhgFDVzy6eHC3EoiGgyZi+Z9qbyzU+rWSzTZhGROwgK8
	Cp6nwmF+/O3pGahO8LR9GccroevJmnfHqsUBHLRaQXI68nam551EK7YX4JNNpOWbEd6W54oMgfW/q
	PyGYCx5SGmtPetuxiOwAalQO5UK9KI3SV9RB9DJMUeSfe9RYj8k7vExaKWV3PUfqgJ/FcMJZub9za
	LBe2uFTq7psSZmXpm87A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZVN-00000005ec4-02uB;
	Wed, 21 Jan 2026 14:48:21 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZVC-00000005eRe-3ndR;
	Wed, 21 Jan 2026 14:48:18 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1769006860; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=DMcppBYTEal6z6p74y9azsmjarPoZ/wMomcwYBtOiywdUYFadSkKWL8ePsJWQEVZHkF+j3Jcm+OZLgrPBlE8nPJGm9TKTlEcQfXabj7QA+6hOjOCuk4fCHf6NcNouwVd7DbUqYOd2+7mNbvO0xzryryW6kcN98YdOktok2sl5Yc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769006860; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=cdUqUpe97esMbmQWL5CUCIlnIe/t/D++UVbFpi5dJZc=; 
	b=CT7n11V6zIsES9FsX4W2JVH1/7nU7XpSWc7SVfekV/j5wzLWgHrvsnFYHU3ZLE1qnK+G73e43NwE98kQaOkgxYO8lr5KA9sJOlTIRr4kpnk0TZn9tPhKjOESO4JVvw5TXLA519RPysGESCzQTMH674qJCbgyvKXp5aCjBrhSUB8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769006860;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=cdUqUpe97esMbmQWL5CUCIlnIe/t/D++UVbFpi5dJZc=;
	b=RTySTPwoY/YvgT7BivHztjhX6NHCtxBhM4kC59FzbbckQL3/5XFjDDDlUpuuVmbr
	pXdDPj30Oh6OgldYPcWuKR9cpMdXn6vEwels2qewApeo/c653aHw7YNVl9Yytv+Oord
	aA8z3VS0Pg2BltEYcZb8++B7m1S7qYvtcUu+tEqw=
Received: by mx.zohomail.com with SMTPS id 17690068591681000.5781346933774;
	Wed, 21 Jan 2026 06:47:39 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Wed, 21 Jan 2026 15:45:23 +0100
Subject: [PATCH v7 16/22] drm/rockchip: dw_hdmi_qp: Set supported_formats
 platdata
MIME-Version: 1.0
Message-Id: <20260121-color-format-v7-16-ef790dae780c@collabora.com>
References: <20260121-color-format-v7-0-ef790dae780c@collabora.com>
In-Reply-To: <20260121-color-format-v7-0-ef790dae780c@collabora.com>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <siqueira@igalia.com>, 
 Alex Deucher <alexander.deucher@amd.com>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_064810_997235_1A058280 
X-CRM114-Status: GOOD (  11.38  )
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

With the introduction of the supported_formats member in the
dw-hdmi-qp platform data struct, drivers that have access to this
information should now set it.

Set it in the rockchip dw_hdmi_qp glue driver.

This allows this information to be passed down to the dw-hdmi-qp core,
which sets it in the bridge it creates, and consequently will allow the
common HDMI bridge code to act on it.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index d39a4284b92c..1608b494b757 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -601,6 +601,10 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 	plat_data.phy_data = hdmi;
 	plat_data.max_bpc = 10;
 
+	plat_data.supported_formats = BIT(HDMI_COLORSPACE_RGB) |
+				      BIT(HDMI_COLORSPACE_YUV444) |
+				      BIT(HDMI_COLORSPACE_YUV422);
+
 	encoder = &hdmi->encoder.encoder;
 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
 

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
