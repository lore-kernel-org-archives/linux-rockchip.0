Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB9AC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 16:16:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7E81C60FDA
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 16:16:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7E81C60FDA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huwsZ17lNko27ni7ocIs4ZRgUUo3hQhfRNlTGj18EDY=; b=2bII/i8hCIsknT
	hxz5u58DoexpMg8WVruocSNvwDp7OdlGzvjWBcoFG+ntZmYR9hFd/bipOEb1AjPuVSdBtUqgPdLDR
	9mSbWllbhPikPz6DXT31/zPgFjaJvuzfy0OwmCSBMDSfdnRSFG0zO9ioFBpKFSw3dVoQBW1B3iYED
	3EQEI5Kc3BYj73EJxxcrL3qzg88OsgASJvmBi4Zsfh0ARS7cpbgI3/A/DT3padapBv6qJw4YPV3zp
	mT3LIpXKAqohLi9QF1MM5q6M5l4ajBwL0iY7uCLCOiSBw+4ac4tlGo9GK8Fmt3Kuy0mKBU5M1U/mu
	rgD3ZaYLe0oQYVRT9rCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mICc9-00HYpF-RH; Mon, 23 Aug 2021 16:15:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mICbp-00HYhV-NL; Mon, 23 Aug 2021 16:15:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BBB9F11D4;
 Mon, 23 Aug 2021 09:15:34 -0700 (PDT)
Received: from lpieralisi (e121166-lin.cambridge.arm.com [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F313E3F5A1;
 Mon, 23 Aug 2021 09:15:32 -0700 (PDT)
Date: Mon, 23 Aug 2021 17:15:27 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH v2] PCI: rockchip-dwc: Potential error pointer
 dereference in probe
Message-ID: <20210823161527.GA8289@lpieralisi>
References: <20210813141257.GB7722@kadam>
 <20210813142648.GA12057@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210813142648.GA12057@kili>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_091537_838917_5FDFCF9C 
X-CRM114-Status: GOOD (  21.02  )
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

On Fri, Aug 13, 2021 at 05:26:48PM +0300, Dan Carpenter wrote:
> If devm_regulator_get_optional() returns -ENODEV then it would lead
> to an error pointer dereference on the next line and in the error
> handling code.
> 
> Fixes: e1229e884e19 ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> v2: The -ENODEV from devm_regulator_get_optional() has to be handled
>     specially.
> 
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)

I squashed it in with the patch that is fixing, thanks a lot.

Lorenzo

> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 20cef2e06f66..c9b341e55cbb 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -224,15 +224,17 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  
>  	/* DON'T MOVE ME: must be enable before PHY init */
>  	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
> -	if (IS_ERR(rockchip->vpcie3v3))
> +	if (IS_ERR(rockchip->vpcie3v3)) {
>  		if (PTR_ERR(rockchip->vpcie3v3) != -ENODEV)
>  			return dev_err_probe(dev, PTR_ERR(rockchip->vpcie3v3),
>  					"failed to get vpcie3v3 regulator\n");
> -
> -	ret = regulator_enable(rockchip->vpcie3v3);
> -	if (ret) {
> -		dev_err(dev, "failed to enable vpcie3v3 regulator\n");
> -		return ret;
> +		rockchip->vpcie3v3 = NULL;
> +	} else {
> +		ret = regulator_enable(rockchip->vpcie3v3);
> +		if (ret) {
> +			dev_err(dev, "failed to enable vpcie3v3 regulator\n");
> +			return ret;
> +		}
>  	}
>  
>  	ret = rockchip_pcie_phy_init(rockchip);
> @@ -255,7 +257,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  deinit_phy:
>  	rockchip_pcie_phy_deinit(rockchip);
>  disable_regulator:
> -	regulator_disable(rockchip->vpcie3v3);
> +	if (rockchip->vpcie3v3)
> +		regulator_disable(rockchip->vpcie3v3);
>  
>  	return ret;
>  }
> -- 
> 2.20.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
