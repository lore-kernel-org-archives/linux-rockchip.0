Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6AA4CDD1A2
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 12:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1KkxN2hITLAVI8dYeDz4MjMoaSfQw2Ff4MZ3FUO1vM=; b=3mY9Er2PfBgstv
	tuybf/OzTTawHI+55d8eccrEAM1r/bQFX9hJhDVFg4qQQ8orgY7BvIPJaNAzFZk1Eeh4L4IwJC9HW
	7J0hVaw+yvNYN4tm9hqpfMfHXqUrta1R/NLSWiUbrwoDtJh/AnejisIPBmNfvsQCwNG1lmtuczGII
	VDsg2kLqHaazhHHmqfEzID8imDS2qJiWZUxp9gwn0aOhNbtRNq1qOadeumn3QZkIhjtxd6qtQftTy
	mp2+uU6QZifNoMevi4OYYsFsriVU0giI74pLfZ5JfeQysRHEMfXLdtj3VC0Grja9phRtyUAusiYiK
	LZfFEY2exJpgbOwAjbUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suARg-0000000B9rS-1ZeJ;
	Fri, 27 Sep 2024 12:51:40 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAJP-0000000B7FF-0z57
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Sep 2024 12:43:12 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:b47d:fd74:3975:15b7])
	by baptiste.telenet-ops.be with cmsmtp
	id HQic2D00E3BfLyr01Qicjw; Fri, 27 Sep 2024 14:43:02 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIj-000fPr-HE;
	Fri, 27 Sep 2024 14:42:31 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIo-008IDg-V7;
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
Subject: [PATCH treewide 02/11] ASoC: dt-bindings: Deprecate {hp,mic}-det-gpio
Date: Fri, 27 Sep 2024 14:42:17 +0200
Message-Id: <833d5d9560339bf39a125914225c9a0930e134cc.1727438777.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1727438777.git.geert+renesas@glider.be>
References: <cover.1727438777.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_054307_703489_A78DE536 
X-CRM114-Status: UNSURE (   8.62  )
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

Commit 2071d0968e564b4b ("Documentation: gpio: guidelines for bindings")
deprecated the "gpio" suffix for GPIO consumers in favor of the "gpios"
suffix.  Update the Audio Graph and Simple Audio Card DT bindings to
reflect this.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
No driver changes needed, as gpiod_get_optional() as called from
simple_util_init_jack() tries all suffixes.
---
 .../devicetree/bindings/sound/audio-graph.yaml       |  6 ++++++
 .../devicetree/bindings/sound/simple-card.yaml       | 12 ++++++++++++
 2 files changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph.yaml b/Documentation/devicetree/bindings/sound/audio-graph.yaml
index 71f52f7e55f6ce72..9899d9d1958d9d93 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph.yaml
@@ -37,8 +37,14 @@ properties:
   pa-gpios:
     maxItems: 1
   hp-det-gpio:
+    deprecated: true
+    maxItems: 1
+  hp-det-gpios:
     maxItems: 1
   mic-det-gpio:
+    deprecated: true
+    maxItems: 1
+  mic-det-gpios:
     maxItems: 1
 
 required:
diff --git a/Documentation/devicetree/bindings/sound/simple-card.yaml b/Documentation/devicetree/bindings/sound/simple-card.yaml
index 59ac2d1d1ccfa4ce..533d0a1da56e34eb 100644
--- a/Documentation/devicetree/bindings/sound/simple-card.yaml
+++ b/Documentation/devicetree/bindings/sound/simple-card.yaml
@@ -207,8 +207,14 @@ properties:
   simple-audio-card,pin-switches:
     $ref: "#/definitions/pin-switches"
   simple-audio-card,hp-det-gpio:
+    deprecated: true
+    maxItems: 1
+  simple-audio-card,hp-det-gpios:
     maxItems: 1
   simple-audio-card,mic-det-gpio:
+    deprecated: true
+    maxItems: 1
+  simple-audio-card,mic-det-gpios:
     maxItems: 1
 
 patternProperties:
@@ -256,8 +262,14 @@ patternProperties:
       pin-switches:
         $ref: "#/definitions/pin-switches"
       hp-det-gpio:
+        deprecated: true
+        maxItems: 1
+      hp-det-gpios:
         maxItems: 1
       mic-det-gpio:
+        deprecated: true
+        maxItems: 1
+      mic-det-gpios:
         maxItems: 1
 
     patternProperties:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
