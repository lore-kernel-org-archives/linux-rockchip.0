Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A967E77173
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 07:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/25cRJtBsrlcxLNnvxtqvmU5YQ40dUeRyEFIwP50lo=; b=AfRmpxWIgZ4nX7
	6d/W48dmmhRGYf/OKQM2s347nKaS1AT44WZ8UZBheqGZD/+jLAnoQyULQZtD0VY7eZwfWzLN4gWmb
	4elr/Gz6asYmv9uyiQ+Mc0RVzNJ7WKPIf4KxwNfEKfXJfjJvSplFJNym3S904y5iEC1gJWFOfP47a
	IkZXric9RpWk1w3F21DCiyXZ6LCuYDBWQaTOEa8tfkf92MSBsOfNp3JF7R+e6xOQoShgElCeScjRo
	gMpSjAilyv7bhFEBERUCbTAL09mQRa6sKCDDsJiSHl5hYNv4YKqXKyE65stadJyNBuHKFo+eNxBlA
	GI6vFWDHJdyDeZ8ynhsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKYEl-00000006jcw-2MFV;
	Mon, 09 Dec 2024 07:31:23 +0000
Received: from [1.95.21.16] (helo=mail-m16.yeah.net)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKYDi-00000006jUH-2R3n;
	Mon, 09 Dec 2024 07:30:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=/kuYzy4TvOvrW5Ysb7raR4QcHn1lxSFVuvD5F5LoL8s=;
	b=N97k7CryICfX9jh86hJTeBgEADIbl2Lo29RYU94PkaJvrZv89euFfIkA+t8m7E
	4sFUhL9EKlkhDetYq+lXjqDHhehecPNcCMscua1nbfV9cUrYp0s75prWk5006qpI
	EuKiOPQXYyTPxhfdREhNVONR9ejRz9VYvu3+9sJopUgX4=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgCHe+ZOnFZnMep5BA--.46497S3;
	Mon, 09 Dec 2024 15:29:20 +0800 (CST)
Date: Mon, 9 Dec 2024 15:29:18 +0800
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
Subject: Re: [PATCH treewide 04/11] arm64: dts: freescale: imx: Switch to
 simple-audio-card,hp-det-gpios
Message-ID: <Z1acTq/JV/JTHllY@dragon>
References: <cover.1727438777.git.geert+renesas@glider.be>
 <b38545c29d6cbf0b394ddb4747ce810c679f95d1.1727438777.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b38545c29d6cbf0b394ddb4747ce810c679f95d1.1727438777.git.geert+renesas@glider.be>
X-CM-TRANSID: Mc8vCgCHe+ZOnFZnMep5BA--.46497S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUodgAUUUUU
X-Originating-IP: [114.218.218.187]
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiERiwZWdWZpHlSgAAs1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_233018_925646_663B09FB 
X-CRM114-Status: UNSURE (   7.57  )
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

On Fri, Sep 27, 2024 at 02:42:19PM +0200, Geert Uytterhoeven wrote:
> Replace the deprecated "simple-audio-card,hp-det-gpio" property by
> "simple-audio-card,hp-det-gpios" in Simple Audio Card device nodes.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
