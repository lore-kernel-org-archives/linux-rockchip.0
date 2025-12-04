Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 203B1D1D870
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Dec 2025 06:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VVZOokHpdB0GZckB5iaFaJes9NAbQqOAX4XxkZJ27k=; b=AtF+o3EWrkQccn
	CUY6brM6nb+BlIrJVRqBs6Cye1wadHrTjt/OJKyR3HyjknrmJ+CNXyyzYx++v523rEi4I8fdLszdV
	ohzvHqF1ypaTVsF4+f9pfsg+wonkdMEsrx5MbLsV2LhmQoWdsAUvI9bMjmOQOQQ6lwh3my5tR27Lc
	E77bKwo2xdSzkqG73g5M+5QqO4G6AY3yP6IwDX7PPs3zmDnzd7SntzzWgdhnTTG8/RyNktAi4KvnU
	cWFRdvov/QmLAKjTClk0Kt1LZYNkYhysfalqawG5sLkdqpF6rkQp2ow0nTfvoDw3FXcfAdeQ4s3qz
	aNoSZaf+nCEtllrxpX8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR2tV-00000007Yfg-1kSQ;
	Thu, 04 Dec 2025 06:32:49 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR2tL-00000007Y4k-34Py;
	Thu, 04 Dec 2025 06:32:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1764829911;
	bh=BnSe20UyFWhCBwFpCZUGVdKqrQwY3y7cLZdXieRNPhI=;
	h=From:To:Subject:Date:Message-Id;
	b=Jiwrht1gbOU9UUMYYKAydlzJSi03cZUmpqTNrH7TREoajNExRSmHl0tq62xyEG2ll
	 w01s7R4/swFkl8p9t0AEPFJFXatdaP56UWW+uf1B/khh3uYXZxfCgIVyJWg4tn+U58
	 iTk9v7zWKF4xv/lLJIRgEdiFhdYllu6umWdPDQ7k=
X-QQ-mid: esmtpsz21t1764829909tf9c29147
X-QQ-Originating-IP: ri8pxnHeVrvX5Aweq2BV2L+rsyB/OuhYBi1DnKi64pY=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 04 Dec 2025 14:31:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15495658624198146204
From: Chaoyi Chen <kernel@airkyi.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Peter Chen <hzpeterchen@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Amit Sunil Dhamne <amitsd@google.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Peter Robinson <pbrobinson@gmail.com>
Cc: linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: [RESEND PATCH v11 07/11] phy: rockchip: phy-rockchip-typec: Add DRM AUX bridge
Date: Thu,  4 Dec 2025 14:31:05 +0800
Message-Id: <20251204063109.104-8-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251204063109.104-1-kernel@airkyi.com>
References: <20251204063109.104-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NnBlO8MsmACrXs927g8gCVx5S3Z4zioN+QUBBh7PLQJOOz3KMa8NX8HG
	kYC4wdk2lnJ3A65QBzuPICrq9cs/D2ANsiSwqH9zY3ag8lzfUuRLjHQm+FwfD3xghQEsbIH
	FElpMJl6biw1Zd75/ZT/ebADOEbeTWkEarTjkChHl9+B8WEMJWUdTPbGttSoorzIOwZPB+v
	Ng8XxbjqVxFnDzwGuDmDt2o8sCw7H6VYt7xHVE3wWBVTnDHv7VGNx9lAfYKzbpckB0srBt0
	T6+ER8qIVOA3BDn/oz4NR89ki2SS+VPYKgjpAZgPdCpeBmNrbDKwodGSajrq5b+rehuxMhf
	DCLp7kKehvXOEo9QgOtFTUnuwatDTw3R2P59vSCo8jgoF4U9pfdXnw1rXu8Cf2uc9Dt3wd3
	yOfcQ3tFuO/mL/ObnAVonTEWJz4nCggJ6Gv0bKbAt/PUa9YIVXrviDFO8dAWgR7RuGTi4I8
	jiKHmoATvnjzFaC6xvcywUJA/6EAll2+8vkSUQwGImcfnUoEDUJX5QLuHzHllVzL4YVsSd7
	oNENgwsNn28zHDoRetwF7KpQY8oHRxSEwDRRAqG95MvfK3CF4LKxZhoBxoZp2kaHSnVvt3G
	G9U6/QHmsFkup+7kib7bgW8d51v0NJo5QLHtgJQmfnzlQFLyvXHpPekidY6JNZWfgFNsXBp
	lmxqWYJqa40/DujxC6cGmxTcEE+UVrgiReX+IGDq29gCdA8sauUfEtmkYKiT9Ck9UbeeO3w
	Qkc6FAea0xPe6roz0feN7rCi89pZ7/eUNXTnV8FFXHzyq+VYBx+Qq3PFnHN1xPnMnGwNe48
	zv3NIDt692cJXh9+3gKY5NFru0+AcKF7GYT3Kbjme41iFfu5+ANvYniE3TcX9Qn5GgsEw1I
	vcb7OUZnLqmUcYyLNtQpsOihl7Hp5UsMD71rfNjeAAwu8GFDb0Ir4c+wIiLvMcFw8/LZxJx
	CIO+p5rUC5wqb5B1HyosAAjWBq0upZHLjLeuDuTcS4oHb5bXWEmV3RNHtCdHkJt4rXfSHMf
	dgTlkmKmTnAuaVFDoPxLzeYpAXuzE=
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_223241_620017_B000CE88 
X-CRM114-Status: GOOD (  10.17  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Using the DRM_AUX_BRIDGE helper to create the transparent DRM bridge
device.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
---

(no changes since v11)

Changes in v10:
- Use drm_aux_bridge_register_from_node() instead.

(no changes since v7)

Changes in v6:
- Fix depend in Kconfig.

 drivers/phy/rockchip/Kconfig              | 2 ++
 drivers/phy/rockchip/phy-rockchip-typec.c | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index db4adc7c53da..bcb5476222fc 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -120,6 +120,8 @@ config PHY_ROCKCHIP_TYPEC
 	tristate "Rockchip TYPEC PHY Driver"
 	depends on OF && (ARCH_ROCKCHIP || COMPILE_TEST)
 	depends on TYPEC || TYPEC=n
+	depends on DRM || DRM=n
+	select DRM_AUX_BRIDGE if DRM_BRIDGE
 	select EXTCON
 	select GENERIC_PHY
 	select RESET_CONTROLLER
diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index 1f5b4142cbe4..e31b778c3537 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -56,6 +56,7 @@
 #include <linux/phy/phy.h>
 #include <linux/usb/typec_dp.h>
 #include <linux/usb/typec_mux.h>
+#include <drm/bridge/aux-bridge.h>
 
 #define CMN_SSM_BANDGAP			(0x21 << 2)
 #define CMN_SSM_BIAS			(0x22 << 2)
@@ -1312,6 +1313,10 @@ static int tcphy_setup_typec_mux(struct rockchip_typec_phy *tcphy)
 	if (!of_property_read_bool(np, "mode-switch"))
 		goto put_np;
 
+	ret = drm_aux_bridge_register_from_node(tcphy->dev, np);
+	if (ret)
+		goto put_np;
+
 	mux_desc.drvdata = tcphy;
 	mux_desc.fwnode = device_get_named_child_node(tcphy->dev, "dp-port");
 	mux_desc.set = tcphy_typec_mux_set;
-- 
2.51.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
