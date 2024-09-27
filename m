Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4E75CDD1B8
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 14:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFjMyTO5r+iPtf2MQkHB/QO+G6tAlj18TWUA4kvNWOU=; b=bNy2nJOdaSD5JO
	3jLra/zlzapzTqrAfOqwcNb1TMq3YOq8ON6/OQdwVBZ6I9AoJxGdUA5W+nLRkPyk7o4l1wlVqkPwW
	xr2wnJoGLuGVxVb4mkEc0HQAbZHQYgA0/UTnTwxjt7VL0hSRfBlJyoxqw26FZz3AkK4BT9mWkZeDy
	6Gb2vaWOteX1GZtOKAsm6LA4WE01ySwyLuw38hw4did+LMr5Lx+96bzc7VkN7mMFuh+QZawwx5Wj9
	/uu7aaoR9FQesAQZn8Jj0kvh10w1fw15Am2pbj1w+EXJOFuLOyu/AIygxRa+jsxl3fV0CukFsUk60
	NbhEcfulCN+hbYCYCByw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suCEr-0000000BVIt-22q5;
	Fri, 27 Sep 2024 14:46:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suCDc-0000000BV2f-0Zwf;
	Fri, 27 Sep 2024 14:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Eyv6FxKbSvQOFgQGcK5COE/kC4alwt92KY2oNq8SFCM=; b=hHZyQS+vg3fGvDLP66OXewKSw/
	MgkYPIHasNP3Y4Vnw+Qz32VU90hJgUuL0TNZM9Z0ex/VAcLL+btM20yOKGwqvGR0MSZJy8sZzWNmu
	CRtWZj46gdvGkeDWd8p6q6YFW0AO0Dg5nO6P2uO2uLV/GZj9x94qWOdQJ0+fOJKpEOeNwONe2b8my
	IytLCrYxSKBSyluqn/mTPCnt7Whlj3/ufprGWJQo4y2pUCu3eDn29jqe+Qo39CjycUpZaK6XK8Vbs
	wKQGVRYSz7kf5xERWOuc7hB190jPyoC7OddhWU6836LF6mjGb7UEvB/bz8zUJ6HC3A5y94d4HTLiu
	+ui1ah4g==;
Received: from 85-160-70-253.reb.o2.cz ([85.160.70.253] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1suCD8-0006OK-Lb; Fri, 27 Sep 2024 16:44:46 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Paul Cercueil <paul@crapouillou.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Shengjiu Wang <shengjiu.wang@gmail.com>, Xiubo Li <Xiubo.Lee@gmail.com>,
 Nicolin Chen <nicoleotsuka@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Adrien Grassein <adrien.grassein@gmail.com>, Adam Ford <aford173@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mips@vger.kernel.org, alsa-devel@alsa-project.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH treewide 00/11] ASoC: Clean up {hp,mic}-det-gpio handling
Date: Fri, 27 Sep 2024 16:44:43 +0200
Message-ID: <4455919.MSiuQNM8U4@phil>
In-Reply-To: <cover.1727438777.git.geert+renesas@glider.be>
References: <cover.1727438777.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_074516_253069_69170E5F 
X-CRM114-Status: GOOD (  11.99  )
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

Hi Geert,

Am Freitag, 27. September 2024, 14:42:15 CEST schrieb Geert Uytterhoeven:
>   - The second patch updates the Audio Graph and Simple Audio Card DT
>     bindings,
>   - Patches 3-9 converts various DTS files to use the new properties,
>   - The last 2 patches convert Freescale sound device nodes to use the
>     new properties.
> 
> All patches can be applied independently,

though I guess dts patches should wait till patch 2 gets applied
somewhere, so that changed dts and changed binding can again find
together in linux-next?


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
