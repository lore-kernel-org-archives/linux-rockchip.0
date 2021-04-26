Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34867C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 02:41:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5CE561078
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 02:41:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D5CE561078
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UB19TbPEaEr5zsfP37qomTzEJexvaDDstxz4xHXz0Rg=; b=BiAAILr4U6LkFIVvht9OFujOV
	gw5Ij/GoOJ7w6Rd6WrCinx6nvbabfZV/y5VOyjIR/cCMZ7Qwp5lSmZZ/w1btXiPYGp3oQSz4TOWuP
	fzgQwTmWwfRn6eKGBJH/TbT0JEIPvkAf+nGTv/vz8SClUA3E0UP+4JcD6so5kMISjEtxGTnGK3dTa
	zTZgq0ARAw0xcK5JmS8o0fp5HTCR804z4O0NMXUsIH7sgJjP4bZOyon/HBkX8rTqoeFRmd24Feuiq
	lVDHHz6op7TB+NV4vKZFSmpqbWqHbxEgHyiD+9EoUhIflJsImZ+PSdFAchx6xfiJT+jis43vdDXQB
	cU/ghzsAg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1larBx-006jJ7-Dx; Mon, 26 Apr 2021 02:41:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1larBt-006jIb-VN
 for linux-rockchip@desiato.infradead.org; Mon, 26 Apr 2021 02:41:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Rm3et1aUduO4IsPOiG/2cYGc81STi2q2m5hpe2kbFjY=; b=e662Coq1sm1jEImreMMRvXhf1d
 TQLpcFt+qmGNcEGjT04HD1ZcI1r4AwOiamMAU5ODVeGsjsraWtYsjXVpZdMIk0M4msm6pnqt/66iB
 OcGtBAnVDTzMuzSkiTt2BUjAucgceI2vFE0RdYhZYxqTeRc8qfLEA3HJGFyzKSTFw9gMoZCQb+sbS
 h5jCGNq7WkZrrWM8NNgra/39pWsKHv4g3DSmHfghU8ZANksx+n6JZ4GWDgrK+yRwlNPl48Mcxcvat
 2Pdd8jHLGAiJKRyMI2kB8IVfDhh6ekraKva0DdI3kUhUYFhq71gpE6O0HHIorx+m2EWko0VCcsNyU
 DDD2sPHg==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1larBr-00FhDz-DS
 for linux-rockchip@lists.infradead.org; Mon, 26 Apr 2021 02:41:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 030D31F41F94
From: Ezequiel Garcia <ezequiel@collabora.com>
To: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 David Wu <david.wu@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 kernel@collabora.com
Subject: [PATCH 2/3] dt-bindings: net: dwmac: Add Rockchip DWMAC support
Date: Sun, 25 Apr 2021 23:41:17 -0300
Message-Id: <20210426024118.18717-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210426024118.18717-1-ezequiel@collabora.com>
References: <20210426024118.18717-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210425_194139_599210_EB108143 
X-CRM114-Status: UNSURE (   8.14  )
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

Add Rockchip DWMAC controllers, which are based on snps,dwmac.
Some of the SoCs require up to eight clocks, so maxItems
for clocks and clock-names need to be increased.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../devicetree/bindings/net/snps,dwmac.yaml         | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 0642b0f59491..2edd8bea993e 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -56,6 +56,15 @@ properties:
         - amlogic,meson8m2-dwmac
         - amlogic,meson-gxbb-dwmac
         - amlogic,meson-axg-dwmac
+        - rockchip,px30-gmac
+        - rockchip,rk3128-gmac
+        - rockchip,rk3228-gmac
+        - rockchip,rk3288-gmac
+        - rockchip,rk3328-gmac
+        - rockchip,rk3366-gmac
+        - rockchip,rk3368-gmac
+        - rockchip,rk3399-gmac
+        - rockchip,rv1108-gmac
         - snps,dwmac
         - snps,dwmac-3.50a
         - snps,dwmac-3.610
@@ -89,7 +98,7 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 5
+    maxItems: 8
     additionalItems: true
     items:
       - description: GMAC main clock
@@ -101,7 +110,7 @@ properties:
 
   clock-names:
     minItems: 1
-    maxItems: 5
+    maxItems: 8
     additionalItems: true
     contains:
       enum:
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
