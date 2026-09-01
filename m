Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E9C2C61DD3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 18:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hqe9XRbhxSgkmYhE8DqR/AGI4UTWdkK0FTAxHVV0eS8=; b=Xda7mXTppypY7V
	wgOcamfiStw2FnJZDyAhVOw2DseYvMuaFe6i8Y398qlTbJENGJflNPTLltLkDccSuwdb6pTtnYczJ
	pLGXaEvJA3MfGK/u+XDDN8s/tDCnisxvSzaabbUa94UHbVAVOu1X9yOrHoiOv2k+9hOEBhCO3Yt3+
	qrM6wRnej+Tuarh1+JpbLWN7nGMPbbTS/UfW6jWCyctvOgafJEnszz1gH5fX1G6JoX/lhXDdO7Z5m
	cms19M6Fo/RoO9kqcAh+/3KeoJjynbsR51I+s5qfgKGXRzKv6V9IE3BSQyGXJhOOmw3SWor8CFjan
	gtczsHSCD73VBSUAgJXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Tam-0000000D309-1HtM;
	Tue, 01 Sep 2026 18:52:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZc-0000000D17O-3oxB;
	Tue, 01 Sep 2026 18:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=M8cZLZ/OCsYUJxVNJFLWYh11+uZeY0MeQOMwNBRLy84=; b=m8Uxq5tFGtcrvYoxm81KHF0LRI
	tJsieTV8+JXKDNjt+Lf+ZOWDfEvwCcW63yhUT8zTeDoDG1gWCR8gSTitqAU2ornILCMLSHeR5LjoV
	no8Jcysj11FQqo2cKbJctEIizwCFZiTxc28wK6lxT0cp/uS2Ib6Fg0zlgBtl3goqwmDEPLbZpmnlp
	5HYz6OrOEDlPNPLLW4QloDNGqdyzgF4aHsG0Gy5xHr9T8qDC+lhRl76D6W69q5wabpBAMiNzeYRNk
	Gw0ux6NdWPmh3Jp11YdaSBV6Go4/puJDhVj6NEfUYtYyfwkWIBE/T24aUdXr1kufxHGwWsIgYn4ni
	ETdYEGXw==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x1TZZ-0000000BHOD-0qSK;
	Tue, 01 Sep 2026 18:51:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788288664;
	bh=8nvSV+nWPFUZXqT08BM59NFazu9V0O6/Yz51yOFt+3A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=D6cZJmAkzhA5GZ0QcfJZCbgDpVhPyOaD9Ka7KjdcYm6bTIFCX5tfAIA45R33ZSggU
	 uPCZOOqoQZqam6ylnw4ZoMhOFdx6IehsF/o1zbHYJ7L2Z8pX7W7Xr7NNRAZSVJwL9/
	 3Rh4jjA68Lt1UYeMs1CmqbZrvkZuHw/ztr5XEMPCy/k0dLMPeAzASjVf9qACG/SOFc
	 7bQgZDqdVarZI1Bob5FR65Ll7aAPQOKdnvBPL8eEjyg54zvbkLQtc1y120HinKXFtA
	 dXd5sowYlPcJ86OcYCj54fIOGNRg0fGYqTm+4FgPa8PgYqjMjsUvhqXMK3y8fnluoa
	 L1g5z61POSHIQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EC04D17E3ACB;
	Tue, 01 Sep 2026 20:51:03 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 01 Sep 2026 21:50:55 +0300
Subject: [PATCH v11 31/74] drm/rockchip: dw_hdmi_qp: Fix invalid drvdata
 access in PM ops
MIME-Version: 1.0
Message-Id: <20260901-dw-hdmi-qp-scramb-v11-31-bc12954a0688@collabora.com>
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
 linux-fbdev@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_195105_482717_812D1837 
X-CRM114-Status: GOOD (  13.79  )
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

The system-sleep PM callbacks fetch the driver state via
dev_get_drvdata() and dereference it unconditionally.  However, the
platform device is bound by ->probe(), which merely registers a
component, hence the callbacks may well run when no valid state is
available:

- Before the aggregate driver calls ->bind(), e.g. when the system
  suspends while probing is still deferred waiting for the VOP,
  dev_get_drvdata() returns NULL.

- After ->unbind(), or when ->bind() fails past platform_set_drvdata(),
  drvdata is left pointing to memory obtained via drmm_kzalloc(), which
  is released together with the DRM device, while this platform device
  remains bound and PM-capable.

Publish the driver data only after ->bind() completes successfully, and
clear it in ->unbind().  This ensures that a non-NULL drvdata always
represents live state, allowing each PM callback to rely on a single
NULL check.

Fixes: 128a9bf8ace2 ("drm/rockchip: Add basic RK3588 HDMI output support")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/all/20260702151550.8E14D1F000E9@smtp.kernel.org/
Closes: https://lore.kernel.org/all/20260723014811.1F9F01F000E9@smtp.kernel.org/
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index 9c4cf68d79d5..646a4cb96830 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -683,8 +683,6 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 	if (ret)
 		return dev_err_probe(hdmi->dev, ret, "Failed to init encoder");
 
-	platform_set_drvdata(pdev, hdmi);
-
 	hdmi->hdmi = dw_hdmi_qp_bind(pdev, encoder, &plat_data);
 	if (IS_ERR(hdmi->hdmi))
 		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->hdmi),
@@ -695,6 +693,8 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 		return dev_err_probe(hdmi->dev, PTR_ERR(connector),
 				     "Failed to init bridge connector\n");
 
+	platform_set_drvdata(pdev, hdmi);
+
 	return 0;
 }
 
@@ -704,6 +704,8 @@ static void dw_hdmi_qp_rockchip_unbind(struct device *dev,
 {
 	struct rockchip_hdmi_qp *hdmi = dev_get_drvdata(dev);
 
+	dev_set_drvdata(dev, NULL);
+
 	cancel_delayed_work_sync(&hdmi->hpd_work);
 }
 
@@ -726,7 +728,8 @@ static int __maybe_unused dw_hdmi_qp_rockchip_suspend(struct device *dev)
 {
 	struct rockchip_hdmi_qp *hdmi = dev_get_drvdata(dev);
 
-	dw_hdmi_qp_suspend(dev, hdmi->hdmi);
+	if (hdmi)
+		dw_hdmi_qp_suspend(dev, hdmi->hdmi);
 
 	return 0;
 }
@@ -735,6 +738,9 @@ static int __maybe_unused dw_hdmi_qp_rockchip_resume(struct device *dev)
 {
 	struct rockchip_hdmi_qp *hdmi = dev_get_drvdata(dev);
 
+	if (!hdmi)
+		return 0;
+
 	hdmi->ctrl_ops->io_init(hdmi);
 
 	dw_hdmi_qp_resume(dev, hdmi->hdmi);

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
