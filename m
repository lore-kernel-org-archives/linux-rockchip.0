Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05C37CDD1A1
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 12:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3HV3QwSCsaHsZ3BTxzcZbcp7FaljCdLGwKUNn5C7do=; b=qabzG00EH15HMF
	Bgv1rk8atwEiqCdgpfdpM3Myw46TpRARN4sL+6Yn6wIwmg2IPibZsKo0rVqtVIY1kBdlc1I19LLLI
	B+bNZVIGF8hUUdvqfsrZfjD9Ryia37fZbE8mZjRaWUkqvi7NT9PrCzDscLJThpg0E/W5moQ7IcYnK
	UHjS7PFGnw5wO/DBaVR6j3Fy30aCwnqEH4woced1NkNV339XJ2E2gjKTzELkhd/HoRXGkOJJ73v09
	EbHRTrOcrKX1SwcKc0Z4kUkB/0vCmBAOCQupxZ410xkE8Fjlbvs2PfEWX0vk6RtpHyt9QV68nRObD
	hheTwnPNa+A4KJk+d7wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suAOB-0000000B94V-1Cf5;
	Fri, 27 Sep 2024 12:48:03 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAJP-0000000B7FG-0zZ9
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Sep 2024 12:43:10 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:b47d:fd74:3975:15b7])
	by baptiste.telenet-ops.be with cmsmtp
	id HQic2D00D3BfLyr01Qicjt; Fri, 27 Sep 2024 14:43:02 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIj-000fPs-HD;
	Fri, 27 Sep 2024 14:42:31 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1suAIo-008IDj-Vr;
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
Subject: [PATCH treewide 03/11] ARM: dts: marvell: mmp2-olpc-xo-1-75: Switch to {hp,mic}-det-gpios
Date: Fri, 27 Sep 2024 14:42:18 +0200
Message-Id: <7b4d7d735189fb346175a95e29db33f01c8cf93d.1727438777.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1727438777.git.geert+renesas@glider.be>
References: <cover.1727438777.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_054307_611324_62C811F4 
X-CRM114-Status: GOOD (  10.74  )
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
"hp-det-gpios" resp. "mic-det-gpios" in Audio Graph Card device nodes.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm/boot/dts/marvell/mmp2-olpc-xo-1-75.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/mmp2-olpc-xo-1-75.dts b/arch/arm/boot/dts/marvell/mmp2-olpc-xo-1-75.dts
index 55ea87870af3e039..86c425b72fa711b5 100644
--- a/arch/arm/boot/dts/marvell/mmp2-olpc-xo-1-75.dts
+++ b/arch/arm/boot/dts/marvell/mmp2-olpc-xo-1-75.dts
@@ -113,8 +113,8 @@ sound-card {
 			  "Headphones", "HPOR",
 			  "MIC2", "Mic Jack";
 		widgets = "Headphone", "Headphones", "Microphone", "Mic Jack";
-		hp-det-gpio = <&gpio 97 GPIO_ACTIVE_HIGH>;
-		mic-det-gpio = <&gpio 96 GPIO_ACTIVE_HIGH>;
+		hp-det-gpios = <&gpio 97 GPIO_ACTIVE_HIGH>;
+		mic-det-gpios = <&gpio 96 GPIO_ACTIVE_HIGH>;
 	};
 
 	soc {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
