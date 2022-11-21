Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8192C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 15:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FhG0du67ubkWXXkjL1L3z9/CWXCs3ksDQq4KMqHJyg=; b=PjXOuGrCIcV/Id
	rAU4eaO5RWruSHkr3NJgJbONw6CE5WNIOKJR4Dz6zUoGaOh0fqxbxD7UrKOH/hTm1V1DQrmwFmGIe
	Yjcg8x+CkKyeQ6s8iaILMWfNWRteIkFK3xAh1d8LXbYUMRo/XWQq84sM2rCLtXifJ+MWMxV9624hl
	6Q/1RqB5dMuysdE2V3pQ2cKFbLXSC8MNyQDuCgOfGpBs9ZJy87vrbeFUz3q1AEMh+erlVOHINi0BH
	APSwA86Yfgve5nBsmBrZDEh0WVcFY38WgqWBFsUvbDwvzRRN4aCPFBfbq2Owd3oHBt4O41Pv4Jc9D
	hF3/yfp2oEbD4zHWjKWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox8kL-00FCTI-Uc; Mon, 21 Nov 2022 15:30:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox8Yk-00F5CO-QG
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 15:18:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1ox8Yb-0004BO-LZ; Mon, 21 Nov 2022 16:18:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1ox8YV-005gHF-Ln; Mon, 21 Nov 2022 16:17:56 +0100
Received: from mtr by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1ox8YV-008hFJ-KH; Mon, 21 Nov 2022 16:17:55 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	jacob-chen@iotwrt.com,
	ezequiel@vanguardiasur.com.ar,
	robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	michael.riesch@wolfvision.net,
	linux-arm-kernel@lists.infradead.org,
	m.tretter@pengutronix.de,
	kernel@pengutronix.de
Subject: [PATCH 1/2] media: dt-bindings: media: rockchip-rga: add rockchip,rk3568-rga
Date: Mon, 21 Nov 2022 16:17:54 +0100
Message-Id: <20221121151755.2072816-2-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221121151755.2072816-1-m.tretter@pengutronix.de>
References: <20221121151755.2072816-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_071810_889912_A65F29CF 
X-CRM114-Status: GOOD (  11.61  )
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

Add a new compatible for the rk3568 Rockchip SoC, which also features an
RGA, which is called RGA2 in the TRM Part2. It is the same core as used
on the rk3288, which documents the same RGA2.

Specify a new compatible for the rk3568 to be able to handle unknown
SoC-specific differences in the driver.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 Documentation/devicetree/bindings/media/rockchip-rga.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
index dd645ddccb07..ea2342222408 100644
--- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
@@ -21,7 +21,9 @@ properties:
       - const: rockchip,rk3288-rga
       - const: rockchip,rk3399-rga
       - items:
-          - const: rockchip,rk3228-rga
+          - enum:
+              - rockchip,rk3228-rga
+              - rockchip,rk3568-rga
           - const: rockchip,rk3288-rga
 
   reg:
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
