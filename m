Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B10FCDD1A5
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 12:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5kdVofaoNge2OPVCetoNHm1N9JKMxieMWhkCcYsj2CM=; b=W9ZgsIYnWvwpha
	6AZNc1bCcj0Dtxd4FGMLH6mVs6YFMP6k/kyMicJcfglDb7EmtaT+ady6FVxVtNcN6CGyIFF1+coRc
	Utpl0cC2eaBOBz4jZhvap54hDgniM6Z7KfQwmVj6xRgy0nRpT3Q/jMK/6aFd31hh4v8RrAAeDXnp+
	DvBYWMS2GTk183qv1b416N7n9Eb6Ihfp+oPTF8QZ88mQB5UIvNddEysOIh53FFFfcbtvY+NPnkuNL
	06LHdMPd4ZlnFMMqHnWedBD9Iw+i3UV8t2bO0+dOnCIs3uj4qwgzraWkSpV9uDbpd7UpfgyD42deJ
	RMwrhHepmu0aiPBtUVqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suAXT-0000000BBM0-2bUC;
	Fri, 27 Sep 2024 12:57:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAJW-0000000B7Ne-427V
	for linux-rockchip@bombadil.infradead.org;
	Fri, 27 Sep 2024 12:43:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8pEVAyku7Uijs/sJuSjwc2lCYvUnilSD+t79lm1ciFk=; b=K+D0OUocUJ+dxui6F9oYO3fP0c
	Etxv+tDgeOZTrT5hoarN/c79JhDBlpNwbUgJ6v2CWFAZpZ+QxLZm9S+mmdluIXayjRdZ3lNGT+ppP
	c+dcIewYB+AJdq4g8O65DBNAywH0MSZoz/J7a3T0FskByU4pzvCG7vFyfKyIxe7UCswBARKaTyFuV
	1ig255t4sSUloUXFt5wtxFdSHVmQ9ltyI+DQnDPvQg4Lr3kp4SPLV1/rvKHzFiHGxSt4EKFIO2sLy
	kJK6G9kK8pEz49g716eAI+iVKj6p+t7k/mgzuT2au9FP99Jh3ucwBfe0AB7pnjHC9lPXa31HlLPi5
	cRcMhDNg==;
Received: from riemann.telenet-ops.be ([195.130.137.80])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAJR-00000002LPT-0Jd1
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Sep 2024 12:43:13 +0000
Received: from albert.telenet-ops.be (albert.telenet-ops.be [IPv6:2a02:1800:110:4::f00:1a])
	by riemann.telenet-ops.be (Postfix) with ESMTPS id 4XFVVw0GSfz4xN9S
	for <linux-rockchip@lists.infradead.org>; Fri, 27 Sep 2024 14:43:04 +0200 (CEST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:b47d:fd74:3975:15b7])
	by albert.telenet-ops.be with cmsmtp
	id HQic2D00E3BfLyr06Qiclu; Fri, 27 Sep 2024 14:43:02 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIj-000fPu-HI;
	Fri, 27 Sep 2024 14:42:31 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIp-008IDm-0M;
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
Subject: [PATCH treewide 04/11] arm64: dts: freescale: imx: Switch to simple-audio-card,hp-det-gpios
Date: Fri, 27 Sep 2024 14:42:19 +0200
Message-Id: <b38545c29d6cbf0b394ddb4747ce810c679f95d1.1727438777.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1727438777.git.geert+renesas@glider.be>
References: <cover.1727438777.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_134309_559336_2E92F8DB 
X-CRM114-Status: GOOD (  11.41  )
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

Replace the deprecated "simple-audio-card,hp-det-gpio" property by
"simple-audio-card,hp-det-gpios" in Simple Audio Card device nodes.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi       | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index b268ba7a0e12a3f8..9d8e7231b7c63742 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -172,7 +172,7 @@ sound {
 			"Headphones", "HP_OUT",
 			"Builtin Speaker", "Speaker Amp OUTR",
 			"Speaker Amp INR", "LINE_OUT";
-		simple-audio-card,hp-det-gpio = <&gpio3 20 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,hp-det-gpios = <&gpio3 20 GPIO_ACTIVE_HIGH>;
 
 		simple-audio-card,cpu {
 			sound-dai = <&sai2>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
index 1b39514d5c12aafc..bb37a32ce4616d9f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
@@ -241,7 +241,7 @@ sound {
 			"Headset Mic", "MICBIAS",
 			"IN3R", "Headset Mic",
 			"DMICDAT", "Digital Mic";
-		simple-audio-card,hp-det-gpio = <&gpio3 9 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,hp-det-gpios = <&gpio3 9 GPIO_ACTIVE_HIGH>;
 
 		simple-audio-card,cpu {
 			sound-dai = <&sai2>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
