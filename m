Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 976BB105F7BF
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 15:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version
	:Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5IE/qjaJRhZXYN37+EOGzUC6cGjt1jkdjnNysOumTn4=; b=A7oUTGLSrZs6aD
	d3oqD+Qzn1C1Co1Q2MSPXE4B+RnQ6dMUlryIypc+mv0K+XF7IJi4ypwxdnsU1XQONibTRfzlE5OFC
	MWTQ/E+DcF4IP/Y8P50/zSYfMhTvgM3N9NR9kK7qeGP8qxxPTnOT196JMpxVZrVh/giLxjPTGiAIB
	hptdGapLl/oYglYFjWzPOh7lXesfodMLgsbeqGRGdLj3DcNAholH8lZNmVwMvFp/UykPaV1Ax7WVw
	JlXKbcScBH02NDhnLOQju3T8fl57FYhiRoKIroaG9EWgjtkKdxe9qRbIGxkLuzRwpf3vBzDFVswnY
	AlzALjy//FEVUQHA0Zrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w14pS-00000000aRp-31N7;
	Fri, 13 Mar 2026 15:53:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w14pP-00000000aQp-3q0Y;
	Fri, 13 Mar 2026 15:53:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2B61840225;
	Fri, 13 Mar 2026 15:53:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 070CAC19421;
	Fri, 13 Mar 2026 15:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773417211;
	bh=kU7hMmxmzKGXeVy3rmWVv+bR1lRVLBiYIDHHCO9xWVc=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=JzI9/LoSSDwo6u9sJlEHZC2YLhmwETciWJ5sojIWY0xZ5Y6SIKLQHczxjnTShO1xy
	 QfXJRv9qxsyLYw2G00TBPaACZVBNIH8z8xZ1hTMXCIlLAVGS98YT7ZZNwMah7z6ug0
	 nbLTMTWK6bf7hGu/Grdcwc4UClfiiJ8L/xVGVitvBQgBYU8sUZ4qaQRjOTywsUl4xX
	 jsWnpywp5B1z7aTt6zxt7Zf7JRKrX1xDKWeI1dufXrE+JHC6g+9mUjx8SgOTO+sGJL
	 b6Zj8fACy/F0isB7gohymA3HB2HdAhaudojyGqJoDj+2vr1QhHKbIn1vp91PfPdfV9
	 B28qvBy5RmIHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9D0F105F7BF;
	Fri, 13 Mar 2026 15:53:30 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Date: Fri, 13 Mar 2026 16:53:29 +0100
Subject: [PATCH] arm64: dts: rockchip: enable vicap dvp on wolfvision pf5
 io expander
MIME-Version: 1.0
Message-Id: <20260313-wv-io-expander-vicap-v1-1-11001fb3b744@collabora.com>
X-B4-Tracking: v=1; b=H4sIAPgytGkC/x2N0QrCMAwAf2Xk2cDWUQV/RXxI0+gCIyst1sHYv
 xt8vIPjDmhSVRrchwOqdG26mcN0GYAXsregZmcIY7iO8zTjt6NuKHshy1KxK1PBEGOSwJJvkcH
 TRE0wVTJePLbPurosVV66/1+P53n+AJmGMlJ7AAAA
To: Gerald Loacker <gerald.loacker@wolfvision.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Michael Riesch <michael.riesch@collabora.com>, 
 Michael Riesch <michael.riesch@collabora.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773417210; l=2200;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=AxZQMPkNnnwsrhXc1fCRiYhuc1Gbnk7fB2Vzh07TFp8=;
 b=uWjRu68zw60pg4cPIDcmL5g1Cl+/n8xiSkYermWSAGsa1U/hZf9rlWQhditBQT7OFRSZByQr7
 SwDO3yO+JgdCXu61Ekdyr/KFcG789qndRQSdTcDnERwYPo0k/KLE39Z
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_085332_003226_0DD535E2 
X-CRM114-Status: GOOD (  11.79  )
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
Reply-To: michael.riesch@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Michael Riesch <michael.riesch@collabora.com>

The Digital Video Port (DVP, the 16-bit variant) of the RK3568 VICAP
is broken out to the PF5 mainboard expansion header.
Enable it in the device tree overlay for the WolfVision PF5 IO
Expander board.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
Reviewed-by: Gerald Loacker <gerald.loacker@wolfvision.net>
Tested-by: Gerald Loacker <gerald.loacker@wolfvision.net>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
---
Habidere,

This patch was skipped when the RK3568 series was applied, as the
MEDIA_PCLK_SAMPLE_DUAL_EDGE definition was introduced in the very same
series.

With the definition mainline for two kernel releases now, it should be
safe to merge this device tree modification.

Thanks in advance!
---
 .../rockchip/rk3568-wolfvision-pf5-io-expander.dtso  | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
index 048933de2943..8cfce71dd318 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
@@ -11,6 +11,7 @@
 #include <dt-bindings/clock/rk3568-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/media/video-interfaces.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 
 &{/} {
@@ -134,3 +135,22 @@ &usb2phy0_host {
 	phy-supply = <&usb_host_vbus>;
 	status = "okay";
 };
+
+&vicap {
+	pinctrl-names = "default";
+	pinctrl-0 = <&cif_clk &cif_dvp_clk &cif_dvp_bus16>;
+	status = "okay";
+};
+
+&vicap_dvp {
+	vicap_dvp_input: endpoint {
+		bus-type = <MEDIA_BUS_TYPE_BT656>;
+		bus-width = <16>;
+		pclk-sample = <MEDIA_PCLK_SAMPLE_DUAL_EDGE>;
+		rockchip,dvp-clk-delay = <10>;
+	};
+};
+
+&vicap_mmu {
+	status = "okay";
+};

---
base-commit: 1f318b96cc84d7c2ab792fcc0bfd42a7ca890681
change-id: 20260313-wv-io-expander-vicap-255be2ced75c

Best regards,
-- 
Michael Riesch <michael.riesch@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
