Return-Path: <SRS0=K/1+=EY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2DC5519F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 08:53:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AA2A82083E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 08:53:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Dl1Y3aIa"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AA2A82083E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bAGt1hT1TwcmjWARA3tzCddqXL7cozRAmzLhdhcEMbM=; b=Dl1Y3aIaEMbAYHjFvqrQO3gW5
	5rf8/hnqhv3iKHdO5wGg+ocZW1GUgrugtFkvAHrCpLJW/SYFr7Iy9tVCGZiWYAypH7AR6Id55bLDn
	FFWSReUxkjx+qmsWPVOMIuV10SbEszmiQNjnqIhLrqCbkJ1sw792T48PvwR+oF6P9xDRBRctlF5BT
	OtdUfTneHw9Jcn+GdZBSrzQAbi6TxjmvuUaZ2whwSu50i94Rbf56y/fDAYvJcPh5oDLwQyQOqLhfk
	riylMNMjc3iS2m/bnVJTXWsmEiJky34D+SGyshttTm9cNaqWZYN2n/rRBIq6tIgVDsWKx2rCD/i5S
	ZRLXIJJcA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kfJDk-0002IR-NQ; Wed, 18 Nov 2020 08:53:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kfJA5-0000UK-TZ; Wed, 18 Nov 2020 08:50:08 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kfJ9o-00056u-Q4; Wed, 18 Nov 2020 09:49:40 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: Make 'ep-gpios' DT property optional
Date: Wed, 18 Nov 2020 09:49:40 +0100
Message-ID: <1737702.WCGJIqnLLh@diego>
In-Reply-To: <20201118071724.4866-2-wens@kernel.org>
References: <20201118071724.4866-1-wens@kernel.org>
 <20201118071724.4866-2-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201118_034958_088135_BB7A76B8 
X-CRM114-Status: GOOD (  19.94  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 18. November 2020, 08:17:21 CET schrieb Chen-Yu Tsai:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The Rockchip PCIe controller DT binding clearly states that 'ep-gpios' is
> an optional property. And indeed there are boards that don't require it.
> 
> Make the driver follow the binding by using devm_gpiod_get_optional()
> instead of devm_gpiod_get().
> 
> Fixes: e77f847df54c ("PCI: rockchip: Add Rockchip PCIe controller support")
> Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> Fixes: 964bac9455be ("PCI: rockchip: Split out rockchip_pcie_parse_dt() to parse DT")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de


I'll pick up patches 2-4 separately, after giving Rob a chance to look at
the simple binding.


Heiko

> ---
> Changes since v1:
> 
>   - Rewrite subject to match existing convention and reference
>     'ep-gpios' DT property instead of the 'ep_gpio' field
> ---
>  drivers/pci/controller/pcie-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index 904dec0d3a88..c95950e9004f 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c
> @@ -118,7 +118,7 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
>  	}
>  
>  	if (rockchip->is_rc) {
> -		rockchip->ep_gpio = devm_gpiod_get(dev, "ep", GPIOD_OUT_HIGH);
> +		rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep", GPIOD_OUT_HIGH);
>  		if (IS_ERR(rockchip->ep_gpio)) {
>  			dev_err(dev, "missing ep-gpios property in node\n");
>  			return PTR_ERR(rockchip->ep_gpio);
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
