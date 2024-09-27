Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26BA2CDD1A0
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 12:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/uXbysJ65FEkbIpUtkxdZ83GcwbDQSp7qDlmqGcnRsA=; b=W9oXMlaiKEvgQa
	YZ1F5A24ko7MIQi8VS9ziFWjDCkzQCPLyyxKbAJC0PU7xnigF6bE4A6PtMVncdq8lPCkwYOCJkgOW
	YcJ2mjD96DCp47LG9+IwJQyJrYN0Wnxb3Lgix8yr2+Hnhlr47XlRjDnmHJk9oFye2XiQytWCNr/54
	AGixFqCaRMn1We0I7SY0BiWLJ95GXfyJhWq3bDLaUTlCNxRl3vtZGsj2HcDbXdTcjWTfV/+mIsaIA
	zD0yysEwV8ZNfIpevSdrYIaeuc+2XddOQTP+1PVvqgSstPYRo20Nlg/C6o+UNU7EqQ8J9mT8kJDQz
	BB32Oqt65ksgU2AIKKwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suARf-0000000B9qz-2foL;
	Fri, 27 Sep 2024 12:51:39 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAJP-0000000B7FC-0yTP
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Sep 2024 12:43:12 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:b47d:fd74:3975:15b7])
	by michel.telenet-ops.be with cmsmtp
	id HQic2D00L3BfLyr06Qicqj; Fri, 27 Sep 2024 14:43:02 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIj-000fPv-HG;
	Fri, 27 Sep 2024 14:42:31 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIo-008IDd-UI;
	Fri, 27 Sep 2024 14:42:30 +0200
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
Subject: [PATCH treewide 01/11] ASoC: fsl-asoc-card: Add missing handling of {hp,mic}-dt-gpios
Date: Fri, 27 Sep 2024 14:42:16 +0200
Message-Id: <dbcb5bfea005a468ec6dc38374fe6d02bc693c22.1727438777.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1727438777.git.geert+renesas@glider.be>
References: <cover.1727438777.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_054307_669352_8B0141D2 
X-CRM114-Status: GOOD (  13.01  )
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

The DT bindings deprecated the "hp-det-gpio" and "mic-det-gpio"
properties in favor of "hp-det-gpios" and "mic-det-gpios", but the
driver was never updated to support the latter.

Even before, there existed users of "hp-det-gpios" and "mic-det-gpios".
While this may have been handled fine by the ASoC core, this was missed
by the Freescale-specific part.

Fixes: 4189b54220e5af15 ("ASoC: dt-bindings: fsl-asoc-card: convert to YAML")
Fixes: 40ba2eda0a7b727f ("arm64: dts: imx8mm-nitrogen-r2: add audio")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Noticed accidentally.
Compile-tested only.
---
 sound/soc/fsl/fsl-asoc-card.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/sound/soc/fsl/fsl-asoc-card.c b/sound/soc/fsl/fsl-asoc-card.c
index f6c3aeff0d8eafd7..a0c2ce84c32b1d06 100644
--- a/sound/soc/fsl/fsl-asoc-card.c
+++ b/sound/soc/fsl/fsl-asoc-card.c
@@ -1033,14 +1033,15 @@ static int fsl_asoc_card_probe(struct platform_device *pdev)
 	}
 
 	/*
-	 * Properties "hp-det-gpio" and "mic-det-gpio" are optional, and
+	 * Properties "hp-det-gpios" and "mic-det-gpios" are optional, and
 	 * simple_util_init_jack() uses these properties for creating
 	 * Headphone Jack and Microphone Jack.
 	 *
 	 * The notifier is initialized in snd_soc_card_jack_new(), then
 	 * snd_soc_jack_notifier_register can be called.
 	 */
-	if (of_property_read_bool(np, "hp-det-gpio")) {
+	if (of_property_read_bool(np, "hp-det-gpios") ||
+	    of_property_read_bool(np, "hp-det-gpio") /* deprecated */) {
 		ret = simple_util_init_jack(&priv->card, &priv->hp_jack,
 					    1, NULL, "Headphone Jack");
 		if (ret)
@@ -1049,7 +1050,8 @@ static int fsl_asoc_card_probe(struct platform_device *pdev)
 		snd_soc_jack_notifier_register(&priv->hp_jack.jack, &hp_jack_nb);
 	}
 
-	if (of_property_read_bool(np, "mic-det-gpio")) {
+	if (of_property_read_bool(np, "mic-det-gpios") ||
+	    of_property_read_bool(np, "mic-det-gpio") /* deprecated */) {
 		ret = simple_util_init_jack(&priv->card, &priv->mic_jack,
 					    0, NULL, "Mic Jack");
 		if (ret)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
