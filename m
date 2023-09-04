Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90F48C71153
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Sep 2023 11:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jlZDjzJunv/XREIoJLf/W95NgVEF3qOe/hxHL1MFOzw=; b=vyMFnZ2/ZqAmXC
	cUB5APi1eurIt1v1EDsca7WjvPw8HlJy7UAViEcLJ6InRsBoJhFhGuX3p0elOvuBktlvbu32yH8au
	iGgj4RFso4eoX0pqKi6DGOqwPV2Z5P9xdGSpOI+hacthRLZkUQoOfWt4imtW4G/dPVOd4pXC06wup
	0R65rIM5Tl3Ey42etFhuccbWL77/h1RyNd54s2tZebU+OZJ2TRGz7G13UnT+G8gN26soAc5txubjE
	4Crgx8s4Z3VvQdZbSXB9RGLO/vux1NN2x92g/K6t2dyxGPg4IxIR+uJtuF4qWanXPLBFAJNGky/1Q
	Oqkq2Z1WxwiLCrPPkbsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd8Dy-0041tl-0s;
	Mon, 04 Sep 2023 11:58:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd8Do-0041px-2u
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Sep 2023 11:58:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd8Dl-0003r4-2P; Mon, 04 Sep 2023 13:58:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd8Dk-003s49-Jh; Mon, 04 Sep 2023 13:58:20 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd8Dj-005pOr-HB; Mon, 04 Sep 2023 13:58:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	kernel@pengutronix.de,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 2/3] dt-bindings: pinctrl: rockchip: Add io domain properties
Date: Mon,  4 Sep 2023 13:58:15 +0200
Message-Id: <20230904115816.1237684-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230904115816.1237684-1-s.hauer@pengutronix.de>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_045824_998808_97179151 
X-CRM114-Status: GOOD (  14.31  )
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

Add rockchip,io-domains property to the Rockchip pinctrl driver. This
list of phandles points to the IO domain device(s) the pins of the
pinctrl driver are supplied from.

Also a rockchip,io-domain-boot-on property is added to pin groups
which can be used for pin groups which themselves are needed to access
the regulators an IO domain is driven from.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../bindings/pinctrl/rockchip,pinctrl.yaml          | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 10c335efe619e..92075419d29cf 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -62,6 +62,11 @@ properties:
       Required for at least rk3188 and rk3288. On the rk3368 this should
       point to the PMUGRF syscon.
 
+  rockchip,io-domains:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandles to io domains
+
   "#address-cells":
     enum: [1, 2]
 
@@ -137,7 +142,13 @@ additionalProperties:
             - description:
                 The phandle of a node contains the generic pinconfig options
                 to use as described in pinctrl-bindings.txt.
-
+      rockchip,io-domain-boot-on:
+        type: boolean
+        description:
+          If true assume that the io domain needed for this pin group has been
+          configured correctly by the bootloader. This is needed to break cyclic
+          dependencies introduced when a io domain needs a regulator that can be
+          accessed through pins configured here.
 examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
