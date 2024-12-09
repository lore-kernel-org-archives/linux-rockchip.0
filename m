Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0325AE77173
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 07:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h86jlvgMTsTGmZGk2T6sR5JQPfq3wHJ86cHWEWCrvMc=; b=akPK53cPJng5VY
	xRJNFDcj2djWiVcjtl+M/eKNGyC9eltsg/LrxIg6wmdEBqMmjT4TeWXReX0Td09jpUNwHh8kNAVHm
	avRuWS4XwPLwJRK0DR83oH02/f5Di4MC767mtbyvi55G2zWZ1pA12Ws1pDjaIi53Gol0HEAkswJqN
	mW8aNSbKgdwftFDA/bLFVnPd34Hx5qA2R/EEqdwFX9VFUQUvAl4QbPodKiMcnippXhhhnMmnHE/R6
	3G7eqLN7rXrFex3/GR9uBB0CF19fBYsnjMsdzDbuot7rH8MpKguXFqS8o1Z+4FnhARPmzxd+0RmLt
	+bBxQqD0Cr1D6QNwLcSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKYDH-00000006jQS-1yUt;
	Mon, 09 Dec 2024 07:29:51 +0000
Received: from mail-m16.yeah.net ([220.197.32.16])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKYCD-00000006jFR-3kQF;
	Mon, 09 Dec 2024 07:28:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=F+/1F5usZGU4xwFJCSgL70wM6kK3SGbjvRaZHVo0Zx0=;
	b=m0B7CQyjdSflcO4FEyoQ1bz1xXtz2aaBneveM0wWc38aRp5vbeDz7ctDwIsbGo
	UpqW1iwusxzg7XkDGBClLBth7ICBRKhCwevETCuxrhblIgjkao37+jwTiBu7SfBf
	aC9mJ7KN6axnCTQ6cuhvoNhlZUkd9iCPaxh/9g5n3Ctew=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgA3fxoBnFZnkeV5BA--.46779S3;
	Mon, 09 Dec 2024 15:28:03 +0800 (CST)
Date: Mon, 9 Dec 2024 15:28:00 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
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
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Adrien Grassein <adrien.grassein@gmail.com>,
	Adam Ford <aford173@gmail.com>, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-mips@vger.kernel.org,
	alsa-devel@alsa-project.org, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH treewide 10/11] ARM: dts: nxp: imx: Switch to
 {hp,mic}-det-gpios
Message-ID: <Z1acAA7gbxH7QfhT@dragon>
References: <cover.1727438777.git.geert+renesas@glider.be>
 <7ff1bfb73a6d6fc71f3d751dbb7133b045853f64.1727438777.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7ff1bfb73a6d6fc71f3d751dbb7133b045853f64.1727438777.git.geert+renesas@glider.be>
X-CM-TRANSID: Mc8vCgA3fxoBnFZnkeV5BA--.46779S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUoGQ6UUUUU
X-Originating-IP: [114.218.218.187]
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCQ6wZWdWeNqUcwAAsm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_232846_296237_408A8507 
X-CRM114-Status: UNSURE (   8.01  )
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

On Fri, Sep 27, 2024 at 02:42:25PM +0200, Geert Uytterhoeven wrote:
> Replace the deprecated "hp-det-gpio" and "mic-det-gpio" properties by
> "hp-det-gpios" resp. "mic-det-gpios" in Freescale Generic ASoC Sound
> Card device nodes.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
