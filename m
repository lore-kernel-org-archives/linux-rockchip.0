Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57AE0CDD1A6
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 12:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsZDy5gv90UM0Gj/S+TRpX7+5fA7b/FhOfL9m2w51Vw=; b=E0fG18ee2ASS1U
	MASpKiQr39ukaBmVgORnRGillcyXkph0ppg+P7vbxwzurDu538spbRG2Qd0a5PMNh8RPo9ZY9O0Iq
	2TqT87ntnO+DIBscZWeIa2JpnnX3ONa/kEn/fYgPm2LfiH/YLNQnuJ3bb+HE1ch1N/geo4t+dfA6S
	U/GERgTjYKIwUtwPpFE1go6tMkaI33tmxHu9HcUGEktH0H5IwVKQPJDyZnp7hbofm2XHdMJOsqdzW
	f02LLLWeiXnf0/gKaYKtJ1n+jkBprXYCIzUh7/EngSKG/Ten9gNRmE6xLNDU6HxFeBOArFweB8hGp
	oxXxCaEp8BKcAppYk2bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suAXT-0000000BBMF-48z4;
	Fri, 27 Sep 2024 12:57:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAJX-0000000B7OB-2UG4
	for linux-rockchip@bombadil.infradead.org;
	Fri, 27 Sep 2024 12:43:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iDIsAwKZVHiVkHRPHnLoc0igoRvck38/kdLZbYWCEAY=; b=SCMGl+81wU4uretQYsC2eX/+pc
	m9Xew4Yd6vcx2mGH7k+F18WyaISFbjvLAiLXs85DD13u1YCmHd/YQZ9onxVDeScsUnDSt8MQ2WArl
	RJreyrtuAs0inHjxeQatrj8mUotDpVnzj8dG25528fIWE03ycKxMSwEJ4wvHxXH3xdw07ZlzjG7ER
	NOpsWLCdv5bmVAuZdekIIIfLP0d5aetgKz7LVbrx6jnU/IQPUH5eImOY/+hJaxyn+bjpGAOvic5WU
	MY1771YZeSdWEoFMi86nrRgFtIS/U8WT5DOqnTTqUGS0AZa2gnFTep0f18tauWClUbLtR42dnICk6
	DmN0fyFg==;
Received: from riemann.telenet-ops.be ([2a02:1800:110:4::f00:10])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAJR-00000002LPO-1yag
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Sep 2024 12:43:14 +0000
Received: from andre.telenet-ops.be (andre.telenet-ops.be [IPv6:2a02:1800:120:4::f00:15])
	by riemann.telenet-ops.be (Postfix) with ESMTPS id 4XFVVw0RZ0z4xQ0f
	for <linux-rockchip@lists.infradead.org>; Fri, 27 Sep 2024 14:43:04 +0200 (CEST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:b47d:fd74:3975:15b7])
	by andre.telenet-ops.be with cmsmtp
	id HQic2D0053BfLyr01Qicif; Fri, 27 Sep 2024 14:43:02 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIj-000fQB-JD;
	Fri, 27 Sep 2024 14:42:31 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIp-008IED-5c;
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
Subject: [PATCH treewide 10/11] ARM: dts: nxp: imx: Switch to {hp,mic}-det-gpios
Date: Fri, 27 Sep 2024 14:42:25 +0200
Message-Id: <7ff1bfb73a6d6fc71f3d751dbb7133b045853f64.1727438777.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1727438777.git.geert+renesas@glider.be>
References: <cover.1727438777.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_134309_847301_92395311 
X-CRM114-Status: GOOD (  10.88  )
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

Replace the deprecated "hp-det-gpio" and "mic-det-gpio" properties by
"hp-det-gpios" resp. "mic-det-gpios" in Freescale Generic ASoC Sound
Card device nodes.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
This has a run-time dependency on "ASoC: fsl-asoc-card: Add missing
handling of {hp,mic}-dt-gpios".
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi  | 4 ++--
 arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts        | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6sll-evk.dts       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6ul-14x14-evk.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts         | 2 +-
 6 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi
index 8f4f5fba68cc5f4f..86a86dc370c4a9fb 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi
@@ -113,8 +113,8 @@ sound {
 			"DMICDAT", "DMIC";
 		mux-int-port = <2>;
 		mux-ext-port = <3>;
-		hp-det-gpio = <&gpio7 8 GPIO_ACTIVE_LOW>;
-		mic-det-gpio = <&gpio1 9 GPIO_ACTIVE_LOW>;
+		hp-det-gpios = <&gpio7 8 GPIO_ACTIVE_LOW>;
+		mic-det-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
 	};
 
 	backlight_lvds: backlight-lvds {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts b/arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts
index 7c899291ab0dada4..542d633651f24575 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts
@@ -108,7 +108,7 @@ sound {
 			"IN3R", "AMIC";
 		mux-int-port = <2>;
 		mux-ext-port = <3>;
-		hp-det-gpio = <&gpio4 19 GPIO_ACTIVE_LOW>;
+		hp-det-gpios = <&gpio4 19 GPIO_ACTIVE_LOW>;
 	};
 
 	panel {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll-evk.dts b/arch/arm/boot/dts/nxp/imx/imx6sll-evk.dts
index febc2dd9967de69e..c5383158e25c959b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sll-evk.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll-evk.dts
@@ -157,7 +157,7 @@ sound {
 			"IN3R", "AMIC";
 		mux-int-port = <2>;
 		mux-ext-port = <3>;
-		hp-det-gpio = <&gpio4 24 GPIO_ACTIVE_LOW>;
+		hp-det-gpios = <&gpio4 24 GPIO_ACTIVE_LOW>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
index 277a6e039045b575..ddd01b6dee5a9976 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
@@ -167,7 +167,7 @@ sound {
 			"IN3R", "AMIC";
 		mux-int-port = <2>;
 		mux-ext-port = <6>;
-		hp-det-gpio = <&gpio1 17 GPIO_ACTIVE_LOW>;
+		hp-det-gpios = <&gpio1 17 GPIO_ACTIVE_LOW>;
 	};
 
 	panel {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-14x14-evk.dtsi
index b74ee8948a781762..0e839bbfea082140 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-14x14-evk.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-14x14-evk.dtsi
@@ -68,7 +68,7 @@ sound-wm8960 {
 		audio-cpu = <&sai2>;
 		audio-codec = <&codec>;
 		audio-asrc = <&asrc>;
-		hp-det-gpio = <&gpio5 4 0>;
+		hp-det-gpios = <&gpio5 4 0>;
 		audio-routing =
 			"Headphone Jack", "HP_L",
 			"Headphone Jack", "HP_R",
diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts b/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
index f712537fca161ab9..6cde84636900bb00 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
@@ -169,7 +169,7 @@ sound {
 		model = "wm8960-audio";
 		audio-cpu = <&sai1>;
 		audio-codec = <&codec>;
-		hp-det-gpio = <&gpio2 28 GPIO_ACTIVE_HIGH>;
+		hp-det-gpios = <&gpio2 28 GPIO_ACTIVE_HIGH>;
 		audio-routing =
 			"Headphone Jack", "HP_L",
 			"Headphone Jack", "HP_R",
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
