Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2E57C87FCE
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Jul 2025 18:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xeYLNKyDgDGYFeM3sKVbRx4HiRj9iEjytWiMNIr4P/I=; b=a/iOfh9p9HL8/v
	Vq5rPdwNKjkaR+Bxmn4yywubErCQsUbyhcAZ58+9+5ofUHi5/b1Kcmlf6KsDgh1efX1XIo7I1+peA
	lhc/qr/qTAU4qYAofSpKHyxUBRFulQXYn+HBKZ8mbtAf1l3hq3CNG1KNBz788LZslkVU5NBRYyQ3J
	ifQ1YDab+CQTcsmr7PCEAhAbK9K3Qkq+QuM89diES+ItFBa0BK9a7kwd83scRpMozUE7fzenEGIy+
	WRisWc07rRif5vG7iZZyYI9fvXjqN6nZRI4efMyeJJubw+QrAmBreKk6VvnlDW7yUMH9JAS9jQ1Ji
	BLmvya5ActdjbZ9bKVDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ug5nc-0000000D2zO-1Q18;
	Sun, 27 Jul 2025 18:08:40 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ug5ic-0000000D2RN-1RmA
	for linux-rockchip@lists.infradead.org;
	Sun, 27 Jul 2025 18:03:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753639410; bh=YWL3aOX28KQzuVWsTQMiXAVfLLtLJhYtG+UmgpEGycA=;
 b=taU8otBZC0BXYC6G5DxybVDcjgeae/gqtiXIHORfBbo0ucEfcwvAf+xc8ndKBGXoJpS0zTc7Z
 pREDLOn381JWF2wUIinVgAXIJmiFlile5j9AlkICe3Qje5piQtc4IBPyxrwt4epznI+6g73DWH/
 hgu6qq7V4zUHCiUDpsBj/g/7gYiNzI1BlExocbhZhtsrp7qV4n9DPKuhd/BZ96FBoFff6NfRNaF
 xrpn7IKHxIoWS0jxq3G4x4ZA27+PsHynXMFRRUo9bRxogWgrPPFWOF/Mu/IqfSrcpB9DlwxCLou
 QM0pvv6WdW7pVSO353ovghor/gS9uKGH87U39D3WwjPg==
X-Forward-Email-ID: 688669e9c509b9ee169cf326
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.7
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Linus Walleij <linus.walleij@linaro.org>,
	=?UTF-8?q?Alvin=20=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Heiko Stuebner <heiko@sntech.de>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH net-next 2/3] net: dsa: realtek: Add support for use of an optional mdio node
Date: Sun, 27 Jul 2025 18:02:59 +0000
Message-ID: <20250727180305.381483-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250727180305.381483-1-jonas@kwiboo.se>
References: <20250727180305.381483-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250727_110330_429237_EF39D218 
X-CRM114-Status: GOOD (  15.24  )
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

The dt-bindings schema for Realtek switches for unmanaged switches
contains a restriction on use of a mdio child OF node for MDIO-connected
switches, i.e.:

  if:
    required:
      - reg
  then:
    not:
      required:
        - mdio
    properties:
      mdio: false

However, the driver currently requires the existence of a mdio child OF
node to successfully probe and properly function.

Relax the requirement of a mdio child OF node and assign the dsa_switch
user_mii_bus to allow a MDIO-connected switch to probe and function
when a mdio child OF node is missing.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/net/dsa/realtek/rtl83xx.c | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/net/dsa/realtek/rtl83xx.c b/drivers/net/dsa/realtek/rtl83xx.c
index 9a05616acea8..47a09b27c4fa 100644
--- a/drivers/net/dsa/realtek/rtl83xx.c
+++ b/drivers/net/dsa/realtek/rtl83xx.c
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 
+#include <linux/irqdomain.h>
 #include <linux/module.h>
 #include <linux/regmap.h>
 #include <linux/of_mdio.h>
@@ -64,7 +65,7 @@ static int rtl83xx_user_mdio_write(struct mii_bus *bus, int addr, int regnum,
  * @ds: DSA switch associated with this user_mii_bus
  *
  * Registers the MDIO bus for built-in Ethernet PHYs, and associates it with
- * the mandatory 'mdio' child OF node of the switch.
+ * the optional 'mdio' child OF node of the switch.
  *
  * Context: Can sleep.
  * Return: 0 on success, negative value for failure.
@@ -75,11 +76,14 @@ int rtl83xx_setup_user_mdio(struct dsa_switch *ds)
 	struct device_node *mdio_np;
 	struct mii_bus *bus;
 	int ret = 0;
+	int irq;
+	int i;
 
 	mdio_np = of_get_child_by_name(priv->dev->of_node, "mdio");
-	if (!mdio_np) {
-		dev_err(priv->dev, "no MDIO bus node\n");
-		return -ENODEV;
+	if (mdio_np && !of_device_is_available(mdio_np)) {
+		dev_err(priv->dev, "no available MDIO bus node\n");
+		ret = -ENODEV;
+		goto err_put_node;
 	}
 
 	bus = devm_mdiobus_alloc(priv->dev);
@@ -95,6 +99,20 @@ int rtl83xx_setup_user_mdio(struct dsa_switch *ds)
 	snprintf(bus->id, MII_BUS_ID_SIZE, "%s:user_mii", dev_name(priv->dev));
 	bus->parent = priv->dev;
 
+	if (!mdio_np) {
+		ds->user_mii_bus = bus;
+		bus->phy_mask = ~ds->phys_mii_mask;
+
+		if (priv->irqdomain) {
+			for (i = 0; i < priv->num_ports; i++) {
+				irq = irq_find_mapping(priv->irqdomain, i);
+				if (irq < 0)
+					continue;
+				bus->irq[i] = irq;
+			}
+		}
+	}
+
 	ret = devm_of_mdiobus_register(priv->dev, bus, mdio_np);
 	if (ret) {
 		dev_err(priv->dev, "unable to register MDIO bus %s\n",
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
