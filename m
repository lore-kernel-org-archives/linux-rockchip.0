Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46812C5321C
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 06:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xhv4K2kzSXRNdwPM2BLSBUB/vgNJ/VL89B4YrIOeQMI=; b=TW387zk0kPZcRe
	8oJol7K9FJ2Fk7yPscVigwvWz4Y186BtVxyODxTp6oxzJeORR/rffKU5b7oCdrBZSqSy0PfaoyTG5
	sJpetReW8GYeEuIlam0paN3VfadDiRw9khR2cqnt0xtpQyEgDV3NYMzIjOMhcQfKUWUw5X85nfPNu
	m+lgduKbKJswEHgyQIBrsg/CMPanFADlXuNZ5uQe66foe8WSU8WIRNQvIXrhxBCqqYwZnnwi81EMm
	lDjAD8lsT7ZPcS9j/BljZISRbLjuZfe38vDRqeXpBscVDCVGZAtQw7dkeVq+IeLD4VZBPHDx1ALll
	f/3BeA1eqdbzTnRHjDhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woF5c-0000000230R-2d7n;
	Mon, 27 Jul 2026 06:45:28 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woF5W-000000022tz-3JId;
	Mon, 27 Jul 2026 06:45:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1785134676;
	bh=lOi4lTfSYq4gyPLa7vfMltbH7D8s9RIXzOfoY4QjKek=;
	h=From:To:Subject:Date:Message-Id;
	b=sMMt97jhh7jMdpV4N1/bHHWVTFf0uVUuTavrtOLyoN/d6yCG4iDCwE9NgiEmNktBw
	 MclplfHFIob9Xic7rsbED3GmkI1C8DfmHD4DxUObR6HAg6eP7r7yUPJuNDBwGAy11F
	 ZoViZVURPc0H0e6tyZYx2FHmlvVFU++dGXbMrcN4=
X-QQ-mid: esmtpgz10t1785134674t43ebba75
X-QQ-Originating-IP: r+MMC0cunT2/z7QaMAt4ARvLvBHI+zAjN8++dkZZD8Q=
Received: from DESKTOP-8BT1A2O.localdomain ( [61.154.14.86])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 27 Jul 2026 14:44:16 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13742035455192945116
From: Chaoyi Chen <kernel@airkyi.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v4 1/5] drm/bridge: Implement generic USB Type-C DP HPD bridge
Date: Mon, 27 Jul 2026 14:44:04 +0800
Message-Id: <20260727064408.101-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260727064408.101-1-kernel@airkyi.com>
References: <20260727064408.101-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: M3ziZXKDk+iOHFRGvweTdBx6rjGmooXblzV2uaUnM8z/3XNOSqjRqTvU
	zOh1bFdtoTqB8tJYolfmsBDAMsm+BewHZnObQ1LI54XaVw9RUj5pBrEObKLC4VqHGjFcC/R
	J3ERHFGZREoMDZ8aoTzjq2C0M4LEZSJNnvAGLB39/hnlpXezJ59p+w3lhbIT2wyGfxHXeRK
	zEsEU8PNVdNG5J9HHLDmMMOQv2M8QEKWLGOG9M6P7fAT+H/+2tR8EWV/qSpaDjFp6WJIs6j
	fV3NZrh3JOFrsTRfACarH94IcktUlJsDBNVLffhnfpuituXN8xKzoP7ttVSnBPG/L0/OPaT
	k+Y3zmG1w2WagbZGjcOQTe+WzsQive2iu5gO5a+Jpyj7ZIQn5Ov30eOI4AUPChGvRq7SKri
	f9gS8NrWgiZpZOKQhhCbL0tUaeoSps4YWvYweNyyXbGLA3Dzzvye4C0582CgXL2DKVRkQ+B
	q/wKLK9yxBp3FJovx9fPzdGhbHY/g4x6ZjMmrTjBf3uG7w9KhNOI0uN2LADQeXmbPe83sk1
	ycgQ2ZgT8TdFH7mHBszXKao5AADQSc2bsnddRj/uvWYNbyyeusC4VGZtneGEipmXAtb49/B
	KpPLtcK6xMD9FoYhKg7MkWFJIbLsr+YQZ4aeWJGCDkJG8UoYauFdI8chEY/RDDKCOPfQ+JM
	flcR5HzDgeNomjWrd6NUMwxu6jAJ5arlBxj/NHUVW7A0NHyChwUO4gc62PKksQf8QiwaKvs
	J6RKRPOmq99Aeei6tHlot175U5azgybagecbAQ9lIwTv539YkOGQYRsii0ej+rD+100g6Ec
	B0ULfkpERXRTqNzpNUTjXwllV3BgVHJh5LANOJUwsL9eVE07vDxMQ5YFAVKht3k8+fmu8ef
	baBmKPZCiyyGF0HASoboeF3p8ti/xj509k/i1S1t4ibCunmhxRV1aod3qoGY1xUVztfabm5
	+zxMdIMJZEsKs4heddWTemYytz2kSXnrpWP2cep89rUEOr2DxC9emb7F7M+lIJAf2gqQ1YV
	IIfbkk2xBJCnBVckBx9vilJdjhp4Q=
X-QQ-XMRINFO: M/715EihBoGS47X28/vv4NpnfpeBLnr4Qg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_234523_318279_2D3DDD1C 
X-CRM114-Status: GOOD (  20.60  )
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

The HPD function of Type-C DP is implemented through
drm_connector_oob_hotplug_event(). For embedded DP, it is required
that the DRM connector fwnode corresponds to the Type-C port fwnode.

To describe the relationship between the DP controller and the Type-C
port device, we usually using drm_bridge to build a bridge chain.

Now several USB-C controller drivers have already implemented the DP
HPD bridge function provided by aux-hpd-bridge.c, it will build a DP
HPD bridge on USB-C connector port device.

But this requires the USB-C controller driver to manually register the
HPD bridge. If the driver does not implement this feature, the bridge
will not be create.

So this patch implements a generic DP HPD bridge based on
aux-hpd-bridge.c. It will monitor Type-C bus events, and when a
Type-C port device containing the DP svid is registered, it will
create an HPD bridge for it without the need for the USB-C controller
driver to implement it.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
Changes in v4:
- Scan the entire typec_bus and attempt to register the hpd bridge,
  so as not to miss devices that were already added during initialization.

(no changes since v3)

Changes in v2:
- Add copyright text.
- Remove useless goto.

---
 drivers/gpu/drm/bridge/Kconfig                | 10 +++
 drivers/gpu/drm/bridge/Makefile               |  1 +
 .../gpu/drm/bridge/aux-hpd-typec-dp-bridge.c  | 64 +++++++++++++++++++
 3 files changed, 75 insertions(+)
 create mode 100644 drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index 4a57d49b4c6d..9739b2a19758 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -30,6 +30,16 @@ config DRM_AUX_HPD_BRIDGE
 	  Simple bridge that terminates the bridge chain and provides HPD
 	  support.
 
+if DRM_AUX_HPD_BRIDGE
+config DRM_AUX_HPD_TYPEC_BRIDGE
+	tristate
+	depends on TYPEC || !TYPEC
+	default TYPEC
+	help
+	  Simple bridge that terminates the bridge chain and provides HPD
+	  support. It build bridge on each USB-C connector device node.
+endif
+
 menu "Display Interface Bridges"
 	depends on DRM && DRM_BRIDGE
 
diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
index 15cc821d85b7..d88a9e1ccc9a 100644
--- a/drivers/gpu/drm/bridge/Makefile
+++ b/drivers/gpu/drm/bridge/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_DRM_AUX_BRIDGE) += aux-bridge.o
 obj-$(CONFIG_DRM_AUX_HPD_BRIDGE) += aux-hpd-bridge.o
+obj-$(CONFIG_DRM_AUX_HPD_TYPEC_BRIDGE) += aux-hpd-typec-dp-bridge.o
 obj-$(CONFIG_DRM_CHIPONE_ICN6211) += chipone-icn6211.o
 obj-$(CONFIG_DRM_CHRONTEL_CH7033) += chrontel-ch7033.o
 obj-$(CONFIG_DRM_CROS_EC_ANX7688) += cros-ec-anx7688.o
diff --git a/drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c
new file mode 100644
index 000000000000..43af3ea20f20
--- /dev/null
+++ b/drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2026 Rockchip Electronics Co., Ltd.
+ *
+ * Author: Chaoyi Chen <chaoyi.chen@rock-chips.com>
+ */
+#include <linux/of.h>
+#include <linux/usb/typec_altmode.h>
+#include <linux/usb/typec_dp.h>
+
+#include <drm/bridge/aux-bridge.h>
+
+static int drm_typec_bus_event(struct notifier_block *nb,
+			       unsigned long action, void *data)
+{
+	struct device *dev = (struct device *)data;
+	struct typec_altmode *alt = to_typec_altmode(dev);
+
+	if (action != BUS_NOTIFY_ADD_DEVICE)
+		return NOTIFY_OK;
+
+	/*
+	 * alt->dev.parent->parent : USB-C controller device
+	 * alt->dev.parent         : USB-C connector device
+	 */
+	if (is_typec_port_altmode(&alt->dev) && alt->svid == USB_TYPEC_DP_SID)
+		drm_dp_hpd_bridge_register(alt->dev.parent->parent,
+					   to_of_node(alt->dev.parent->fwnode));
+
+	return NOTIFY_OK;
+}
+
+static struct notifier_block drm_typec_event_nb = {
+	.notifier_call = drm_typec_bus_event,
+};
+
+static int check_device_already_added(struct device *dev, void *data)
+{
+	drm_typec_bus_event(NULL, BUS_NOTIFY_ADD_DEVICE, dev);
+	return 0;
+}
+
+static void drm_aux_hpd_typec_dp_bridge_module_exit(void)
+{
+	bus_unregister_notifier(&typec_bus, &drm_typec_event_nb);
+}
+
+static int __init drm_aux_hpd_typec_dp_bridge_module_init(void)
+{
+	bus_register_notifier(&typec_bus, &drm_typec_event_nb);
+	/*
+	 * Before module initialization, some devices may have already been added.
+         * Register the HPD bridge for these devices.
+	 */
+	bus_for_each_dev(&typec_bus, NULL, NULL, check_device_already_added);
+	return 0;
+}
+
+module_init(drm_aux_hpd_typec_dp_bridge_module_init);
+module_exit(drm_aux_hpd_typec_dp_bridge_module_exit);
+
+MODULE_AUTHOR("Chaoyi Chen <chaoyi.chen@rock-chips.com>");
+MODULE_DESCRIPTION("DRM TYPEC DP HPD BRIDGE");
+MODULE_LICENSE("GPL");
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
