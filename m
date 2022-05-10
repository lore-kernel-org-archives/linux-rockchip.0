Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A04AC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 May 2022 07:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/mQ901Vv/eV135GYtdKtBlef8FF2Sb5uTvVqiIuYO0=; b=IyRu/2Juu1qfqf
	/Vt4EZxYeZOrHsPcESEQn3LYQpYkYKoso8dnxsOTm2dfSCJGo/b7n/zWAeNhafs9xgYNi+/5kMdHx
	q+GJTydRwys91GrM1Kk+pAe8eEy/u/1E5iad2uAoBhgImtkjbYsPkxtgfQvhDHY/UjU8dQUTRKtuc
	0mNElCVk+OP9HxCXgGKVR4AoZVY1nWsIQUXnNNOW9C1bFXkhBVPi9jyfRgVYPkS1txP4f8nIavgq1
	ald2/xwttbhVLP8IdAXiMW2iH0/Ee+TzPFCDJhFbj1bjFVcfEDo8Pm/aXh9XjjHcgwxYFEi2FQhAi
	iDIvBMGOGh6hw5V+ybRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noK0I-000Hmh-Rd; Tue, 10 May 2022 07:09:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noJzp-000HYQ-Kr
 for linux-rockchip@lists.infradead.org; Tue, 10 May 2022 07:09:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1noJzk-0007T6-Ks; Tue, 10 May 2022 09:09:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1noJzi-001RkH-CV; Tue, 10 May 2022 09:09:17 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1noJzf-009qKC-QS; Tue, 10 May 2022 09:09:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 1/3] dt-bindings: display: rockchip: make reg-names mandatory
 for VOP2
Date: Tue, 10 May 2022 09:09:12 +0200
Message-Id: <20220510070914.2346011-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220510070914.2346011-1-s.hauer@pengutronix.de>
References: <20220510070914.2346011-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_000925_814856_E0CD67C6 
X-CRM114-Status: GOOD (  10.93  )
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

The VOP2 driver relies on reg-names properties, but these are not
documented. Add the missing documentation, make reg-names mandatory
and increase minItems to 2 as always both register spaces are needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 655d9b327f7d3..7238cdec9eb8a 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -22,7 +22,7 @@ properties:
       - rockchip,rk3568-vop
 
   reg:
-    minItems: 1
+    minItems: 2
     items:
       - description:
           Must contain one entry corresponding to the base address and length
@@ -31,6 +31,11 @@ properties:
           Can optionally contain a second entry corresponding to
           the CRTC gamma LUT address.
 
+  reg-names:
+    items:
+      - const: vop
+      - const: gamma-lut
+
   interrupts:
     maxItems: 1
     description:
@@ -86,6 +91,7 @@ properties:
 required:
   - compatible
   - reg
+  - reg-names
   - interrupts
   - clocks
   - clock-names
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
