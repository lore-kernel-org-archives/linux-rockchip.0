Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD327C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 13:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4MOSMb+fjjayid53RS2go12DB8NModXSGbXCHc72uY=; b=4VKQq92edyjYst
	iOfT4NZvWoRuEfdh1YHZ02oHSav5bDS4K9XcEU+DpX+YrvqNfF5NUpguPMXmTlWHfZDRE77aaXd67
	IgxCXgnuKBZeZe0z8RXwvop9UR4d6lKvG2BE4fk2vIe3lHB19/7xk+8j+qytoeDVpPPXZppzzjXcS
	kAVhhMCpNFBLucXPfOwiOjGlC3VbPfZEHt+88WHf7abK9Ywh+19XN5FqzrKKT8u+VCBKykcjgytmw
	wXDJMt0wNFMCo0J2m7nFWCXPhe6GyEY2hRPzGHyYVFL4sc8bF+ii4qKKqDbUQbDUO4fy3FCRzqZtU
	YlKjXCaaj+xACnzg0YOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shUnk-0000000GyB5-1rrZ;
	Fri, 23 Aug 2024 13:58:04 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shUnh-0000000GyA8-2Sl4;
	Fri, 23 Aug 2024 13:58:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724421470; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GDPz/g/0PE8TsvUffPhJb5xFnnvYmh8NHidQtwVVNtGwqQN6y+hmvZh4opApLAoKcHlwg8DP6IQBbQzFXaEBT6JvdkUULvaUNDE8qlF0ILzvI9n5LWSw5gVnF2ldH7q+DIDx7Ek432XYRZI3yIMcYtfX8dR23s2nRrJsMP/Nvy0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724421470; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=kuZvVtZXyDgNs8GUeQXGg1EUr2Zv7tffNce03fa0RVg=; 
	b=bOcATYv7i3aqBVyDW1uyhoqEUm0COFA9aXUWP7RDeUIB1+YSpNU7RCoGywCCfuwWtimjK56LHL7DtvGNNqEDHL+U3WNDVigd/uiFw9QtYwLLlj+fjO/RXYWHbBNn853ofnVLGL71/2hqSfO6LWcv7/v/BgJ/gk0gIOVR5lMeedc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724421470;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=kuZvVtZXyDgNs8GUeQXGg1EUr2Zv7tffNce03fa0RVg=;
	b=Lxj52fyBvT1b5O4j4mkPGnjNytR8FSVteU4N+BujCzwLHEG8okCTf3gBhIlxvMSL
	FhqIZ88M6vBg0nwdCRl9CXxjJiq/K/pvzjgxFRGV7gGpI1h3FskAF3p0k70Vknvhcwk
	hLCi1W2H4o7Zksa4aCJGPdS4w4L0DxEEt1Z9kBFg=
Received: by mx.zohomail.com with SMTPS id 1724421468552780.7042801261449;
	Fri, 23 Aug 2024 06:57:48 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-kernel@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v4 3/4] mmc: dw_mmc-rockchip: Skip all phases bigger than 270
 degrees
Date: Fri, 23 Aug 2024 09:59:29 -0400
Message-ID: <1894989.tdWV9SEqCh@trenzalore>
In-Reply-To: <711f2561ac3d84bcd5bbe26723869b47@manjaro.org>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
 <20240822212418.982927-4-detlev.casanova@collabora.com>
 <711f2561ac3d84bcd5bbe26723869b47@manjaro.org>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_065801_983130_ACFCBC4F 
X-CRM114-Status: GOOD (  23.37  )
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

On Friday, 23 August 2024 01:45:07 EDT Dragan Simic wrote:
> Hello Detlev,
> 
> On 2024-08-22 23:15, Detlev Casanova wrote:
> > From: Shawn Lin <shawn.lin@rock-chips.com>
> > 
> > Per design recommendation, it'd better not try to use any phase
> > which is bigger than 270. Let's officially follow this.
> 
> Would it be possible to provide a reference to the actual design
> specification?  This change affects all users of the dw_mmc-rockchip
> driver, so in case any regressions are found later, having as much
> detail as possible can only be beneficial.

I don't have the reference and only trusting rockchip on this. This could be 
specific to rockchip hardware.
Anyway, the drivers works well on my side on my rk3576 armsom sige5 without 
this patch, so I'm willing to drop it completely.

> > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> > (cherry picked from commit 2a53aab5cfa43065b2e979959d727332a8a03c03)
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > ---
> > 
> >  drivers/mmc/host/dw_mmc-rockchip.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/mmc/host/dw_mmc-rockchip.c
> > b/drivers/mmc/host/dw_mmc-rockchip.c
> > index 2748f9bf2691..1458cb5fd5c7 100644
> > --- a/drivers/mmc/host/dw_mmc-rockchip.c
> > +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> > @@ -310,6 +310,9 @@ static int dw_mci_rk3288_execute_tuning(struct
> > dw_mci_slot *slot, u32 opcode)
> > 
> >  	/* Try each phase and extract good ranges */
> >  	for (i = 0; i < priv->num_phases; ) {
> > 
> > +		/* Cannot guarantee any phases larger than 270 would 
work well */
> > +		if (TUNING_ITERATION_TO_PHASE(i, priv->num_phases) > 
270)
> > +			break;
> > 
> >  		rockchip_mmc_set_phase(host, true,
> >  		
> >  				       TUNING_ITERATION_TO_PHASE(
> >  						
> >  						i,





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
