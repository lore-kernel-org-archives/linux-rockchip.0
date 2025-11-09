Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE05CCD13D2
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 17:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+i/VIw2yFtvELapzZ1pMMGYHiGvsCYilf+HDdBx3ZQ=; b=sl5V34LhPQ8Ka3
	lLlFh8QZqNNWtiMvrNqfd5r9nbUZDqAg3wcn71HwWVaXrHI3SSmyqbz0Q8fFPda4BpWxjHczphk2B
	GJJmP16WghmEh5uESdQEZqMc+UzjpJRuQTiDELcRhtZIggrG+ql+efUkBPJkj1jT0T7SgudRMOPL8
	XjMAAntqKatNGEBpUor8W/VOrX7NRwTYe8YYwu4BTW+heFuEsv217WCZZekyM6c050XjE8m02IQei
	oClmBj68RXRGE/oKIjBEBLk9hZCce25Za6CGWgvJlBMLIPcV5rlelaf7x78RC4+23zkAvc3KvpS4f
	8URDW29ngFzqHZYZ+QcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI8rn-00000004BBV-2k35;
	Sun, 09 Nov 2025 17:06:15 +0000
Received: from out-177.mta0.migadu.com ([91.218.175.177])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI8rh-00000004B9G-2etF
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Nov 2025 17:06:14 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1762707965;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8+c2slFEzvpnuvBcD3m7Q9rIW5GkW6bzoQAArBwQCS8=;
	b=mbp3x7HNQaUSE3tE8uuKBbakcDwLBufkUi3KvKZ96eOfRvOEvr1SMAq/aw+GpWfufFKohC
	tnBVGD74pj3pgNji84zBhj5FgdFbSS20wUjFA++wdW9Ch/PRG/6YGQa2FLB0OjhDA6T3EF
	jWDdAIh5076hTOJvyvoUOF8nqiP48m7TgN6jJslczwnSpzaEKynsj0Oegg+tN51CQRnRhV
	iSrlnA8RrP08AHrq82oLIVjULKBAvykaeJJ+sTgUjyKdd9HfLA1X6sQ1a7riFeLZSyzn9Z
	fQ/ppQp6PGIZUuBXXeHrckP483ZxmhSd7GYOXExVdF1TVLYpLG3OGEgAuvI2NA==
From: Diederik de Haas <diederik@cknow-tech.com>
Date: Sun, 09 Nov 2025 18:05:27 +0100
Subject: [PATCH 2/2] arm64: dts: rockchip: Move otg-port to controller on
 rk3566-pinenote
MIME-Version: 1.0
Message-Id: <20251109-rk3566-pinenote-dt-fixes-upstream-v1-2-ed38d200cc04@cknow-tech.com>
References: <20251109-rk3566-pinenote-dt-fixes-upstream-v1-0-ed38d200cc04@cknow-tech.com>
In-Reply-To: <20251109-rk3566-pinenote-dt-fixes-upstream-v1-0-ed38d200cc04@cknow-tech.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Samuel Holland <samuel@sholland.org>
Cc: hrdl <git@hrdl.eu>, phantomas <phantomas@phantomas.xyz>, 
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Diederik de Haas <diederik@cknow-tech.com>, 
 stable@vger.kernel.org
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_090609_816299_D1AB3338 
X-CRM114-Status: GOOD (  11.67  )
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

The 'rockchip,inno-usb2phy' binding's otg-port node does not have a port
node, so the current definition causes this DT validation issue:

  usb2phy@fe8a0000 (rockchip,rk3568-usb2phy): otg-port:
    'port' does not match any of the regexes: '^pinctrl-[0-9]+$'

Its purpose was to define the other endpoint for the USB-C connector
port. The 'snps,dwc3-common.yaml' DT binding does have a port node to
connect the dwc3 to type C connector with the 'usb-role-switch'
property. Therefore move the port node to the dwc3 node and add the
'usb-role-switch' property to it.
This fixes the above mention DT validation issue.

The incorrect definition also caused these kernel errors:

  rockchip-usb2phy fe8a0000.usb2phy: Failed to create device link (0x180) with supplier port0 for /usb2phy@fe8a0000/otg-port
  rockchip-usb2phy fe8a0000.usb2phy: Failed to create device link (0x180) with supplier 3-0060 for /usb2phy@fe8a0000/otg-port

With the changed definition, those errors are now also gone.

While at it, remove the 'dr_mode' property as that's already defined in
rk356x-base.dtsi and there's no point in redefining it.

Fixes: 87a267b4af09 ("arm64: dts: rockchip: Add USB and TCPC to rk3566-pinenote")
Cc: stable@vger.kernel.org
Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 7c65fe4900be..be8076a8e30c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -694,8 +694,14 @@ &uart2 {
 };
 
 &usb_host0_xhci {
-	dr_mode = "otg";
+	usb-role-switch;
 	status = "okay";
+
+	port {
+		usb2phy0_typec_hs: endpoint {
+			remote-endpoint = <&typec_hs_usb2phy0>;
+		};
+	};
 };
 
 &usb2phy0 {
@@ -704,10 +710,4 @@ &usb2phy0 {
 
 &usb2phy0_otg {
 	status = "okay";
-
-	port {
-		usb2phy0_typec_hs: endpoint {
-			remote-endpoint = <&typec_hs_usb2phy0>;
-		};
-	};
 };

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
