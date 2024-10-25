Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C66D1D149EB
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Oct 2024 19:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbhIl6FGKbphMLjeY3206T0FPjAkX4whfuXe583qc6k=; b=VOr28gqRpToM1q
	trerrCHBWGCD4Twri1UuxYUb/eXPysq++6AVfACn0E29SPSm3Jem1fxmeILtSV0pR8dcK284BJM06
	Uwqzsu3mk2X0i1LgfSmr2GcUloFlW9hxqobeSi/DxjQ9vB6D3eFvapRaqcLgCGz9ajtnBJHhr6T5x
	DGOUSPIUPku2I+ihjLZgjPnPGuIk+wlz97gsyTfVh0sVyw/GXr0y0i1iqCWl0PXyFhSadmcD7qa0a
	zHM3JScj5IiWHAHIF0Pqdjx2DN34DzD3oZ6hyrqtQ88qsECnbAtr5h0G6B+Sd0t8qq3FLUb+2Nmvk
	fekQeF6y6F49WFqH6JgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4QP7-00000005351-2C40;
	Fri, 25 Oct 2024 19:55:25 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4PrD-00000004x52-2ooY
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Oct 2024 19:20:26 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-3e602a73ba1so1414569b6e.2
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Oct 2024 12:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729884021; x=1730488821; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=UFiCFtyXCtM0cfXvBWureE7jstH1bP+NqgjN2z9rdyw=;
        b=IoRWtdvzco+Mt4OPnaRs9Cbeh1jHTGOrHC6HZsQPEMaVmyEkZMw83uhhYCDkEweZEC
         3aSq5R2fT5THhnn9Gnr03ZqWuOVDh/t5rhRtrdC9wAdroTxd3uUR/hRoVYwpachMzMXX
         bH76SZy8c2fSiz4iCdO5n8HShmmHGOjeSRdwgphj+olBAE4Vy5iLCMgpHVf7zKuCZmpo
         qeElSo99sbQJo9uuXdvXUe/65nFt68Q/nD15WxaGEBg6/ZGtLv9nSZOBOIZWhasAGrb3
         iJQ2L1istU2+WjoULwqDp1FPumB4g6QbPLx2pMiBKI87yn3KtenafscSVS78wuorKhzK
         5zug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729884021; x=1730488821;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UFiCFtyXCtM0cfXvBWureE7jstH1bP+NqgjN2z9rdyw=;
        b=HACoKJWbIXaAOB/U2bbgMI3fdEY04qsSIdzjXABOlfi5jHFxPBMT5ovZpsvDY7fiHm
         1zIRJtZ9oSvKLRjock856ieXxnv4Sgv5mSl6CM7hdxoFyhH4/nadaJOMSjlO/KzwvEyu
         bgBcz7r/8aFX9zZ+xsxYP2zKh+8jW5bP8PvTnHFZ6rp6+8pkoXxNWxpD4rITyiH9i0yN
         R8W9+2bvdvs6pS0zyuVh+8s4InXVAGCvTyDhzrEKhOnSELFLwEhRJvQwCn9av0FTlvxP
         mCk9yuTDysjDZNVkvWEcWnvTGpBRu38M3/urn2QJ4Z23Z/RXSp/IA9cWjZcVztd3vRK+
         pWgg==
X-Forwarded-Encrypted: i=1; AJvYcCVst7r8VZCaU3monQcRtarmjTMLeuoURv59ssxlhgZD6ZWpsfsonjfwPrn/UnvROSm6TNUo4EQdZQ+MOUb5iQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzmUgYH9As3Y0TwgBgqavzhWYxTUPsuuM8wKw/0IGO3F3JgR8jo
	avaP720e3sXSG/Uamhschi8ev3Ii6v4UToqQ8jWciogiNfI4cNOc
X-Google-Smtp-Source: AGHT+IHOU/yoWxT8qW/MXMQq/wMel6zgqBgbkv9VBifq5zyHr7GCtzsN1GvySw7RXKuVZa+ZXeUxxw==
X-Received: by 2002:a05:6808:3097:b0:3e5:fbdc:ba03 with SMTP id 5614622812f47-3e63848a0d3mr761378b6e.30.1729884021461;
        Fri, 25 Oct 2024 12:20:21 -0700 (PDT)
Received: from neuromancer. ([2600:1700:fb0:1bcf:5f0:c09c:9b2f:306d])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e6324957afsm349778b6e.32.2024.10.25.12.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 12:20:21 -0700 (PDT)
Message-ID: <671bef75.050a0220.e4bcd.1821@mx.google.com>
X-Google-Original-Message-ID: <Zxvvc6F3eg9B2wH6@neuromancer.>
Date: Fri, 25 Oct 2024 14:20:19 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Roger Quadros <rogerq@kernel.org>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	John Youn <John.Youn@synopsys.com>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>, msp@baylibre.com,
	"Vardhan, Vibhore" <vibhore@ti.com>,
	"Govindarajan, Sriramakrishnan" <srk@ti.com>,
	Dhruva Gole <d-gole@ti.com>, Vishal Mahaveer <vishalm@ti.com>,
	heiko@sntech.de, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] usb: dwc3: core: Prevent phy suspend during init
References: <cover.1713310411.git.Thinh.Nguyen@synopsys.com>
 <e8f04e642889b4c865aaf06762cde9386e0ff830.1713310411.git.Thinh.Nguyen@synopsys.com>
 <1519dbe7-73b6-4afc-bfe3-23f4f75d772f@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1519dbe7-73b6-4afc-bfe3-23f4f75d772f@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_122023_810901_8179F753 
X-CRM114-Status: GOOD (  52.89  )
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

On Wed, Sep 25, 2024 at 10:50:05AM +0300, Roger Quadros wrote:
> Hello Thinh,
> 
> On 17/04/2024 02:41, Thinh Nguyen wrote:
> > GUSB3PIPECTL.SUSPENDENABLE and GUSB2PHYCFG.SUSPHY should be cleared
> > during initialization. Suspend during initialization can result in
> > undefined behavior due to clock synchronization failure, which often
> > seen as core soft reset timeout.
> > 
> > The programming guide recommended these bits to be cleared during
> > initialization for DWC_usb3.0 version 1.94 and above (along with
> > DWC_usb31 and DWC_usb32). The current check in the driver does not
> > account if it's set by default setting from coreConsultant.
> > 
> > This is especially the case for DRD when switching mode to ensure the
> > phy clocks are available to change mode. Depending on the
> > platforms/design, some may be affected more than others. This is noted
> > in the DWC_usb3x programming guide under the above registers.
> > 
> > Let's just disable them during driver load and mode switching. Restore
> > them when the controller initialization completes.
> > 
> > Note that some platforms workaround this issue by disabling phy suspend
> > through "snps,dis_u3_susphy_quirk" and "snps,dis_u2_susphy_quirk" when
> > they should not need to.
> > 
> > Cc: stable@vger.kernel.org
> > Fixes: 9ba3aca8fe82 ("usb: dwc3: Disable phy suspend after power-on reset")
> > Signed-off-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
> 
> This patch is causing system suspend failures on TI AM62 platforms [1]
> 
> I will try to explain why.
> Before this patch, both DWC3_GUSB3PIPECTL_SUSPHY and DWC3_GUSB2PHYCFG_SUSPHY
> bits (hence forth called 2 SUSPHY bits) were being set during initialization
> and even during re-initialization after a system suspend/resume.
> 
> These bits are required to be set for system suspend/resume to work correctly
> on AM62 platforms.
> 
> After this patch, the bits are only set when Host controller starts or
> when Gadget driver starts.
> 
> On AM62 platform we have 2 USB controllers, one in Host and one in Dual role.
> Just after boot, for the Host controller we have the 2 SUSPHY bits set but
> for the Dual-Role controller, as no role has started the 2 SUSPHY bits are
> not set. Thus system suspend resume will fail.
> 
> On the other hand, if we load a gadget driver just after boot then both
> controllers have the 2 SUSPHY bits set and system suspend resume works for
> the first time.
> However, after system resume, the core is re-initialized so the 2 SUSPHY bits
> are cleared for both controllers. For host controller it is never set again.
> For gadget controller as gadget start is called, the 2 SUSPHY bits are set
> again. The second system suspend resume will still fail as one controller
> (Host) doesn't have the 2 SUSPHY bits set.
> 
> To summarize, the existing solution is not sufficient for us to have a
> reliable behavior. We need the 2 SUSPHY bits to be set regardless of what
> role we are in or whether the role has started or not.
> 
> My suggestion is to move back the SUSPHY enable to end of dwc3_core_init().
> Then if SUSPHY needs to be disabled for DRD role switching, it should be
> disabled and enabled exactly there.
> 
> What do you suggest?
> 
> [1] - https://lore.kernel.org/linux-arm-kernel/20240904194229.109886-1-msp@baylibre.com/
> 
> -- 
> cheers,
> -roger
> 
> > ---
> >  drivers/usb/dwc3/core.c   | 90 +++++++++++++++++----------------------
> >  drivers/usb/dwc3/core.h   |  1 +
> >  drivers/usb/dwc3/gadget.c |  2 +
> >  drivers/usb/dwc3/host.c   | 27 ++++++++++++
> >  4 files changed, 68 insertions(+), 52 deletions(-)
> > 
> > diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> > index 31684cdaaae3..100041320e8d 100644
> > --- a/drivers/usb/dwc3/core.c
> > +++ b/drivers/usb/dwc3/core.c
> > @@ -104,6 +104,27 @@ static int dwc3_get_dr_mode(struct dwc3 *dwc)
> >  	return 0;
> >  }
> >  
> > +void dwc3_enable_susphy(struct dwc3 *dwc, bool enable)
> > +{
> > +	u32 reg;
> > +
> > +	reg = dwc3_readl(dwc->regs, DWC3_GUSB3PIPECTL(0));
> > +	if (enable && !dwc->dis_u3_susphy_quirk)
> > +		reg |= DWC3_GUSB3PIPECTL_SUSPHY;
> > +	else
> > +		reg &= ~DWC3_GUSB3PIPECTL_SUSPHY;
> > +
> > +	dwc3_writel(dwc->regs, DWC3_GUSB3PIPECTL(0), reg);
> > +
> > +	reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
> > +	if (enable && !dwc->dis_u2_susphy_quirk)
> > +		reg |= DWC3_GUSB2PHYCFG_SUSPHY;
> > +	else
> > +		reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
> > +
> > +	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
> > +}
> > +
> >  void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode)
> >  {
> >  	u32 reg;
> > @@ -585,11 +606,8 @@ static int dwc3_core_ulpi_init(struct dwc3 *dwc)
> >   */
> >  static int dwc3_phy_setup(struct dwc3 *dwc)
> >  {
> > -	unsigned int hw_mode;
> >  	u32 reg;
> >  
> > -	hw_mode = DWC3_GHWPARAMS0_MODE(dwc->hwparams.hwparams0);
> > -
> >  	reg = dwc3_readl(dwc->regs, DWC3_GUSB3PIPECTL(0));
> >  
> >  	/*
> > @@ -599,21 +617,16 @@ static int dwc3_phy_setup(struct dwc3 *dwc)
> >  	reg &= ~DWC3_GUSB3PIPECTL_UX_EXIT_PX;
> >  
> >  	/*
> > -	 * Above 1.94a, it is recommended to set DWC3_GUSB3PIPECTL_SUSPHY
> > -	 * to '0' during coreConsultant configuration. So default value
> > -	 * will be '0' when the core is reset. Application needs to set it
> > -	 * to '1' after the core initialization is completed.
> > -	 */
> > -	if (!DWC3_VER_IS_WITHIN(DWC3, ANY, 194A))
> > -		reg |= DWC3_GUSB3PIPECTL_SUSPHY;
> > -
> > -	/*
> > -	 * For DRD controllers, GUSB3PIPECTL.SUSPENDENABLE must be cleared after
> > -	 * power-on reset, and it can be set after core initialization, which is
> > -	 * after device soft-reset during initialization.
> > +	 * Above DWC_usb3.0 1.94a, it is recommended to set
> > +	 * DWC3_GUSB3PIPECTL_SUSPHY to '0' during coreConsultant configuration.
> > +	 * So default value will be '0' when the core is reset. Application
> > +	 * needs to set it to '1' after the core initialization is completed.
> > +	 *
> > +	 * Similarly for DRD controllers, GUSB3PIPECTL.SUSPENDENABLE must be
> > +	 * cleared after power-on reset, and it can be set after core
> > +	 * initialization.
> >  	 */
> > -	if (hw_mode == DWC3_GHWPARAMS0_MODE_DRD)
> > -		reg &= ~DWC3_GUSB3PIPECTL_SUSPHY;
> > +	reg &= ~DWC3_GUSB3PIPECTL_SUSPHY;
> >  
> >  	if (dwc->u2ss_inp3_quirk)
> >  		reg |= DWC3_GUSB3PIPECTL_U2SSINP3OK;
> > @@ -639,9 +652,6 @@ static int dwc3_phy_setup(struct dwc3 *dwc)
> >  	if (dwc->tx_de_emphasis_quirk)
> >  		reg |= DWC3_GUSB3PIPECTL_TX_DEEPH(dwc->tx_de_emphasis);
> >  
> > -	if (dwc->dis_u3_susphy_quirk)
> > -		reg &= ~DWC3_GUSB3PIPECTL_SUSPHY;
> > -
> >  	if (dwc->dis_del_phy_power_chg_quirk)
> >  		reg &= ~DWC3_GUSB3PIPECTL_DEPOCHANGE;
> >  
> > @@ -689,24 +699,15 @@ static int dwc3_phy_setup(struct dwc3 *dwc)
> >  	}
> >  
> >  	/*
> > -	 * Above 1.94a, it is recommended to set DWC3_GUSB2PHYCFG_SUSPHY to
> > -	 * '0' during coreConsultant configuration. So default value will
> > -	 * be '0' when the core is reset. Application needs to set it to
> > -	 * '1' after the core initialization is completed.
> > -	 */
> > -	if (!DWC3_VER_IS_WITHIN(DWC3, ANY, 194A))
> > -		reg |= DWC3_GUSB2PHYCFG_SUSPHY;
> > -
> > -	/*
> > -	 * For DRD controllers, GUSB2PHYCFG.SUSPHY must be cleared after
> > -	 * power-on reset, and it can be set after core initialization, which is
> > -	 * after device soft-reset during initialization.
> > +	 * Above DWC_usb3.0 1.94a, it is recommended to set
> > +	 * DWC3_GUSB2PHYCFG_SUSPHY to '0' during coreConsultant configuration.
> > +	 * So default value will be '0' when the core is reset. Application
> > +	 * needs to set it to '1' after the core initialization is completed.
> > +	 *
> > +	 * Similarly for DRD controllers, GUSB2PHYCFG.SUSPHY must be cleared
> > +	 * after power-on reset, and it can be set after core initialization.
> >  	 */
> > -	if (hw_mode == DWC3_GHWPARAMS0_MODE_DRD)
> > -		reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
> > -
> > -	if (dwc->dis_u2_susphy_quirk)
> > -		reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
> > +	reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
> >  
> >  	if (dwc->dis_enblslpm_quirk)
> >  		reg &= ~DWC3_GUSB2PHYCFG_ENBLSLPM;
> > @@ -1227,21 +1228,6 @@ static int dwc3_core_init(struct dwc3 *dwc)
> >  	if (ret)
> >  		goto err_exit_phy;
> >  
> > -	if (hw_mode == DWC3_GHWPARAMS0_MODE_DRD &&
> > -	    !DWC3_VER_IS_WITHIN(DWC3, ANY, 194A)) {
> > -		if (!dwc->dis_u3_susphy_quirk) {
> > -			reg = dwc3_readl(dwc->regs, DWC3_GUSB3PIPECTL(0));
> > -			reg |= DWC3_GUSB3PIPECTL_SUSPHY;
> > -			dwc3_writel(dwc->regs, DWC3_GUSB3PIPECTL(0), reg);
> > -		}
> > -
> > -		if (!dwc->dis_u2_susphy_quirk) {
> > -			reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
> > -			reg |= DWC3_GUSB2PHYCFG_SUSPHY;
> > -			dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
> > -		}
> > -	}
> > -
> >  	dwc3_core_setup_global_control(dwc);
> >  	dwc3_core_num_eps(dwc);
> >  
> > diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
> > index 7e80dd3d466b..180dd8d29287 100644
> > --- a/drivers/usb/dwc3/core.h
> > +++ b/drivers/usb/dwc3/core.h
> > @@ -1580,6 +1580,7 @@ int dwc3_event_buffers_setup(struct dwc3 *dwc);
> >  void dwc3_event_buffers_cleanup(struct dwc3 *dwc);
> >  
> >  int dwc3_core_soft_reset(struct dwc3 *dwc);
> > +void dwc3_enable_susphy(struct dwc3 *dwc, bool enable);
> >  
> >  #if IS_ENABLED(CONFIG_USB_DWC3_HOST) || IS_ENABLED(CONFIG_USB_DWC3_DUAL_ROLE)
> >  int dwc3_host_init(struct dwc3 *dwc);
> > diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
> > index 4df2661f6675..f94f68f1e7d2 100644
> > --- a/drivers/usb/dwc3/gadget.c
> > +++ b/drivers/usb/dwc3/gadget.c
> > @@ -2924,6 +2924,7 @@ static int __dwc3_gadget_start(struct dwc3 *dwc)
> >  	dwc3_ep0_out_start(dwc);
> >  
> >  	dwc3_gadget_enable_irq(dwc);
> > +	dwc3_enable_susphy(dwc, true);
> >  
> >  	return 0;
> >  
> > @@ -4690,6 +4691,7 @@ void dwc3_gadget_exit(struct dwc3 *dwc)
> >  	if (!dwc->gadget)
> >  		return;
> >  
> > +	dwc3_enable_susphy(dwc, false);
> >  	usb_del_gadget(dwc->gadget);
> >  	dwc3_gadget_free_endpoints(dwc);
> >  	usb_put_gadget(dwc->gadget);
> > diff --git a/drivers/usb/dwc3/host.c b/drivers/usb/dwc3/host.c
> > index 0204787df81d..a171b27a7845 100644
> > --- a/drivers/usb/dwc3/host.c
> > +++ b/drivers/usb/dwc3/host.c
> > @@ -10,10 +10,13 @@
> >  #include <linux/irq.h>
> >  #include <linux/of.h>
> >  #include <linux/platform_device.h>
> > +#include <linux/usb.h>
> > +#include <linux/usb/hcd.h>
> >  
> >  #include "../host/xhci-port.h"
> >  #include "../host/xhci-ext-caps.h"
> >  #include "../host/xhci-caps.h"
> > +#include "../host/xhci-plat.h"
> >  #include "core.h"
> >  
> >  #define XHCI_HCSPARAMS1		0x4
> > @@ -57,6 +60,24 @@ static void dwc3_power_off_all_roothub_ports(struct dwc3 *dwc)
> >  	}
> >  }
> >  
> > +static void dwc3_xhci_plat_start(struct usb_hcd *hcd)
> > +{
> > +	struct platform_device *pdev;
> > +	struct dwc3 *dwc;
> > +
> > +	if (!usb_hcd_is_primary_hcd(hcd))
> > +		return;
> > +
> > +	pdev = to_platform_device(hcd->self.controller);
> > +	dwc = dev_get_drvdata(pdev->dev.parent);
> > +
> > +	dwc3_enable_susphy(dwc, true);
> > +}
> > +
> > +static const struct xhci_plat_priv dwc3_xhci_plat_quirk = {
> > +	.plat_start = dwc3_xhci_plat_start,
> > +};
> > +
> >  static void dwc3_host_fill_xhci_irq_res(struct dwc3 *dwc,
> >  					int irq, char *name)
> >  {
> > @@ -167,6 +188,11 @@ int dwc3_host_init(struct dwc3 *dwc)
> >  		}
> >  	}
> >  
> > +	ret = platform_device_add_data(xhci, &dwc3_xhci_plat_quirk,
> > +				       sizeof(struct xhci_plat_priv));
> > +	if (ret)
> > +		goto err;
> > +
> >  	ret = platform_device_add(xhci);
> >  	if (ret) {
> >  		dev_err(dwc->dev, "failed to register xHCI device\n");
> > @@ -192,6 +218,7 @@ void dwc3_host_exit(struct dwc3 *dwc)
> >  	if (dwc->sys_wakeup)
> >  		device_init_wakeup(&dwc->xhci->dev, false);
> >  
> > +	dwc3_enable_susphy(dwc, false);
> >  	platform_device_unregister(dwc->xhci);
> >  	dwc->xhci = NULL;
> >  }
> 

This patch seems to break system suspend on at least the Rockchip
RK3566 platform. I noticed that I was no longer able to suspend
and git bisect led me to this patch.

My kernel message log shows the following, at which point it freezes
and does not allow me to resume from suspend:

[   27.235049] PM: suspend entry (deep)
[   27.871641] Filesystems sync: 0.636 seconds
[   27.885320] Freezing user space processes
[   27.886932] Freezing user space processes completed (elapsed 0.001 seconds)
[   27.887642] OOM killer disabled.
[   27.887981] Freezing remaining freezable tasks
[   27.889655] Freezing remaining freezable tasks completed (elapsed 0.001 seconds)

Thank you,
Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
