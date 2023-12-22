Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20FAEC41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 11:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMmprO2kO/FC3Kbx7Arjyfuekffc3vwB3d0AaHSiqr4=; b=pqZsY+RAyv91NU
	BnT5H1qYabXFw/WGNmt+2zPtwWSZWC68hoVZHHMWj59+02w2oqEIGexUi7VOhhNfqbawzIzuM+qtk
	n0c7WNrt+ELxviK6leZtXidwDE8nFkt6BrWdQ8ugAyqHaGqaCqyInD+gahpQp4E5zGDbz6wovcLfS
	ZgC1OkxxfCFi+qOABZmPcJBDy6i3Jv+ZUUvd5tHtna1PTmD4nnjvM/Qk+wLESPKB2Ms6mPRy5nHMN
	8JVide1tWXOcWmgTeg+jI1n6lQULmyvz1la/48FvxMswFVEKKK3R4G73zpxamAYjsrH35a9mz1ROU
	CCNOlL/w/NiQI99h4coQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGdVl-005e37-0b;
	Fri, 22 Dec 2023 11:16:13 +0000
Received: from [2a01:4f8:1c1c:934f::1] (helo=mecka.net)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGdVh-005e1p-2S;
	Fri, 22 Dec 2023 11:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1703243146; bh=t84Ye1Vunm9rsBxmkx+eugbyukky8gFBZMvr0DsoBqM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=BAkwvsQ1fC/kR2HsFf1zF4Zf63nToVM+yFY8q3B+f56aTF6MkWbKu1iUGdtIrMGoB
	 JP5E2dUt/h2ffvOKqSo06SUrlvsNpQerNx0Stoh8Bbr6ekJBEIQIKea2UZ1/cgKd6T
	 W/WoaX3j1zeeykfwy8x9RyvV3Z16JK/vbhe2M3SVFU0UeoeckEue1bdduk6CdoOnGE
	 SMwvQISXQC5qu/qwLFV0mnCpUAJ9w3jq46867Rwnt1zqu++Hs2S2O/YGKXH/JBrE4H
	 ye8V4sOOyhgfC56b70rIFwHJNz29Jpq2emT6dRvSQY3Neo7a4fCaVORcGP+GY7Yv05
	 5mj4stH1kHteQ==
Received: from arthur.fritz.box (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id D61E4370D42;
	Fri, 22 Dec 2023 12:05:45 +0100 (CET)
From: Manuel Traut <manut@mecka.net>
Date: Fri, 22 Dec 2023 12:05:45 +0100
Subject: [PATCH 5/6] arm64: dts: rockchip: Fix some dtb-check warnings
MIME-Version: 1.0
Message-Id: <20231222-pinetab2-v1-5-e148a7f61bd1@mecka.net>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
In-Reply-To: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>, 
 Diederik de Haas <didi.debian@cknow.org>, 
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_031609_952886_AD858756 
X-CRM114-Status: GOOD (  11.57  )
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

devicetree checks show some warnings:

video-codec@fdea0400: 'interrupt-names' is a required property
from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#

hdmi@fe0a0000: Unevaluated properties are not allowed ('power-domains' were unexpected)
from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#

i2s@fe420000: reset-names:0: 'm' is not one of ['tx-m', 'rx-m']
from schema $id: http://devicetree.org/schemas/sound/rockchip,i2s-tdm.yaml#

phy@fe870000: 'power-domains' is a required property
from schema $id: http://devicetree.org/schemas/phy/rockchip-inno-csi-dphy.yaml#

Fix them by
  - setting a interrupt-name for the video-codec
  - remove the unevaluated power-domain property from hdmi
  - set reset-names according to the spec for i2s
  - add a power-domain property for the CSI phy

Signed-off-by: Manuel Traut <manut@mecka.net>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index c19c0f1b3778..651156759582 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -597,6 +597,7 @@ vpu: video-codec@fdea0400 {
 		compatible = "rockchip,rk3568-vpu";
 		reg = <0x0 0xfdea0000 0x0 0x800>;
 		interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "vdpu";
 		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 		clock-names = "aclk", "hclk";
 		iommus = <&vdpu_mmu>;
@@ -819,7 +820,6 @@ hdmi: hdmi@fe0a0000 {
 		clock-names = "iahb", "isfr", "cec", "ref";
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
-		power-domains = <&power RK3568_PD_VO>;
 		reg-io-width = <4>;
 		rockchip,grf = <&grf>;
 		#sound-dai-cells = <0>;
@@ -1123,7 +1123,7 @@ i2s2_2ch: i2s@fe420000 {
 		dmas = <&dmac1 4>, <&dmac1 5>;
 		dma-names = "tx", "rx";
 		resets = <&cru SRST_M_I2S2_2CH>;
-		reset-names = "m";
+		reset-names = "tx-m", "rx-m";
 		rockchip,grf = <&grf>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s2m0_sclktx
@@ -1739,6 +1739,7 @@ csi_dphy: phy@fe870000 {
 		clocks = <&cru PCLK_MIPICSIPHY>;
 		clock-names = "pclk";
 		#phy-cells = <0>;
+		power-domains = <&power RK3568_PD_VO>;
 		resets = <&cru SRST_P_MIPICSIPHY>;
 		reset-names = "apb";
 		rockchip,grf = <&grf>;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
