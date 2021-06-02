Return-Path: <SRS0=F5E9=K4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A1DBC47083
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 13:39:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C72BB613B1
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 13:39:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C72BB613B1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=YLNmmw2A68wBJPZjStfybeg8tWakyBXlwbpY9YQq8Po=; b=TjZB8CBESIqpt3
	ysAntXQqqLJbORgL+RLl1Szt56HVKS9hwhj3jwjT2/OLY/1IkT4CMswhS2+Y5XSgkcUIIguCe4NI7
	qkonDO8wd6GtsXpEhqLKfpNFScrdERr13CHz6cM3GWl0MEJPmx9In3RzfcrDBcr/vBn7IDZFwXNp+
	93njRxJmjH5RYn3qQaT2zrTkv6SuuPU1/mVNNfLdmGSbRnssEunW2qhhMEa3IAcza8kUY5cJ0lsG/
	xyxth8cfQ4eBfxQ/EAJZcr6Z7zywYwxsUAdQII6XknkRAN+Ltadnx8JKWZxYa89m7WIUxL4NiWzJl
	Fq0V9dHiY+G72L8d/r6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loR5Y-004OSe-9v; Wed, 02 Jun 2021 13:39:16 +0000
Received: from mail-pf1-f169.google.com ([209.85.210.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loR5R-004OS1-V2; Wed, 02 Jun 2021 13:39:13 +0000
Received: by mail-pf1-f169.google.com with SMTP id t28so2183013pfg.10;
 Wed, 02 Jun 2021 06:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:message-id:user-agent
 :mime-version; bh=f1v5FHYhbCvM3rkiC5mXWqe4jF0O7VDT+9Sw8nt4QrE=;
 b=la37kS2tGZ5wS+YOFc4ipjnpe4YfjPKArof4KNyXApYXdRMjeDnRkN16sya48NGrAr
 eWf1+DfUAZxLTCfGm8/uZdWj63+jPTcyRqkvZPRyAznfKPnSW1vJvfizzLydGXnpTrIB
 +IZC4EHJZIIOm+6CyF7x8b9tSWEN/R+a/Zi0PvQPLgehfZm3y1TpBpMsCUBrL0XtQEZA
 Uwbt/LT9cQHc4XF1Es6PlE5ld12hasixV2HIkVzIJNZVoUl5qFr/GlJp2tnsIDxy7aTe
 f7uSFNsW5XwD6Irz5m3lLrxFGx8X0DyIsbz+/ARI20OMKwO45YEJ8n6dF65uaZ0W4xOn
 PZWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:message-id
 :user-agent:mime-version;
 bh=f1v5FHYhbCvM3rkiC5mXWqe4jF0O7VDT+9Sw8nt4QrE=;
 b=PqCpWZKWctFjojzU0LGueq162mKETyQxXvYvDBUMx1TYeJMVrVmost+OPW1D9ITyRk
 RlBSwTZFO2kLmIfJw4tjY6krDH4F0If3Zwqjao3oAGPvwyKpTslQH+BqdQwlHJB7jJOa
 0CoPKD8dJAxEA+sCv+UfjVQ3RjRD8M2KRXIFegeGpXXouedG3kWUUHkr1ipPYiCxXUVI
 xTES2ZrBtI1vxaTH2IQyBG2BJ/gT0+cen698UoTrgjlZ0GuZ/5nS2ObvY2gie7ppRErz
 oq+UtEs1Yg1cGVFtegJyq4520QY7LBES3aKWVUPLk/6sF24QybLi7b2IHtKtFZh++17q
 XY0Q==
X-Gm-Message-State: AOAM5303d4PgbgcyZWwvO9cy+5rY/tOY5I2tjh7Aa/Yu84LcryU/Sov5
 CYzc2a/NRUwRWK0FI4t49sE=
X-Google-Smtp-Source: ABdhPJxDYB9rTt3yq2YQf2X9F06I256GfXEOXkwci5Oxy32nY12/dDyYWEsAwcQcd2TKN6+xi86aYw==
X-Received: by 2002:a63:7b52:: with SMTP id k18mr22562463pgn.381.1622641087130; 
 Wed, 02 Jun 2021 06:38:07 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id l5sm15602287pff.20.2021.06.02.06.38.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 06:38:06 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 PCI <linux-pci@vger.kernel.org>,  Linux ARM
 <linux-arm-kernel@lists.infradead.org>,  Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>,  Alexandru Elisei
 <alexandru.elisei@arm.com>,  wqu@suse.com,  Robin Murphy
 <robin.murphy@arm.com>,  Peter Geis <pgwipeout@gmail.com>,
 briannorris@chromium.org,  shawn.lin@rock-chips.com,  Bjorn Helgaas
 <helgaas@kernel.org>,  Rob Herring <robh+dt@kernel.org>,  Bjorn Helgaas
 <bhelgaas@google.com>
Subject: Re: [PATCH v2 1/4] PCI: of: Override 64-bit flag for
 non-prefetchable memory below 4GB
References: <20210531221057.3406958-1-punitagrawal@gmail.com>
 <20210531221057.3406958-2-punitagrawal@gmail.com>
 <CAMj1kXHkZhgp3y_1dvKjfiEbwWDooCY0X+0HZutn5ZrsRGk15w@mail.gmail.com>
Date: Wed, 02 Jun 2021 22:38:03 +0900
Message-ID: <87tumgl744.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_063910_025402_BED55BF9 
X-CRM114-Status: GOOD (  25.87  )
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

Hi Ard,

Thanks for the comments.

Ard Biesheuvel <ardb@kernel.org> writes:

> Hi Punit,
>
> On Tue, 1 Jun 2021 at 00:11, Punit Agrawal <punitagrawal@gmail.com> wrote:
>>
>> Some host bridges advertise non-prefetable memory windows that are
>
> typo ^

Oops. Fixed locally.

>> entirely located below 4GB but are marked as 64-bit address memory.
>>
>> Since commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
>> flags for 64-bit memory addresses"), the OF PCI range parser takes a
>> stricter view and treats 64-bit address ranges as advertised while
>> before such ranges were treated as 32-bit.
>>
>> A PCI host bridge that is modelled as PCI-to-PCI bridge cannot forward
>
> It is the root port which is modeled as a P2P bridge. The root port(s)
> together with the host bridge is what makes up the root complex.
>
>
>> 64-bit non-prefetchable memory ranges. As a result, the change in
>> behaviour due to the commit causes allocation failure for devices that
>> require non-prefetchable bus addresses.
>>
>
> AIUI, the problem is not that the device requires a non-prefetchable
> bus address, but that it fails to allocate a 32-bit BAR from a 64-bit
> non-prefetchable window.

That's right. Is the below (borrowed from your explanation) clearer?

    A PCI root port modelled as a PCI-to-PCI bridge cannot forward 64-bit
    non-prefetchable memory ranges. As a result, the change in behaviour due
    to the commit causes failure to allocate 32-bit BAR from a 64-bit
    non-prefetchable window.


If there are no further comments on the set, I'll send an update in a
couple of days.

Thanks,
Punit

>> In order to not break platforms, override the 64-bit flag for
>> non-prefetchable memory ranges that lie entirely below 4GB.
>>
>> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
>> Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
>> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
>> Cc: Bjorn Helgaas <bhelgaas@google.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>>
>> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
>> ---
>>  drivers/pci/of.c | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
>> index da5b414d585a..e2e64c5c55cb 100644
>> --- a/drivers/pci/of.c
>> +++ b/drivers/pci/of.c
>> @@ -346,6 +346,14 @@ static int devm_of_pci_get_host_bridge_resources(struct device *dev,
>>                                 dev_warn(dev, "More than one I/O resource converted for %pOF. CPU base address for old range lost!\n",
>>                                          dev_node);
>>                         *io_base = range.cpu_addr;
>> +               } else if (resource_type(res) == IORESOURCE_MEM) {
>> +                       if (!(res->flags & IORESOURCE_PREFETCH)) {
>> +                               if (res->flags & IORESOURCE_MEM_64)
>> +                                       if (!upper_32_bits(range.pci_addr + range.size - 1)) {
>> +                                               dev_warn(dev, "Clearing 64-bit flag for non-prefetchable memory below 4GB\n");
>> +                                               res->flags &= ~IORESOURCE_MEM_64;
>> +                                       }
>> +                       }
>>                 }
>>
>>                 pci_add_resource_offset(resources, res, res->start - range.pci_addr);
>> --
>> 2.30.2
>>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
