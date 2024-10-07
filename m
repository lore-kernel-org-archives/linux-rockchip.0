Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92572CFB43F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 08:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1q5pz/k8c59k8vLF0OH6Rk6XKUwB7VbrhmZOW+R4VqQ=; b=1+OD8W1T7g88Zy
	ZA6F/ky78Gexwk2oW960QLpyxE3/+tTKwXUQG9Og7F1S6mnFgaezwGTABjbTeuQ80oeISL/FsERcj
	8gB3EaOqqZvYQXVrCMP4MUZhCJjo/eVjNMwuFay/dLhOdVlUbCKY8m4/WTRZkN4NA5w7lYLqYoM3g
	hjbCQJ8BFMDUV4mvYuFbV0AVY61fjLNO4HnmRoKOfeuhUkJy70iWA/29yPbHeaSr6Le6a0047chpZ
	y6EsoaZe675VInxxjOK06N+Hl54mBvp8HoYdMbpMRN1x3knfIWQjQXKfqdkckLqU6ED1Pa3lh7YIy
	Yb0yd/hgphEvxXnzqylQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxj04-00000001kKo-0xeK;
	Mon, 07 Oct 2024 08:21:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxikj-00000001hFr-0PAz;
	Mon, 07 Oct 2024 08:06:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZkOxRoRypHAVQgVjyqb7heF/q9DLPK8SmPxFVAuphQI=; b=G/k1s40Ulb10wWe2CvPP9H8zku
	QyoRAgzReOYMUcvY1lT5FklGPJb9trwS8HWM5iKC2m2ws7E5TBIouShElZ6rUqd7aL1NY7tFFpVKE
	wqInKhrzG35pjz7jHf4OdIyFp3xZtpyrQXwDcYsiY6x/GxEZc2Jw5mZA5rcEBBcKbM2WHNg1Fdfs2
	kNbk1NVQV/19IsFaacmsHaoCamjIA1H2jsOPU65USw0roLxH03+ZCKnQBXaVtJ7nLQr2BB8WSp9q/
	pK0Qc7UupO3XNZW14pv9HT2V5bQRXcSXjTwLYdsqnGept/bPGsRtLZYkPMGkRaEsXJw7YIF5kf8hC
	Rg1jWntw==;
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sxik7-0004Pv-F9; Mon, 07 Oct 2024 10:05:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Adam Ford <aford173@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Adrien Grassein <adrien.grassein@gmail.com>,
	Lubomir Rintel <lkundrak@v3.sk>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Takashi Iwai <tiwai@suse.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Paul Cercueil <paul@crapouillou.net>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Mark Brown <broonie@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-sound@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	imx@lists.linux.dev,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org
Subject: Re: (subset) [PATCH treewide 00/11] ASoC: Clean up {hp,mic}-det-gpio handling
Date: Mon,  7 Oct 2024 10:05:20 +0200
Message-ID: <172814935870.2376693.17979672250689687487.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1727438777.git.geert+renesas@glider.be>
References: <cover.1727438777.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_010601_176535_45AD6A5A 
X-CRM114-Status: GOOD (  12.29  )
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

On Fri, 27 Sep 2024 14:42:15 +0200, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> The "gpio" suffix for GPIO consumers was deprecated a while ago, in
> favor of the "gpios" suffix.  However, there are still several users of
> the "hp-det-gpio" and "mic-det-gpio" properties, in DT bindings,
> drivers, and DT source files.
> 
> [...]

Applied, thanks!

[06/11] arm64: dts: rockchip: Switch to simple-audio-card,hp-det-gpios
        commit: 7ac5c0a592f73fdc52393f6469ce8211ff3e771f
[07/11] arm64: dts: rockchip: Switch to hp-det-gpios
        commit: 3ca743f8a5b568dc5e5d5f1bab0298a4a43c2360

after the binding change from patch 02 got merged into the sound tree

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
