Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C0CBF43687
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 09:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+FRVyEX0VTdE44u27TNale4gx6sYgK2hDOgUAnhShU=; b=Q7BLgucI24aKa7
	uRdh9K4oUTFG6IFLcY5McXQqFLk7/fcb6amz529ldXc1UZB4urZHxUC5v3fQXdIkAyRbBOaipXa0P
	iL67cBV69ahkFNc1qJjugajR1f7HmZDmPGNB0MsWuTsjjgiHJJicmMNYi2lktv+df0HdHf2ujCnjC
	Xv9ukeSFozCRDzPfxqAOZ6t7M+/Qzio2yDL0s64vcOu97MK/r7eQg1agIxgQ2yYJLZob+ot4BYRkT
	rI5FCj1bPBYB9gCrKCT+/HHd8oh5SZqrA1D8l7VLkuTSRIa+8qgpzhZ9/LM1P3Q/GtTFJN1zKUXGg
	TD1CRpvETOpcvr79PmYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfS3-00000003kqd-0t61;
	Fri, 17 Apr 2026 09:25:27 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfRs-00000003kbn-2X5A;
	Fri, 17 Apr 2026 09:25:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776417914;
	bh=Pablujz96KC0Tgnv68baDJ5r611x1sGWeQfpbQiSI+I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=PbKfzn48iPK2Qw+L/xB8V+cRqQbiGzROt7kBwnXC0iPnlpvWZZzUCkSZClaOnVlBG
	 F0+dlaTV4Mhgfsyg4qcz7EY+NC7EsA0r8bLkSj2abK15DGUN6Bgo5tzWFAziS6Y4TC
	 JqEKvG1I1VPe4nFOYIeVPz/NLDxGPLnMODwYmVWESYlhU/Ne8o+i7hypoE5QuhYSEc
	 XOMIjDXM2f4OjmRTz5/uKApLGdZWvoIKwOjEXSvO+msopCw0VNvCT+TiXCRUNc/Jds
	 z8rU+wsmwZ1x88KY6e520vPfRWAw6rrwDSNZ3KZrzZWV7JA9RTieY86Pynjps2OWJB
	 yrC82oK63zzJg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5B15C17E1418;
	Fri, 17 Apr 2026 11:25:14 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 17 Apr 2026 12:24:42 +0300
Subject: [PATCH 08/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3576-roc-pc
MIME-Version: 1.0
Message-Id: <20260417-dts-rk-frl-enable-gpios-v1-8-a19c0dd8c9f6@collabora.com>
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
In-Reply-To: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_022516_789389_D6FE3BDA 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
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

The board exposes the GPIO2_B0 line to control the voltage bias on the
HDMI data lines.  It must be asserted when operating in HDMI 2.1 FRL
mode and deasserted for HDMI 1.4/2.0 TMDS mode.

Wire up the HDMI node to the GPIO line using the frl-enable-gpios
property to allow adjusting the bias when transitioning between TMDS and
FRL operating modes.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts
index d0ab1d1e0e11..68f9911bf4d4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts
@@ -283,6 +283,8 @@ &eth0m0_rgmii_bus
 };
 
 &hdmi {
+	pinctrl-0 = <&hdmi_txm0_pins &hdmi_tx_scl &hdmi_tx_sda &hdmi_frl_en>;
+	frl-enable-gpios = <&gpio2 RK_PB0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
@@ -720,6 +722,12 @@ &sdmmc {
 };
 
 &pinctrl {
+	hdmi {
+		hdmi_frl_en: hdmi-frl-en {
+			rockchip,pins = <2 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		rtc_int_l: rtc-int-l {
 			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
