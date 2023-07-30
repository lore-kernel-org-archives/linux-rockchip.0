Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03B49C001DE
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jul 2023 13:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFdZoKFWxX51fIugTNzHj1xo1+NgPowRDc/eFGzlbUw=; b=JgT2QjFfVN7OCI
	C7YZBE4fyS5dp9d+ZZtbY/yDvepp+I7Dn2A20U5vEcpAXpu8HDCBo5s1ZS/1mXfZTZbnm8wsqx4SW
	csw+AEItlY9Di969gQUYD4zcLeelwIAHu+WEvPSIQ0XHJuRwtI3zNF7A0tBDd8PdfXIsxj2mzEQqk
	iDBEORF4wVw+02GOG76Oqh7mFpusPGsC0sLQCbQbRYDF431PXGQSVNUfU5dihPk2Q3qNuiAJWRWCZ
	jTzn7VB8/gmjcjhIcjGJpAwQb7MTc39KyhhjCPRc55DGNjiFOlz2iFubyywbWNyQ3z8+rEqNLe+y6
	8CkH4voFnZ85ZAVupP0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQ6OA-00BYag-1f;
	Sun, 30 Jul 2023 13:23:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQ6O7-00BYZG-0S;
	Sun, 30 Jul 2023 13:23:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 54C4760C56;
	Sun, 30 Jul 2023 13:23:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 117F6C433C8;
	Sun, 30 Jul 2023 13:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690723389;
	bh=aKQ6zX5k8uIcjBF07axyeQZQbvOI44YmLbkG4ePV7a4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EUc9R2fD3LNYnghaSowLatJqOC0h3Y2XynN6kqFmy+/1gQtN/wJWL5LHHL082jjy0
	 IABgpRJt3vZ9qo55KWopUKXkl8e+bE6luBhHk+tdF6Zq/f0HxW0J3LZ8SYs8mQrc3Y
	 PbwBY2nG3bE0iT9E/yQX2+fLqFvSNt8eLRtly+jFQtml7+8sBsKTjqI0gMe8boRTgR
	 p+jQ9Bn8JgTdmDQPZEsFxzMMyDdWNxPu5kBS06tQ3lMAOb2y0+KxkvJVGE3nkKEMVY
	 /gTDJgH+UTRye4U/s/vI2LemmXQ+/txfKNc3NYCSnXBPE8SOWckXJo37ioRByB1Bmb
	 oKmDqoCTKgYbw==
Date: Sun, 30 Jul 2023 21:22:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	=?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
	Tony Lindgren <tony@atomide.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 4/6] arm64: dts: freescale: Replace deprecated
 extcon-usb-gpio id-gpio/vbus-gpio properties
Message-ID: <20230730132252.GQ151430@dragon>
References: <20230724103914.1779027-1-alexander.stein@ew.tq-group.com>
 <20230724103914.1779027-5-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230724103914.1779027-5-alexander.stein@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230730_062311_221103_27D90E3E 
X-CRM114-Status: UNSURE (   9.33  )
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

On Mon, Jul 24, 2023 at 12:39:11PM +0200, Alexander Stein wrote:
> Use id-gpios and vbus-gpios instead.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Acked-by: Shawn Guo <shawnguo@kernel.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
