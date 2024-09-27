Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2343DCDD1A2
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 12:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBwAQdaUajSfNd6qMB+6aH9ln5wvkEkt7idk/L+/p+A=; b=AExkqE/ojmKNTi
	woRxI5Wfs39PQji955OTl75b07lX8cnceOkObBXo0FIDEZkkCMrHrUPIkNo5ugTXFfAjWj37aAuxg
	lgCwdu9sFOWpKhwlwxpBzYWjjIFYWN/gJnVwZqWRK4APsIq0m0RZFksFdeQYcrGaNFSHu71XnyCv+
	zVNmDCknKF5BOSjwDoUgBrVi6ko9WRI45b4qKItq8gl9RO99RUsT1IKFtWyf9JmSeUBUxq5nEKGxC
	taGUV3iBF+2M8YScqcVEeapfZgB5wBWQT+Vlq8aFfokNzRI4xNdiMngyytqKGAPInXTi80AZHUoxk
	OIr0HBbKEV5c78/ZtP0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suAN2-0000000B8oL-0J5F;
	Fri, 27 Sep 2024 12:46:52 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAJP-0000000B7FB-0zbS
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Sep 2024 12:43:09 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:b47d:fd74:3975:15b7])
	by xavier.telenet-ops.be with cmsmtp
	id HQic2D0093BfLyr01QicD3; Fri, 27 Sep 2024 14:43:02 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIj-000fPw-HG;
	Fri, 27 Sep 2024 14:42:31 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIp-008IDv-2h;
	Fri, 27 Sep 2024 14:42:31 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lubomir Rintel <lkundrak@v3.sk>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Adrien Grassein <adrien.grassein@gmail.com>,
	Adam Ford <aford173@gmail.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mips@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH treewide 07/11] arm64: dts: rockchip: Switch to hp-det-gpios
Date: Fri, 27 Sep 2024 14:42:22 +0200
Message-Id: <717e7c9527139c3a3e5246dd367a3ad98c5c81b6.1727438777.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1727438777.git.geert+renesas@glider.be>
References: <cover.1727438777.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_054307_593799_DABB3856 
X-CRM114-Status: GOOD (  11.35  )
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

Replace the deprecated "hp-det-gpio" property by "hp-det-gpios" in Audio
Graph Card and Realtek RT5651 Audio Codec device nodes.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts            | 2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts b/arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
index e0cc4da7f392daf9..c08687df326ddc21 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
@@ -47,7 +47,7 @@ button-recovery {
 	analog-sound {
 		compatible = "audio-graph-card";
 		dais = <&i2s_8ch_p0>;
-		hp-det-gpio = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
+		hp-det-gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
 		label = "alc5640";
 		routing = "Mic Jack", "MICBIAS1",
 			  "IN1P", "Mic Jack",
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
index 4feb78797982baa5..8c46bee077f3cfc2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
@@ -545,7 +545,7 @@ rt5651: audio-codec@1a {
 		reg = <0x1a>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		clock-names = "mclk";
-		hp-det-gpio = <&gpio4 RK_PD4 GPIO_ACTIVE_LOW>;
+		hp-det-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_LOW>;
 		spk-con-gpio = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
 		#sound-dai-cells = <0>;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
index 725ac3c1f6f6501d..4fc9c13dbec12390 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
@@ -21,5 +21,5 @@ &es8316 {
 };
 
 &sound {
-	hp-det-gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+	hp-det-gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
index 682e8b7297c180b6..9c741d1a3047e758 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
@@ -39,7 +39,7 @@ brcmf: wifi@1 {
 };
 
 &sound {
-	hp-det-gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+	hp-det-gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
 };
 
 &uart0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
index 82ad2ca6b5c2fc92..5dc5505b58e2ee10 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
@@ -40,7 +40,7 @@ brcmf: wifi@1 {
 };
 
 &sound {
-	hp-det-gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+	hp-det-gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
 };
 
 &spi1 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index 31ea3d0182c062ef..fdaa8472b7a72075 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -167,7 +167,7 @@ rt5651: rt5651@1a {
 		reg = <0x1a>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		clock-names = "mclk";
-		hp-det-gpio = <&gpio4 RK_PC4 GPIO_ACTIVE_LOW>;
+		hp-det-gpios = <&gpio4 RK_PC4 GPIO_ACTIVE_LOW>;
 		spk-con-gpio = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
 		#sound-dai-cells = <0>;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts b/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
index c667704ba985e463..aefa0d376dd8af20 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
@@ -23,7 +23,7 @@ analog-sound {
 		compatible = "audio-graph-card";
 		dais = <&i2s0_8ch_p0>;
 		label = "rk3588-es8316";
-		hp-det-gpio = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
+		hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&hp_detect>;
 		routing = "MIC2", "Mic Jack",
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index d0b922b8d67e85a0..e4e6c23c66845066 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -46,7 +46,7 @@ analog-sound {
 		compatible = "audio-graph-card";
 		label = "rk3588-es8316";
 		dais = <&i2s0_8ch_p0>;
-		hp-det-gpio = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
+		hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&hp_detect>;
 		routing = "MIC2", "Mic Jack",
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 966bbc582d89b89c..8d3bbfd996560289 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -32,7 +32,7 @@ analog-sound {
 			  "Headphones", "HPOR";
 
 		dais = <&i2s0_8ch_p0>;
-		hp-det-gpio = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
+		hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&hp_detect>;
 	};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
