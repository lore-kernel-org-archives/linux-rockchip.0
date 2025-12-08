Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0F55D3B7E8
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Dec 2025 01:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ns9Zl0dpCBelj7CdzXDqwb9re+fv9+ujzGAs9VhvEhI=; b=1tq8Dn+bxK8QmQ
	7EcJzUSOfTfurMPjpjClEPbCeoY6ZwOmWhH/Ybu/UwP8ha/+aABdqg/zqzN649jgPZrZjZDUtAsFr
	sB7U2OqDn9tL9BmvmHB+gQtxbmohbmf3bR7F+yBoR1y1geyPtfeys3t2VlFWDqgU8uNFiQwHNoS4Y
	W5SIIEeffklKeEcqmpJVXQ3G5CayzugPmG8eUsf+hlyEmc0EFz90VEqOIRfp+2oshGLqRBd6dzGEh
	Lo1mr0REd3OiNJ1N4WLFwsYTeVsWbCqg7ufeuUuM8EN959B5pw+ShXZIGEaZsvaevVCRBTB1KzvDl
	kF8trng4VA7wDI00PJnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSQTv-0000000CPok-3Rfc;
	Mon, 08 Dec 2025 01:56:10 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSQTq-0000000CPlQ-3ldx;
	Mon, 08 Dec 2025 01:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1765158922;
	bh=yduhPWdEryQOAmGdcqOwD6+bqzN4khXB1pWrS++U2Ac=;
	h=From:To:Subject:Date:Message-Id;
	b=kx/DrY2OEte3ZRViZtVtJXSSDRWmiagvzCsYl8igPjVkKD0TJS6hi5/SF9X10ADKB
	 zgessn8u4aSkBY0OQbTMAE6irYaYsDCXvJHdw+eUAypM4Qo4liFrQtrccbf86TL4W4
	 ovf0HwwV8j1909VsOjqCnrEP0oFqTCzZq/lFDeOs=
X-QQ-mid: esmtpsz19t1765158919t97d72f03
X-QQ-Originating-IP: Gj8s0/eHq01JGQQD6y5farK7KZ/tS0eZm6qo7o7KPhc=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 08 Dec 2025 09:55:16 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7821749842743038252
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
Subject: [PATCH v13 02/11] usb: typec: Export typec bus and typec altmode device type
Date: Mon,  8 Dec 2025 09:54:51 +0800
Message-Id: <20251208015500.94-3-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251208015500.94-1-kernel@airkyi.com>
References: <20251208015500.94-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: N4kN3xMDJERSTQ7G+4eQJsCxLDDyEHqvrQaUsG+Rtj8uCeT/ZAfbA+DM
	ILZXO4mGP9pLVJcmgQHC5v/VZWj+XRXvGbELPwV1s2ujnksuMUUty2cwWxV8ToU+xbKTK0a
	krRXEYLjQt7vM6zwVKYWZ5D7HpI84uCaLhOSXgfFHBvWqauYdnOTYLyKePh97KrcRQfwel5
	W3lPN1Au33XWAFjavlcbsz7GQ2XiRusHryHJQUlnO+ZSOXAM414hmytWCW0A2+S1wf/i5UN
	IXqZLHsI9cKVGVt9az4n7dEtmX2qsalNAquzo3g+bO4a5vmcSvorSXqpdwkCzdbxOR3G84H
	iHcz/dR3qsEQckasX16wLecomIRWq/XNw0NdaAEM0QoI4nF+RIvKxaSFyrHPpH/i7aA2SYo
	gwFPBQg3NZHNC9/r9YSa/Sld5LdWCpENM3Q3QqJjersC49EomRI+JVqEphODOuGJqlaso1F
	tVX+EgWDjqXlrzc6gkeAjuaPMGwrFzLC2ciB6yeSYG07Cej3+VrcZyepf3jzARrDuxZg/sO
	oz7i+4WIyGkJ79+gRTiIEiemTRUDuJIrdT/26nYfcIVYvat4DsyaI1a+RIY24Q59a+LbRWP
	UYrJ6o8Go4ClWFYh5nxXAXcfv6IOYLF+7LuPLU1NxqUU1suDvUkie/zRGXmZddQPdG6+lfL
	H6d3yOnTqy3l1pcmmOsC/Ggu4d36kirE+noDdemeNK/CEjy/pLgHnv1mzVKmo0VoMjplFrT
	Bj3+O0vHVCXxSZd/E5NYxmBQm06SrUpbveT8b8fauWnGp8YwG9RQgQwn5UDQX6GCdx2+nPQ
	j565dytBEh7Yt5QgzvVCprD2yN7rhTLoYaI9n75nZVOLKL3RqiAirHnXTc9Ga0p8cPS5pLA
	TSH3RZ50/+lahT4f32UIGOPuPIsuX4LvyIqc82SFo2eImMxDfrM0v84SAwVa0B4izJjHvEd
	ilmLqzrVDx98QyjGsnhaD/LU765iILnvOOYBu7BV4ppf57Y6TvXFHzej0X0nRhzhI/LsbHW
	FDumQA7A==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_175603_467046_023472D8 
X-CRM114-Status: GOOD (  12.81  )
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

The DRM may want to register a notifier on the typec bus to know when
a typec altmode device is added, and distinguish between different
types of typec altmode device.

Export these things.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---

(no changes since v12)

Changes in v11:
- Also export typec bus.
- Add more detailed comments.

(no changes since v9)

 drivers/usb/typec/bus.c           |  1 +
 drivers/usb/typec/bus.h           | 10 ----------
 drivers/usb/typec/class.c         |  3 +++
 include/linux/usb/typec.h         |  3 +++
 include/linux/usb/typec_altmode.h |  8 ++++++++
 5 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/typec/bus.c b/drivers/usb/typec/bus.c
index a33da7f458a5..e84b134a3381 100644
--- a/drivers/usb/typec/bus.c
+++ b/drivers/usb/typec/bus.c
@@ -569,3 +569,4 @@ const struct bus_type typec_bus = {
 	.probe = typec_probe,
 	.remove = typec_remove,
 };
+EXPORT_SYMBOL_GPL(typec_bus);
diff --git a/drivers/usb/typec/bus.h b/drivers/usb/typec/bus.h
index b58e131450d1..7df5deb1dd3a 100644
--- a/drivers/usb/typec/bus.h
+++ b/drivers/usb/typec/bus.h
@@ -5,7 +5,6 @@
 
 #include <linux/usb/typec_altmode.h>
 
-struct bus_type;
 struct typec_mux;
 struct typec_retimer;
 
@@ -28,13 +27,4 @@ struct altmode {
 
 #define to_altmode(d) container_of(d, struct altmode, adev)
 
-extern const struct bus_type typec_bus;
-extern const struct device_type typec_port_altmode_dev_type;
-extern const struct device_type typec_plug_altmode_dev_type;
-extern const struct device_type typec_partner_altmode_dev_type;
-
-#define is_typec_port_altmode(dev) ((dev)->type == &typec_port_altmode_dev_type)
-#define is_typec_plug_altmode(dev) ((dev)->type == &typec_plug_altmode_dev_type)
-#define is_typec_partner_altmode(dev) ((dev)->type == &typec_partner_altmode_dev_type)
-
 #endif /* __USB_TYPEC_ALTMODE_H__ */
diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
index d6b88317f8a4..c4ff4310ff58 100644
--- a/drivers/usb/typec/class.c
+++ b/drivers/usb/typec/class.c
@@ -537,18 +537,21 @@ const struct device_type typec_port_altmode_dev_type = {
 	.groups = typec_altmode_groups,
 	.release = typec_altmode_release,
 };
+EXPORT_SYMBOL_GPL(typec_port_altmode_dev_type);
 
 const struct device_type typec_plug_altmode_dev_type = {
 	.name = "typec_plug_alternate_mode",
 	.groups = typec_altmode_groups,
 	.release = typec_altmode_release,
 };
+EXPORT_SYMBOL_GPL(typec_plug_altmode_dev_type);
 
 const struct device_type typec_partner_altmode_dev_type = {
 	.name = "typec_partner_alternate_mode",
 	.groups = typec_altmode_groups,
 	.release = typec_altmode_release,
 };
+EXPORT_SYMBOL_GPL(typec_partner_altmode_dev_type);
 
 static struct typec_altmode *
 typec_register_altmode(struct device *parent,
diff --git a/include/linux/usb/typec.h b/include/linux/usb/typec.h
index 309251572e2e..c6fd46902fce 100644
--- a/include/linux/usb/typec.h
+++ b/include/linux/usb/typec.h
@@ -20,12 +20,15 @@ struct typec_port;
 struct typec_altmode_ops;
 struct typec_cable_ops;
 
+struct bus_type;
 struct fwnode_handle;
 struct device;
 
 struct usb_power_delivery;
 struct usb_power_delivery_desc;
 
+extern const struct bus_type typec_bus;
+
 enum typec_port_type {
 	TYPEC_PORT_SRC,
 	TYPEC_PORT_SNK,
diff --git a/include/linux/usb/typec_altmode.h b/include/linux/usb/typec_altmode.h
index f7db3bd4c90e..9197a4637a93 100644
--- a/include/linux/usb/typec_altmode.h
+++ b/include/linux/usb/typec_altmode.h
@@ -9,6 +9,14 @@
 
 #define MODE_DISCOVERY_MAX	6
 
+extern const struct device_type typec_port_altmode_dev_type;
+extern const struct device_type typec_plug_altmode_dev_type;
+extern const struct device_type typec_partner_altmode_dev_type;
+
+#define is_typec_port_altmode(dev) ((dev)->type == &typec_port_altmode_dev_type)
+#define is_typec_plug_altmode(dev) ((dev)->type == &typec_plug_altmode_dev_type)
+#define is_typec_partner_altmode(dev) ((dev)->type == &typec_partner_altmode_dev_type)
+
 struct typec_altmode_ops;
 
 /**
-- 
2.51.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
