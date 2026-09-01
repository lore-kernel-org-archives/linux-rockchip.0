Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E3D8C624D6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 18:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dz2nwGS8TQ3tJAbVTWCmfKr3LSEGOlusvUWUaFOP2E4=; b=YPTWgrPKPage+d
	Yw4TYrVNE6faxdkZ7N0lv3izQDzihEOZ/vyd3MsifKLLZ1zTi3q+N97scwpcDmfGwQNHklRMcsQSQ
	YphcETEB2MQ7+fj/8pIRGuJtIsFTzsLAtzhXZRBMPxRK+epgCNIYzi//7iQWxq9juCmbvPKPTM/ww
	PbSFRluK5sKOprfUUpfKzM/EziOwM2PdweAMuLtNoaMRJRcn0mRdwx5I0Dw6byFh0LNVdUoilwzHY
	VJiaZJHIg5wnv+oQ+/7JVaWhK/NBRsSoJhFA4iu1z0nIz8uBB/ZadxbgORpr8gSAT8/i8w1gX3CBT
	Ppa+hQbYlrPbGpFV7RsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Tbu-0000000D5LG-2VRU;
	Tue, 01 Sep 2026 18:53:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZq-0000000D1Lw-40H1;
	Tue, 01 Sep 2026 18:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=FKdIL71OW8377COSueQQB9UY5Qo71kH7cDT61xcV7v0=; b=pFoszfrCKGEKhJc+lQEZO+3Kry
	wY4hVoQ9fyZ+o1llP6za/rbpx7txgcq2FXA6mloPO9E9v6n0KkWKIDJxEVa7ea4/FXUnrXblXbt5r
	QkUFE6iqTZOU7pPowbbb2OPXqS6wHiLWJnobETo+rWKerdJulFnndBXKAFE0NJurpYMyEfsuiNzvo
	ve2LXGSIMcoJXCg1zo9AxqGh06e6ZrkWVHeBb+24h85cDEaIA4tKBXWk+yhXHrkEV/QEQR+zejy4n
	rn2Bv5WqvP+GwRSHfQaXzivWPxeYvo0iay/ANaGUqJQavirmVLWukPTwPuTDG53F3sohZfi9d4LaX
	YKVfrFlQ==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x1TZn-0000000BHXT-3Wi5;
	Tue, 01 Sep 2026 18:51:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788288678;
	bh=hse6ZoBRDdkgueZEFZSp6DqlC7adzsHmGMK2OKfFL4E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JUIAX35pkGhzYnzN4qdFzY4BQZPKYsC8sOxYYiKgX2WWsE9TxYoj5gbi4K5mACXSF
	 DYdv+OEPLN/8o1GHXftpZMoyaC0dQGvQhKGerER6qEVRfmQ5mfvhR6+KPU9xBNCM1z
	 QnLeg+wsDTtABzvHHpUMtcnn7dGp+CepEEzZobukzyZ8QwoYm3li5Aj5GDFONc9khN
	 PLYPS74zUtg6DZ/KhvXF5sozxj1Bk0VrPraN2AGsTAS9x7iZS1ia3G0jNOYctHMoVF
	 lbwtmJ78qnnQ5si4j2g3cAI3lYdHTLeHReB5JRAXEPYI4Q4rECLyXZ6pdQL09vav0W
	 PYHRYtYTj6UWQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 974FC17E3C75;
	Tue, 01 Sep 2026 20:51:18 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 01 Sep 2026 21:51:15 +0300
Subject: [PATCH v11 51/74] drm/bridge: inno-hdmi: Advertise HDMI 1.2
 capabilities
MIME-Version: 1.0
Message-Id: <20260901-dw-hdmi-qp-scramb-v11-51-bc12954a0688@collabora.com>
References: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Chen-Yu Tsai <wens@kernel.org>, 
 Samuel Holland <samuel@sholland.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Algea Cao <algea.cao@rock-chips.com>, 
 Daniel Stone <daniels@collabora.com>, Liu Ying <victor.liu@nxp.com>, 
 Phong LE <ple@baylibre.com>, Helge Deller <deller@gmx.de>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 linux-fbdev@vger.kernel.org
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_195119_974415_3DF9F687 
X-CRM114-Status: GOOD (  10.08  )
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

Bridges using DRM_BRIDGE_OP_HDMI are now expected to also provide a
supported HDMI version.  This is not yet enforced, but will become
mandatory once the migration to the new caps-based HDMI connector
initialization API is completed.

Since inno_hdmi_phy_config.pixelclock does not exceed 165 MHz for any of
the chip variants handled by the driver, advertise HDMI 1.2 as the
supported version.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/inno-hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/bridge/inno-hdmi.c b/drivers/gpu/drm/bridge/inno-hdmi.c
index dd35f5a875d3..ea3447d4f285 100644
--- a/drivers/gpu/drm/bridge/inno-hdmi.c
+++ b/drivers/gpu/drm/bridge/inno-hdmi.c
@@ -1119,6 +1119,7 @@ struct inno_hdmi *inno_hdmi_bind(struct device *dev,
 	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	hdmi->bridge.vendor = "Inno";
 	hdmi->bridge.product = "Inno HDMI";
+	hdmi->bridge.supported_hdmi_ver = HDMI_VERSION_1_2;
 
 	hdmi->bridge.ddc = inno_hdmi_i2c_adapter(hdmi);
 	if (IS_ERR(hdmi->bridge.ddc))

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
