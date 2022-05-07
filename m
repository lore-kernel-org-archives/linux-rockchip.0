Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1289C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 May 2022 17:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqAh0SE0sepafWS3a5auBFGNu9qR8nuRL6m4TiSsg1Y=; b=34ouHsKaVREyZS
	9lmSpm0XgshF7MHzDVOqmtkNfW8D/2FBkLxWQLPsMptV/IZbbblJNvDOI+7rTtLZ9ueojSKjPmXjg
	mJmevb75pti0MsSr3fOKXITuS5BIEr9yR2mekkPW2hTOa8KKI1Sv/+G9/eOYBTM7iFtlRQDz3Ba/6
	/Vouh90FCh4AMIMByqAKfOpfbR3r0y8TfAAS6cGdWUwsxQcxNYPFgclNQ24IkquX3rLtmqTFeLrqT
	0kbmJqHjH/TUqVsV7owJhG8oQEf3Nzgc3Mq8hIBy5JLNNT9zaFObV2+kTKzW61B82pOgo6Nwx45US
	5PSp7d/ZPa1ZPz4htLiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnNru-007kty-Hx; Sat, 07 May 2022 17:05:22 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnNrW-007klJ-A9; Sat, 07 May 2022 17:04:59 +0000
Received: from mxbox4.masterlogin.de (unknown [192.168.10.79])
 by mxout3.routing.net (Postfix) with ESMTP id 7F3A66055D;
 Sat,  7 May 2022 17:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1651943092;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ix14kKhkfGJ0LxMzmCAvLzUtN0qvLqOmhQQPbdvCsFI=;
 b=uzvPR9IL9rUuL6JyIRAxn1pjcNMQFBeFUYh8m75mxHhALtCwkHuG/oErktCF4Rwix518dx
 1ilapP1rpHha2rdfg/9iCjQgts91aGy9Pv33Ij5mJ5s5qX+bK9IVLfNX556pjCpcqiCFwy
 np+GpdURPQMTWvTN4ItDN2ZZPHACcfQ=
Received: from localhost.localdomain (fttx-pool-80.245.74.2.bambit.de
 [80.245.74.2])
 by mxbox4.masterlogin.de (Postfix) with ESMTPSA id 702A1800AB;
 Sat,  7 May 2022 17:04:51 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Sean Wang <sean.wang@mediatek.com>,
 Landen Chao <Landen.Chao@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Greg Ungerer <gerg@kernel.org>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 "Mauro Carvalho Chehab" <mchehab+samsung@kernel.org>
Subject: [PATCH v3 2/6] net: dsa: mt7530: rework mt7530_hw_vlan_{add,del}
Date: Sat,  7 May 2022 19:04:36 +0200
Message-Id: <20220507170440.64005-3-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220507170440.64005-1-linux@fw-web.de>
References: <20220507170440.64005-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: d260aa6b-fd71-45f7-beb2-17018c2f97a8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220507_100458_541438_25353B5E 
X-CRM114-Status: GOOD (  17.06  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Frank Wunderlich <frank-w@public-files.de>

Rework vlan_add/vlan_del functions in preparation for dynamic cpu port.

Currently BIT(MT7530_CPU_PORT) is added to new_members, even though
mt7530_port_vlan_add() will be called on the CPU port too.

Let DSA core decide when to call port_vlan_add for the CPU port, rather
than doing it implicitly.

We can do autonomous forwarding in a certain VLAN, but not add br0 to that
VLAN and avoid flooding the CPU with those packets, if software knows it
doesn't need to process them.

Suggested-by: Vladimir Oltean <olteanv@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Reviewed-by: Vladimir Oltean <olteanv@gmail.com>
---
v2: new patch
---
 drivers/net/dsa/mt7530.c | 30 ++++++++++++------------------
 1 file changed, 12 insertions(+), 18 deletions(-)

diff --git a/drivers/net/dsa/mt7530.c b/drivers/net/dsa/mt7530.c
index 19f0035d4410..46dee0714382 100644
--- a/drivers/net/dsa/mt7530.c
+++ b/drivers/net/dsa/mt7530.c
@@ -1522,11 +1522,11 @@ static void
 mt7530_hw_vlan_add(struct mt7530_priv *priv,
 		   struct mt7530_hw_vlan_entry *entry)
 {
+	struct dsa_port *dp = dsa_to_port(priv->ds, entry->port);
 	u8 new_members;
 	u32 val;
 
-	new_members = entry->old_members | BIT(entry->port) |
-		      BIT(MT7530_CPU_PORT);
+	new_members = entry->old_members | BIT(entry->port);
 
 	/* Validate the entry with independent learning, create egress tag per
 	 * VLAN and joining the port as one of the port members.
@@ -1537,22 +1537,20 @@ mt7530_hw_vlan_add(struct mt7530_priv *priv,
 
 	/* Decide whether adding tag or not for those outgoing packets from the
 	 * port inside the VLAN.
-	 */
-	val = entry->untagged ? MT7530_VLAN_EGRESS_UNTAG :
-				MT7530_VLAN_EGRESS_TAG;
-	mt7530_rmw(priv, MT7530_VAWD2,
-		   ETAG_CTRL_P_MASK(entry->port),
-		   ETAG_CTRL_P(entry->port, val));
-
-	/* CPU port is always taken as a tagged port for serving more than one
+	 * CPU port is always taken as a tagged port for serving more than one
 	 * VLANs across and also being applied with egress type stack mode for
 	 * that VLAN tags would be appended after hardware special tag used as
 	 * DSA tag.
 	 */
+	if (dsa_port_is_cpu(dp))
+		val = MT7530_VLAN_EGRESS_STACK;
+	else if (entry->untagged)
+		val = MT7530_VLAN_EGRESS_UNTAG;
+	else
+		val = MT7530_VLAN_EGRESS_TAG;
 	mt7530_rmw(priv, MT7530_VAWD2,
-		   ETAG_CTRL_P_MASK(MT7530_CPU_PORT),
-		   ETAG_CTRL_P(MT7530_CPU_PORT,
-			       MT7530_VLAN_EGRESS_STACK));
+		   ETAG_CTRL_P_MASK(entry->port),
+		   ETAG_CTRL_P(entry->port, val));
 }
 
 static void
@@ -1571,11 +1569,7 @@ mt7530_hw_vlan_del(struct mt7530_priv *priv,
 		return;
 	}
 
-	/* If certain member apart from CPU port is still alive in the VLAN,
-	 * the entry would be kept valid. Otherwise, the entry is got to be
-	 * disabled.
-	 */
-	if (new_members && new_members != BIT(MT7530_CPU_PORT)) {
+	if (new_members) {
 		val = IVL_MAC | VTAG_EN | PORT_MEM(new_members) |
 		      VLAN_VALID;
 		mt7530_write(priv, MT7530_VAWD1, val);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
