Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E585C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 10:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArePz6Id/TOuOWIA8MCwwjTpuceiK94+XUKRETMhsyE=; b=FRq8b4+xYqboFI
	iuNmksVeTqSkoJ+SWqZ++3Pi9NIA94NFKN26Nqb88IbHrQ8X5XCMmyweBs2LKTBlaenOCpNSs2ajb
	TONCR3dDm3BODY220YgNYEtOfnwHRAs743W+jW3giNaa5k72ONzSBu7z26QiDE+X3L952bQhI8+pW
	G0+aqyBQgKUvgGijeRKWzl6fTGQ1aAMmnjm6yjni4B16+U3l0N/xN04q/hkPPHGoaq+MiqDjDubIn
	L8srEr8tUpMb/nUx5xUEkZ82K6ZROOZOphSBDrwyYmcnMO9NzvFSRFDAenLzqCEc9bgXF95mQy28Z
	Zl7l3nMWWZWGKm7UIJQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHjsx-00H77d-Lq; Wed, 09 Feb 2022 10:07:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjg2-00H05K-WE
 for linux-rockchip@lists.infradead.org; Wed, 09 Feb 2022 09:54:20 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHjfj-0002Ov-Gr; Wed, 09 Feb 2022 10:53:59 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nHjfg-008qao-0b; Wed, 09 Feb 2022 10:53:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v5 09/23] dt-bindings: display: rockchip: dw-hdmi: Add
 regulator support
Date: Wed,  9 Feb 2022 10:53:36 +0100
Message-Id: <20220209095350.2104049-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220209095350.2104049-1-s.hauer@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_015419_046584_C41D43DE 
X-CRM114-Status: GOOD (  10.33  )
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

The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs
needed for the HDMI port. Add the binding for these supplies.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Rob Herring <robh@kernel.org>
---

Notes:
    Changes since v4:
    - Add Robs Ack

 .../bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index e6b8437a1e2d..38ebb6983028 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -28,6 +28,17 @@ properties:
   reg-io-width:
     const: 4
 
+  avdd-0v9-supply:
+    description:
+      A 0.9V supply that powers up the SoC internal circuitry. The actual pin name
+      varies between the different SoCs and is usually HDMI_TX_AVDD_0V9 or sometimes
+      HDMI_AVDD_1V0.
+
+  avdd-1v8-supply:
+    description:
+      A 1.8V supply that powers up the SoC internal circuitry. The pin name on the
+      SoC usually is HDMI_TX_AVDD_1V8.
+
   clocks:
     minItems: 2
     items:
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
