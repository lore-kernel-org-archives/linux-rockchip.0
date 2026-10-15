Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C78D8CCA465
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 18:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6cxdIoiMv8bbOkK72vX19H3/EAQR9A1pafDZRC1BWE=; b=WnT+9ednQaODBP
	vwKqGyUuYfVGG0gzir+uqxguj9Le9u3TXIi8AVhE1vIl6FoQVBhq89XhRGRaRLEbkrnw4aCseR33u
	Jut6tSiN0wZfl+M7TZtgeevAUXlea/UJ6oajq/+NFghKXWbnTJ3CBKpVY01JSjG1jQDgVOx8s2yy7
	rc1C6aPJKHKTXx+O0qQ2xHLrYI2qwwbnoFZFaaYVKygDW0ZPSpK768vrIdBgjqlx20ulWRF/3pMRA
	TB1ajoY+lDP2xt0lv5gdEddX/ooivO0KFvwR0HDCt76k5E2QDbFXy3zBWq0Ij9p5+/xQalWsRGiDL
	3CfPSZB6lVwZa8Niq79w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHQKE-00000001BCe-0uDS;
	Thu, 15 Oct 2026 18:37:10 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHQK7-00000001BAC-3U8K;
	Thu, 15 Oct 2026 18:37:05 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1792089408; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CuWzWNG412sDNpIVBCmeo+WtprfTM7ZyG+yUBzd1MdznPwZoQseROmiH1vA+dzieTpp+eoXzBx/yTafA+jonkYw5MnW3Ir/LiT6rQqFSkDmWcCLWs7EbkFWMYREbwym3JZ9lyla6LYfV8RDgrNlLztPaS8vGSSK6s+XqP2kTCoM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1792089408; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=SBCToxam7lH6D1Zy4CTeR8nhuH4qVrhsoveYwS13PKc=; 
	b=J8HfK+pkKuWPvTlEFjVwkJgolkWl3s1jKU9Prgj6r17WeuQnLC+Wev1CHUugdn7vE757yIUu7/OJHP2PSQOLbzUfxOJ4da5/Bb92iUlWH33LcFP38kNWacNe+ct/6iw1LIXY9Xa1c7xmJ39TOgj4xnE5RTv7THBy8GiPjWk3eOQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1792089408;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:Message-Id:Reply-To;
	bh=SBCToxam7lH6D1Zy4CTeR8nhuH4qVrhsoveYwS13PKc=;
	b=cBYCwRLgF9N7aPy3H8aFbSHbNioMm/BGKK3zaKxfQpssdkm3FaLPqhJH6ZpdAqQY
	F1ICdhmWBjaOcJ3uhbfv1zWUdGZvDsEg9+gWfAfFv4V0tZCgAHLoRNArQJ0jps+1yR0
	vR7rNXHa0CdG+IwciZ4xqXDyP/m4dnbKVDBr+aHI=
Received: by smtp.zohomail.com with SMTPS id 1792089405357896.4451913582732;
	Thu, 15 Oct 2026 11:36:45 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 8F2C418036E; Thu, 15 Oct 2026 20:36:40 +0200 (CEST)
Date: Thu, 15 Oct 2026 20:36:40 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Igor Paunovic <royalnet026@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"kernel@collabora.com" <kernel@collabora.com>
Subject: Re: [PATCH v16 4/6] usb: dwc3: rockchip: support PHY reset
 notifications
Message-ID: <atEZ1pHZOqoIoQma@venus>
References: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
 <20260924-b4-rockchip-dwc3-rockchip-glue-v16-4-126a2e9133c3@collabora.com>
 <asA211DtVMDPAuAL@vbox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <asA211DtVMDPAuAL@vbox>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/292.75.81
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_113703_936055_4FE4C850 
X-CRM114-Status: GOOD (  46.74  )
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

Hi,

On Fri, Oct 02, 2026 at 11:39:22PM +0000, Thinh Nguyen wrote:
> On Thu, Sep 24, 2026, Sebastian Reichel wrote:
> > On recent Rockchip platforms (at least RK3588 & RK3576), DWC3 IP is used
> > with a USBDP PHY providing USB3 and DP. This PHY needs to be reset when
> > the mode changes, which may happen when plugging in different USB-C
> > devices.
> > 
> > If the USBDP PHY resets with the DWC3 IP running, its internal state
> > corrupts resulting in the USBDP PHY not being able to lock some PLL
> > clocks, which effectively renders USB3 unusable.
> > 
> > To fix the issue this adds handling for the new PHY framework reset
> > notifications, which will assert PHYSOFTRST before the actual PHY
> > is disabled and will deassert it once the PHY returns.
> > 
> > Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
> > Acked-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  drivers/usb/dwc3/dwc3-rockchip.c | 127 ++++++++++++++++++++++++++++++++++++++-
> >  drivers/usb/dwc3/trace.c         |   3 +
> >  2 files changed, 129 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/usb/dwc3/dwc3-rockchip.c b/drivers/usb/dwc3/dwc3-rockchip.c
> > index 4129aefd6a8b..17b6c2ca9e19 100644
> > --- a/drivers/usb/dwc3/dwc3-rockchip.c
> > +++ b/drivers/usb/dwc3/dwc3-rockchip.c
> > @@ -2,11 +2,136 @@
> >  /* Copyright (c) 2026, Collabora Ltd. */
> >  #include <linux/module.h>
> >  #include <linux/platform_device.h>
> > +#include <linux/phy/phy.h>
> >  #include <linux/pm_runtime.h>
> >  #include "glue.h"
> > +#include "io.h"
> > +
> > +struct dwc3_rockchip;
> > +
> > +/**
> > + * struct dwc3_rk_phy_nb - wrapper for PHY notifier block
> > + * @nb: notifier block
> > + * @dwc: back-pointer to the DWC3 controller
> 
> I missed this from the last review: dwc here is supposed to be dwc_rk.
> 
> > + * @port_index: USB3 port index this notifier is registered for
> > + */
> > +struct dwc3_rk_phy_nb {
> > +	struct notifier_block	nb;
> > +	struct dwc3_rockchip	*dwc_rk;
> > +	u8			port_index;
> > +};
> >  
> >  struct dwc3_rockchip {
> >  	struct dwc3		dwc;
> > +	struct dwc3_rk_phy_nb	usb3_phy_nb[DWC3_USB3_MAX_PORTS];
> > +	u8			phy_reset_active;
> > +};
> > +
> > +static int dwc3_usb3_phy_notify(struct notifier_block *nb,
> > +				unsigned long action, void *data)
> > +{
> > +	struct dwc3_rk_phy_nb *pnb = container_of(nb, struct dwc3_rk_phy_nb, nb);
> > +	struct dwc3_rockchip *dwc_rk = pnb->dwc_rk;
> > +	struct dwc3 *dwc = &dwc_rk->dwc;
> > +	int port = pnb->port_index;
> > +	unsigned long flags;
> > +	u32 reg;
> > +	int ret;
> > +
> > +	switch (action) {
> > +	case PHY_NOTIFY_PRE_RESET:
> > +		/*
> > +		 * If already suspended, the resume path will reinit GUSB3PIPECTL
> > +		 * via dwc3_core_init(). A forced resume is not possible as that
> > +		 * would call phy_init() resulting in a deadlock. Due to the
> > +		 * phy_init() in the resume path there is also no need to block
> > +		 * async RPM resume on our side, since the PHY synchronizes it
> > +		 * for us.
> > +		 *
> > +		 * pm_runtime_get_if_active() returns 0 when suspended (skip),
> > +		 * 1 when active (ref held), or -EINVAL when PM is disabled
> > +		 * (device always active). In the -EINVAL case PM ref counting
> > +		 * is a no-op, so the unconditional put in POST_RESET is safe.
> 
> The -EINVAL case is not no-op here. No reference is taken, but
> pm_runtime_put_autosuspend() in POST_RESET still decrements the usage
> count, causing underflow or taking some other reference. Should we skip
> if ret < 0 too?

It's only fine to skip when PM=off, because then the GUSB3PIPECTL
is off anyways. If Runtime PM is disabled (and thus the hardware
is always on), the quirk is needed. But in that case the rpm_put
should be a noop. This only runs into problems, when the user
enables runtime PM between pre and post reset. I'm not sure how
to best avoid that. Also the reset happens relatively fast, so
this will basically never happen.

> > +		 */
> > +		ret = pm_runtime_get_if_active(dwc->dev);
> > +		if (!ret)
> > +			return NOTIFY_OK;
> > +
> > +		/*
> > +		 * Assert USB3 PHY soft reset within DWC3 before the external
> > +		 * PHY resets. This disconnects the PIPE interface, preventing
> > +		 * the DWC3 from interfering with PHY reinitialization and
> > +		 * avoiding LCPLL lock failures.
> > +		 */
> > +		spin_lock_irqsave(&dwc->lock, flags);
> > +		dwc_rk->phy_reset_active |= BIT(port);
> > +		reg = dwc3_readl(dwc, DWC3_GUSB3PIPECTL(port));
> > +		reg |= DWC3_GUSB3PIPECTL_PHYSOFTRST;
> > +		dwc3_writel(dwc, DWC3_GUSB3PIPECTL(port), reg);
> > +		spin_unlock_irqrestore(&dwc->lock, flags);
> > +		break;
> > +
> > +	case PHY_NOTIFY_POST_RESET:
> > +		spin_lock_irqsave(&dwc->lock, flags);
> > +		if (!(dwc_rk->phy_reset_active & BIT(port))) {
> > +			spin_unlock_irqrestore(&dwc->lock, flags);
> > +			return NOTIFY_OK;
> > +		}
> > +
> > +		dwc_rk->phy_reset_active &= ~BIT(port);
> > +
> > +		/*
> > +		 * Deassert PHY soft reset to reconnect the PIPE interface
> > +		 * after PHY reinitialization.
> > +		 */
> > +		reg = dwc3_readl(dwc, DWC3_GUSB3PIPECTL(port));
> > +		reg &= ~DWC3_GUSB3PIPECTL_PHYSOFTRST;
> > +		dwc3_writel(dwc, DWC3_GUSB3PIPECTL(port), reg);
> > +		spin_unlock_irqrestore(&dwc->lock, flags);
> > +
> > +		pm_runtime_put_autosuspend(dwc->dev);
> > +		break;
> > +	}
> > +
> > +	return NOTIFY_OK;
> > +}
> > +
> > +static void dwc3_rk_phy_unregister_notifiers(void *data)
> 
> BTW, when does this get executed? Could it be executed after the
> dwc3_core_exit() powering off the phy and turning off the clocks? The
> reset notifier may still be called in this case and read dwc3 registers.
> Can we make sure this is done before dwc3_core_remove() in
> dwc3_rockchip_remove()?

mh; this might actually happen. I didn't notice, because I just
followed the PHY registration, which uses devm.

But for the next version I will replace the PHY reset notifier API
with direct calls between the DWC3 rockchip glue driver and the
USBDP PHY driver as Vinod Koul does not want the PHY reset notifier
API and asked for it to be done that way instead. With that I can
ensure that the function is only called while the PHY is powered.

Greetings,

-- Sebastian

> 
> Thanks,
> Thinh
> 
> > +{
> > +	struct dwc3_rockchip *dwc_rk = data;
> > +	struct dwc3 *dwc = &dwc_rk->dwc;
> > +	int i;
> > +
> > +	for (i = 0; i < dwc->num_usb3_ports; i++)
> > +		phy_unregister_notifier(dwc->usb3_generic_phy[i],
> > +					&dwc_rk->usb3_phy_nb[i].nb);
> > +
> > +	/* Release any PM references from in-flight resets */
> > +	for (i = 0; i < dwc->num_usb3_ports; i++) {
> > +		if (dwc_rk->phy_reset_active & BIT(i))
> > +			pm_runtime_put_autosuspend(dwc->dev);
> > +	}
> > +	dwc_rk->phy_reset_active = 0;
> > +}
> > +
> > +static int dwc3_rk_phy_register_notifiers(struct dwc3 *dwc)
> > +{
> > +	struct dwc3_rockchip *dwc_rk = container_of(dwc, struct dwc3_rockchip, dwc);
> > +	int i;
> > +
> > +	for (i = 0; i < dwc->num_usb3_ports; i++) {
> > +		dwc_rk->usb3_phy_nb[i].nb.notifier_call = dwc3_usb3_phy_notify;
> > +		dwc_rk->usb3_phy_nb[i].dwc_rk = dwc_rk;
> > +		dwc_rk->usb3_phy_nb[i].port_index = i;
> > +		phy_register_notifier(dwc->usb3_generic_phy[i],
> > +				      &dwc_rk->usb3_phy_nb[i].nb);
> > +	}
> > +
> > +	return devm_add_action_or_reset(dwc->dev, dwc3_rk_phy_unregister_notifiers, dwc_rk);
> > +}
> > +
> > +static struct dwc3_glue_ops dwc3_rockchip_glue_ops = {
> > +	.post_phy_registration = dwc3_rk_phy_register_notifiers,
> >  };
> >  
> >  static int dwc3_rockchip_probe(struct platform_device *pdev)
> > @@ -26,7 +151,7 @@ static int dwc3_rockchip_probe(struct platform_device *pdev)
> >  		return -ENOMEM;
> >  
> >  	dwc_rk->dwc.dev = &pdev->dev;
> > -	dwc_rk->dwc.glue_ops = NULL;
> > +	dwc_rk->dwc.glue_ops = &dwc3_rockchip_glue_ops;
> >  
> >  	probe_data.dwc = &dwc_rk->dwc;
> >  	probe_data.res = res;
> > diff --git a/drivers/usb/dwc3/trace.c b/drivers/usb/dwc3/trace.c
> > index 088995885678..8c4e2a7b142e 100644
> > --- a/drivers/usb/dwc3/trace.c
> > +++ b/drivers/usb/dwc3/trace.c
> > @@ -9,3 +9,6 @@
> >  
> >  #define CREATE_TRACE_POINTS
> >  #include "trace.h"
> > +
> > +EXPORT_TRACEPOINT_SYMBOL_GPL(dwc3_readl);
> > +EXPORT_TRACEPOINT_SYMBOL_GPL(dwc3_writel);
> > 
> > -- 
> > 2.53.0
> > 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
