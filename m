Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CD41C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 May 2022 17:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJSjeygqOg2lGUrGmLq2wgH7Yru9mzVv/I/EV1/wCJY=; b=zbzva0dE06fSXh
	xtmoxN1xP6RRdOOYOlsjOL5wlhc3G3kgyEupsULVa0QCBB6h0YlP2tjVDYMgiUViaiklmejA5wJO5
	o/Jy3u6KPHg8Hq4VymaWa9Umzad7bxgYU/58F9OYJzL73CbtvYloQI7t/DKEh4VelQZfgJuQMK1KY
	MoXM/4LlYbpeFXOUJ+bF/Jz0AcquyMX7qmxD8GIEw4XEogWT2PiDVqn63hoWj4bXO2AG11JaoWDMH
	1dZaejgYXzo4tcvXHx4wUrtT8N8v/5sEAJ+6Fied2pxGOf3KmEqkrUqk1DIyrUUgw4uBJdKxWg2JJ
	70i+8hZNKqW7IJZYZBVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnNtb-007mEF-IX; Sat, 07 May 2022 17:07:07 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnNra-007knE-77; Sat, 07 May 2022 17:05:03 +0000
Received: from mxbox4.masterlogin.de (unknown [192.168.10.79])
 by mxout3.routing.net (Postfix) with ESMTP id 6399660561;
 Sat,  7 May 2022 17:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1651943095;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kQGjAPgxXMx5RZIrcI5ogphC8uWLFPFwvCvXcCVMHqU=;
 b=vfTBcOixxCyFGCW3s4UB5MOixwOFWza8wERUoyzoelsajfTMzb7GRxILn+lultvdyiJ8sB
 dg+FsWw6tgO/efLBgvlVvCjSGN3V8TkokygxUwZcCPYWuXiFTdCa16KBas85ZrvNMTIjIx
 lPFlmKSlwTOH6Ydvhy1VbgG4TAdBEX4=
Received: from localhost.localdomain (fttx-pool-80.245.74.2.bambit.de
 [80.245.74.2])
 by mxbox4.masterlogin.de (Postfix) with ESMTPSA id 4D04F800E7;
 Sat,  7 May 2022 17:04:54 +0000 (UTC)
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
Subject: [PATCH v3 5/6] dt-bindings: net: dsa: make reset optional and add
 rgmii-mode to mt7531
Date: Sat,  7 May 2022 19:04:39 +0200
Message-Id: <20220507170440.64005-6-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220507170440.64005-1-linux@fw-web.de>
References: <20220507170440.64005-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 1f6b5a5f-c8a8-429e-acae-3c548684f78b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220507_100502_451226_20A550A4 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
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

Make reset optional as driver already supports it, allow port 5 as
cpu-port and phy-mode rgmii for mt7531 cpu-port.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 .../devicetree/bindings/net/dsa/mediatek,mt7530.yaml          | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml b/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
index a7696d1b4a8c..d02faed41b2a 100644
--- a/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
@@ -55,6 +55,7 @@ description: |
     On mt7531:
       - "1000base-x"
       - "2500base-x"
+      - "rgmii"
       - "sgmii"
 
 
@@ -159,9 +160,6 @@ allOf:
       required:
         - resets
         - reset-names
-    else:
-      required:
-        - reset-gpios
 
   - if:
       required:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
