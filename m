Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 914E8C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 08:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P0WrcAB+d/klNsBugY48YGk6uY7NiYIaa6qoANjo0EY=; b=Bu/TP7H0ZGNxE4
	3QhlmfFocOmO5MFtan0P/GudlZLoqFCCsn/L/84enMCueH5JghLjfOKPpeJADr1i4+vr3c/VNcTco
	a4p909grpCJGEe/K0oYko9xoFphce1ysHgt+cG2ZjMbzgvXZ1nHCJtKNlCo5+RB2opJtXaYqieHxX
	5GYiljbFn/Ney1I1Gs5q2aO3BVqoHUs7nanfDdpCZRddNtVO4gWr6im2EwIriJo0+E64aUJeciyao
	clhKxyay0tr3PvoM+yHszTLc1fZ/nFsrCv6caq3qIMCOOTcm9a5RAXa+l9Eb6g6cfaG9IS2jkWF2e
	nPbU387BPldOZ3MOLGGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzBXT-0000000GSR2-1fhh;
	Tue, 23 Apr 2024 08:30:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzBXP-0000000GSPs-15Qf;
	Tue, 23 Apr 2024 08:30:04 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzBXN-0003WW-M2; Tue, 23 Apr 2024 10:30:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: michael.riesch@wolfvision.net,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Arnd Bergmann <arnd@kernel.org>
Subject: [PATCH] arm64: dts: rockchip: fix nodename warning on wolfvision-pf5-display
Date: Tue, 23 Apr 2024 10:29:41 +0200
Message-Id: <20240423082941.2626102-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_013003_325627_8B3E5EE8 
X-CRM114-Status: GOOD (  13.08  )
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

The dtbs check throws a warning about node naming with the recently
added pf5-display-overlay:
rockchip/rk3568-wolfvision-pf5-display.dtsi:113.6-121.3: Warning (graph_port): /fragment@4/__overlay__: graph port node name should be 'port'

This comes from the overlay just referencing the vp2-port-node via
its phandle and then adding an endpoint beneath it.

While this is possible something to handle inside the dtbs check,
carrying around the warning is not pretty, so change the description
to go around it.

Starting from the vop_out phandle and then referencing the port
via its generic port@2 nodename will satisfy the port<->endpoint
naming dependency while keeping the same structure once the overlay
is applied.

Reported-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../rockchip/rk3568-wolfvision-pf5-display.dtsi    | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-display.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-display.dtsi
index b22bb543ecbb..18c807c39e56 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-display.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-display.dtsi
@@ -110,12 +110,14 @@ &pwm10 {
 	status = "okay";
 };
 
-&vp2 {
-	#address-cells = <1>;
-	#size-cells = <0>;
+&vop_out {
+	port@2 {
+		#address-cells = <1>;
+		#size-cells = <0>;
 
-	vp2_out_rgb: endpoint@ROCKCHIP_VOP2_EP_RGB0 {
-		reg = <ROCKCHIP_VOP2_EP_RGB0>;
-		remote-endpoint = <&panel_in_vp2>;
+		vp2_out_rgb: endpoint@ROCKCHIP_VOP2_EP_RGB0 {
+			reg = <ROCKCHIP_VOP2_EP_RGB0>;
+			remote-endpoint = <&panel_in_vp2>;
+		};
 	};
 };
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
