Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CCACC88E7B
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 13:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYREKAfQdv8aFk3KjoviUH+aMUxhHeyLejav+MYxG1Y=; b=Vv9XYBgQus6nte
	X3IfjqSG6vanLTJdPR1YfZSgwGy/LAhFGfiRWuhqLmxLJWHncydZH00fMOxk1SCQWExHkHfN1TcPJ
	FONTMydy0f/DXO1Lz7d6stQq6MVZxzuha5LywHGeknjjPFVZLhIAPB3kJ8aZYgOw37n/+v2DzXaXW
	bgfw5gxFX0W2k/pIC3oDDKsfimfUoVOImfNALDOPYslS00b+IfQ6OEcSJ2yBwHPkEkcMj+FVKTd0J
	NeZthmEE549amsdHkSJn5+Llck8/NIk7BvTWh7d7EzEc8h3rYgEsgxyHtKNJiJm4Z+YHZ4WDcIRY7
	0dnvyThfMrVsdHNvbTOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6TZX-00000006p6A-30PF;
	Tue, 15 Sep 2026 13:51:43 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6TY1-00000006na4-3qTL;
	Tue, 15 Sep 2026 13:50:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789480199;
	bh=Er006dVNCN0LpRq6BA3LJv12AT3lwxcOksbg6+oxy6Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=H/6ZCMwa5TGZXo5AVY5zHnWSjGZOfU2wfUmtf8VSdW4Npg2fK6iAujnH/dCYzKh0P
	 /KXCjVgjC/ishcT0Q0ALPGb0lrhI0sWhDgnouBE/cufoY+bRWkl1AtK2SYM+uF4BiD
	 pOY+uhQFIcDylECQljoTjuQGgRit40iUXm/Yes/XrIOOZykEXbOswWihsdF2wrYJe4
	 2WKAN+Tw3yF3Ldiz/oTl9GB35VVBlWCf3hcw3XogbDI28B9OJ2hPEE+J3ZTgARFL3t
	 vfTS9xEtMlcNAbFacuLXjj0VMbmDCmDmb6+yxHDQ3Q7+NwPogsAVwQaInKfpFF/ePn
	 YGxT5uefg8c1Q==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2F2C417E0EF0;
	Tue, 15 Sep 2026 15:49:59 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 42E29480062; Tue, 15 Sep 2026 15:49:58 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 15 Sep 2026 15:50:03 +0200
Subject: [PATCH v15 16/16] phy: rockchip: usbdp: Register DP aux bridge
MIME-Version: 1.0
Message-Id: <20260915-rockchip-usbdp-cleanup-v15-16-80e2c11d1ce8@collabora.com>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3258;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=Er006dVNCN0LpRq6BA3LJv12AT3lwxcOksbg6+oxy6Y=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGqpTQb9J2jpv5abw+bajDNMJE/vG4t4bhXKV
 94xqY4clMc8tYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqqU0GAAoJENju1/PI
 O/qadeEP+waqIvOpgvQmD4ds2gHNUsiKUSXilQruRbjPn3rG1t+eeScOG32XevUeoii/384lHXR
 tprurPFkaSElZnfA93PcZtsQOEl331N/h2zEfKT2uo9DmP+YCqoQw0tggwgfDOUtciPpvzp+aE/
 Z7UspmIiE7EEo22i5EytpXoGvnBWl1seH8BKpM+g/w2zv/Mhj7R5aubvTHqJtpCUPwduWjLsF1G
 mgAuMA9rphT3ldEqzi/0I+sZ56S9h/GFarpBqyybx7GTj52VPe0TnogwsQwtM5sa9ahvjTAOLV8
 XD42OWbpEelgWarLbUzroCsZrFV3w9ULl3kAOx4KuNEOogiLc+mXRxCO603727MR0ofiwquNqPI
 NpMp6rl+s3CXIu7mqQnq9IYkJvGuT+uIbD+2vqiCQo31/RFVI+iKkCRJzJjlmy6mzV/kWMjx7ZY
 x2wAMs8tAyHC/RGe8hpFPPRVptIHJfSTK7Zk/X0bkYX8Ct3AHnMl4Hr58lTtEY+17pP7E8RLtqA
 Un/rEojYYKPi9wzCmxtc2XUGQ30s50dcQvXvz/LLy9stD3dtkFYxdGotTjdqGIdiiBxP+gQgyi5
 eT8SSdTAWZxZ/twME1xY2w2Ebcy3IQiwVAsOEfJycG9mitnRq87h1Kk5qQOxvOP5kqU84B9NiGl
 rnt31+WjYYHNaJiN2kIothQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_065010_202357_3A48DEAF 
X-CRM114-Status: GOOD (  16.43  )
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

Add support to use USB-C connectors with the DP altmode helper code on
devicetree based platforms. To get this working there must be a DRM
bridge chain from the DisplayPort controller to the USB-C connector.
E.g. on Rockchip RK3576:

root@rk3576 # cat /sys/kernel/debug/dri/0/encoder-0/bridges
bridge[0]: dw_dp_bridge_funcs
        refcount: 7
        type: [10] DP
        OF: /soc/dp@27e40000:rockchip,rk3576-dp
        ops: [0x47] detect edid hpd
bridge[1]: drm_aux_bridge_funcs
        refcount: 4
        type: [0] Unknown
        OF: /soc/phy@2b010000:rockchip,rk3576-usbdp-phy
        ops: [0x0]
bridge[2]: drm_aux_hpd_bridge_funcs
        refcount: 5
        type: [10] DP
        OF: /soc/i2c@2ac50000/typec-portc@22/connector:usb-c-connector
        ops: [0x4] hpd

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/Kconfig              |  2 ++
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 17 +++++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index 14698571b607..39759bb2fa1d 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -136,8 +136,10 @@ config PHY_ROCKCHIP_USBDP
 	tristate "Rockchip USBDP COMBO PHY Driver"
 	depends on ARCH_ROCKCHIP && OF
 	depends on TYPEC
+	depends on DRM || DRM=n
 	select GENERIC_PHY
 	select USB_COMMON
+	select DRM_AUX_BRIDGE if DRM_BRIDGE
 	help
 	  Enable this to support the Rockchip USB3.0/DP combo PHY with
 	  Samsung IP block. This is required for USB3 support on RK3588.
diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 8874f8429a67..fa8324879a97 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -6,6 +6,7 @@
  * Copyright (C) 2024 Collabora Ltd
  */
 
+#include <drm/bridge/aux-bridge.h>
 #include <dt-bindings/phy/phy.h>
 #include <linux/bitfield.h>
 #include <linux/bits.h>
@@ -1413,6 +1414,7 @@ static int rk_udphy_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct phy_provider *phy_provider;
+	struct fwnode_handle *dp_aux_ep;
 	struct resource *res;
 	struct rk_udphy *udphy;
 	void __iomem *base;
@@ -1467,6 +1469,21 @@ static int rk_udphy_probe(struct platform_device *pdev)
 			return ret;
 	}
 
+	/*
+	 * Only register the DRM bridge, if the DP aux channel is connected.
+	 * Some boards use the USBDP PHY only for its USB3 capabilities. The
+	 * aux bridge itself will be registered using port 0, endpoint 0, which
+	 * is fine as that is the actual superspeed data connection shared by
+	 * USB3 and DP based on the mux config.
+	 */
+	dp_aux_ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(dev), 3, 0, 0);
+	if (dp_aux_ep) {
+		ret = drm_aux_bridge_register(dev);
+		fwnode_handle_put(dp_aux_ep);
+		if (ret)
+			return ret;
+	}
+
 	udphy->phy_u3 = devm_phy_create(dev, dev->of_node, &rk_udphy_usb3_phy_ops);
 	if (IS_ERR(udphy->phy_u3)) {
 		ret = PTR_ERR(udphy->phy_u3);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
