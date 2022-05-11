Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DF55C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 15:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGpTzYSjoHbHBGJTr5K8aZqhl23t2Qi5pm4gLdYvcg0=; b=ZYDWxg50yTZzwA
	oj7zyaYjOtviEmIn8twbv0AK4XgyfSsUd7WU9EWI5A0T8q2ZBcQcXOubK63cIqp59z6koLnDsH1Pd
	Yv0gcPUC2uhUwl42r5IrwqMqZ2f5y6+Z3vm/DXsNuVqUd2pp498Z1+AWc7fmJxibN7ib98VmMAc8X
	i87zmGllLHjDZcu8478Yiyy8k2FK8F8gFEnaKnPRtyP+lfwyV3lTIKjdxh7T5X2gMBweDvJ2wnYXr
	t0oiJmY4OaUp2AW3+OZ2yxuuf1FxfxtpmftOwed/iyB9jz4uN5azbnhXsWHmyS6zZyVblEGJUUk0t
	JliiLuPwqB4ByuB17WTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nooC4-007Xhl-OE; Wed, 11 May 2022 15:24:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nooC1-007Xeu-VE; Wed, 11 May 2022 15:24:03 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nooBr-0003aM-1O; Wed, 11 May 2022 17:23:53 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof =?utf-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Marc Zyngier <maz@kernel.org>, PCI <linux-pci@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH v9 2/5] PCI: rockchip-dwc: Reset core at driver probe
Date: Wed, 11 May 2022 17:23:28 +0200
Message-ID: <1860493.taCxCBeP46@diego>
In-Reply-To: <YnvPdSPUm85Bg9zE@lpieralisi>
References: <20220429123832.2376381-1-pgwipeout@gmail.com>
 <CAMdYzYqdDPUFPhAZqA71dLaf6rT9CwFqQ1dFMRbGpVMyzgT8bg@mail.gmail.com>
 <YnvPdSPUm85Bg9zE@lpieralisi>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_082402_057377_455C3C80 
X-CRM114-Status: GOOD (  36.42  )
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

Am Mittwoch, 11. Mai 2022, 17:00:05 CEST schrieb Lorenzo Pieralisi:
> On Wed, May 11, 2022 at 10:26:20AM -0400, Peter Geis wrote:
> > On Wed, May 11, 2022 at 9:50 AM Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> > >
> > > On Fri, Apr 29, 2022 at 08:38:28AM -0400, Peter Geis wrote:
> > > > The PCIe controller is in an unknown state at driver probe. This can
> > > > lead to undesireable effects when the driver attempts to configure the
> > > > controller.
> > > >
> > > > Prevent issues in the future by resetting the core during probe.
> > > >
> > > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > > Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > > > ---
> > > >  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 23 ++++++++-----------
> > > >  1 file changed, 10 insertions(+), 13 deletions(-)
> > >
> > > I fear that the controller reset behaviour is bootloader/firmware
> > > dependent.
> > >
> > > Are we sure we are not triggering any regressions by resetting the
> > > controller in the middle of probe (aka is the driver implicitly
> > > relying on existing behaviour on systems that are not the ones
> > > you are testing on) ?
> > >
> > > Just asking, the rockchip maintainers should be able to answer this
> > > question.
> > 
> > This is a new driver with no current users, this series enables the
> > first user. It does not support ACPI nor any sort of handoff at this
> > time.
> 
> Ok. I will take patches [1-3], dts changes will have to go via
> platform trees, I hope that's fine.

yep, that sounds great and I'll pick the dts patches then :-)

Thanks
Heiko

> > > > diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > > > index c9b341e55cbb..faedbd6ebc20 100644
> > > > --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > > > +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > > > @@ -152,6 +152,11 @@ static int rockchip_pcie_resource_get(struct platform_device *pdev,
> > > >       if (IS_ERR(rockchip->rst_gpio))
> > > >               return PTR_ERR(rockchip->rst_gpio);
> > > >
> > > > +     rockchip->rst = devm_reset_control_array_get_exclusive(&pdev->dev);
> > > > +     if (IS_ERR(rockchip->rst))
> > > > +             return dev_err_probe(&pdev->dev, PTR_ERR(rockchip->rst),
> > > > +                                  "failed to get reset lines\n");
> > > > +
> > > >       return 0;
> > > >  }
> > > >
> > > > @@ -182,18 +187,6 @@ static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
> > > >       phy_power_off(rockchip->phy);
> > > >  }
> > > >
> > > > -static int rockchip_pcie_reset_control_release(struct rockchip_pcie *rockchip)
> > > > -{
> > > > -     struct device *dev = rockchip->pci.dev;
> > > > -
> > > > -     rockchip->rst = devm_reset_control_array_get_exclusive(dev);
> > > > -     if (IS_ERR(rockchip->rst))
> > > > -             return dev_err_probe(dev, PTR_ERR(rockchip->rst),
> > > > -                                  "failed to get reset lines\n");
> > > > -
> > > > -     return reset_control_deassert(rockchip->rst);
> > > > -}
> > > > -
> > > >  static const struct dw_pcie_ops dw_pcie_ops = {
> > > >       .link_up = rockchip_pcie_link_up,
> > > >       .start_link = rockchip_pcie_start_link,
> > > > @@ -222,6 +215,10 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
> > > >       if (ret)
> > > >               return ret;
> > > >
> > > > +     ret = reset_control_assert(rockchip->rst);
> > > > +     if (ret)
> > > > +             return ret;
> > > > +
> > > >       /* DON'T MOVE ME: must be enable before PHY init */
> > > >       rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
> > > >       if (IS_ERR(rockchip->vpcie3v3)) {
> > > > @@ -241,7 +238,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
> > > >       if (ret)
> > > >               goto disable_regulator;
> > > >
> > > > -     ret = rockchip_pcie_reset_control_release(rockchip);
> > > > +     ret = reset_control_deassert(rockchip->rst);
> > > >       if (ret)
> > > >               goto deinit_phy;
> > > >
> > > > --
> > > > 2.25.1
> > > >
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
