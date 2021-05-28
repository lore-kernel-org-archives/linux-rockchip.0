Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40225C2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:47:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD2C9613B6
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:47:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DD2C9613B6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uopwunaulUJ6ih3GWs3eSE0IJABvMbkf3tNfgnrCarQ=; b=KfFVeLgC5Otssv
	QQC3VNwV3FPZf33IHvU0wwf3ZKPXmfnI5DhAKOezvadK88hBL1Yq2v/Tr7xd8lBIB7usURWRL4AJw
	r08lMvOLnWSp2Dzo6bbDDwc80JJkq1051MmN7PkW98H/dji2Bu1KYsE86AE4Dhse5/5roDEV7roPl
	u4UU6R5qsdQwkUaYGrgypvML+pN0kCzc9ec8uDyICC+U76hvJMzG6s8LJB3ejY0xC1JpcQuma1fGT
	7/lxvRS1qFSM/1A5DG0qjYA24t9Wu1dHYdwhD+BfDsuVkoRLK8XssEZZCQIC1jXIdpHl1jqdR5pvF
	U5b1JyQTfub1D12C30nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmcpZ-00Ft30-Oc; Fri, 28 May 2021 13:47:17 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmcTF-00FkX8-Vh; Fri, 28 May 2021 13:24:15 +0000
Received: by mail-pj1-x1033.google.com with SMTP id
 ep16-20020a17090ae650b029015d00f578a8so2524595pjb.2; 
 Fri, 28 May 2021 06:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=XZxKZYYhRdMgsx3AaVQx5MeKzRXu4NQ7JSlA+sHAgEs=;
 b=mraF9r984dsIkQsxnqkpHQWbcKxx1tEtELRMjGqQfqtAk6RBlxC13YGn+Txg+G1YqV
 nZxiCy59j+fiJlpYQbRrXUg+RlTxmBkb5JaloSa1rJpqMWntbBnadkhO5JSZIP8NyzXL
 3oMjfgDJknWcM5R/QbJAujRH/3WH04xUaxacX4OQwIkTk9kyrdBcGb/nYJjT2YQS0Udy
 MK3hYsVa0YCyQDYhfWPS6FzNxQmaEtQjw6yzK/gt5+wKXwkbIRhpQFOS9KzJXL3/5wd6
 DgLWspHyey/dMBdhO6taaK66EM4x4jHqnNPVRiorUcGKBCg85zLc2Or9y6e29MR156No
 +8gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=XZxKZYYhRdMgsx3AaVQx5MeKzRXu4NQ7JSlA+sHAgEs=;
 b=BZqzDVO04AUW56RRT4Wr6pg55eIeo4NvWl0kNB3NqJ0UvBL1E/P007rpyki4d95Y/a
 eLJfhdXjXwYTgkVRdCuynlmnao9Tl2nzi+uUkDUdr3Fpgdwg3oqFfax/Smm5+gHG6B8e
 pMk+3FqHDLygxscg22bv9B3vHxeQwNfpEJBQVCi+0HVkFBqL+PAR0caD0DMuEV432x3P
 7qe5Njrntdy5Y7PIrj6649S16fsx6UIIeAhxMEIRgkXPnyws9wNaBcU1tzHZT8IFybt0
 19VHGEhj/8Cn5Bdoo0FrbqY36UgU61S1U5diCMzGkVjSUvz32jNmPEuucNhBanP+PB+u
 ItHg==
X-Gm-Message-State: AOAM531t1mSL4bW7L+ljWDOA/pGVOK8Pw3rUlIpW5eqogv4Zqxdi2NH3
 6LDE9tXYhMdxSN3ho1S6wzU=
X-Google-Smtp-Source: ABdhPJxzQnRfEf+8rX9sKKQCix8COHH0CUiOVMrb3LwALp7WjJLs+JHLz2MIpglOh0XUY6iM2HBTxQ==
X-Received: by 2002:a17:90b:1955:: with SMTP id
 nk21mr4494591pjb.208.1622208252425; 
 Fri, 28 May 2021 06:24:12 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id t24sm4397544pji.56.2021.05.28.06.24.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 May 2021 06:24:11 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Rob Herring <robh+dt@kernel.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 PCI <linux-pci@vger.kernel.org>,  linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>,  "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>,  Alexandru Elisei
 <alexandru.elisei@arm.com>,  wqu@suse.com,  Robin Murphy
 <robin.murphy@arm.com>,  Peter Geis <pgwipeout@gmail.com>,  Ard Biesheuvel
 <ardb@kernel.org>,  Brian Norris <briannorris@chromium.org>,  Shawn Lin
 <shawn.lin@rock-chips.com>,  Bjorn Helgaas <helgaas@kernel.org>,  Bjorn
 Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH 1/2] PCI: of: Override 64-bit flag for non-prefetchable
 memory below 4GB
References: <20210527150541.3130505-1-punitagrawal@gmail.com>
 <20210527150541.3130505-2-punitagrawal@gmail.com>
 <CAL_Jsq+Sp_Owe4V4WNh4jnuNJZ5jXxA+j4fW7564oPCy5Lu3ew@mail.gmail.com>
Date: Fri, 28 May 2021 22:24:06 +0900
In-Reply-To: <CAL_Jsq+Sp_Owe4V4WNh4jnuNJZ5jXxA+j4fW7564oPCy5Lu3ew@mail.gmail.com>
 (Rob Herring's message of "Thu, 27 May 2021 11:38:46 -0500")
Message-ID: <87h7inm1op.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_062414_099231_852BB720 
X-CRM114-Status: GOOD (  21.71  )
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

Rob Herring <robh+dt@kernel.org> writes:

> On Thu, May 27, 2021 at 10:06 AM Punit Agrawal <punitagrawal@gmail.com> wrote:
>>
>> Some host bridges advertise non-prefetable memory windows that are
>> entirely located below 4GB but are marked as 64-bit address memory.
>>
>> Since commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
>> flags for 64-bit memory addresses"), the OF PCI range parser takes a
>> stricter view and treats 64-bit address ranges as advertised while
>> before such ranges were treated as 32-bit.
>>
>> A PCI-to-PCI bridges cannot forward 64-bit non-prefetchable memory
>> ranges. As a result, the change in behaviour due to the commit causes
>> allocation failure for devices that are connected behind PCI host
>> bridges modelled as PCI-to-PCI bridge and require non-prefetchable bus
>> addresses.
>>
>> In order to not break platforms, override the 64-bit flag for
>> non-prefetchable memory ranges that lie entirely below 4GB.
>>
>> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
>> Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
>> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
>> Cc: Bjorn Helgaas <bhelgaas@google.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> ---
>>  drivers/pci/of.c | 8 ++++++--
>>  1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
>> index da5b414d585a..b9d0bee5a088 100644
>> --- a/drivers/pci/of.c
>> +++ b/drivers/pci/of.c
>> @@ -565,10 +565,14 @@ static int pci_parse_request_of_pci_ranges(struct device *dev,
>>                 case IORESOURCE_MEM:
>>                         res_valid |= !(res->flags & IORESOURCE_PREFETCH);
>>
>> -                       if (!(res->flags & IORESOURCE_PREFETCH))
>> +                       if (!(res->flags & IORESOURCE_PREFETCH)) {
>>                                 if (upper_32_bits(resource_size(res)))
>>                                         dev_warn(dev, "Memory resource size exceeds max for 32 bits\n");
>
> Based on Ard's explanation, doesn't this need to also check for
> !IORESOURCE_MEM_64?

Right - I was too focussed on the below case.
>
>> -
>> +                               if ((res->flags & IORESOURCE_MEM_64) && !upper_32_bits(res->end)) {
>
> res->end is the CPU address space. Isn't it the PCI address space we
> care about?

Indeed. I suspect the easiest way to check PCI addresses would be to
move the check to where the range property is being parsed.

I'll address both the comments with the next update.

Thanks,
Punit

>
>> +                                       dev_warn(dev, "Overriding 64-bit flag for non-prefetchable memory below 4GB\n");
>> +                                       res->flags &= ~IORESOURCE_MEM_64;
>> +                               }
>> +                       }
>>                         break;
>>                 }
>>         }
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
