Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B286DC44508
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 16:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6wyyMQGCHQ/ykX1NPAA80u2njGrzv8hXZNjK3fZT+DI=; b=1PGKb7THmenh0D
	5ufEq3gt6jOdQgRzACR3a/+T5M+Pf2Zlg3Wb7JdOKJpwPLCQorZMe+uuWr3ZLl5d5i9lmaWZki7Yt
	ea1MPTJm9odvXHtyth4Uadm6OyFufoOpAhi5n8nyipIFwMlGsXIBRk3/s/teBUlkSK0iOcO4Jt1j7
	+STHQckMvmCeLcCSmiSPrkGaa7MKYyF7gHVY7stLojJ0qt69FJM4Uu/zgeoygyC+INSetBXz3LOsY
	btaDjiXFrhsIC/EoAc+YG0GJqqq7C0g2CKYwsqppVC2y5QPnvsC8p0MusVfD008lsKt4EDxdC1BSM
	A2X/d5v1TBqvhN+O7LOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiEOA-00000005Ll2-0VfX;
	Fri, 10 Jul 2026 16:47:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiEN0-00000005JPT-0OWz;
	Fri, 10 Jul 2026 16:46:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=MBelg5vBWOcsV7Rtcqg3aW4P9LjL6m75vGQ3nd7OAMc=; b=WJQJYqkDrZdS2J4aG5/lXoNoQh
	X13rXcpkIOBHsXzZEVBp5vqhycRDMPZlBtAFy0E4k51J1pS6golcfP/ZS2fChqbvybrsD7Wlk7FS1
	MOn1QcMZZ4pVN0EoUTnoTbuwrgcQPdCSZpXvgXTIF2ZutA04Ijjh4u3cyELruKSgLncCr40xV0FpQ
	sMEATw1BCfl0zaQ4OSDNa8T/UFAJ8BKnXd2en7p4u6CbAr73xCC8FTX2tQ0gkrxCaCA5T//d4PuUH
	W1bchYHhhhwpJM9F189AgAW8x9Chxnjg9y/2nr4YZzouHagFEM41oKsA78ytKfV487Yye7r1Xibsk
	aR7oXl2A==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wiEMx-0000000AAbN-0IoU;
	Fri, 10 Jul 2026 16:46:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783701979;
	bh=sykfJDcEh0P0sU0/0Mx5RGtaMEmg4itoA8UTsTqvby0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=HJonlG7kJazZjZbs/udHDOakBkT1WSp6vMb7IHSi9u/kHmWykZxOHxGyKuT5+gzQp
	 ow98Kk47eVggVPBkkGOerUsQxoSoQw8kHdcpCQrPmQfk0edmbnDGpbkv6dlOTB+Dj3
	 ltAzztMR2cYOg4NhIEE+wo7a5NrUhKVIIvy1CGB47+UZaJzymNfxWLdZOy4gWM50yv
	 DonNQF0wHG/Q9ujoAc9szRYJkcqueIaVVS7AnDqHbRu+b9NiD5hTJRpa1NfuSm0KaC
	 JJqRy+Ip6YNdso4nGcBm3rtYHZHrupPY0y2exLHARZeJc0nVEidhtS7ZAh9oe5JCah
	 nnmmOWAbY3w4Q==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3628A17E12A2;
	Fri, 10 Jul 2026 18:46:19 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 137C3480071; Fri, 10 Jul 2026 18:46:18 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 10 Jul 2026 18:45:07 +0200
Subject: [PATCH v12 29/36] phy: core: add notifier infrastructure
MIME-Version: 1.0
Message-Id: <20260710-rockchip-usbdp-cleanup-v12-29-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6202;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=sykfJDcEh0P0sU0/0Mx5RGtaMEmg4itoA8UTsTqvby0=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpRIdlthdGBAxdtVa3KVvau/6dTMC0jYGybC
 XcxkmNFNi+bIYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqUSHZAAoJENju1/PI
 O/qatUoQAKDbZGciqLn7ASJnvVPqZqsjpDAxlP5m+4qI8S+8WKF3ClOh6jqeeTekQYi7duQffsK
 Dz/QnZTfwLntifMsbD2GuwGPSOACnkhJxodP4JaosnyklNm4/DVQPLF22IPKcimC9x7tk+lGZkN
 Cj0/fldGoPZojqURyLnZMQRc46sexPMkgKWfZTzzkTEtvPia4/Zybff8Fh1W9oROy1Kfdi9Mzza
 p16awfSa4oxYJa9MD42SZrvRtq1foevdN91q+boFHfVetRHq1K8BfeEkyaHw+bby+V8Ne3qMEnc
 3lxnUSQDvSJuIXJeMYbXvapM1BeRzew8h8+MVBPIPphvX6KQBqKHrRZ0W+XQf+/h1u2r9L6tBmS
 7k7a5sgYNe5gG+dyX9i6Y6YDl73Lq3PBaeJGJR4Xva8hP9/IFfqXcFFYHe0alcs5zCtJcBvwghQ
 N6ESKkdl/7yYqL6T2Kn3E3bAS0T4a2SIdCtmthCM2NEEFH+6VmaKdr+49qqF2p1KkYZM2uNK7YN
 PvlBxkEnA9hpxkVl7KmHO/E6KKF9F/Fr2eh/5EwIE+4QSYHYU8+n3n+7fMcT6xRXt0ZuaqfyWro
 UxFQzUt1KDkd6Xdc1N4EUT03YQgxKutCd8nNt8n905isSegkfA5H9YW3OkCC+IpKvzUdOC5n3tO
 U9wl302BcQfZ4tVz7bjQxiA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_174631_279544_EEF590BD 
X-CRM114-Status: GOOD (  20.49  )
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

Some PHY devices with multiple ports (e.g. USB3 and DP) require a reset
if the configuration changes or cable orientation changes. This is a
problem, as the consumer device will run into undefined behavior.

With the new PHY notifier API introduced in this patch, the consumer
driver can hook into reset events coming from a PHY device to handle the
PHY going down gracefully.

Note that this uses -ENOSYS instead of the more sensible -ENOTSUP for
the stub functions when GENERIC_PHY is disabled to stay consistent with
the existing ones.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/phy-core.c  | 65 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/phy/phy.h | 40 ++++++++++++++++++++++++++++++
 2 files changed, 105 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 21aaf2f76e53..51d261daae7a 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -542,6 +542,70 @@ int phy_notify_state(struct phy *phy, union phy_notify state)
 }
 EXPORT_SYMBOL_GPL(phy_notify_state);
 
+/**
+ * phy_register_notifier() - register a notifier for PHY events
+ * @phy: the phy returned by phy_get()
+ * @nb: notifier block to register
+ *
+ * Allows PHY consumers to receive notifications about PHY reset events.
+ * PHY providers can signal these events using phy_notify_reset().
+ *
+ * Returns: %0 if successful, a negative error code otherwise
+ */
+int phy_register_notifier(struct phy *phy, struct notifier_block *nb)
+{
+	if (!phy)
+		return 0;
+
+	return blocking_notifier_chain_register(&phy->notifier, nb);
+}
+EXPORT_SYMBOL_GPL(phy_register_notifier);
+
+/**
+ * phy_unregister_notifier() - unregister a notifier for PHY events
+ * @phy: the phy returned by phy_get()
+ * @nb: notifier block to unregister
+ *
+ * Returns: %0 if successful, a negative error code otherwise
+ */
+int phy_unregister_notifier(struct phy *phy, struct notifier_block *nb)
+{
+	if (!phy)
+		return 0;
+
+	return blocking_notifier_chain_unregister(&phy->notifier, nb);
+}
+EXPORT_SYMBOL_GPL(phy_unregister_notifier);
+
+/**
+ * phy_notify_reset() - notify consumers of a PHY reset event
+ * @phy: the phy that is being reset
+ * @event: the notification event (PRE_RESET or POST_RESET)
+ *
+ * Called by PHY providers to notify consumers that the PHY is about to
+ * be reset or has completed a reset. This allows consumers to quiesce
+ * hardware before the PHY becomes unavailable.
+ *
+ * This may be called from within PHY provider callbacks (e.g. set_mode,
+ * power_on) where phy->mutex is held. Consumer notification handlers must
+ * therefore NOT call back into the PHY framework (e.g. phy_power_off,
+ * phy_exit) on the same PHY, as this would result in a deadlock.
+ *
+ * Returns: %0 if successful or no notifiers registered, a negative error
+ * code if a notifier returns an error (for PRE_RESET only)
+ */
+int phy_notify_reset(struct phy *phy, enum phy_notification event)
+{
+	int ret;
+
+	if (!phy)
+		return 0;
+
+	ret = blocking_notifier_call_chain(&phy->notifier, event, phy);
+	return notifier_to_errno(ret);
+}
+EXPORT_SYMBOL_GPL(phy_notify_reset);
+
 /**
  * phy_configure() - Changes the phy parameters
  * @phy: the phy returned by phy_get()
@@ -1018,6 +1082,7 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
 	device_initialize(&phy->dev);
 	lockdep_register_key(&phy->lockdep_key);
 	mutex_init_with_key(&phy->mutex, &phy->lockdep_key);
+	BLOCKING_INIT_NOTIFIER_HEAD(&phy->notifier);
 
 	phy->dev.class = &phy_class;
 	phy->dev.parent = dev;
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index ea47975e288a..3779a4d0a02c 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -11,6 +11,7 @@
 #define __DRIVERS_PHY_H
 
 #include <linux/err.h>
+#include <linux/notifier.h>
 #include <linux/of.h>
 #include <linux/device.h>
 #include <linux/pm_runtime.h>
@@ -53,6 +54,16 @@ enum phy_media {
 	PHY_MEDIA_DAC,
 };
 
+/**
+ * enum phy_notification - PHY notification events
+ * @PHY_NOTIFY_PRE_RESET: PHY is about to be reset, consumers should quiesce
+ * @PHY_NOTIFY_POST_RESET: PHY reset is complete, consumers may resume
+ */
+enum phy_notification {
+	PHY_NOTIFY_PRE_RESET,
+	PHY_NOTIFY_POST_RESET,
+};
+
 enum phy_ufs_state {
 	PHY_UFS_HIBERN8_ENTER,
 	PHY_UFS_HIBERN8_EXIT,
@@ -170,6 +181,7 @@ struct phy_attrs {
  * @power_count: used to protect when the PHY is used by multiple consumers
  * @attrs: used to specify PHY specific attributes
  * @pwr: power regulator associated with the phy
+ * @notifier: notifier head for PHY reset events
  * @debugfs: debugfs directory
  */
 struct phy {
@@ -182,6 +194,7 @@ struct phy {
 	int			power_count;
 	struct phy_attrs	attrs;
 	struct regulator	*pwr;
+	struct blocking_notifier_head notifier;
 	struct dentry		*debugfs;
 };
 
@@ -267,6 +280,9 @@ int phy_calibrate(struct phy *phy);
 int phy_notify_connect(struct phy *phy, int port);
 int phy_notify_disconnect(struct phy *phy, int port);
 int phy_notify_state(struct phy *phy, union phy_notify state);
+int phy_register_notifier(struct phy *phy, struct notifier_block *nb);
+int phy_unregister_notifier(struct phy *phy, struct notifier_block *nb);
+int phy_notify_reset(struct phy *phy, enum phy_notification event);
 static inline int phy_get_bus_width(struct phy *phy)
 {
 	return phy->attrs.bus_width;
@@ -428,6 +444,30 @@ static inline int phy_notify_state(struct phy *phy, union phy_notify state)
 	return -ENOSYS;
 }
 
+static inline int phy_register_notifier(struct phy *phy,
+					struct notifier_block *nb)
+{
+	if (!phy)
+		return 0;
+	return -ENOSYS;
+}
+
+static inline int phy_unregister_notifier(struct phy *phy,
+					  struct notifier_block *nb)
+{
+	if (!phy)
+		return 0;
+	return -ENOSYS;
+}
+
+static inline int phy_notify_reset(struct phy *phy,
+				   enum phy_notification event)
+{
+	if (!phy)
+		return 0;
+	return -ENOSYS;
+}
+
 static inline int phy_configure(struct phy *phy,
 				union phy_configure_opts *opts)
 {

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
