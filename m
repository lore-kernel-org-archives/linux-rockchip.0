Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6590FC27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 17:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvJS+P4J5EGXjc6Hc4I0XEuxN2uVnGOM/OmxNmM3gvA=; b=v0gl6sx4nP6x0y
	6Y+3EIwpRZKikPAU4ODeCOGR78+jx9d8kRktZV6w6q6N8P6YuJXL/OPvqTVN3yGCqcEaptFrdsK/V
	d347loPZbtYcvHkMH8BDO8+SRqFeS6W5loAu60wcQ0a8OwKHA1J1FMs0/rqyLwJb93pL71p9OBYC2
	xEv3YLpU/h/z5BStTnanId8z1TvR4x+pIxH14OcAznTOAy1hb6Uql19RsAS64+v2jhibSwlFckdss
	LZbX7unPjTtgXCamsa5ZYcWLeHo/FWSW0z7KKjH9pp6AE+anndkV1emEp6dlrs04d/w7ZKgJjng27
	U6UznrP0GuIxCWY7YqAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEut3-000000072TR-2562;
	Wed, 05 Jun 2024 17:57:25 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEut0-000000072Sm-3CaL
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 17:57:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8C1E5CE1874;
	Wed,  5 Jun 2024 17:57:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 857C4C2BD11;
	Wed,  5 Jun 2024 17:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717610239;
	bh=l9ydBUNQUdSilVJMSLqSHbZR/daYiVRwI/DRlUqbFp8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O1Ov+EcnLmZiKnQl0kqPAWCsSSPvAC/CasiQvdUq8byYLhR+p0pXtL6qwOpHrI2ap
	 vPJrclOJH437tVsYfzFKYgVYHr6Ni6PkCIl3B3zHmjSYhcpqO5915qj37+QB9v2fMN
	 GNfX163xkJBn1X+E2vyQezZNE924RN/m9r03mBLq7dZDpC3246SNoheRH2EHaZTgLr
	 QkCSq6zKrCHeIzNtS2ygW+JX6yVS7NtW8S++/xvSbb0kOPWH02j1EgKrUnULa9IChL
	 8kbja6WMkMFGUOCJmBEaiHvcmXhOXO4O0nQQdJD8KAi9mogv43rYgXFHA01GT1Pykf
	 n/c1NXRpDXdUg==
Date: Wed, 5 Jun 2024 19:57:12 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 09/13] PCI: dw-rockchip: Refactor the driver to
 prepare for EP mode
Message-ID: <ZmCm-Lt3yZpE84EG@ryzen.lan>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-9-3dc00fe21a78@kernel.org>
 <20240605080640.GJ5085@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240605080640.GJ5085@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_105723_016726_CEB1C4CC 
X-CRM114-Status: GOOD (  19.88  )
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

On Wed, Jun 05, 2024 at 01:36:40PM +0530, Manivannan Sadhasivam wrote:
> On Wed, May 29, 2024 at 10:29:03AM +0200, Niklas Cassel wrote:
> > This refactors the driver to prepare for EP mode.
> > Add of-match data to the existing compatible, and explicitly define it as
> > DW_PCIE_RC_TYPE. This way, we will be able to add EP mode in a follow-up
> > commit in a much less intrusive way, which makes the follup-up commit much
> > easier to review.
> > 
> > No functional change intended.
> > 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> 
> Few nitpicks below. With those addressed,
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> > ---

(snip)

> > @@ -294,13 +292,35 @@ static const struct dw_pcie_ops dw_pcie_ops = {
> >  	.start_link = rockchip_pcie_start_link,
> >  };
> >  
> > +static int rockchip_pcie_configure_rc(struct rockchip_pcie *rockchip)
> > +{
> > +	struct dw_pcie_rp *pp;
> > +	u32 val;
> > +
> > +	/* LTSSM enable control mode */
> > +	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
> > +	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
> > +
> > +	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_RC_MODE,
> > +				 PCIE_CLIENT_GENERAL_CONTROL);
> > +
> > +	pp = &rockchip->pci.pp;
> > +	pp->ops = &rockchip_pcie_host_ops;
> > +
> > +	return dw_pcie_host_init(pp);
> > +}
> > +
> >  static int rockchip_pcie_probe(struct platform_device *pdev)
> >  {
> >  	struct device *dev = &pdev->dev;
> >  	struct rockchip_pcie *rockchip;
> > -	struct dw_pcie_rp *pp;
> > +	const struct rockchip_pcie_of_data *data;
> >  	int ret;
> >  
> > +	data = of_device_get_match_data(dev);
> > +	if (!data)
> > +		return -EINVAL;
> 
> -ENODATA?

-EINVAL seems to be most common:
$ git grep -A 5 of_device_get_match_data drivers/pci/



Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
