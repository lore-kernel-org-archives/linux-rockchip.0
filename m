Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 954D7C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 11:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WgFGyWgdo5ngsWRMzFFDk7RxpsI++N37HHDmxVEUiA=; b=1n1l7YdXmKHEbE
	Mmv7i/sfu6AeXTvsprd75Yb1PjSBUGhEaiXtBbOXKLjLTTb885AhLWjegrDJqldaLObEnMGLe9aoN
	XnVqK9w1W/+mbR81whvhbWTw/SayLY6oNTF5uLggS0erSaXLQE55Y6xOjDQXUlW26HTRxpndkkaLG
	HKGa381xcfZkr1aKqfyMwI1NoK1MQNNd6uSgWLg9f/uuBEY/cGe5Xy2XNJen4pKizgYzNls4bT+Zg
	9z0UitJg5PRja2D6cx+jgMb2sF359lCStls+YWP+bT01Dy0CuDq/PRZn+Wo1qks51AtBd0lXAgNfS
	3+R95oAYKfX7/RTe8PSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rew5y-000000051yt-3flA;
	Tue, 27 Feb 2024 11:58:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rew5u-000000051y8-3aYj;
	Tue, 27 Feb 2024 11:58:00 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rew5R-0003lO-WA; Tue, 27 Feb 2024 12:57:30 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?utf-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Lei Chuanhua <lchuanhua@maxlinear.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Damien Le Moal <dlemoal@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>
Cc: Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Add error messages in .probe()s error paths
Date: Tue, 27 Feb 2024 12:57:28 +0100
Message-ID: <2949150.o0KrE1Onz3@diego>
In-Reply-To: <20240227111837.395422-2-ukleinek@debian.org>
References: <20240227111837.395422-2-ukleinek@debian.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_035758_998018_A4ACA041 
X-CRM114-Status: GOOD (  20.85  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 27. Februar 2024, 12:18:35 CET schrieb Uwe Kleine-K=F6nig:
> Drivers that silently fail to probe provide a bad user experience and
> make it unnecessarily hard to debug such a failure. Fix it by using
> dev_err_probe() instead of a plain return.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <ukleinek@debian.org>

Looks like a much better behavior this way

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 23 ++++++++++++-------
>  1 file changed, 15 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/=
controller/dwc/pcie-dw-rockchip.c
> index d6842141d384..4c16d8d2e178 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -225,11 +225,17 @@ static int rockchip_pcie_clk_init(struct rockchip_p=
cie *rockchip)
>  =

>  	ret =3D devm_clk_bulk_get_all(dev, &rockchip->clks);
>  	if (ret < 0)
> -		return ret;
> +		return dev_err_probe(rockchip->pci.dev, ret,
> +				     "failed to get clocks\n");
>  =

>  	rockchip->clk_cnt =3D ret;
>  =

> -	return clk_bulk_prepare_enable(rockchip->clk_cnt, rockchip->clks);
> +	ret =3D clk_bulk_prepare_enable(rockchip->clk_cnt, rockchip->clks);
> +	if (ret)
> +		return dev_err_probe(rockchip->pci.dev, ret,
> +				     "failed to enable clocks\n");
> +
> +	return 0;
>  }
>  =

>  static int rockchip_pcie_resource_get(struct platform_device *pdev,
> @@ -237,12 +243,14 @@ static int rockchip_pcie_resource_get(struct platfo=
rm_device *pdev,
>  {
>  	rockchip->apb_base =3D devm_platform_ioremap_resource_byname(pdev, "apb=
");
>  	if (IS_ERR(rockchip->apb_base))
> -		return PTR_ERR(rockchip->apb_base);
> +		return dev_err_probe(&pdev->dev, PTR_ERR(rockchip->apb_base),
> +				     "failed to map apb registers\n");
>  =

>  	rockchip->rst_gpio =3D devm_gpiod_get_optional(&pdev->dev, "reset",
>  						     GPIOD_OUT_HIGH);
>  	if (IS_ERR(rockchip->rst_gpio))
> -		return PTR_ERR(rockchip->rst_gpio);
> +		return dev_err_probe(&pdev->dev, PTR_ERR(rockchip->rst_gpio),
> +				     "failed to get reset gpio\n");
>  =

>  	rockchip->rst =3D devm_reset_control_array_get_exclusive(&pdev->dev);
>  	if (IS_ERR(rockchip->rst))
> @@ -320,10 +328,9 @@ static int rockchip_pcie_probe(struct platform_devic=
e *pdev)
>  		rockchip->vpcie3v3 =3D NULL;
>  	} else {
>  		ret =3D regulator_enable(rockchip->vpcie3v3);
> -		if (ret) {
> -			dev_err(dev, "failed to enable vpcie3v3 regulator\n");
> -			return ret;
> -		}
> +		if (ret)
> +			return dev_err_probe(dev, ret,
> +					     "failed to enable vpcie3v3 regulator\n");
>  	}
>  =

>  	ret =3D rockchip_pcie_phy_init(rockchip);
> =

> base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
