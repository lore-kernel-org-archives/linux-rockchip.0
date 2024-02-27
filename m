Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DC3CC54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 12:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7F4V09S3TQ9LprNIZc22IYSnUdiy3TTln8RHlCbXk8=; b=Od+a3SCJwhB5Rd
	WAftDJ36V3M5AhAqst0SKj1npISh0HNvRGFu6SZInkj8zpAhydu6nRFLLgnaUtX6n9ok7ucSOmFHm
	IvCp536smeCCN2S4w+hT4DBgjk9iDl7wjqPW2QscALKD72RJ4klDy0CGNU0ePF44tT+n6L98/Q1lN
	zYm8CpS0glrtBrWF+OtOfA5BOZxrAI3vXBqhUg238wgl35g/wc4Tdgmr+sJbr/YAQcVWhpIES2md/
	8DYATXinS8Obzxzp9geCM3mgzYc9XhS9urw3dlm7Eq8Sn0x+u/xkTAoDY+yQecJGpJC/ShpOgO8NR
	nn5W9skc4jw78VFhDOyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rewZe-00000005Bbl-339H;
	Tue, 27 Feb 2024 12:28:42 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rewZb-00000005BZs-0VuH;
	Tue, 27 Feb 2024 12:28:40 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-512fd840142so2558462e87.2;
        Tue, 27 Feb 2024 04:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709036916; x=1709641716; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FHY/81rtpLypB+r9zCeqoeJnUswfp/HHFeOatBG7+Uw=;
        b=WDMfDm9UYpkqZ/KD8WOE4Wno9/6jJIrx6mQWcxJZ5heV7EIWZs2BNc7DnwQeBMeCoC
         8xxOr6Mrexn6BHA0fOctJpg3cnWwUBqS6HGy/CHG1Sxr2jA0My9GVv7u9WorJxpDykfB
         OQd+nPkmCO5oW7+mM25wAjiDwSH8Z/n4RutQrEo6C98pN0/DEJDdCj1xrLJenJdh6VB6
         Lepzpa0PYlMh9L6dQv0KhAzFq4oXlkFy07QAEP5VBIbG3ymWToxYhmZGsqPckvnAibgW
         F9TAeCLon5haAYNfpxdRbM6Zm1LSlxCbiUcTKJy/rvPvlG9cm87n2IJsVcq1NOV05ZxH
         EV5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709036916; x=1709641716;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FHY/81rtpLypB+r9zCeqoeJnUswfp/HHFeOatBG7+Uw=;
        b=FfPkx8mwQ3bUextejrMYUdNCdLQLKeUEGSExwxbXCEUzoDMgvLZ/F6o0JLaxZyEC0K
         PSjuypL6IwnF/n7xT0f734vNUg8QjnAO0Qd63Yk2QfLB6BHs92lZ/uxhNFar3nEpbhZa
         OcbE9z4NQ1ys67LkbWbwoNNZPXaUfsaZWgQPb1UI6IuZxEF1B5ARFM9aJ8p41qkRyijf
         Gtrb3rLH2VZDDj4xnmeXcoQtSODL2sqBenLue5F2xMg2zHkyXXCWYEwGwqqW8VvtuuUH
         SaF5y4LW0mz4IKX0usnfSdZJsH2b9aCoe110Qx9WbREjwFAJiRWjsXa/2QYkjdNWivmy
         Gekw==
X-Forwarded-Encrypted: i=1; AJvYcCV1Ib80vMZri8AjlIiQ0Di/veKeOMcFhjvG8fMbuIlNgn0dql8LuxXrTl4eXno33p1b99XdlZCSw2usNCoRCIgg5GPcnaX8e2FdFOaYUAIq4khXQQe4qnJcgXqLBNMa5+YhB8br3uEE2I25nPoXOiyYwEecFGE+IjY=
X-Gm-Message-State: AOJu0YxBDCAyJAVJGGj0tC8aGYPkTUQXc7iVqTO/eyo9uQsmC2tP2MxQ
	RlCHA4acZP7DIyw9yjUyjnHKjKbSpD9pG1JZIZYgBaz0zosbOe22
X-Google-Smtp-Source: AGHT+IFi1NfRtwzpzbUtPjPYsIEDay1aMMDdth4HOv3+lyyyS97y08UpyZ9Ke2GISBMzGnqhbMWz0Q==
X-Received: by 2002:a05:6512:108f:b0:512:b696:e312 with SMTP id j15-20020a056512108f00b00512b696e312mr7169790lfg.46.1709036915841;
        Tue, 27 Feb 2024 04:28:35 -0800 (PST)
Received: from mobilestation ([178.176.56.174])
        by smtp.gmail.com with ESMTPSA id i18-20020a056512319200b005130479a912sm231483lfe.68.2024.02.27.04.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 04:28:35 -0800 (PST)
Date: Tue, 27 Feb 2024 15:28:32 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Lei Chuanhua <lchuanhua@maxlinear.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Jesper Nilsson <jesper.nilsson@axis.com>, 
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Add error messages in .probe()s error
 paths
Message-ID: <6dyzzqaqqx6k46rujeo52od7xgemvdbe7n5qzg647exdo6w7xc@4luaoc6qqd6a>
References: <20240227111837.395422-2-ukleinek@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240227111837.395422-2-ukleinek@debian.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_042839_196266_01FAF577 
X-CRM114-Status: GOOD (  20.83  )
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

On Tue, Feb 27, 2024 at 12:18:35PM +0100, Uwe Kleine-K=F6nig wrote:
> Drivers that silently fail to probe provide a bad user experience and
> make it unnecessarily hard to debug such a failure. Fix it by using
> dev_err_probe() instead of a plain return.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <ukleinek@debian.org>
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

+		return dev_err_probe(dev, ret, "failed to get clocks\n");

>  =

>  	rockchip->clk_cnt =3D ret;
>  =

> -	return clk_bulk_prepare_enable(rockchip->clk_cnt, rockchip->clks);
> +	ret =3D clk_bulk_prepare_enable(rockchip->clk_cnt, rockchip->clks);
> +	if (ret)

> +		return dev_err_probe(rockchip->pci.dev, ret,
> +				     "failed to enable clocks\n");

ditto

-Serge(y)

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
> -- =

> 2.43.0
> =

> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
