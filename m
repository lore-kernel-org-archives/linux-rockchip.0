Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E241C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 15:41:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DF42B61006
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 15:41:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DF42B61006
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Dgk46gcA4T9X5Nuu6nDrULvS2jGeM17i+eWI1R/U0Y=; b=Vr0EMLFDyjmdcPUAA8N6SB5cB
	LNDvLq/ulQBOewFIEg1uwtHH17wr85/szo2LN3Bx8YWF3h2Rqd7CkN8pHgezM1e9iVGHOOstVuDQQ
	jGbQkFKm9Sp8YSIv5osGnq4fI9r26BqetaVR2uLyr/YZfrCtmNRZlLZZis5Ge3ZwlQgs7Tg0lOxWi
	8WYu7sdDlx8NFzY5N0q4wnbi2BR12P0dvkFv0OrcjHSC4AVy2jo1ZvhVFbpavR0mSkh87gC0PBAC+
	kfYNFy0wwta8hM8bY95CJp2/pXoDefTsjhb6v5eEs9Viz+FMnYepRc95458CrpOJR+ABUx3gkn5nF
	NXto6spuA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lifMj-00FROr-Uc; Mon, 17 May 2021 15:41:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lifMh-00FROA-Eh
 for linux-rockchip@desiato.infradead.org; Mon, 17 May 2021 15:41:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=EjVhrqSVOUWprwwTE51AgIdnbah59cEq0mxYsG8NUJQ=; b=IeJ+sHS/BEynpcEWHUQfQJzoWg
 b2MGz+szhOI/obSRmkGa/OrPAHzu4HxU6kZCc0Lvgh7wFQZgzcBMG0GrG2kIPf0an890nyrHylnjW
 CkQH/o0Ga9/Ej3gL+uIzmRPOLOoSVDXE6aDJQmS1F9zv6TTEUJCuJD7V9sEDPfh/gb2h1VP4Qovbp
 JmzD+gjRlnMQGhTGrjchmA2y+tX+BWTE0/D4eVlK6HvqBrpDwdpNyvVWU5/42ncQGNegQP+JKvSFC
 JpDl6OZkA6j3bJb+IYU0OXv8crIqxk9Snkfcr5JwNg0aa0EICsU8e+1taeARcCIiakdgT2qJrEh9X
 kHytezBA==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lifMe-00Dw3L-TJ
 for linux-rockchip@lists.infradead.org; Mon, 17 May 2021 15:41:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3BE141F423BB
From: Ezequiel Garcia <ezequiel@collabora.com>
To: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 David Wu <david.wu@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens213@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v3 net-next 3/4] dt-bindings: net: rockchip-dwmac: add rk3568
 compatible string
Date: Mon, 17 May 2021 12:40:36 -0300
Message-Id: <20210517154037.37946-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210517154037.37946-1-ezequiel@collabora.com>
References: <20210517154037.37946-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_084105_098068_0E820745 
X-CRM114-Status: UNSURE (   7.05  )
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

Add compatible string for RK3568 gmac, and constrain it to
be compatible with Synopsys dwmac 4.20a.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../bindings/net/rockchip-dwmac.yaml          | 30 +++++++++++--------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 34a660ad6b30..083623c8d718 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -24,6 +24,7 @@ select:
           - rockchip,rk3366-gmac
           - rockchip,rk3368-gmac
           - rockchip,rk3399-gmac
+          - rockchip,rk3568-gmac
           - rockchip,rv1108-gmac
   required:
     - compatible
@@ -33,18 +34,23 @@ allOf:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - rockchip,px30-gmac
-          - rockchip,rk3128-gmac
-          - rockchip,rk3228-gmac
-          - rockchip,rk3288-gmac
-          - rockchip,rk3308-gmac
-          - rockchip,rk3328-gmac
-          - rockchip,rk3366-gmac
-          - rockchip,rk3368-gmac
-          - rockchip,rk3399-gmac
-          - rockchip,rv1108-gmac
+    oneOf:
+      - items:
+          - enum:
+              - rockchip,px30-gmac
+              - rockchip,rk3128-gmac
+              - rockchip,rk3228-gmac
+              - rockchip,rk3288-gmac
+              - rockchip,rk3308-gmac
+              - rockchip,rk3328-gmac
+              - rockchip,rk3366-gmac
+              - rockchip,rk3368-gmac
+              - rockchip,rk3399-gmac
+              - rockchip,rv1108-gmac
+      - items:
+          - enum:
+              - rockchip,rk3568-gmac
+          - const: snps,dwmac-4.20a
 
   clocks:
     minItems: 5
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
