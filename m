Return-Path: <SRS0=8ktI=LE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DF2FC47094
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 14:12:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C1FE4611AE
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 14:12:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C1FE4611AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJK11S/QqfLOx58BEPm+RrlYZFJexx4Q9J4erhTjf6U=; b=u8MgZznPxtX8TH
	UT/y48xjbIMCNsTqXxdEM4Y+Y9UMBntR8pcYqH98SNiSPnn62h8iI7dgWCLRcxtJX3DFjZ2Wua+Ry
	hwu2iQv8yNA4NCLAYWPyHXprfPfFFE8VezmV5E1IgXshAAY6/taFzLa+t9oHecFVsF5vY7eb21Gas
	23gCsKoyk0yCxatoQOgLT8uKR3lDpKOqsBqZMFqa/bADQ0YlW1oBVr9Z40kZr2VeHQSpf4iEk0zvE
	YdMidlv+oYsdSqcmrpKcQYUEj2l96QYqPxYEoqT4CG5xotMaI1vwzsh4vr64WklUPC7kOv8V7iYXW
	p7Zaj0TN74k/BQhxCbJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrLPv-0015qN-0r; Thu, 10 Jun 2021 14:12:19 +0000
Received: from mail-pl1-f179.google.com ([209.85.214.179])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrLPs-0015ph-Bd; Thu, 10 Jun 2021 14:12:17 +0000
Received: by mail-pl1-f179.google.com with SMTP id e1so1078816plh.8;
 Thu, 10 Jun 2021 07:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=AKAb5TeB5GVwZN1dfSsZMkCOE2IQAp/s3a/nTdKL9s8=;
 b=RguhKcjDLAidIuWmMdjadAJrThv8iL+sGlVO6ohEOOamg+UnR1Rk3sGHHdB/aVnnnx
 KHaDwtnZm0YaZ0bNfp6TG5uVuuTEWMK52WRIh7tRcHBeAZ2anbRj48GefXe8Az2mcgFe
 wrYq/Cl6Qh3gsZjnb+krZxTL62YdKQU8gvKf+vVtgOY8zKksoTLUFBKJiOyOU5AucnpY
 tzlb/T3McMQvIZ95cQgvXJT/87cIaVl2DzBjdsXrBvyjNJAC1eiMfDHz734+P7g5ZES3
 2qrvAzTOYSvAYhOIcNvft/nlmBF0pm1bCoEEd0Atrbs6RVWUrBJHTqFhWZ7ScnEqXAZ2
 M5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=AKAb5TeB5GVwZN1dfSsZMkCOE2IQAp/s3a/nTdKL9s8=;
 b=LEn+8/QH+NoUy2dmLpOrybRFN3cQKN1NtX2is7KdmTp+lqB80cNuazGKIQvhtmEIs7
 1PZH5xkHIfZXu1kA3e0Gaz/llrLlRjS86b2tBUKszmF5ju6oJwDJFNySmK5FMoJ3/2Jy
 IIhNrfTCm7czKGSuQXq8FMEnsl1heJmVeh9F1orPM8AhoxEHQCeqmjzlhvCEET9S0USQ
 /1DrgktaTZUsjPAp+e3JEKSSmZqSW8WEWbLfHc4wE1g8YpP/vS7UITiG9vkXZKd9DA4Q
 fT41wzUM7RYifPV4KwQJYMXC3tF+nGvSkluc8pi8Jg2ZHj6w/DWsYubvYmtIradlil/P
 q7Tg==
X-Gm-Message-State: AOAM5325wEC7697uzdVVAS8lQjPy2NRNZXRJUFfbGtvAOqW9hsVUBsH0
 NTsHaS7RYQpDcnMQ/8Tl+NF8mgMTmFV4Pg==
X-Google-Smtp-Source: ABdhPJxSS23KMky7aWpo6xT/GMWrgwMd0tgex+K2wIOykt1ER6+OlUghonXSCmSC03AKRZ33FdfJbg==
X-Received: by 2002:a17:90a:d205:: with SMTP id
 o5mr3633905pju.181.1623334274948; 
 Thu, 10 Jun 2021 07:11:14 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id q4sm2663079pfg.3.2021.06.10.07.11.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jun 2021 07:11:12 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Vidya Sagar <vidyas@nvidia.com>,  robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org,  alexandru.elisei@arm.com,  wqu@suse.com,
 robin.murphy@arm.com,  pgwipeout@gmail.com,  ardb@kernel.org,
 briannorris@chromium.org,  shawn.lin@rock-chips.com
Subject: Re: [PATCH v3 2/4] PCI: of: Relax the condition for warning about
 non-prefetchable memory aperture size
References: <20210610040427.GA2696540@bjorn-Precision-5520>
Date: Thu, 10 Jun 2021 23:11:10 +0900
In-Reply-To: <20210610040427.GA2696540@bjorn-Precision-5520> (Bjorn Helgaas's
 message of "Wed, 9 Jun 2021 23:04:27 -0500")
Message-ID: <87y2bhkdxd.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_071216_424836_C0447369 
X-CRM114-Status: GOOD (  32.08  )
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

> On Wed, Jun 09, 2021 at 12:36:08AM +0530, Vidya Sagar wrote:
>> On 6/7/2021 4:58 PM, Punit Agrawal wrote:
>> > 
>> > Commit fede8526cc48 ("PCI: of: Warn if non-prefetchable memory
>> > aperture size is > 32-bit") introduced a warning for non-prefetchable
>> > resources that need more than 32bits to resolve. It turns out that the
>> > check is too restrictive and should be applicable to only resources
>> > that are limited to host bridge windows that don't have the ability to
>> > map 64-bit address space.
>>
>> I think the host bridge windows having the ability to map 64-bit address
>> space is different from restricting the non-prefetchable memory aperture
>> size to 32-bit.
>
>> Whether the host bridge uses internal translations or not to map the
>> non-prefetchable resources to 64-bit space, the size needs to be programmed
>> in the host bridge's 'Memory Limit Register (Offset 22h)' which can
>> represent sizes only fit into 32-bits.
>
>> Host bridges having the ability to map 64-bit address spaces gives
>> flexibility to utilize the vast 64-bit space for the (restrictive)
>> non-prefetchable memory (i.e. mapping non-prefetchable BARs of endpoints to
>> the 64-bit space in CPU's view) and get it translated internally and put a
>> 32-bit address on the PCIe bus finally.
>
> The vastness of the 64-bit space in the CPU view only helps with
> non-prefetchable memory if you have multiple host bridges with
> different CPU-to-PCI translations.  Each root bus can only carve up
> 4GB of PCI memory space for use by its non-prefetchable memory
> windows.
>
> Of course, if we're willing to give up the performance, there's
> nothing to prevent us from using non-prefetchable space for
> *prefetchable* resources, as in my example below.
>
> I think the fede8526cc48 commit log is incorrect, or at least
> incomplete:
>
>   As per PCIe spec r5.0, sec 7.5.1.3.8 only 32-bit BAR registers are defined
>   for non-prefetchable memory and hence a warning should be reported when
>   the size of them go beyond 32-bits.
>
> 7.5.1.3.8 is talking about non-prefetchable PCI-to-PCI bridge windows,
> not BARs.  AFAIK, 64-bit BARs may be non-prefetchable.  The warning is
> in pci_parse_request_of_pci_ranges(), which isn't looking at
> PCI-to-PCI bridge windows; it's looking at PCI host bridge windows.
> It's legal for a host bridge to have only non-prefetchable windows,
> and prefetchable PCI BARs can be placed in them.
>
> For example, we could have the following:
>
>   pci_bus 0000:00: root bus resource [mem 0x80000000-0x1_ffffffff] (6GB)
>   pci 0000:00:00.0: PCI bridge to [bus 01-7f]
>   pci 0000:00:00.0:   bridge window [mem 0x80000000-0xbfffffff] (1GB)
>   pci 0000:00:00.0:   bridge window [mem 0x1_00000000-0x1_7fffffff 64bit pref] (2GB)
>   pci 0000:00:00.1: PCI bridge to [bus 80-ff]
>   pci 0000:00:00.1:   bridge window [mem 0xc0000000-0xffffffff] (1GB)
>   pci 0000:00:00.1:   bridge window [mem 0x1_80000000-0x1_ffffffff 64bit pref] (2GB)
>
> Here the host bridge window is 6GB and is not prefetchable.  The
> PCI-to-PCI bridge non-prefetchable windows are 1GB each and the bases
> and limits fit in 32 bits.  The prefetchable windows are 2GB each, and
> we're allowed but not required to put these in prefetchable host
> bridge windows.
>
> So I'm not convinced this warning is valid to begin with.  It may be
> that this host bridge configuration isn't optimal, and we might want
> an informational message, but I think it's *legal*.

By "optimal" - are you referring to the use of non-prefetchable space
for prefetchable window?

Also, if the warning doesn't apply to PCI host bridge windows, should I
drop it in the next update? Or leave out this and the next patch to be
dealt with separately.

Thanks,
Punit

[...]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
