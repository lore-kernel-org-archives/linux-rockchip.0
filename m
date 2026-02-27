Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE2C8FEFB6A
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 17:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHfgHZTAElAFi5L/eyHgN0V+RI1A917CSrUFqqVGQK4=; b=qPOPm93YLJK+em
	dNecc+39O34tACgI6h4TRqEV7czxvZKfxObAlZMwQ3qId7pe1CsfyBJvZL1MGhxAdodD5F8eYLiG+
	GiXFyA/hr29jeN7VW+vPagW6xdj6w4wML0mDuh/f6Bd5J7/T0LnuRwpFBfWObBqB3BfEqQhRHrCRZ
	DcSeL1bb4UBRawk5vE5xTh+QFia1XblGeedowI1/em3sqseNI49i+lfDdfeS9PlvEJtd5UTDxyZUD
	Pbr7h5KerkdNhJ++zDnv/p842mfApFuo0KvKfG6H5m7VzOn8GmHUgi3ZXz8XeM0OYZt9gO7fV87sd
	s4VBgXsGLRvXqw9as1pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1CM-00000008leY-1elh;
	Fri, 27 Feb 2026 17:00:18 +0000
Received: from mout01.posteo.de ([185.67.36.65])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1CI-00000008ldJ-43UP
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Feb 2026 17:00:16 +0000
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 7CB66240027
	for <linux-rockchip@lists.infradead.org>; Fri, 27 Feb 2026 18:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.net; s=2017;
	t=1772211609; bh=29xGwZx4QmtZUrfPtkG3nKCYS3+MgHmL/NsrLP4T1A8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 From;
	b=I5NnjvCuMpWMPH3q3XPlasl6JZSNi+3rKA4oAlI990lToOZN134QOKC1VGDg6afLx
	 pbJY+H8Mkrlb+qLY+46YWyoFwJ4uXavXROmExmDxowesZVIv2uqHKBzjpiwWFin9Gw
	 iccu6HOkEP2fG6hwqkYT8btr0z+6v9nn0T33Ltl/l7TFHMPNm0VBixsBAXc5dcRC5o
	 BOrDLgMTmscgCs90Gia7H6PDwlTjQhjURCcmZNlEgTWpJ+KskX5pRgaTpf7GEhxA5A
	 NsmB3h1YnFIBoGsOjJOr27zNgg8NhvWHuDNoFGC40G07VdbZcifbIODCPYx/VUBwSO
	 PqQG5u4uNTHEw==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4fMvhK3Zmfz9rxN;
	Fri, 27 Feb 2026 18:00:01 +0100 (CET)
From: Charalampos Mitrodimas <charmitro@posteo.net>
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,  Lorenzo Pieralisi
 <lpieralisi@kernel.org>,  Krzysztof =?utf-8?Q?Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>,
  Manivannan Sadhasivam <mani@kernel.org>,  Rob Herring <robh@kernel.org>,
  Bjorn Helgaas <bhelgaas@google.com>,  Heiko Stuebner <heiko@sntech.de>,
  Dragan Simic <dsimic@manjaro.org>,  linux-rockchip@lists.infradead.org,
  linux-pci@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/4] PCI: rockchip-ep: do not attempt 5.0 GT/s
 retraining
In-Reply-To: <c51c804bea56d772a59fd29fcb080541b7a367d2.1772169998.git.geraldogabriel@gmail.com>
References: <cover.1772169998.git.geraldogabriel@gmail.com>
	<c51c804bea56d772a59fd29fcb080541b7a367d2.1772169998.git.geraldogabriel@gmail.com>
Date: Fri, 27 Feb 2026 17:00:03 +0000
Message-ID: <87zf4ujf5b.fsf@posteo.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_090015_286619_2D850B3A 
X-CRM114-Status: GOOD (  19.96  )
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

Geraldo Nascimento <geraldogabriel@gmail.com> writes:

> Drop the 5.0 GT/s Link Speed retraining code block from Rockchip PCIe
> header definitions. The reason is that Shawn Lin from Rockchip has
> reiterated that there may be danger of "catastrophic failure" in
> using their PCIe with 5.0 GT/s speeds.

Patch body says "header definitions" but the change is to the drivers'
source. Maybe you need to reword in a way that is clear as to what
happened?

Cheers!

>
> While Rockchip has done so informally without issuing a proper
> errata, and the particulars are thus unknown, this may cause data
> loss or worse.
>
> This change is corroborated by RK3399 official datasheet [1], which
> states maximum link speed for this platform is 2.5 GT/s.
>
> [1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf
>
> Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> Cc: stable@vger.kernel.org
> Reported-by: Dragan Simic <dsimic@manjaro.org>
> Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 13 -------------
>  1 file changed, 13 deletions(-)
>
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index 799461335762..9ebc227a1ef8 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -553,19 +553,6 @@ static void rockchip_pcie_ep_link_training(struct work_struct *work)
>  	if (ret)
>  		goto again;
>  
> -	/*
> -	 * Check the current speed: if gen2 speed was requested and we are not
> -	 * at gen2 speed yet, retrain again for gen2.
> -	 */
> -	val = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
> -	if (!PCIE_LINK_IS_GEN2(val) && rockchip->link_gen == 2) {
> -		/* Enable retrain for gen2 */
> -		rockchip_pcie_ep_retrain_link(rockchip);
> -		readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
> -				   val, PCIE_LINK_IS_GEN2(val), 50,
> -				   LINK_TRAIN_TIMEOUT);
> -	}
> -
>  	/* Check again that the link is up */
>  	if (!rockchip_pcie_ep_link_up(rockchip))
>  		goto again;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
