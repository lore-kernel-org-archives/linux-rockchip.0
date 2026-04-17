Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCC31F43688
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 09:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKtjGXtySu7FalTc/mnf95KIMEjoU8teJ5x1h4/VCsE=; b=Kr0wmQTyacGYGX
	njaP6o1o78MU6UNQUhGeMV2y5RuxfT9Qy096si29ivHCmDHXqbV0dM1qpV5sqwiWTPyn6OwqIZi6c
	NL8A70PZ3jFdYzKK7M8Nn5LJ5xZvf0cla5YYiQxDE1gPrLn+5+nM8+Ruyg+m3p/B3BXL3Nc8Wj/In
	QGknHhTeRK2Ra+Wodm17n3IIHwvikP7E6JCtL6fVbUIUoUqVEoqMS23aAX7g3Jkpe41ZYYySW6tyJ
	M03UryBZivSuRxJ6vENTr8fVut0U9pocXf5BxpwQpW8Vz/OAfRxpyEic2kJr3F66RwYSeV1wR0jTD
	h/Wgz57tZexzrcWBwm+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfTt-00000003n8f-39tV;
	Fri, 17 Apr 2026 09:27:21 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfSD-00000003l0M-1IVr;
	Fri, 17 Apr 2026 09:25:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776417934;
	bh=IyM686PtM7MWMxrrUm08VYL4hejq7yba1p/Jz+uu2+c=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=dwNSWemG+TOskSB1TprQFZdoWCaDh3mhY5IUnuanXdL4m/ShKJKuKrlJ/c3PbzjOM
	 dW51pgC3VPZ+GDePy982CWnuBe+5rx1g1WiBJH6Eeju5bJfSb+9Kiqv93GH5HNMLXE
	 hgy7E2vSpuV0VkZe0tSybC3E0WwAnd0WdkmXvpTKWRPLSfnLle+imFLsibJ7CuC8eW
	 9R7ro1VuzQdO+6f9elTjwJHzzq3zNosry+Z6TzbsMLW2PMV408B4kkHtekZ/spBzeS
	 BQ2jczOHj1uGdBlIaj0iCWh7Bq7jVB5uIq34WkZr0UTXI+Uc6cRP1hZtaCyTVJmmwq
	 //sRyWf5O76QQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0D71317E140E;
	Fri, 17 Apr 2026 11:25:34 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 17 Apr 2026 12:25:06 +0300
Subject: [PATCH 32/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3588s-khadas-edge2
MIME-Version: 1.0
Message-Id: <20260417-dts-rk-frl-enable-gpios-v1-32-a19c0dd8c9f6@collabora.com>
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
In-Reply-To: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_022537_559976_0D411458 
X-CRM114-Status: GOOD (  10.58  )
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

The board exposes the GPIO4_B1 line to control the voltage bias on the
HDMI0 data lines.  It must be asserted when operating in HDMI 2.1 FRL
mode and deasserted for HDMI 1.4/2.0 TMDS mode.

Wire up the HDMI0 node to the GPIO line using the frl-enable-gpios
property to allow adjusting the bias when transitioning between TMDS and
FRL operating modes.

While at it, remove the duplicated &hdmi0_sound node.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index 2c22abaf40a8..2076c050cd69 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -194,6 +194,9 @@ &gpu {
 };
 
 &hdmi0 {
+	pinctrl-0 = <&hdmim0_tx0_cec &hdmim0_tx0_hpd
+		     &hdmim0_tx0_scl &hdmim0_tx0_sda &hdmi0_frl_en>;
+	frl-enable-gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
@@ -217,10 +220,6 @@ &hdptxphy0 {
 	status = "okay";
 };
 
-&hdmi0_sound {
-	status = "okay";
-};
-
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
@@ -282,6 +281,12 @@ &pd_gpu {
 };
 
 &pinctrl {
+	hdmi {
+		hdmi0_frl_en: hdmi0-frl-en {
+			rockchip,pins = <4 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	vdd_sd {
 		vdd_sd_en: vdd-sd-en {
 			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
