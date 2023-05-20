Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13A69C77B7F
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 May 2023 15:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ki3fk9432yHv1UkU1XJdVjLTgyqDEfaj+c0XgIPIusQ=; b=Z/dvYtB7fvzvXl
	b2bqrJoFi5rY+khwmPZtNlFFJza7y0l3OYT+zngHuD6cypA2kF7SSHt7mqwILo3x8xkIShvKRj79r
	MNHzkXZCl5L3as0/VzSxFAXwn1T+MF/+Tnn0s/Hk2iQQbHOIIgthWVKWhOqNIkSpRMqS9mGjXrKrH
	HF3LwgNxtKD/R46xJ0snlliyn2n5jEx9aPM923FXemotHw7SLMDa8hCme2y5CsnEuJXE7rAR9tgac
	ZTB88IQOhY48EW6gU5eh3YHBhh7sFThp7PKIViarYd3CCgvhnl8hy6um3G6QSWPQf8oQSUsbYv3F8
	dCci0X6BtfxENwgxO8qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0OaM-001md6-1J;
	Sat, 20 May 2023 15:33:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0OaI-001mas-0H;
	Sat, 20 May 2023 15:33:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C51F460B18;
	Sat, 20 May 2023 15:33:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90740C433D2;
	Sat, 20 May 2023 15:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684596807;
	bh=v2J4QcmeQzjUO1CUDFFKdSrX6QMMRgCiCMtenkolPlU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=saGd+R5YIQWo5HvkhlsM7ywmRukcLhf2Kgb3vtXaUdjya86Ia9ulrRP1ID2G0lpwp
	 jehUTPp1qXNEbMKx7JiO6CykDrQ9H9M5VZ71ADjTAG+F4eUXuw/ap6KYpDWkfjBOMw
	 KSPFG2/zqDGKLlBYCi0Hi6qCFSg3mTaJ6UeHvR8/KytNG7jC3eU8DZwW+9tu5+gRLN
	 fmOsfadxDhg2lWgAfVNJwG2dvOMWjQXnLdVKqXueEq7KN73EzCTygK0zjvcTS+4O5i
	 1gqlyTL3zMgLkEV+tJGSAkWlCnzivD2vSi5GnZs6qqFSqOcTNBsSGhr1GS0Iq65zlN
	 iZV2/2HrJVO9A==
Date: Sat, 20 May 2023 16:49:35 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Shreeya Patel <shreeya.patel@collabora.com>, lars@metafoo.de,
 heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 sebastian.reichel@collabora.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, gustavo.padovan@collabora.com,
 serge.broslavsky@collabora.com
Subject: Re: [PATCH 5/7] iio: adc: rockchip_saradc: Use dev_err_probe
Message-ID: <20230520164935.70094206@jic23-huawei>
In-Reply-To: <d1955b9e-c719-9c7c-b1fd-f11fa97e44af@collabora.com>
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
	<20230516230051.14846-6-shreeya.patel@collabora.com>
	<d1955b9e-c719-9c7c-b1fd-f11fa97e44af@collabora.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230520_083330_229376_38973C26 
X-CRM114-Status: GOOD (  26.56  )
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

On Wed, 17 May 2023 12:40:37 +0200
AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> wrote:

> Il 17/05/23 01:00, Shreeya Patel ha scritto:
> > Use dev_err_probe instead of dev_err in probe function,
> > which simplifies code a little bit and prints the error
> > code.
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> > ---
> >   drivers/iio/adc/rockchip_saradc.c | 45 ++++++++++++++-----------------
> >   1 file changed, 20 insertions(+), 25 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> > index 5e1e8575bc76..a52021fd477d 100644
> > --- a/drivers/iio/adc/rockchip_saradc.c
> > +++ b/drivers/iio/adc/rockchip_saradc.c  
> 
> ..snip..
> 
> > @@ -494,23 +492,20 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
> >   	 * This may become user-configurable in the future.
> >   	 */
> >   	ret = clk_set_rate(info->clk, info->data->clk_rate);
> > -	if (ret < 0) {
> > -		dev_err(&pdev->dev, "failed to set adc clk rate, %d\n", ret);
> > -		return ret;
> > -	}
> > +	if (ret < 0)
> > +		return dev_err_probe(&pdev->dev, ret,
> > +				     "failed to set adc clk rate\n");
> >   
> >   	ret = regulator_enable(info->vref);
> > -	if (ret < 0) {
> > -		dev_err(&pdev->dev, "failed to enable vref regulator\n");
> > -		return ret;
> > -	}
> > +	if (ret < 0)
> > +		return dev_err_probe(&pdev->dev, ret,
> > +				     "failed to enable vref regulator\n");
> > +
> >   	ret = devm_add_action_or_reset(&pdev->dev,
> >   				       rockchip_saradc_regulator_disable, info);
> > -	if (ret) {
> > -		dev_err(&pdev->dev, "failed to register devm action, %d\n",
> > -			ret);
> > -		return ret;
> > -	}
> > +	if (ret)
> > +		return dev_err_probe(&pdev->dev, ret,
> > +				     "failed to register devm action\n");  
> 
> It's not your fault - and it's about a pre-existing issue, but there's that:
> you're returning an error if devm_add_action_or_reset() fails (which is highly
> unlikely), but you're leaving the regulator enabled!
Which regulator?  The _or_reset() part means that the callback is called if
the devm_add_action_or_reset is going to return an error.  So in the
path you talk about
rockchip_saradc_regulator_disable() is called and disables vref

> 
> As for how to proceed here, I would suggest to fix this issue in a separated
> commit (before the dev_err_probe() conversion); it'd look like...
> 
> 	if (ret) {
> 		regulator_disable(info->vref);
> 		dev_err( .... blurb );
> 		return ret;
> 	}
> 
> and after the conversion it'd look like...
> 
> 	if (ret) {
> 		regulator_disable(info->vref);
> 		return dev_err_probe( ... blurb );
> 	}
> 
> Cheers,
> Angelo
> 
> >   
> >   	ret = regulator_get_voltage(info->vref);
> >   	if (ret < 0)  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
