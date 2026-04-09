Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD03DF31E45
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Apr 2026 15:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IAozXv58+vXQZYH1F0k3ABpfnOnz0f2AL01zG9nPwqI=; b=PHSDYvJ5ENCZ5d
	m1hjkhPEc6d3gO0AmEjFr6Pvzve1MVtPgOMJA3eS5TvO7VPZwH/xzX7FdNzYKsQYpawPhdVWOKPEw
	p/XGn2/ZWtkNcJS2toGo+H4vn11yks+dQcduAeJHZ2o6yV0NCsIb1Frx2tjeQLYUiD8WrPiOLDaMe
	KS+PNiMPGSdOFXFSiSofMIPvRAI7mck1AlIAopG+0Q6VxDT88WWUwe48kHacfaa+wmb3t8U8ORn6i
	qZZxkciBo42GSLtVLYL/tmjOBUvCcUNQNKILpYuN0jjcH9pp+7JDEwMpEpvrZ8yiDd1WkQ/ZX3f1m
	YLj4I7KUAenhLU+oQKtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wArcx-0000000ArX2-20bF;
	Thu, 09 Apr 2026 15:49:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wArcv-0000000ArUm-2G3K;
	Thu, 09 Apr 2026 15:49:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=LBk/DR4fSC6qCd6jwGfcqZk47KlihYhACpKua31EgFU=; b=Tyy3baGg+F3pLHZrH2GjHGHyTH
	Km0mvF6ILxZVlg5ngGELNV4j0vDBnYZkAK3uj/CIC90pak6NjynEeHOnrgJClfOdGzEHdx8Y9ec36
	/j0E1WveYACHutnfAJAB+svC+lCEBxQQxv33AdNqfa4IRpcpF0FkknJs3xUErgFQdS7drDDHpRvMp
	D+nBTdgKyk7PGR5dLhN6JuwVGY2tXym4tlFJtGWTJB024xyjN0FtESQESyqkA7G71uSDZGvCzx9Al
	rV6OwN1rcRaotD+9zAett6M1I/L9CqY0oxZQ85Nf3lS2AfL+NLAXdHxW9OGpZM/skJL71h61Ze8w7
	h/EihLVQ==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wArcs-0000000C2Up-0dgy;
	Thu, 09 Apr 2026 15:49:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1775749708; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=HZ7UC2u8ytn5vUFVNHy7j4Ta5t5PJzFVU3rLMYP4yOfUNB4iuMO6tu9gO/0h0Acm9nZnQG9iF/oRLK5c/NaNmOvrBx2e5jR3PUgjxSDa6yTq82Q9fbsNT2iGYoore6x/kwklmluGq/G51DcT7mO114IX8kyJ1N3EPyk+C/k7mjA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1775749708; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=LBk/DR4fSC6qCd6jwGfcqZk47KlihYhACpKua31EgFU=; 
	b=fvPOCFnU/F9WAJqEYLJPA82LwQxpPBRXKkxyWMkg+X0WJFSS8x54sCatwZN0ArciAi9oJdObA/rAIqw3d1VFy7C2K4hvfeufaD4xYZPnfpzEu4nUg1lXDCE5A6WcEB2Aros/yN0V6w4wWTI7cKh420JfdPFjoZyyxSRmwybzltA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1775749708;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=LBk/DR4fSC6qCd6jwGfcqZk47KlihYhACpKua31EgFU=;
	b=b6cQ1MND96Mc353Vuuj0Piw9j25Xrqos6zBnKKLH4dHbqwI634+U/aik3J1N2TIF
	/7LUlD2cayug2M4zZqA004DZ80DWBsqxXCsLoZxb9DmxKv2U96vkY8wzLEccVyEdomB
	y6eNxWkAilr+Vl9nPtsk6VgRL+7z2x4jZKwyxfEc=
Received: by mx.zohomail.com with SMTPS id 1775749706968386.2922289978144;
	Thu, 9 Apr 2026 08:48:26 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 09 Apr 2026 17:45:15 +0200
Subject: [PATCH v12 25/25] drm/connector: Update docs of "colorspace" for
 color format prop
MIME-Version: 1.0
Message-Id: <20260409-color-format-v12-25-ce84e1817a27@collabora.com>
References: <20260409-color-format-v12-0-ce84e1817a27@collabora.com>
In-Reply-To: <20260409-color-format-v12-0-ce84e1817a27@collabora.com>
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
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_164902_655127_F9E53446 
X-CRM114-Status: GOOD (  12.48  )
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

The colorspace property's documentation states that BT2020_RGB and
BT2020_YCC are equivalent, and the output format depends on the driver.

Now that there is a "color format" property that userspace can use to
explicitly set a format, update the colorspace docs to mention this.

The behaviour here is not changed for userspace that doesn't know about
the color format property yet, as the color format property defaults to
"AUTO", where the choice of output format is left up to drivers.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/drm_connector.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 0da136a93dd6..71c58fa15aa0 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -2573,7 +2573,8 @@ EXPORT_SYMBOL(drm_mode_create_aspect_ratio_property);
  *		conversion matrix and convert to the appropriate quantization
  *		range.
  *		The variants BT2020_RGB and BT2020_YCC are equivalent and the
- *		driver chooses between RGB and YCbCr on its own.
+ *		driver chooses between RGB and YCbCr based on the color format
+ *		property.
  *
  *	SMPTE_170M_YCC:
  *	BT709_YCC:

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
