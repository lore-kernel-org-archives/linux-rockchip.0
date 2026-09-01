Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 098BDC624DE
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 18:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvQ6O4kJRu5ZpUTiuG/JiCaQVnoGLc7vCBqaPGAgr8Q=; b=KuIu+bsgj3NLyV
	obkoqdqXnkGyaJI/+YsM4AQU78+YNjhDAddu0h2Aiv0Q7DImQQj0FBwLZfXRgod6jPm4DcMRkW8fI
	n+7oGdA3+yHGUCsY3tlQpwsr79hFWO/Zv/JzjpqY+aMHCBUz0LRKDX8fkEpsf5mKwtRb7SC/DVtKX
	31lbJ4gTBmScXogetqweZLByqjieEQGvhUbEAMMJgECqfTIkcg+obbXmc1HllDiGyYZOj3/6PMJhL
	G/d5EkyWB2Xiacw7vlHpFqhPstA7HLcIW1LpDRD3z/+ER2NvLDqhpis59tNCoWngudYPazEUUq1YU
	jhO2xLZGwXiyhD+RuG8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Tc1-0000000D5aq-2VDZ;
	Tue, 01 Sep 2026 18:53:37 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZr-0000000D1M0-0PO8;
	Tue, 01 Sep 2026 18:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=rkJF4e9VVXUzCeuMYU3zzOmDCo18fe8y5N/96bdVQZA=; b=CsManvvWcFeLOwsgmzggB+g+Ho
	J4ekKPW0Zd+LwM+tNtQpLLQV9IXI8TVfn6ehVmgdVMcinN0kh/2G2PvugpG43vdHjE2WsVECALwnD
	RQrvomDyTsHydRvMVfxGmWM6IjL8QCcuGCJHDuWnQtDgm8eLdH5jMHNYRBX9X57jWU1JPNmWb1ygh
	MUPfpAScEhmbSDzMv1hk0Qz8Ug+oHFYs6Rv/WdOrZotaFjgTPfiizUDJmxQ4b8fDJAGzJY9MD+eHw
	CH80Z2YvYkK9dDlfZxCCeh3P9/x/TeMvamOxPPVT7pLb/gG30EVzFTgRn4wQTpSwyLd3jUSEWJ/Pv
	NRCcYmng==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZk-00000005acj-07k4;
	Tue, 01 Sep 2026 18:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788288671;
	bh=hMfmPjxTX291Q5EGzy4LRXRcR3XKvgItQhsbL5BpXSo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=oq7fl5//ZutIy2KKIU1JPjsv6aZcOkqABCODUfgGNewdcJAMQ6SE0Vuk79vkQs2dA
	 WfaS4b6wx9wdsStk1XwXviSUlQ7j9fS4c7nQHGaNYSzQNXc7WIbSlGbCC/KYJ1zGEI
	 VeIDy8Q7YgmFzCBy/ed1NawJc3Y6im9ypKEw+k1xjUXNfaBzdiOPkTyZV1paaeSXlV
	 hg49TqzMn1elVzlkkCroNFlfKCjyscnYXhoBfdkZZMN47NuE69cGtcCrfgXG51gxbj
	 j0rQdAty9msM+0HlFWVydhiWYWs6xpdJ1KBcvvYTMNNsIdksW21C2rbz7aiYQILW9D
	 1Y3HiLtZedYag==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 539F717E3C60;
	Tue, 01 Sep 2026 20:51:11 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 01 Sep 2026 21:51:05 +0300
Subject: [PATCH v11 41/74] drm/bridge: dw-hdmi-qp: Drop unused .setup_hpd()
 phy op
MIME-Version: 1.0
Message-Id: <20260901-dw-hdmi-qp-scramb-v11-41-bc12954a0688@collabora.com>
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
 linux-fbdev@vger.kernel.org, Maud Spierings <maud_spierings@hotmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_195116_283852_46FBD8B4 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
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

With the transition to .{enable|disable}_hpd() phy ops complete in both
the bridge and platform drivers, .setup_hpd() has no remaining callers.
Drop it.

Tested-by: Maud Spierings <maud_spierings@hotmail.com>
Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS, Rock 5B
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 3 ---
 include/drm/bridge/dw_hdmi_qp.h              | 1 -
 2 files changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index a2277531182c..fcbc518cd90a 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -1295,9 +1295,6 @@ static void dw_hdmi_qp_init_hw(struct dw_hdmi_qp *hdmi)
 	/* Clear DONE and ERROR interrupts */
 	dw_hdmi_qp_write(hdmi, I2CM_OP_DONE_CLEAR | I2CM_NACK_RCVD_CLEAR,
 			 MAINUNIT_1_INT_CLEAR);
-
-	if (hdmi->phy.ops->setup_hpd)
-		hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
 }
 
 struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
diff --git a/include/drm/bridge/dw_hdmi_qp.h b/include/drm/bridge/dw_hdmi_qp.h
index b4fb1c578a5b..ad33f9cafdeb 100644
--- a/include/drm/bridge/dw_hdmi_qp.h
+++ b/include/drm/bridge/dw_hdmi_qp.h
@@ -16,7 +16,6 @@ struct dw_hdmi_qp_phy_ops {
 	int (*init)(struct dw_hdmi_qp *hdmi, void *data);
 	void (*disable)(struct dw_hdmi_qp *hdmi, void *data);
 	enum drm_connector_status (*read_hpd)(struct dw_hdmi_qp *hdmi, void *data);
-	void (*setup_hpd)(struct dw_hdmi_qp *hdmi, void *data);
 	void (*enable_hpd)(struct dw_hdmi_qp *hdmi, void *data);
 	void (*disable_hpd)(struct dw_hdmi_qp *hdmi, void *data);
 };

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
