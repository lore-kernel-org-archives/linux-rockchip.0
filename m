Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73D41C47089
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:55:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 303E56105A
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:55:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 303E56105A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=YLDAlL4aqFwG12zA15A/qUoHzZGMuuOubFSWlHgC6VQ=; b=BMT20XrDGx9SbK
	X7qgWGkBDPGsVAVC45wJVQH/rdoSqMgkEnsC7pKlbZWGN7TdXkrhKCO9CUot6Hy9ns/KswoELXynz
	KeXhb16FwMbwRgN9nEZBuFdoX4VU97cgiDVTGX5wQGPfCpvoTEhMpJJ2dn0nmBKJZtKcZBzTwU1Ap
	xlnFwemDdiPSrkZJiFM6GM6e3bDAM6VbiDCCBBFYST9/3zN4RGD8piNRqA4GraQ55lAq3Z803XTTt
	1/GMhMOo08Fy4Up207ef8rWjqYm0fhs1Rlo3roU83JqhDS2ShXLPSkxmUhA+4pSya8qLkOyvAnVyW
	a/VxD4wyVENwEp3jo+dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmKER-008H7R-FA; Thu, 27 May 2021 17:55:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmIlI-007ZJq-La; Thu, 27 May 2021 16:21:34 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5E1B860FF3;
 Thu, 27 May 2021 16:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622132491;
 bh=A+aq7v0oj/DPRCa0eNoe0PkrOcP55THZ6VyCP2bP7Gs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=syvuSe8bKMLPvbHtrYVesgcTAAIrK3TbI499q6vUnNcfXt6vY3ZW8zPHiYHDU/9dR
 5u0Y26AL00po/H8utoZwd4CnHeNKZiFvyVIPi61LQ/lsJKWoFq5PxEO6RIPrkXum8c
 VOcKFpEdhJWYdMwfPURGS3yEOJII2n/tJ+//3cZ+tFfo5ExqupUjwF5zn+z81cUXxv
 y71g3r51gBrRAMNGUjSGAUAaU/rFKUt/9LQi9Ap/TAzx8QmS1Z3OZsqJyaESBhFQnv
 gC+saM9iPhnoX2+An9D8sFi6p+tCq1PDmB9ISVwbBxVH8kho1PwQscoy5EW5G8M/sT
 hKo40tqksk/xQ==
Date: Thu, 27 May 2021 11:21:30 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Punit Agrawal <punitagrawal@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 alexandru.elisei@arm.com, wqu@suse.com, robin.murphy@arm.com,
 pgwipeout@gmail.com, ardb@kernel.org, briannorris@chromium.org,
 shawn.lin@rock-chips.com, robh+dt@kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH 1/2] PCI: of: Override 64-bit flag for non-prefetchable
 memory below 4GB
Message-ID: <20210527162130.GA1401058@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210527150541.3130505-2-punitagrawal@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_092132_877101_FE726BCB 
X-CRM114-Status: GOOD (  22.33  )
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

On Fri, May 28, 2021 at 12:05:41AM +0900, Punit Agrawal wrote:
> Some host bridges advertise non-prefetable memory windows that are
> entirely located below 4GB but are marked as 64-bit address memory.
> 
> Since commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
> flags for 64-bit memory addresses"), the OF PCI range parser takes a
> stricter view and treats 64-bit address ranges as advertised while
> before such ranges were treated as 32-bit.

Conceptually, I'm not sure why we need IORESOURCE_MEM_64 at all on
resources we get from DT.  I think the main point of IORESOURCE_MEM_64
is to convey the information that "this register, e.g., a PCI BAR, has
space for 64-bit values if you need to write to it."

When we're parsing this from DT, I think we're just getting a fixed
value and there's no concept of writing anything back, so it doesn't
seem like we should need to know how wide the hardware register is, or
even whether there *is* a hardware register.

But I'm sure the PCI resource allocation code probably depends on
IORESOURCE_MEM_64 in those host bridge windows in very ugly ways.

> A PCI-to-PCI bridges cannot forward 64-bit non-prefetchable memory
> ranges. As a result, the change in behaviour due to the commit causes
> allocation failure for devices that are connected behind PCI host
> bridges modelled as PCI-to-PCI bridge and require non-prefetchable bus
> addresses.
> 
> In order to not break platforms, override the 64-bit flag for
> non-prefetchable memory ranges that lie entirely below 4GB.
> 
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> ---
>  drivers/pci/of.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index da5b414d585a..b9d0bee5a088 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -565,10 +565,14 @@ static int pci_parse_request_of_pci_ranges(struct device *dev,
>  		case IORESOURCE_MEM:
>  			res_valid |= !(res->flags & IORESOURCE_PREFETCH);
>  
> -			if (!(res->flags & IORESOURCE_PREFETCH))
> +			if (!(res->flags & IORESOURCE_PREFETCH)) {
>  				if (upper_32_bits(resource_size(res)))
>  					dev_warn(dev, "Memory resource size exceeds max for 32 bits\n");
> -
> +				if ((res->flags & IORESOURCE_MEM_64) && !upper_32_bits(res->end)) {
> +					dev_warn(dev, "Overriding 64-bit flag for non-prefetchable memory below 4GB\n");

Maybe "Clearing 64-bit flag"?

Can you include %pR, so we see the resource in question?

Unrelated but close by, would be nice if the preceding warning ("size
exceeds max") also included %pR.

> +					res->flags &= ~IORESOURCE_MEM_64;
> +				}
> +			}
>  			break;
>  		}
>  	}
> -- 
> 2.30.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
