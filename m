Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7214C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 13:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18qL8XHJBMTBpPHwkcwO2CY1NTOighZGqbN6n5dEV4A=; b=fYcv/twmm5Knxm
	anE4MvTWrJHgl7eEfMWmZpdH41o1rly5+2sQcHF8Ar8XjcpuJlVZ76oOpmXloxOMETMWUXfvQMesQ
	BoX4lJkrpRSFeaMaLp/irfjc3gQNEWdicIcKVRmr35QsWbuWQqDQMso9ACtl+y4mM0lWMw8LM0Gw5
	bT9pQ6P9qjp4oOD44I46SuKQ9+raqTUyQa6vrLbTRs7mq1QuhS4+G5NoxB4TJG7Gf+J1J0LysduS4
	h7qJX3IHdRgSKChLKNRJv8QKxrYaiFXWHU6HxOGT2wI5Rp9JuYO1OR4B0BA7/+2NahKrdar6UPtQl
	WV2shG7YaxcWmSD4nmkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfiPw-00Cxvw-TC; Sat, 16 Apr 2022 13:24:48 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfiPt-00CxtS-Hr; Sat, 16 Apr 2022 13:24:47 +0000
Received: by mail-yw1-x112c.google.com with SMTP id
 00721157ae682-2ec0bb4b715so104752867b3.5; 
 Sat, 16 Apr 2022 06:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ksyY81buYHpBvFd7vVUwYBF2PVx3FJm7Czy6ELpPmDI=;
 b=GghB9GPS+QOJ/7hViErvgFw3KSyG8IIwgdRWCfXWqkO/cBbHxLgav4XQ/SGEo9BV9M
 Xij1Z6SCwrOwJuDah6XoCqUe8FAPZTSZGR6OaqeQsjd/DsrbKrl41GkWEkphVDNDj17b
 3AyiKVsURXFp7UfuKAsS9q9UM97q5vrQw6HVa1T+ywAsKwUW5O0oNkArXqAYKrkBi2fV
 yUjudMnB1jljICD/9LKWlUXsCRR0KRJ6Oo4Ue+htkiK/COIVjbi8zzOZ7fU1Te6vqwxG
 gowc8SX8s/uT7239+jSshvrsvpEt4SDQae9u2JAI08+ybX8qpehl5c5kiZlcSwOQm72H
 kLkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ksyY81buYHpBvFd7vVUwYBF2PVx3FJm7Czy6ELpPmDI=;
 b=K0nmPjhDptHgdjOWo0xja9emJ4G7QoR7PcWJjfkydtAXdmZt7AP4mzu30g7Q+s40OQ
 dOkHj4LbfyNwbfkGHRfhH4+zpivPLrVH1phpRjkg6myLAePVobY+DZym6e8Jnu8oGlRi
 wQ8bV5gjYxg7St1L5T5nJ5YdSrBVQYD+QizeCYo1v58r4UFtQfdX48Lt5irKD1jl6kEH
 xP8Jh2lKi6vjv95tii+uuoxPjffC6VzTpcgptMQsOHt7zyZePk7t0pre4dLCVvq2Fw8J
 HYLjpSlTUBQjzLWA7wg83M4PlshBCoXhA9bLR/SqnuP1A4zrc9TM/56g29bI1d5PFtM6
 eK8Q==
X-Gm-Message-State: AOAM5303qD2QXu9XLl2O0G+7QFGB2Un3bjcDmFXKvDu224L94jNDf2cL
 dXz/j3/+eKOgiOCG0WUWRkp96DCyVA+AXAxt2qo=
X-Google-Smtp-Source: ABdhPJzRiAH0Lb3U5NrzhR0qbfInlHhWJodaqh/gT56hwT9EhgREzShsHdqZoybZhrSr393VwSSP0k9FTcr+cKIlAHs=
X-Received: by 2002:a81:5904:0:b0:2eb:f900:882e with SMTP id
 n4-20020a815904000000b002ebf900882emr2888532ywb.281.1650115477295; Sat, 16
 Apr 2022 06:24:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220416110507.642398-1-pgwipeout@gmail.com>
 <20220416110507.642398-3-pgwipeout@gmail.com>
 <308e9c47197d4f7ae5a31cfcb5a10886@kernel.org>
In-Reply-To: <308e9c47197d4f7ae5a31cfcb5a10886@kernel.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 16 Apr 2022 09:24:26 -0400
Message-ID: <CAMdYzYo+YeAgT92baMOoWpra230wro_WynRcajL-__9RNkeE9Q@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220416_062445_616039_135FB156 
X-CRM114-Status: GOOD (  31.78  )
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

On Sat, Apr 16, 2022 at 8:54 AM Marc Zyngier <maz@kernel.org> wrote:
>
> Peter,
>
> May I suggest that you slow down on the number of versions you send?
> This is the 7th in 5 days, the 3rd today.
>
> At this stage, this is entirely counterproductive.

Apologies, I'll be sure to be at least one cup of coffee in before
doing early morning code.

>
> On 2022-04-16 12:05, Peter Geis wrote:
> > The legacy interrupts on the rk356x pcie controller are handled by a
> > single muxed interrupt. Add irq domain support to the pcie-dw-rockchip
> > driver to support the virtual domain.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 112 +++++++++++++++++-
> >  1 file changed, 110 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > index c9b341e55cbb..863374604fb1 100644
> > --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > @@ -10,9 +10,12 @@
> >
> >  #include <linux/clk.h>
> >  #include <linux/gpio/consumer.h>
> > +#include <linux/irqchip/chained_irq.h>
> > +#include <linux/irqdomain.h>
> >  #include <linux/mfd/syscon.h>
> >  #include <linux/module.h>
> >  #include <linux/of_device.h>
> > +#include <linux/of_irq.h>
> >  #include <linux/phy/phy.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/regmap.h>
> > @@ -36,10 +39,13 @@
> >  #define PCIE_LINKUP                  (PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
> >  #define PCIE_L0S_ENTRY                       0x11
> >  #define PCIE_CLIENT_GENERAL_CONTROL  0x0
> > +#define PCIE_CLIENT_INTR_STATUS_LEGACY       0x8
> > +#define PCIE_CLIENT_INTR_MASK_LEGACY 0x1c
> >  #define PCIE_CLIENT_GENERAL_DEBUG    0x104
> > -#define PCIE_CLIENT_HOT_RESET_CTRL      0x180
> > +#define PCIE_CLIENT_HOT_RESET_CTRL   0x180
> >  #define PCIE_CLIENT_LTSSM_STATUS     0x300
> > -#define PCIE_LTSSM_ENABLE_ENHANCE       BIT(4)
> > +#define PCIE_LEGACY_INT_ENABLE               GENMASK(3, 0)
> > +#define PCIE_LTSSM_ENABLE_ENHANCE    BIT(4)
> >  #define PCIE_LTSSM_STATUS_MASK               GENMASK(5, 0)
> >
> >  struct rockchip_pcie {
> > @@ -51,6 +57,8 @@ struct rockchip_pcie {
> >       struct reset_control            *rst;
> >       struct gpio_desc                *rst_gpio;
> >       struct regulator                *vpcie3v3;
> > +     struct irq_domain               *irq_domain;
> > +     raw_spinlock_t                  irq_lock;
> >  };
> >
> >  static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
> > @@ -65,6 +73,94 @@ static void rockchip_pcie_writel_apb(struct
> > rockchip_pcie *rockchip,
> >       writel_relaxed(val, rockchip->apb_base + reg);
> >  }
> >
> > +static void rockchip_pcie_legacy_int_handler(struct irq_desc *desc)
> > +{
> > +     struct irq_chip *chip = irq_desc_get_chip(desc);
> > +     struct rockchip_pcie *rockchip = irq_desc_get_handler_data(desc);
> > +     unsigned long reg, hwirq;
> > +
> > +     chained_irq_enter(chip, desc);
> > +
> > +     reg = rockchip_pcie_readl_apb(rockchip,
> > PCIE_CLIENT_INTR_STATUS_LEGACY);
> > +
> > +     for_each_set_bit(hwirq, &reg, 8)
>
> 8? And yet:
>
> #define PCI_NUM_INTX        4
>
> So whatever bits are set above bit 3, you are feeding garbage
> to the irqdomain code.

There are 8 bits in total, the top four are for the TX interrupts, for
which EP mode is not yet supported by the driver.
I can constrain this further and let it be expanded when that support
is added, if that works for you?

>
> > +             generic_handle_domain_irq(rockchip->irq_domain, hwirq);
> > +
> > +     chained_irq_exit(chip, desc);
> > +}
> > +
> > +static void rockchip_intx_mask(struct irq_data *data)
> > +{
> > +     struct rockchip_pcie *rockchip = irq_data_get_irq_chip_data(data);
> > +     unsigned long flags;
> > +     u32 val;
> > +
> > +     /* disable legacy interrupts */
> > +     raw_spin_lock_irqsave(&rockchip->irq_lock, flags);
> > +     val = HIWORD_UPDATE_BIT(PCIE_LEGACY_INT_ENABLE);
> > +     val |= PCIE_LEGACY_INT_ENABLE;
> > +     rockchip_pcie_writel_apb(rockchip, val,
> > PCIE_CLIENT_INTR_MASK_LEGACY);
> > +     raw_spin_unlock_irqrestore(&rockchip->irq_lock, flags);
>
> This is completely busted. INTx lines must be controlled individually.
> If I disable one device's INTx output, I don't want to see the
> interrupt firing because another one has had its own enabled.

Okay, that makes sense. I'm hitting the entire block when it should be
the individual IRQ.
I also notice some drivers protect this with a spinlock while others
do not, how should this be handled?

>
>          M.
> --
> Jazz is not dead. It just smells funny...

Thanks Again!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
