Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0CACC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Mar 2023 08:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rftYkk8Q+rjvXiZ0u4U/kEj1n2MNKu35Se21KgfnDk0=; b=IbIlyefLJHY1v2
	ufWUbH2+a+ov0/UmTOyQI8nqcjKhc98VPsr9f4NPLwyiq8T2/Khdv85+S4hJhH2YX1MY5nxq2Mxsg
	NdJOTx0kH2krMHRZWEFYFKv/usm8jIPnPcK6P1CjsIl29wMBGedUZ2m+/BeQIHEpACWYS4PrFLVxe
	nyZTskdNS/GqlO2w32ZfhmVYdJOl0NDSyQrjzHyhtPi7PyUalcpE11ElGhfNWW+wwt3MR3pxyof2N
	l/FpnrHRLzdeiCxYOamsGvPdzlyhP82CBzHlxnJqBRdXqZrWtqfhRyf977HuX71QkHyLF9yRrjiIe
	vRsaojrdSqijzDVQcE0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfGih-001Kuu-2U;
	Thu, 23 Mar 2023 08:54:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfGif-001Ktt-1w
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Mar 2023 08:54:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pfGh0-0006FY-NJ; Thu, 23 Mar 2023 09:53:06 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pfGgr-0066mb-Rs; Thu, 23 Mar 2023 09:52:57 +0100
Received: from pza by lupine with local (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pfGgq-0001AB-Lo; Thu, 23 Mar 2023 09:52:56 +0100
Message-ID: <12f3f106791ad390aa1b4c850c7665467ba5d2d2.camel@pengutronix.de>
Subject: Re: [PATCH] media: dt-bindings: Drop unneeded quotes
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman
 <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,  Joe Tessler
 <jrt@google.com>, Dongchun Zhu <dongchun.zhu@mediatek.com>, Jacopo Mondi
 <jacopo+renesas@jmondi.org>, Kieran Bingham
 <kieran.bingham+renesas@ideasonboard.com>, Laurent Pinchart
 <laurent.pinchart+renesas@ideasonboard.com>, Niklas
 =?ISO-8859-1?Q?S=F6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Tiffany Lin <tiffany.lin@mediatek.com>, Andrew-CT Chen
 <andrew-ct.chen@mediatek.com>, Yunfei Dong <yunfei.dong@mediatek.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>,  Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Robert Foss <rfoss@kernel.org>,  Todor
 Tomov <todor.too@gmail.com>, Andy Gross <agross@kernel.org>, Bjorn
 Andersson <andersson@kernel.org>,  Konrad Dybcio
 <konrad.dybcio@linaro.org>, Stanimir Varbanov
 <stanimir.k.varbanov@gmail.com>, Vikash Garodia
 <quic_vgarodia@quicinc.com>, Heiko Stuebner <heiko@sntech.de>, Benoit
 Parrot <bparrot@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Date: Thu, 23 Mar 2023 09:52:56 +0100
In-Reply-To: <20230320233944.2920964-1-robh@kernel.org>
References: <20230320233944.2920964-1-robh@kernel.org>
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_015449_636597_5815E077 
X-CRM114-Status: UNSURE (   8.03  )
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

On Mo, 2023-03-20 at 18:39 -0500, Rob Herring wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
