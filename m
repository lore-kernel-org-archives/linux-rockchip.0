Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 439B5C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 15:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tS0iHyoTIACUKtsrJ0fazdpeQNZoi695QeJAtRHNJck=; b=fXSzNvryNx6Kbm
	NXKsrk6e+Mn6o/GZ/SfRhZ8HQfOnzGXLgcrrQjsqV0ge/5PeZZMc8sydZ+EsA134eXj5KwQTqS1uF
	Dpy1dT1/MJfq5yV/d9Jt52CfNM7bkHJyYd7CW3NqC/ws4V+zJLRLMUxy00IqJT9zLoXcIYRzzhdeI
	ySRCWreCwQQFISfNZ3P5JkReMJV55i9SAVR3Tssw+LYcYw9svA394H12oD6o0CsO1swyqupMzP8+h
	qej7rC9cOi6Q4eqRIV0IztNC6EYfhCm6g9L4ZOQkilLIQvc3c5xKeRaZKd0NKxS48Jw16dxHK6Bd4
	B1YNz153TXs70BuXWLmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sibv2-00000007sIT-42w7;
	Mon, 26 Aug 2024 15:46:12 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sibux-00000007sHb-17Lt;
	Mon, 26 Aug 2024 15:46:11 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724687153; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=NSgXOg6pf4JTqCqBfaJlETE1ElqADA9SVLQWBaTLNnLv8aaUYzY2wN3OZmLIQDFpOk8gkdZN7hhG2j0/vKC7QChgmuu7O2vgQ4JnhQe5+JcioXS/0GvGuHa5izNnNOEcUUXuOHmh58Whvkrve4BvvExUbLG+Dmi6vC0W91B8bAo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724687153; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=zb074lKrTAv50HX1CILzyo6P0szhW30i/SFCvBy70Lk=; 
	b=a+PNdjk2Ikz8JSGRfSPu9uRgnrY4Z6SXSoMtp1CmhnfWCvZiv5Zl/xLkVZplKNx6tDMpsmnMncbAfoWbwwi3gbfvcyuxmcw+IMA435ShP6VNtP8f/ZfJ8cP2I/fN4gPjrU3F3VZGXzouX5biSAWFdfQWC43gGGH/fzlAgKMjDzc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724687153;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=zb074lKrTAv50HX1CILzyo6P0szhW30i/SFCvBy70Lk=;
	b=LqkQDUsf/LZqRncbELqVpYqBjZmUZkn4+1sPZ7OmW5TWlkzZw52pQyEAJAh47NOe
	7eguSKUZhr8IB1Pg+Y3Gb1+4h6ecDm1ONzIj29ScB78qRhlY1qsUt1xBA2a6vaUIJNz
	gkFaCSLvnyrusBKjAU1Ilrkivai6hO6uHRgWw3j0=
Received: by mx.zohomail.com with SMTPS id 1724687151652297.5430112358182;
	Mon, 26 Aug 2024 08:45:51 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-kernel@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 4/4] mmc: dw_mmc-rockchip: Add support for rk3576 SoCs
Date: Mon, 26 Aug 2024 11:45:49 -0400
Message-ID: <2196769.irdbgypaU6@bootstrap>
In-Reply-To: <dc77f6dbdfc68369d02005763143cdea@manjaro.org>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
 <5808226.DvuYhMxLoT@trenzalore>
 <dc77f6dbdfc68369d02005763143cdea@manjaro.org>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_084607_388812_4923D3D2 
X-CRM114-Status: GOOD (  28.50  )
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

Hi Dragan,

On Monday, 26 August 2024 10:07:49 EDT Dragan Simic wrote:
> Hello Detlev,
> 
> On 2024-08-23 15:20, Detlev Casanova wrote:
> > On Friday, 23 August 2024 03:00:57 EDT Dragan Simic wrote:
> >> Hello Detlev,
> >> 
> >> Please see a comment below.
> >> 
> >> On 2024-08-22 23:15, Detlev Casanova wrote:
> >> > On rk3576 the tunable clocks are inside the controller itself, removing
> >> > the need for the "ciu-drive" and "ciu-sample" clocks.
> >> > 
> >> > That makes it a new type of controller that has its own dt_parse
> >> > function.
> >> > 
> >> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> >> > ---
> >> > 
> >> >  drivers/mmc/host/dw_mmc-rockchip.c | 48 ++++++++++++++++++++++++++----
> >> >  1 file changed, 43 insertions(+), 5 deletions(-)
> >> > 
> >> > diff --git a/drivers/mmc/host/dw_mmc-rockchip.c
> >> > b/drivers/mmc/host/dw_mmc-rockchip.c
> >> > index 1458cb5fd5c7..7c8ccf5e71bc 100644
> >> > --- a/drivers/mmc/host/dw_mmc-rockchip.c
> >> > +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> > 
> > [...]
> > 
> >> > @@ -435,13 +451,25 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci
> >> > *host)
> >> > 
> >> >  	if (IS_ERR(priv->sample_clk))
> >> >  	
> >> >  		dev_dbg(host->dev, "ciu-sample not available\n");
> >> > 
> >> > -	host->priv = priv;
> >> > -
> >> > 
> >> >  	priv->internal_phase = false;
> >> >  	
> >> >  	return 0;
> >> >  
> >> >  }
> >> > 
> >> > +static int dw_mci_rk3576_parse_dt(struct dw_mci *host)
> >> > +{
> >> > +	struct dw_mci_rockchip_priv_data *priv;
> >> > +	int err = dw_mci_common_parse_dt(host);
> >> > +	if (err)
> >> > +		return err;
> >> > +
> >> > +	priv = host->priv;
> >> > +
> >> > +	priv->internal_phase = true;
> >> 
> >> Defining priv, assigning it and using it seems rather redundant,
> >> when all that's needed is simple "host->priv->internal_phase = true"
> >> assignment instead.
> > 
> > Yes, that's what I did at first, but host->priv is declared as void*,
> > which
> > means it needs to be cast to struct dw_mci_rockchip_priv_data * and I
> > felt
> > that
> > 
> > ((struct dw_mci_rockchip_priv_data *)host->priv)->internal_phase =
> > true;
> > 
> > is not very pretty and harder to read.
> 
> Ah, you're right, and I somehow managed to ignore that.
> 
> I agree with your conclusions, although I'd suggest something like
> this, for slightly improved readability:
> 
>   +static int dw_mci_rk3576_parse_dt(struct dw_mci *host)
>   +{
>   +	struct dw_mci_rockchip_priv_data *priv = host->priv;
>   +	int err;
>   +
>   +	err = dw_mci_common_parse_dt(host);
>   +	if (err)
>   +		return err;
>   +
>   +	priv->internal_phase = true;
>   +
>   +	return 0;
>   +}

That won't work either, because host->priv is initialized in 
dw_mci_common_parse_dt.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
