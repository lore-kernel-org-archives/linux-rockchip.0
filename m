Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3EB1606A319
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 07:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=t+U0EWoA;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=airkyi.com header.i=@airkyi.com header.a=rsa-sha256 header.s=altu2504 header.b=WE1Os1kC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y870iCDPcmfjNzd834ZHVz+3J4mJXtHebLiDiHAECh0=; b=t+U0EWoAMqkxeD
	5aifR4S436pieKnBPgqx+Xccf3NNr4V8O/OKhrkYLpbK/CuziKhSh/U8HXOWZqO4NHJFIAiiSqF7d
	CfpglePh1sRkNqNnMiwBOCqfKLE53rCKZZddrievezKTPeGnmwFZswTmbmos6Ys0GAjRVOgZDlF4B
	U1xssw0BHnvVE7HhhPlSbJo/b3s4U5J57ZwPBt2RdNfhrD4EGBgu2efxcSAilH7IbJc1dkx7yCs4p
	654GwqwqFEWnPxwDIJSmP1W49VL+2rYrbmbXXHJ7mSkvDzh6TaI8s1cwPyy937rZMFJzp8Gv62vO9
	c9m8EBY/dvY8Qp1iiW4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ4Im-000000092cV-2Ulz;
	Tue, 20 Oct 2026 07:30:28 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ4Ih-000000092Mg-0yAq;
	Tue, 20 Oct 2026 07:30:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1792481350;
	bh=ps+5/GB0NshBez8oJzJPOCqkIqmjQyVJoJgHnSj4//Y=;
	h=From:To:Subject:Date:Message-Id;
	b=WE1Os1kCyShFbPK5b5Sm7DlyzEpw5Gfg+SNl12JlYD7B0FSP62XeHrPEQTWTzR0Mo
	 tMT01q19JJlyWZ59hTIOXNt8W6wVUWGJo+RLtabspjrfi1VG4O4G2BZV+XsiHoCvun
	 EoRX3lrk2EW1hy0/PJZTqV8135+h4gs0MPySRzAQ=
X-QQ-mid: zesmtpsz4t1792481349t498ce6ab
X-QQ-Originating-IP: 5IQQW5FN/kiyWe2+lWi53DmnbY8e45q3p8I9AC3Xxks=
Received: from DESKTOP-8BT1A2O.localdomain ( [61.154.14.86])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 20 Oct 2026 15:29:02 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12217570739329010046
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
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH v8 5/7] phy: rockchip: phy-rockchip-typec: Add DRM AUX bridge
Date: Tue, 20 Oct 2026 15:28:14 +0800
Message-Id: <20261020072816.180-6-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20261020072816.180-1-kernel@airkyi.com>
References: <20261020072816.180-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NFcI4DQTV9fm8pZwPapyv3tn281ajQKr81iOFpClffJowLhyLMhz3XXG
	QRmtFe9TDvvGXnX3dK+Rnm4zu5N7kG0ff8RQn/UCZLeDYh55TONje/yWXxVzR5VRlMrq6En
	HBqYsKD1j6D/1cdFk48uioFN8jTSWrlgrMEQtZoBaPtaohnqfF+gGxNMdfjXon2mPWmzBEG
	qfCxJTzdJQwgKHnkHhZuJCEjLXpbW89QyY+P8pOFFj6SRgUeWBpx9ok8Oo0p0u1XWYubUC3
	eDup+Ej9lvQxTceSsKeJAzaNvxMQk4trOJpJzSx7U+RecWhDFTO8yQcDkcDkIfnknG0wqbD
	wIKFxBjWCMZmnpYoIbCdhU1Ihat4EhnUQaaU/QjLEFyscXTDXTYfcKtGywqpkFqdkjy/o0C
	wHVZa/hwORbsMyqIQ/YOZhLdDnqg/cAqWMZSU09w6x4R1bsN6Xgqi2lh3DL8Y+MFQsTkIqn
	RhjSvFy/NTxd4yCD/+Nw3Y8kcaq09/7PuVq13FuZcsE6fHfEdH+ZbFlS2vdAa70WsLheNUw
	64h/aIfQ4j8fi2i1SZUTNZEWEKVhSQLnOitbdFIIK21Fk+3Wl8iDF4titxwyqPJqkDu6AsV
	CUSFjr4h5wQTtWMZH4UD6U7aURLxnIynPiAo6l274J0hkiIJfXaLvxfeuMUo3tayY0E2XK3
	Y7vxWTtjUACGyukfcOI/AAzucGLvOQtaflGqMPUjastqbjs3szv77EUeQfGpluEoMmJQGhV
	mcWOIytE7I4Zh5305rRlICRW0C5yK9IrILrpCOQ+w6gyybXTMahwoHSgw5yq2m4gq/QTvcA
	KpO+tvR32spcLb4pM+QBm0b9+BJbycubttjIATVWMNo4Sk2AqW/K7jneAFDDp7xzPeKW3AB
	a+3CIxPzLnVFU8yb1cFaGWXE2Do5pMn3f6lBtzWb1ad6X5Cfvo0AF9pRpnMKaJBMI/3aeex
	7Y62zb4LG3KkeoMvd4npoW6vF1KghdLdDBBQbDdmcPqPTv2/LrLiNmM1pYGYXdNFYlhpPPA
	pqVjnwRlsEmcEMZVpX/uL+ax8Bq3fP9pGd6ij8s5RuMkPv3h07
X-QQ-XMRINFO: M/715EihBoGS47X28/vv4NpnfpeBLnr4Qg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_003025_118099_01A22FC5 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Using the DRM_AUX_BRIDGE helper to create the transparent DRM bridge
device.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
(no changes since v1)
---
 drivers/phy/rockchip/Kconfig              |  2 ++
 drivers/phy/rockchip/phy-rockchip-typec.c | 13 +++++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index 14698571b607..9173d3b4fef4 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -119,6 +119,8 @@ config PHY_ROCKCHIP_SNPS_PCIE3
 config PHY_ROCKCHIP_TYPEC
 	tristate "Rockchip TYPEC PHY Driver"
 	depends on OF && (ARCH_ROCKCHIP || COMPILE_TEST)
+	depends on DRM || DRM=n
+	select DRM_AUX_BRIDGE if DRM_BRIDGE
 	select EXTCON
 	select GENERIC_PHY
 	select RESET_CONTROLLER
diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index d9701b6106d5..48070b50416e 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -54,6 +54,7 @@
 
 #include <linux/mfd/syscon.h>
 #include <linux/phy/phy.h>
+#include <drm/bridge/aux-bridge.h>
 
 #define CMN_SSM_BANDGAP			(0x21 << 2)
 #define CMN_SSM_BIAS			(0x22 << 2)
@@ -1162,16 +1163,24 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
 
 	for_each_available_child_of_node(np, child_np) {
 		struct phy *phy;
+		ret = 0;
 
-		if (of_node_name_eq(child_np, "dp-port"))
+		if (of_node_name_eq(child_np, "dp-port")) {
 			phy = devm_phy_create(dev, child_np,
 					      &rockchip_dp_phy_ops);
-		else if (of_node_name_eq(child_np, "usb3-port"))
+			ret = drm_aux_bridge_register_from_node(dev, child_np);
+		} else if (of_node_name_eq(child_np, "usb3-port"))
 			phy = devm_phy_create(dev, child_np,
 					      &rockchip_usb3_phy_ops);
 		else
 			continue;
 
+		if (ret) {
+			pm_runtime_disable(dev);
+			of_node_put(child_np);
+			return ret;
+		}
+
 		if (IS_ERR(phy)) {
 			dev_err(dev, "failed to create phy: %pOFn\n",
 				child_np);
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
