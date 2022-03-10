Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17FB6C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Mar 2022 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQgSs5bmV/qN+P+I+jxsDJRCiUHWi3pX5cPoRmKxWpk=; b=Y2AEiYH5jpIp0D
	8eoLHRrPegFER4Hbmd/Z47IpEJomH8yLfXmJ0VBID1cGp8+HjaTbpW3r+BtayOtRQwjJ9Di+umAUP
	GEaAwT/KUS6Hcx06rop49Mh651Fp4vScBCVrOLCjB4KghApnHg/41ex+cOcqpWLTAjSecU2doNR1p
	hpl3NTBhNHsyov/53682Ml61b69IM/KzxBuBziCYXM0DiPMbBvRYFjol14KRGNlfdJLB2KggKu2NS
	cy/RPVS6fNCDMvVNga1Y8KX9+0YN3QNy2L/18c4fLlFXDwt1LXb4KmWzAtyWv9nNKIeh1TBHoVG/n
	Vk0Usji703FZcHOppauA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSK3f-00DBS9-Vc; Thu, 10 Mar 2022 14:46:28 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSK37-00DB92-SF
 for linux-rockchip@lists.infradead.org; Thu, 10 Mar 2022 14:45:56 +0000
Received: by mail-wr1-x42c.google.com with SMTP id t11so8324970wrm.5
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Mar 2022 06:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=zU7imf92+d/PezIj5fiCgBU/+AQvUgohjaHX+C+UpeQ=;
 b=CmyIyYjR7tGnr1QuRp+xPIBulZs4ugi0KQAkU3z0KhniBlnMOY++5g59UgYwCso8YI
 W8PYFBiS1lxc/vixYi31SpODNYYKTHxTm//84VyYyBug5GL3wME2E0wOtDgIrjk/LPlW
 Kdke8bcd1RSs9PEqW5NMnh6JjlUWH6R6Zguwyz5qQ7B9TohQzqrAN1vzf8CcYZNOTDjR
 chYvP4z4LO/T6MxgJd5nOnmc2PcooGqVXAGY1F+foafsu5Zku79jjVlU/rTxsTRlsP0d
 kgKY5CBZv7Cd7i2WUm6gHlaeKMS2DC6ggig0yAabKv/RaESkQub8szUOCBquQmXlWWGy
 P5hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=zU7imf92+d/PezIj5fiCgBU/+AQvUgohjaHX+C+UpeQ=;
 b=jRbhnjVY96EY14BPAPC8uHAdOEv0e6G7WXaC6iOMSag/lZ8vc0zsMZQZjYoobt69wO
 I81hklmArIcb4aKmiu0yzjb8hRSmZkiNzgtBpxfdzlwQ6qbfANFK6TxaLCZ5clWzQnxg
 SU/k6UUtnqpxQu3Uc84LZ8ns4VJ29PlVMgtOAnFuDL+d2nC4bL1LWJ0o9C8oV5w7ZLrP
 7/DTLoALWIF1ITLoF0bWovOUd1gAoffqXwtGpq5eNQcPDSM8fjapdUQgEw1lC60/U9XH
 PJTDgxcJVgDhaXCJmb+NWseOMXGGoKkz1IYzVo9aBwmt9jkIkLte//9gDXfkT11Gwlul
 qsMw==
X-Gm-Message-State: AOAM533PtxAMGNGSh6dsAVxOqdnUXNPzYytvQbAzO2wcZYfbz1gp8Vws
 IY8vwYFTGkOhkNu+G76H0CsW/w==
X-Google-Smtp-Source: ABdhPJyJI8jwQb/Irm6QZNNEQ5Fh9XydIkdFANTWHACe7B4gTCr/8KXVdJR/BIyz1pPmehwTd5rJ2g==
X-Received: by 2002:a5d:6dad:0:b0:203:84b4:da13 with SMTP id
 u13-20020a5d6dad000000b0020384b4da13mr3470010wrs.162.1646923551095; 
 Thu, 10 Mar 2022 06:45:51 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 q16-20020a056000137000b001f046a21afcsm4450932wrz.15.2022.03.10.06.45.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 06:45:50 -0800 (PST)
Date: Thu, 10 Mar 2022 15:45:45 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com
Subject: Re: [PATCH v2 11/18] crypto: rockhip: do not handle dma clock
Message-ID: <YioPGUFPOerQKak5@Red>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
 <20220302211113.4003816-12-clabbe@baylibre.com>
 <064626ad-129e-c7eb-5e08-12d93cffa993@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <064626ad-129e-c7eb-5e08-12d93cffa993@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_064554_059324_F8F8288E 
X-CRM114-Status: GOOD (  37.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Le Fri, Mar 04, 2022 at 04:01:58PM +0100, Johan Jonker a =E9crit :
> Hi Corentin,
> =

> Make your clock driver parsing portable.
> =

> =3D=3D=3D
>     oneOf:
>       - const: rockchip,rk3288-crypto
>       - items:
>           - enum:
>               - rockchip,rk3328-crypto
>           - const: rockchip,rk3288-crypto
> =

> Compatible string must be SoC related!
> =

> rk3288 was the first in line that had support, so we use that as fall
> back string.
> =

> =3D=3D=3D
> =

> Make binding fit for more SoC types.
> Allow more clocks by using devm_clk_bulk_get_all.

Hello

Thanks for the hint of devm_clk_bulk_get_all, I will switch to it as it sim=
plify clock handling.

> Drop reset-names requirement for devm_reset_control_array_get_exclusive.
> =

> =3D=3D=3D
> =

> Use a patch order to prevent the scripts generate notifications.

which scripts ?

> =

> - dt-bindings conversion
> =

> - add rk3328 compatible string in a separate patch
> =

> - your driver changes
> =

> - dts patches
> =

> A proposed maintainer must be able to submit patch series without errors.=
 ;)
> =

> =3D=3D=3D
> =

> When you remove a clock in a YAML conversion you must add a note to the
> DT maintainer.
> =

> =3D=3D=3D
> =

> Johan
> =

> On 3/2/22 22:11, Corentin Labbe wrote:
> > The DMA clock is handled by the DMA controller, so the crypto does not
> > have to touch it.
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/crypto/rockchip/rk3288_crypto.c | 16 +---------------
> >  drivers/crypto/rockchip/rk3288_crypto.h |  1 -
> >  2 files changed, 1 insertion(+), 16 deletions(-)
> > =

> > diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/r=
ockchip/rk3288_crypto.c
> > index 94ef1283789f..645855d2651b 100644
> > --- a/drivers/crypto/rockchip/rk3288_crypto.c
> > +++ b/drivers/crypto/rockchip/rk3288_crypto.c
> > @@ -40,15 +40,8 @@ static int rk_crypto_enable_clk(struct rk_crypto_inf=
o *dev)
> >  			__func__, __LINE__);
> >  		goto err_hclk;
> >  	}
> > -	err =3D clk_prepare_enable(dev->dmaclk);
> > -	if (err) {
> > -		dev_err(dev->dev, "[%s:%d], Couldn't enable clock dmaclk\n",
> > -			__func__, __LINE__);
> > -		goto err_dmaclk;
> > -	}
> > +
> >  	return err;
> > -err_dmaclk:
> > -	clk_disable_unprepare(dev->hclk);
> >  err_hclk:
> >  	clk_disable_unprepare(dev->aclk);
> >  err_aclk:
> > @@ -59,7 +52,6 @@ static int rk_crypto_enable_clk(struct rk_crypto_info=
 *dev)
> >  =

> >  static void rk_crypto_disable_clk(struct rk_crypto_info *dev)
> >  {
> > -	clk_disable_unprepare(dev->dmaclk);
> >  	clk_disable_unprepare(dev->hclk);
> >  	clk_disable_unprepare(dev->aclk);
> >  	clk_disable_unprepare(dev->sclk);
> > @@ -199,12 +191,6 @@ static int rk_crypto_probe(struct platform_device =
*pdev)
> >  		goto err_crypto;
> >  	}
> >  =

> =

> > -	crypto_info->dmaclk =3D devm_clk_get(&pdev->dev, "apb_pclk");
> > -	if (IS_ERR(crypto_info->dmaclk)) {
> > -		err =3D PTR_ERR(crypto_info->dmaclk);
> > -		goto err_crypto;
> > -	}
> > -
> =

> rk3288:
>  		clocks =3D <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
> -			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
> -		clock-names =3D "aclk", "hclk", "sclk", "apb_pclk";
> +			 <&cru SCLK_CRYPTO>;
> +		clock-names =3D "aclk", "hclk", "sclk";
> =

> =

> rk3328:
> +		clocks =3D <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
> +			 <&cru SCLK_CRYPTO>;
> +		clock-names =3D "aclk", "hclk", "sclk";
> =

> The HCLK_CRYPTO_MST not is related to ACLK_CRYPTO.
> You are reusing rk3288 names to not to change the driver.
> Give it an other name.

You are right, I will change them.


> =

> =3D=3D=3D
> =

> The sclk goes through a crypto_div_con.
> Does that need a frequency set?
> Or does that come from nowhere?
> =

> From crypto_v1.c
> 	priv->frequency =3D dev_read_u32_default(dev, "clock-frequency",
> 					       CRYPTO_V1_DEFAULT_RATE);
> =

> 	ret =3D clk_set_rate(&priv->sclk, priv->frequency);
> =


The problem is that I dont see any hints for this in TRM, and their rockchi=
ps source are inconsistent, they do this in uboot not in linux....

> =3D=3D=3D
> =

> Could you make this portable?
> Example:
> =

> 	int i;
> =

> 	priv->num_clks =3D devm_clk_bulk_get_all(dev, &priv->clks);
> 	if (priv->num_clks < 1)
> 		return -EINVAL;
> =

> 	priv->sclk =3D NULL;
> 	for (i =3D 0; i < priv->num_clks; i++) {
> 		if (!strncmp(priv->clks[i].id, "sclk", 3)) {
> 			priv->sclk =3D priv->clks[i].clk;
> 			break;
> 		}
> 	}
> =

> 	if (!priv->sclk) {
> 		dev_err(dev, "no sclk found\n");
> 		return -EINVAL;
> 	}
> =

> Also add optional "sclk1" clock for rk3399.
> Use "sclk" and not "sclk0" to be backwards compatible.
> =

> =3D=3D=3D
> =

> Also make the resets portable for rk3399.
> Remove the requirement for "reset-names".
> =

> Example:
> 	priv->phy_rst =3D devm_reset_control_array_get_exclusive(dev);
> 	if (IS_ERR(priv->phy_rst))
> 		return dev_err_probe(dev, PTR_ERR(priv->phy_rst), "failed to get phy
> reset\n");
> =

> =

> =

> >  	crypto_info->irq =3D platform_get_irq(pdev, 0);
> >  	if (crypto_info->irq < 0) {
> >  		dev_err(&pdev->dev, "control Interrupt is not available.\n");
> > diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/r=
ockchip/rk3288_crypto.h
> > index c741e97057dc..963fbfc4d14e 100644
> > --- a/drivers/crypto/rockchip/rk3288_crypto.h
> > +++ b/drivers/crypto/rockchip/rk3288_crypto.h
> > @@ -191,7 +191,6 @@ struct rk_crypto_info {
> =

> >  	struct clk			*aclk;
> >  	struct clk			*hclk;
> >  	struct clk			*sclk;
> > -	struct clk			*dmaclk;
> =

> =

> 	int num_clks;
> 	struct clk_bulk_data *clks;
> 	struct clk *sclk;
> 	struct clk *sclk1;
> =

> =

> >  	struct reset_control		*rst;
> >  	void __iomem			*reg;
> >  	int				irq;


For handling rk3399, I have no hardware so I cannot do anything for it easi=
ly.
I have asked on IRC for some tests, so let's see if it works.
Anyway we can always add support for it later, the priority is to fix the d=
river breakage.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
