Return-Path: <SRS0=8ktI=LE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA4FC47094
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 13:35:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 85823610C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 13:35:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 85823610C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XJo4Jma9tSOv3BUpx7g2O5pwul+X9zXbKzgr/2GXRY=; b=ZTYBrjeXv8sCJA
	JApxUpQpE8OlktezZlgiArUyKA5VwVx5Vk8N4r7i3xBpphQKuDD9q1YPUx1HVDpJNpQrBtU6zTLzH
	QPPWeSqOFAG3WwhkhEFOEfOXvIyfBRdq/1dTsCK4g2Qfind1K4pXxdk0AInt85oOny51YFAxDV3/z
	ppdh7rQQeilsH0xjINqfiNI6un0qkHoed9j104qpmXKUu4Sguj4cUStWlFVewTAipEqzZxR+LLW0m
	vaMIPawgsskOQ2Dbh9jBElqNuobCmcnJKlU7Gm7uWuWVPUBURMpVhe+kbGwBoiHoeBtQgmClKqkGq
	NW2BeZmFgcGSFdxAKRYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrKpx-000t88-4K; Thu, 10 Jun 2021 13:35:09 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrKpt-000t5r-9Q; Thu, 10 Jun 2021 13:35:07 +0000
Received: by mail-pg1-x529.google.com with SMTP id z1so394640pgj.6;
 Thu, 10 Jun 2021 06:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=25QHYDZU/33GobJcVDtQ/GuUkx9D2Ms/u7IzN+8Cqkg=;
 b=IWtVLYEDFrwtyBXWN2I0UMn125oAptlDnMrRMYqy/T8Thb6CgZyjwUh9fks114+MF/
 w+g32AlBbaqXBjqvWJpbM0rA3L8lyq9VwBk+mrz9HpVH19Bs8Xj2wrw+tb2rwHOOq2EI
 DnO9b3YgmsMX6XAPbW/HdnN+dkkrpiIzPAzj+cf5+nlw+WUJlzIRT6s9E6kj6F5MqLDn
 svkN/JLoSzf9DpJHX4pbkPoDClYDrjKHiB3rsIKrrEWsw1c3Z81nsUE0xI4agGr4bKg1
 tVx/WcOnKi4o5z4D7fzb1na4/bhZZIuJJcZKRDED++zWGtG8sjRJjLphVlsY+dNzN1DO
 27TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=25QHYDZU/33GobJcVDtQ/GuUkx9D2Ms/u7IzN+8Cqkg=;
 b=DjbA8pYl0D9iWzR+ykszcWisspmpuo1QfkLSl6oBQY8c9AbRCXWBoD6EwQWlwibGE2
 dL1VlT/OF5o0f9+Wz8oyq1dTAKV/mQJx9J8LT6/aDB3gHYkrGuy7hq8c/ckZudgX/OsK
 M2TG3GHDSEfhLnOriZaD298B2OpuC87X3QHo+8x46uWDK9R3Wo6NmwciAvMnev9W9Ecz
 bri8y2rHjUWFzhxHOUvKBS38qZ7DHMUSpdyBQsdpkhSE+07Moo9Paa5sWvUii4Eq8Pjz
 X1zsXFaHodugIJB24x6VIzKInpK1m82bR7h+Fd/+u48Sc8m3PxCZmC9iP+fJ4TgVyvxA
 IYZQ==
X-Gm-Message-State: AOAM533ltClZVKW9473nOgFZ366nAD7h+lCPpPCTrdKXQMLE2rAcfZXD
 /USsHLSvqjWNEgR+2qEOJBQ=
X-Google-Smtp-Source: ABdhPJyhFxvLk1xekJg/Dy/pjyr0knLRFl07mRH6qfp7h73cB2pobMSsBT58W3WKwz/ziNQeFI8tHg==
X-Received: by 2002:a63:6c84:: with SMTP id h126mr5011352pgc.54.1623332100417; 
 Thu, 10 Jun 2021 06:35:00 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id k15sm2473875pff.19.2021.06.10.06.34.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jun 2021 06:34:59 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: robh+dt@kernel.org,  linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org,  alexandru.elisei@arm.com,  wqu@suse.com,
 robin.murphy@arm.com,  pgwipeout@gmail.com,  ardb@kernel.org,
 briannorris@chromium.org,  shawn.lin@rock-chips.com,  Bjorn Helgaas
 <bhelgaas@google.com>,  Leonardo Bras <leobras.c@gmail.com>
Subject: Re: [PATCH v3 1/4] PCI: of: Clear 64-bit flag for non-prefetchable
 memory below 4GB
References: <20210610002256.GA2680171@bjorn-Precision-5520>
Date: Thu, 10 Jun 2021 22:34:56 +0900
In-Reply-To: <20210610002256.GA2680171@bjorn-Precision-5520> (Bjorn Helgaas's
 message of "Wed, 9 Jun 2021 19:22:56 -0500")
Message-ID: <875yyllu67.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_063505_384977_41039420 
X-CRM114-Status: GOOD (  37.62  )
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

Hi Bjorn,

Bjorn Helgaas <helgaas@kernel.org> writes:

> [+cc Leonardo]
>
> On Mon, Jun 07, 2021 at 08:28:53PM +0900, Punit Agrawal wrote:
>> Some host bridges advertise non-prefetchable memory windows that are
>> entirely located below 4GB but are marked as 64-bit address memory.
>> 
>> Since commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
>> flags for 64-bit memory addresses"), the OF PCI range parser takes a
>> stricter view and treats 64-bit address ranges as advertised while
>> before such ranges were treated as 32-bit.
>> 
>> A PCI root port modelled as a PCI-to-PCI bridge cannot forward 64-bit
>> non-prefetchable memory ranges. As a result, the change in behaviour
>> due to the commit causes failure to allocate 32-bit BAR from a 64-bit
>> non-prefetchable window.
>> 
>> In order to not break platforms where non-prefetchable memory ranges
>> lie entirely below 4GB, clear the 64-bit flag.
>
> I don't think we should care about the address width DT supplies for a
> host bridge window.  Prior to 9d57e61bf723, I don't think we *did*
> care because of_bus_pci_get_flags() threw away that information.
>
> My proposal for a commit log, including information about the problem
> report and a "Fixes:" tag:
>
>   Alexandru and Qu reported this resource allocation failure on
>   ROCKPro64 v2 and ROCK Pi 4B, both based on the RK3399:
>
>     pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff 64bit]
>     pci 0000:00:00.0: PCI bridge to [bus 01]
>     pci 0000:00:00.0: BAR 14: no space for [mem size 0x00100000]
>     pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
>
>   "BAR 14" is the PCI bridge's 32-bit non-prefetchable window, and our
>   PCI allocation code isn't smart enough to allocate it in a host
>   bridge window marked as 64-bit, even though this should work fine.
>
>   A DT host bridge description includes the windows from the CPU
>   address space to the PCI bus space.  On a few architectures
>   (microblaze, powerpc, sparc), the DT may also describe PCI devices
>   themselves, including their BARs.
>
>   Before 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
>   flags for 64-bit memory addresses"), of_bus_pci_get_flags() ignored
>   the fact that some DT addresses described 64-bit windows and BARs.
>   That was a problem because the virtio virtual NIC has a 32-bit BAR
>   and a 64-bit BAR, and the driver couldn't distinguish them.

Many thanks for demystifying the motivation for 9d57e61bf723. Not being
familiar with the usage of DT to describe PCI devices I was missing this
context.

>   9d57e61bf723 set IORESOURCE_MEM_64 for those 64-bit DT ranges, which
>   fixed the virtio driver.  But it also set IORESOURCE_MEM_64 for host
>   bridge windows, which exposed the fact that the PCI allocator isn't
>   smart enough to put 32-bit resources in those 64-bit windows.
>
>   Clear IORESOURCE_MEM_64 from host bridge windows since we don't need
>   that information.
>
>   Fixes: 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit memory addresses")
>   Reported-at: https://lore.kernel.org/lkml/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com/
>   Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
>   Reported-by: Qu Wenruo <wqu@suse.com>

Thank you for commit log - without all the pieces I was struggling to
clearly describe the details. And I missed the appropriate tags as
well. I've updated the commit log based on your suggestion.

>> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
>> Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
>> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
>> Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>
>> Cc: Bjorn Helgaas <bhelgaas@google.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> ---
>>  drivers/pci/of.c | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>> 
>> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
>> index 85dcb7097da4..1e45186a5715 100644
>> --- a/drivers/pci/of.c
>> +++ b/drivers/pci/of.c
>> @@ -353,6 +353,14 @@ static int devm_of_pci_get_host_bridge_resources(struct device *dev,
>>  				dev_warn(dev, "More than one I/O resource converted for %pOF. CPU base address for old range lost!\n",
>>  					 dev_node);
>>  			*io_base = range.cpu_addr;
>> +		} else if (resource_type(res) == IORESOURCE_MEM) {
>> +			if (!(res->flags & IORESOURCE_PREFETCH)) {
>> +				if (res->flags & IORESOURCE_MEM_64)
>> +					if (!upper_32_bits(range.pci_addr + range.size - 1)) {
>> +						dev_warn(dev, "Clearing 64-bit flag for non-prefetchable memory below 4GB\n");
>> +						res->flags &= ~IORESOURCE_MEM_64;
>> +					}
>> +			}
>
> Why do we need to check IORESOURCE_PREFETCH, IORESOURCE_MEM_64, and
> upper_32_bits()?  If I understand this correctly, prior to
> 9d57e61bf723, IORESOURCE_MEM_64 was *never* set here.  Isn't something
> like this sufficient?
>
>   } else if (resource_type(res) == IORESOURCE_MEM) {
>     res->flags &= ~IORESOURCE_MEM_64;
>   }

Based on the discussion in the original thread[0], I was working with
the assumption that we don't want to lose the IORESOURCE_MEM_64 flag
other than in the problem scenario, i.e., non-prefetchable memory below
4GB.

You suggestion is simpler and also solves the issue by effectively
reverting the impact of 9d57e61bf723 on BAR allocation. If there are no
objections I will take this approach for the next update.

To aid future readers I will also add the following comment -

    /*
     * PCI allocation cannot correctly allocate 32-bit non-prefetchable BAR
     * in host bridge windows marked as 64-bit.
     */

> I'm not sure we need a warning either.  We didn't warn before
> 9d57e61bf723, and there's nothing the user needs to do anyway.

The warning was a nudge (probably too subtle) to get the user to upgrade
their DT to drop the 64-bit marker on the host bridge window. With your
suggestion, the DT change is not needed anymore - though it may still be
worth dropping the 64-bit marker.

Thanks,
Punit

[0] https://lore.kernel.org/linux-pci/CAMj1kXGF_JmuZ+rRA55-NrTQ6f20fhcHc=62AGJ71eHNU8AoBQ@mail.gmail.com/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
