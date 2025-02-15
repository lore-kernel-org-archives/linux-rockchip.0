Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC29EC02198
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Feb 2025 01:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jy9EtQRNQaOwk7hVj6vcRYQluA+6GwkxlPXJ3NOJUNo=; b=rDsldy0S2q4/UP
	F+zbyGy3GIISeIbnnfWa10UDLRG8Wk9OeZzXk9R4jnN200oDdTjoJZUf/0Rz9gquvVj6t5s75T9ts
	D5yl4jeQafFTLFQ8qR9ly9Ybpmli2u0a1Eq50uzG7q/AKplmrqVQ1ljlG4Qb0cSNXI5rieYpfsmvq
	+XXiDZqyHfWXSA+WGzC0ovwhT65KVPBPmvTYJVJXtW5aK7tcJVLYe0b0FqpDEif6ehwd24WQb6OKU
	Joq10PV3oliDnSxs6ZcM5TszSriT6qs5IApaKCMgFdwkxBw6TOY2lYeZltU+NTsrK7Hb0Tg+yt6Wz
	MhvzCjtL0QnqshrgxRLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tj6Z5-0000000GgZg-2Npb;
	Sat, 15 Feb 2025 01:01:51 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tj6TP-0000000Gf3Y-29q5;
	Sat, 15 Feb 2025 00:56:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1739580958;
	bh=SE9Nutny/gzjaQ3Hy7tTClTNDcn3VFJaaCAjW0BhTsc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=S2aF9EhypxIuz+HM/aOb9onCVBBNSj0b4uWLsV0wcZrlDSNMrdTzKJKp6ILTxA1Nv
	 xFb6UzPOJ3HbsU1cWYhoIJpPZ/2k7wI/25AQxMfbuY2+xgbPFjys7BOTM9UVOXXzbX
	 eM2hE67AfxrcBJOw3uBdA5v9SQ+iEBagBPfNIo+YP9cjzsUG+mzd+Hk95ZCIAj02pT
	 TS+xJD9suo7v+Wp4D4nlxLL8htQwPAMkmBillK834miktsl6zlcnfQ+yJLetV9py1W
	 lNgPXLp3PVAJHjmfLXnNIMLBafwLPF1EBvyVnttdEBctCkA6jBegqABXdwYyXBqsH+
	 HAngOoIpYCRbg==
Received: from localhost (144.232.221.87.dynamic.jazztel.es [87.221.232.144])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id A628B17E0FC1;
	Sat, 15 Feb 2025 01:55:57 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 15 Feb 2025 02:55:39 +0200
Subject: [PATCH 3/4] arm64: dts: rockchip: Add HDMI1 PHY PLL clock source
 to VOP2 on RK3588
MIME-Version: 1.0
Message-Id: <20250215-vop2-hdmi1-disp-modes-v1-3-81962a7151d6@collabora.com>
References: <20250215-vop2-hdmi1-disp-modes-v1-0-81962a7151d6@collabora.com>
In-Reply-To: <20250215-vop2-hdmi1-disp-modes-v1-0-81962a7151d6@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_165559_701932_D3ECE4E3 
X-CRM114-Status: GOOD (  10.99  )
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

VOP2 on RK3588 is able to use the HDMI PHY PLL as an alternative and
more accurate pixel clock source to improve handling of display modes up
to 4K@60Hz on video ports 0, 1 and 2.

The HDMI1 PHY PLL clock source cannot be added directly to vop node in
rk3588-base.dtsi, along with the HDMI0 related one, because HDMI1 is an
optional feature and its PHY node belongs to a separate (extra) DT file.

Therefore, add the HDMI1 PHY PLL clock source to VOP2 by overwriting its
clocks & clock-names properties in the extra DT file.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index 97e55990e0524ed447d182cef416190822bf67be..1df8845bdc264b07601add3747b273f92091e7fa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -542,3 +542,24 @@ pcie30phy: phy@fee80000 {
 		status = "disabled";
 	};
 };
+
+&vop {
+	clocks = <&cru ACLK_VOP>,
+		 <&cru HCLK_VOP>,
+		 <&cru DCLK_VOP0>,
+		 <&cru DCLK_VOP1>,
+		 <&cru DCLK_VOP2>,
+		 <&cru DCLK_VOP3>,
+		 <&cru PCLK_VOP_ROOT>,
+		 <&hdptxphy0>,
+		 <&hdptxphy1>;
+	clock-names = "aclk",
+		      "hclk",
+		      "dclk_vp0",
+		      "dclk_vp1",
+		      "dclk_vp2",
+		      "dclk_vp3",
+		      "pclk_vop",
+		      "pll_hdmiphy0",
+		      "pll_hdmiphy1";
+};

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
