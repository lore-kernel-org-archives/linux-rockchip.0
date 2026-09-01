Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74BF8C624DC
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 18:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KG4JTL2pGskhC2Qe2HZKwzbvIwtp34BDnxNz5SUMpvQ=; b=snJqmZ8vqGk+3u
	dInmoUCRb4XXOHSCsxCfeDKMpLn0SjqiYEBA7+Z2C7d1D05h3QA+WfGx+WYB5YnaGFedXh3j9GteX
	6HeRw+/Z1+jvTOVZp8GXLmREEMBx+XwXj2RhLUuS3TrQ9wfwoOxkLwpu56EDYyg2momqAfKtKX+et
	WjKSOJe+B6eSvtvFcNfEl+j3hN0C9GxxDDx9ZElVqDTaLv9JmaFRXBvlZwAPhghw1AEB7LRjHS7ji
	Kt9cR96t3LAn9tJMhaU6oV+JgCrdYw7w7hsHC+81e1Knqaa5tU+iIl3GUSMb9Cc/8jSiRycCLGEf9
	NkCZ7I1zSip8KvnLoncw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Tc0-0000000D5ZL-3pvb;
	Tue, 01 Sep 2026 18:53:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZr-0000000D1M6-3one;
	Tue, 01 Sep 2026 18:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=uyXbhnb257/UFa8tRq5AvMrjw20FPYf2ipUrIiJF4Hg=; b=C11nCoMQ8SQX4PWwAuksX3Z4Iw
	vMdNKn4olqghkq62J7E0RRJL4SfzHwYegGpBzHZU+lXFeLbU/T/Gl9vgcS3ssj30HdwEmD9tRHiZR
	skejsz2yCUsMgW4mdil6zywIPQHEvcBGGyB6jn9K3/NitCuckpDkR1n5g5FppAjPjT9JgpX+EuEH3
	ZIrXsPku3fatqeN/x2/Wie+p6tGwp17LhYdrdPue1Cu/Rhs5zD9DOQgNP0AjSUFhCm6zb199imc2l
	kg73di50/cVJeNFwYuzlsDLfiYzVXcq+3kvs2XREC/5Mit0KvWRNj9QkJBajNQiYF4BxJEKsm1IsK
	uiVJXR9w==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZl-00000005ae5-3uvY;
	Tue, 01 Sep 2026 18:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788288673;
	bh=W2m7Jca/rq/QUZdEC4unu3AGFLZj7t3LTmYrZHCk2pg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=afu5ZwY++6AHuXAeUdfaaE/k7fwjw8A8eIfYHhGq7PeQ+VHPmh4saZg+PA64M/JqD
	 2p2DwtaA0vTxkk9RDdWGRfXI98CLxoFeKLSm5EwthG03ieYp/hibN/eQnpkLJ8KF9h
	 KBELgAwrYEAM5lg5ECHCJeYZVA1+I1OOHh2QWxAjpQF2I50ujMSSwiV5kOgW0IaJKS
	 TlrWTSD5KN80eSnqezCcBa2hOC51EdIfTrytXVVt0UPppj/FeeJz++u8HR8J22ZL+w
	 k2Obj7ScS1Ald/9H2dhEN17rDV1iiV9/NSI2lIzLyqD8SVvyMxazzaMat+gqLCfuao
	 3TqTRfg7WBo0w==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 87A8517E3C64;
	Tue, 01 Sep 2026 20:51:13 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 01 Sep 2026 21:51:08 +0300
Subject: [PATCH v11 44/74] drm/vc4: hdmi: Switch to .force_ctx() connector
 helper
MIME-Version: 1.0
Message-Id: <20260901-dw-hdmi-qp-scramb-v11-44-bc12954a0688@collabora.com>
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
X-CRM114-CacheID: sfid-20260901_195118_243766_E0B1A32E 
X-CRM114-Status: GOOD (  12.40  )
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

Use drm_atomic_helper_connector_hdmi_force_ctx() as the .force_ctx()
implementation, so that the acquire context created by the probe helper
reaches the HDMI connector framework.

This is a prerequisite for converting the driver to the common HDMI 2.0
scrambling infrastructure, which implicitly handles SCDC state recovery
through a CRTC reset when the sink reconnects while the display pipeline
is active.  Note that this does not interfere with the local SCDC
state-management implementation, since the driver's scrambler capability
has not yet been exposed through the common helpers.

Reviewed-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 26c63ce2dc2f..7c921a444e98 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -505,7 +505,6 @@ static void vc4_hdmi_connector_reset(struct drm_connector *connector)
 
 static const struct drm_connector_funcs vc4_hdmi_connector_funcs = {
 	.debugfs_init = drm_hdmi_connector_debugfs_init,
-	.force = drm_atomic_helper_connector_hdmi_force,
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.reset = vc4_hdmi_connector_reset,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
@@ -514,6 +513,7 @@ static const struct drm_connector_funcs vc4_hdmi_connector_funcs = {
 
 static const struct drm_connector_helper_funcs vc4_hdmi_connector_helper_funcs = {
 	.detect_ctx = vc4_hdmi_connector_detect_ctx,
+	.force_ctx = drm_atomic_helper_connector_hdmi_force_ctx,
 	.get_modes = vc4_hdmi_connector_get_modes,
 	.atomic_check = vc4_hdmi_connector_atomic_check,
 	.mode_valid = drm_hdmi_connector_mode_valid,

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
