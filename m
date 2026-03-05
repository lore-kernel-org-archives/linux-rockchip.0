Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D6F2EEF30A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuVXke0OHZipla8HQkxQF7+zant4v3F3LlWPSz17Koc=; b=XtHNxW4IY6YlRt
	3KNnte7aPPDkaU4SSdPwGxLlsuX/gGNRYGqeMw+JgiMgkLoKvY1+EOE7mNSW4eUMdwQtTV74rifj+
	NKt+6BY4Fkcx5NTnBVDJZ7rJa0wLfalD76QlREomwzCs5INUHGt9BfDlXuytvMvUiwfZ3RpFduT0A
	nVK3yssX5mJO/k80+NzZQIFmoFNUxg85P8qV7OwjuL1+v7GODoFm+ODyGstGcMYRIyg6xhjjJCjLz
	ewztDcoSrFCfY63x6HBZQMEMtezWmAO/ebB+Rixo4dRqfsfO0+r+06+tZytx7CM4I5ymf/AcsSTCo
	3Pyl2J5FJGisn748tGDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2bj-0000000135a-0FDu;
	Thu, 05 Mar 2026 06:54:51 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2bf-0000000133w-3k9h;
	Thu, 05 Mar 2026 06:54:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 199BF4211B;
	Thu,  5 Mar 2026 07:54:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1772693683; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=dErXW1Jpzv3QJs1jd2FdC9ztVSxwa/zpnT9DC9MGvBE=;
	b=oy5bvIDW2Sp5DqZl+Y6XZL9oslOctdG42e1H2jUw7REGuEZTv5+udzyBMdK1cwkxGtrr8o
	idK5lp2XAr9PCRrOcomg7q33vZxI+XSWPs/IZUEqtAnaFq1S7DFuePb12tNjrhNibroCQ3
	guGgsMgu2CrQfdvJyslI5x84U312jgp9sXpwFNP3NW1qExG8lKtsXmWB0Pv/CS+Y8RsTsB
	WDetmyBplXVUTvH4JYu24g7AVW8e6hMWanoqOTYw5TyNynDQR8c7wMUYGdK4bEb3fIC+Bc
	5t7XFzBqzU+YLDozg635lQuo9cWbqwSCMvElG0x5Pp0L2T4vun3ZTQyf1Saplg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <aakEQ_qtBbYCaUsA@geday>
References: <cover.1772239598.git.geraldogabriel@gmail.com>
 <2a0a4aa97bb8b0cb511cb651c5d66c9ec8bab97a.1772239598.git.geraldogabriel@gmail.com>
 <d2b91260-7666-3606-69ec-0e7cb7a48c02@manjaro.org> <aakEQ_qtBbYCaUsA@geday>
Date: Thu, 05 Mar 2026 07:54:39 +0100
Cc: "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Geraldo Nascimento" <geraldogabriel@gmail.com>
MIME-Version: 1.0
Message-ID: <5299c7c8-7593-6b0b-5def-8f0bdaecd8f9@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v5 3/4] =?utf-8?q?PCI=3A?==?utf-8?q?_rockchip=3A?= 
 drive at =?utf-8?q?2=2E5?==?utf-8?q?_GT/s=2C?= error other speeds
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-Rspamd-Fuzzy: 92c42003f999b2e674c87b253aa06c9cc4c940f5231e4605c1cd9f8098bf9aa98d30a83a9928210ba715e9c0d2880cee688bb95b719aaf896ecda919cea7cf50
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_225448_297779_2D7C8C10 
X-CRM114-Status: GOOD (  38.08  )
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

Hello Geraldo,

On Thursday, March 05, 2026 05:19 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> On Sat, Feb 28, 2026 at 07:16:41AM +0100, Dragan Simic wrote:
> > On Saturday, February 28, 2026 01:55 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > > Configure the core to be driven at 2.5 GT/s Link Speed and ignore
> > > any other speed with a warning. The reason is that Shawn Lin from
> > > Rockchip has reiterated that there may be danger of "catastrophic
> > > failure" in using their PCIe with 5.0 GT/s speeds.
> > > 
> > > While Rockchip has done so informally without issuing a proper errata,
> > > and the particulars are thus unknown, this may cause data loss or
> > > worse.
> > > 
> > > This change is corroborated by RK3399 official datasheet [1], which
> > > states maximum link speed for this platform is 2.5 GT/s.
> > > 
> > > [1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf
> > > 
> > > Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> > > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> > > Cc: stable@vger.kernel.org
> > > Reported-by: Dragan Simic <dsimic@manjaro.org>
> > > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> > > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> > > ---
> > >  drivers/pci/controller/pcie-rockchip.c | 15 +++++++++------
> > >  1 file changed, 9 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> > > index 0f88da378805..2f211d1f4c7c 100644
> > > --- a/drivers/pci/controller/pcie-rockchip.c
> > > +++ b/drivers/pci/controller/pcie-rockchip.c
> > > @@ -66,8 +66,10 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
> > >  	}
> > >  
> > >  	rockchip->link_gen = of_pci_get_max_link_speed(node);
> > > -	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
> > > -		rockchip->link_gen = 2;
> > > +	if (rockchip->link_gen < 0 || rockchip->link_gen >= 2) {
> > > +		rockchip->link_gen = 1;
> > > +		dev_warn(dev, "invalid max-link-speed, fix your DT\n");
> > > +	}
> > 
> > I'd suggest using a bit more formal message here, like the one below,
> > which would also avoid addressing the user directly:
> > 
> >   "Invalid max-link-speed found, limited to Gen1 to avoid data corruption"
> 
> We really should spare on characters here, but I see your point and will
> try to cook up a better way.

Makes sense, so perhaps just "Limited to Gen1 to avoid data corruption"
should be fine for the purpose, because anyone attempting to get rid
of that warning should search for what emitted it in the kernel source,
which would provide them with further information.

> > >  	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
> > >  		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
> > > @@ -147,12 +149,13 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
> > >  		goto err_exit_phy;
> > >  	}
> > >  
> > > -	if (rockchip->link_gen == 2)
> > > -		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_2,
> > > -				    PCIE_CLIENT_CONFIG);
> > > -	else
> > > +	if (rockchip->link_gen == 2) {
> > > +		/* 5.0 GT/s may cause catastrophic failure for this core */
> > > +		dev_warn(dev, "5.0 GT/s may cause data loss or worse\n");
> > > +	} else {
> > >  		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
> > >  				    PCIE_CLIENT_CONFIG);
> > > +	}
> > 
> > I don't think we need to emit a warning here, because, as we've already
> > established through earlier discussions, the rockchip_pcie_init_port()
> > function should never receive an invalid speed value.
> 
> Just as a lame excuse, those messages were everywhere in the mid of my
> development, this is one that escaped deletion, will drop.

Thanks.

> > >  	regs = PCIE_CLIENT_ARI_ENABLE |
> > >  	       PCIE_CLIENT_CONF_LANE_NUM(rockchip->lanes);
> > 
> > It would make most sense to squash all three patches in this series
> > into a single patch, because they all form a single logical unit, which
> > introduces changes that are just going to be harder to track down later
> > if it's all scattered into multiple separate patches.
> 
> I agree, having all drops in one big patch is the better tactic here.
> 
> > The only possible issue with the squashing comes from the inability to
> > have different patch subject prefixes for different driver changes, but
> > I think that's actually not an issue.  The long-term benefits of having
> > everything as a single patch outweighs the benefits of having different
> > patch subjects with separate patches.
> 
> Sure, will do so for v6.

Thanks, but as Manivannan pointed out, having the changes split across
a couple of patches actually comes with benefits.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
