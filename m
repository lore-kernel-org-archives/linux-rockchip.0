Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAC61C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 13:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxoFQ2T04Flq54Lyp3eRIabE+suif5QgzMCliBP6O4E=; b=gI6TUGmYwI3TpK
	CwXQC4VppEanoyD9/w5DGHumILmnreIYkPE3IW2VaL1fyHZ/SBzCLNbbOuXy8NteN3zK7t7dxRw8Z
	OV6Z31+PGdUUkpRmlV/JrAvDkalBLG+rqteFeG/baJFQ4Zu3e+6000eCoWPc4K8TVSnxuMc+DcGfH
	XEPyXawjpkkg/qq38vkNCa/NzIe/qzrzJ9GJvw1wRtvXFAiQ4h/yZ1f4zyCGK6pTNlQ0kkkAfeeGC
	I70H+vb6AGYeB3O4krB6lr0jLmipyB6Tx3baaKGhQ2Wqe/uUUQmxbul0udu5fFlPNF1owTHgK0V3G
	wLJU0d4odzNFLUkZcbFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkmln-00EGnu-7p; Sat, 30 Apr 2022 13:04:19 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkmla-00EGgz-1q; Sat, 30 Apr 2022 13:04:07 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout3.routing.net (Postfix) with ESMTP id 695D060558;
 Sat, 30 Apr 2022 13:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1651323842;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LfsvQJQSzl8CIsJRZhpttH4V4tci5c+LrDqCSmvZG2E=;
 b=ZTEMI1rKV8GDE6M6mu1N2eCI7XNXn7tl0UQr2KIYUdn8YCDBjwMrTQ7HJcrYlZJ4REZ/G/
 CvF5jxPiMkDvbl1ieKdY1cB5AL9GALl1SSoIo4/Lq6ETm0+AicgFp5oyYX94WlyE8GnNoH
 XOWldNgLLH58VSRaWkzHD6moPx7RS+s=
Received: from localhost.localdomain (fttx-pool-80.245.72.211.bambit.de
 [80.245.72.211])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id 4E44B3605FC;
 Sat, 30 Apr 2022 13:04:01 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Sean Wang <sean.wang@mediatek.com>,
 Landen Chao <Landen.Chao@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: [RFC v2 2/4] net: dsa: mt7530: rework mt753[01]_setup
Date: Sat, 30 Apr 2022 15:03:45 +0200
Message-Id: <20220430130347.15190-3-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220430130347.15190-1-linux@fw-web.de>
References: <20220430130347.15190-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 4c126447-4b4c-4737-bb96-3b868640f48f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_060406_278822_133C85B6 
X-CRM114-Status: GOOD (  12.88  )
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

Enumerate available cpu-ports instead of using hardcoded constant.

Suggested-by: Vladimir Oltean <olteanv@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 drivers/net/dsa/mt7530.c | 25 +++++++++++++++++++++----
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/net/dsa/mt7530.c b/drivers/net/dsa/mt7530.c
index 46dee0714382..144c29f8fefc 100644
--- a/drivers/net/dsa/mt7530.c
+++ b/drivers/net/dsa/mt7530.c
@@ -2087,11 +2087,12 @@ static int
 mt7530_setup(struct dsa_switch *ds)
 {
 	struct mt7530_priv *priv = ds->priv;
+	struct device_node *dn = NULL;
 	struct device_node *phy_node;
 	struct device_node *mac_np;
 	struct mt7530_dummy_poll p;
 	phy_interface_t interface;
-	struct device_node *dn;
+	struct dsa_port *cpu_dp;
 	u32 id, val;
 	int ret, i;
 
@@ -2099,7 +2100,19 @@ mt7530_setup(struct dsa_switch *ds)
 	 * controller also is the container for two GMACs nodes representing
 	 * as two netdev instances.
 	 */
-	dn = dsa_to_port(ds, MT7530_CPU_PORT)->master->dev.of_node->parent;
+	dsa_switch_for_each_cpu_port(cpu_dp, ds) {
+		dn = cpu_dp->master->dev.of_node->parent;
+		/* It doesn't matter which CPU port is found first,
+		 * their masters should share the same parent OF node
+		 */
+		break;
+	}
+
+	if (!dn) {
+		dev_err(ds->dev, "parent OF node of DSA master not found");
+		return -EINVAL;
+	}
+
 	ds->assisted_learning_on_cpu_port = true;
 	ds->mtu_enforcement_ingress = true;
 
@@ -2260,6 +2273,7 @@ mt7531_setup(struct dsa_switch *ds)
 {
 	struct mt7530_priv *priv = ds->priv;
 	struct mt7530_dummy_poll p;
+	struct dsa_port *cpu_dp;
 	u32 val, id;
 	int ret, i;
 
@@ -2332,8 +2346,11 @@ mt7531_setup(struct dsa_switch *ds)
 				 CORE_PLL_GROUP4, val);
 
 	/* BPDU to CPU port */
-	mt7530_rmw(priv, MT7531_CFC, MT7531_CPU_PMAP_MASK,
-		   BIT(MT7530_CPU_PORT));
+	dsa_switch_for_each_cpu_port(cpu_dp, ds) {
+		mt7530_rmw(priv, MT7531_CFC, MT7531_CPU_PMAP_MASK,
+			   BIT(cpu_dp->index));
+		break;
+	}
 	mt7530_rmw(priv, MT753X_BPC, MT753X_BPDU_PORT_FW_MASK,
 		   MT753X_BPDU_CPU_ONLY);
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
