Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C08FAC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Apr 2022 11:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzX+BM/eKu/EY62OB/Oqs5k2QnHAc77v21DlXjTVCnc=; b=hhls5g6aFr6Wba
	4SQPa+sU68WUu7vQ5XGzSRzH3SKfZdJcl9FVZWGojaeTucBSSVumO9wo2UCq5RILq8AeHgcrObEPE
	1a3aYdAV2G2T3G6vJ4C5csaj89QpZqJZcb9bS1JaaYnn348X8zltxl5eHQkmPLHwetGpNR4Jnfcu7
	+suINbmO18YRQ3LSiEy0s1n2JwcNm4u9WU8dzUKA0RPQnfl1SHl+pLaw1LZJUiWxa9ckpxpjz4QAS
	UrkOlF6oUQEMrXJxzsKPYhS56zfQ4PlIezV8ifS5dKRTZLxkKiLrhmnn95wM7mJaLtI0m8PWzWrhF
	r+1vIM4E1VNnrePnecng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngPh2-00GU5g-DJ; Mon, 18 Apr 2022 11:37:20 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngPgy-00GU3Q-JI; Mon, 18 Apr 2022 11:37:18 +0000
Received: by mail-yb1-xb34.google.com with SMTP id m132so25079847ybm.4;
 Mon, 18 Apr 2022 04:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yxOfQqOYcLl8cOCQEWivZY+/nyIZibatv5HXiF7JBAE=;
 b=AaXteUKTTWeEW2if3hZnkbvnrYbhoxpcbxkS2D80WdHvOFTry2qCM+xF4hf3QS4xWI
 HHl7tZiHr4P1WUz+XtyHyiWBctVBWF6o2UYNfFBk1Z/TDShk0BXeV3LVOrMYHxXfiDQw
 8ULCqTQMSxt7c512du6M+fQhahCuq+B4TPHKp73pzfbJhchgl28qjZF0w4EnD6bfu4vJ
 dSsSWdUEJSCdCjulVsK2pJnUpjowmn4TxE4eEu3V8f9icvedZX8IhgnkEqV/gGdQDm7A
 WE5At6SzV+BfP7MgpVfcJTxhHownscp7QECxZ8kmyB7/XqwQc+CLcUkWws6lIJ4TPZDH
 YtNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yxOfQqOYcLl8cOCQEWivZY+/nyIZibatv5HXiF7JBAE=;
 b=xq5wgfrx0ccj70SgRMesPxhb8KaiMLcl5jA20pmTWFvRlRDioB4jAvlMSC2sLrhNin
 Ht2I/gK1LcJ9hjopLl0807NCWvUPUNMoQ8ELanJjAxX3GLrxM3aWVR0dmbPsN8oRxfff
 K5EjNcvIAc6xm2Tve1g8oV3aMYBmwD+Q8/+oFRF8VAkPj9QCWS8Xq1KmReRUz1LORMAS
 857/m89IbKhHEFQlfJnOd+ASIuZO43hotq8/jTOtB45a1coXRH9yJ+h+u1n/d0nnnsso
 2+28sL+uzqHxjYGOvQtlqSqysTLzUWJTzO/sjydswFsk9r6BIAIs7EmCHRynm6vX7Dwo
 xf6g==
X-Gm-Message-State: AOAM533+BprxnsktKFIJYixTQtatHt68OgHtCRh1V705vP78B1DD48ZS
 5cM85Qpicb8UBb7l5DHdfUu7hK9EqHnosBSjqw0=
X-Google-Smtp-Source: ABdhPJz7XgpmuAliwGrz6dX8K9sf8b6tP4Vmdc++R7UPxjfoDLnRZv/Maa7v/8Wp8HEDHI6F1JHHnZ8NLKE8n4k9IHk=
X-Received: by 2002:a25:720b:0:b0:63c:d640:e292 with SMTP id
 n11-20020a25720b000000b0063cd640e292mr9594876ybc.173.1650281831283; Mon, 18
 Apr 2022 04:37:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220416110507.642398-1-pgwipeout@gmail.com>
 <20220416110507.642398-3-pgwipeout@gmail.com>
 <308e9c47197d4f7ae5a31cfcb5a10886@kernel.org>
 <CAMdYzYo+YeAgT92baMOoWpra230wro_WynRcajL-__9RNkeE9Q@mail.gmail.com>
 <87zgkk9gtc.wl-maz@kernel.org>
In-Reply-To: <87zgkk9gtc.wl-maz@kernel.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 18 Apr 2022 07:37:00 -0400
Message-ID: <CAMdYzYo_+7rakc=GCTueEZvH_F4Co6+=eKAUztJaafiDXSKKXQ@mail.gmail.com>
Subject: Re: [PATCH v7 2/4] PCI: dwc: rockchip: add legacy interrupt support
To: Marc Zyngier <maz@kernel.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, 
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 PCI <linux-pci@vger.kernel.org>, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_043716_665143_ADC01055 
X-CRM114-Status: GOOD (  48.93  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Apr 17, 2022 at 5:53 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On Sat, 16 Apr 2022 14:24:26 +0100,
> Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > On Sat, Apr 16, 2022 at 8:54 AM Marc Zyngier <maz@kernel.org> wrote:
> > >
> > > Peter,
> > >
> > > May I suggest that you slow down on the number of versions you send?
> > > This is the 7th in 5 days, the 3rd today.
> > >
> > > At this stage, this is entirely counterproductive.
> >
> > Apologies, I'll be sure to be at least one cup of coffee in before
> > doing early morning code.
>
> Even with a steady intake of coffee, there is a pretty clear policy
> around the frequency of patch submission, see [1].
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n337
>
> There is no hard enforcement of this process, but that should give you
> an idea of how to deal with it. In any case, 7 series in less than a
> week is a clear sign that this series should be *ignored*, as the
> author is likely to post yet another one in the next few hours.

Understood.

>
> >
> > >
> > > On 2022-04-16 12:05, Peter Geis wrote:
> > > > The legacy interrupts on the rk356x pcie controller are handled by a
> > > > single muxed interrupt. Add irq domain support to the pcie-dw-rockchip
> > > > driver to support the virtual domain.
> > > >
> > > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > > ---
> > > >  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 112 +++++++++++++++++-
> > > >  1 file changed, 110 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > > > b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > > > index c9b341e55cbb..863374604fb1 100644
> > > > --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > > > +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > > > @@ -10,9 +10,12 @@
> > > >
> > > >  #include <linux/clk.h>
> > > >  #include <linux/gpio/consumer.h>
> > > > +#include <linux/irqchip/chained_irq.h>
> > > > +#include <linux/irqdomain.h>
> > > >  #include <linux/mfd/syscon.h>
> > > >  #include <linux/module.h>
> > > >  #include <linux/of_device.h>
> > > > +#include <linux/of_irq.h>
> > > >  #include <linux/phy/phy.h>
> > > >  #include <linux/platform_device.h>
> > > >  #include <linux/regmap.h>
> > > > @@ -36,10 +39,13 @@
> > > >  #define PCIE_LINKUP                  (PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
> > > >  #define PCIE_L0S_ENTRY                       0x11
> > > >  #define PCIE_CLIENT_GENERAL_CONTROL  0x0
> > > > +#define PCIE_CLIENT_INTR_STATUS_LEGACY       0x8
> > > > +#define PCIE_CLIENT_INTR_MASK_LEGACY 0x1c
> > > >  #define PCIE_CLIENT_GENERAL_DEBUG    0x104
> > > > -#define PCIE_CLIENT_HOT_RESET_CTRL      0x180
> > > > +#define PCIE_CLIENT_HOT_RESET_CTRL   0x180
> > > >  #define PCIE_CLIENT_LTSSM_STATUS     0x300
> > > > -#define PCIE_LTSSM_ENABLE_ENHANCE       BIT(4)
> > > > +#define PCIE_LEGACY_INT_ENABLE               GENMASK(3, 0)
> > > > +#define PCIE_LTSSM_ENABLE_ENHANCE    BIT(4)
> > > >  #define PCIE_LTSSM_STATUS_MASK               GENMASK(5, 0)
> > > >
> > > >  struct rockchip_pcie {
> > > > @@ -51,6 +57,8 @@ struct rockchip_pcie {
> > > >       struct reset_control            *rst;
> > > >       struct gpio_desc                *rst_gpio;
> > > >       struct regulator                *vpcie3v3;
> > > > +     struct irq_domain               *irq_domain;
> > > > +     raw_spinlock_t                  irq_lock;
> > > >  };
> > > >
> > > >  static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
> > > > @@ -65,6 +73,94 @@ static void rockchip_pcie_writel_apb(struct
> > > > rockchip_pcie *rockchip,
> > > >       writel_relaxed(val, rockchip->apb_base + reg);
> > > >  }
> > > >
> > > > +static void rockchip_pcie_legacy_int_handler(struct irq_desc *desc)
> > > > +{
> > > > +     struct irq_chip *chip = irq_desc_get_chip(desc);
> > > > +     struct rockchip_pcie *rockchip = irq_desc_get_handler_data(desc);
> > > > +     unsigned long reg, hwirq;
> > > > +
> > > > +     chained_irq_enter(chip, desc);
> > > > +
> > > > +     reg = rockchip_pcie_readl_apb(rockchip,
> > > > PCIE_CLIENT_INTR_STATUS_LEGACY);
> > > > +
> > > > +     for_each_set_bit(hwirq, &reg, 8)
> > >
> > > 8? And yet:
> > >
> > > #define PCI_NUM_INTX        4
> > >
> > > So whatever bits are set above bit 3, you are feeding garbage
> > > to the irqdomain code.
> >
> > There are 8 bits in total, the top four are for the TX interrupts, for
> > which EP mode is not yet supported by the driver.
>
> So why aren't they excluded from the set of bits that you look at?
>
> > I can constrain this further and let it be expanded when that support
> > is added, if that works for you?
>
> Well, you can't have INTx interrupts in EP mode (that's a TLP going
> out of the device, and not something that is signalled *to* the
> CPU). So the two should be mutually exclusive.

Thank you for the explanation, I haven't messed about with EP mode, so
my experience is solely with RC mode.

>
> >
> > >
> > > > +             generic_handle_domain_irq(rockchip->irq_domain, hwirq);
> > > > +
> > > > +     chained_irq_exit(chip, desc);
> > > > +}
> > > > +
> > > > +static void rockchip_intx_mask(struct irq_data *data)
> > > > +{
> > > > +     struct rockchip_pcie *rockchip = irq_data_get_irq_chip_data(data);
> > > > +     unsigned long flags;
> > > > +     u32 val;
> > > > +
> > > > +     /* disable legacy interrupts */
> > > > +     raw_spin_lock_irqsave(&rockchip->irq_lock, flags);
> > > > +     val = HIWORD_UPDATE_BIT(PCIE_LEGACY_INT_ENABLE);
> > > > +     val |= PCIE_LEGACY_INT_ENABLE;
> > > > +     rockchip_pcie_writel_apb(rockchip, val,
> > > > PCIE_CLIENT_INTR_MASK_LEGACY);
> > > > +     raw_spin_unlock_irqrestore(&rockchip->irq_lock, flags);
> > >
> > > This is completely busted. INTx lines must be controlled individually.
> > > If I disable one device's INTx output, I don't want to see the
> > > interrupt firing because another one has had its own enabled.
> >
> > Okay, that makes sense. I'm hitting the entire block when it should be
> > the individual IRQ.
> > I also notice some drivers protect this with a spinlock while others
> > do not, how should this be handled?
>
> It obviously depends on how the HW. works. If this is a shared
> register using a RMW sequence, then you need some form of mutual
> exclusion in order to preserve the atomicity of the update.
>
> If the HW supports updating the masks using a set of hot bits (with
> separate clear/set registers), than there is no need for locking.  In
> your case PCIE_CLIENT_INTR_MASK_LEGACY seems to support this odd
> "write-enable" feature which can probably be used to implement a
> lockless access, something like:
>
>         void mask(struct irq_data *d)
>         {
>                 u32 val = BIT(d->hwirq + 16) | BIT(d->hwirq);

This is what HIWORD_UPDATE_BIT does, it's rather common in Rockchip code.
I believe I can safely drop the spinlock when enabling/disabling
individual interrupts.

>                 writel_relaxed(val, ...);
>         }
>
>         void mask(struct irq_data *d)
>         {
>                 u32 val = BIT(d->hwirq + 16);
>                 writel_relaxed(val, ...);
>         }
>
> Another thing is that it is completely unclear to me what initialises
> these interrupts the first place (INTR_MASK_LEGACY, INTR_EN_LEGACY).
> Are you relying on the firmware to do that for you?

There is no dedicated mask or enable/disable for the legacy interrupt
line (unless it's undocumented).
It appears to be enabled via an "or" function with the emulated interrupts.
As far as I can tell this is common for dw-pcie, looking at the other drivers.

>
> Thanks,
>
>         M.
>
> --
> Without deviation from the norm, progress is not possible.

Thank you for your insight!
Peter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
