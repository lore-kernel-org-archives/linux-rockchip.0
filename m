Return-Path: <SRS0=qhcO=LK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7740C48BE6
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 12:53:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D0DA60FE9
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 12:53:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D0DA60FE9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fmcM877MYZbwRi63YNHXgaNi6DhfZRfkwbyGuvG7Sw=; b=oxK9C7XaiThlXH
	zwnxcDB4b9MGr58CkAWM6SByMGYtEz2UZYV4OQbAy9JiFmv+zx+UUCiDJWsVOBkiUyOAu3pttyyqJ
	SEq6kha3GQ0A2QtWmutHftnrU2VS9uU1fn8cnJ/JgJZtlKwmoAjUzu3ptEZ3l0vvEFn+nvZ7hi1OW
	uWfa1YX3OOjcVEagTeqGUSbdmFhcJLkx5nebVuGqmvW+cbmZl9haKiCZynzuySNqV5EV713wlIKpV
	kYSSEkJmr668+rNmx8KyQ3j/6bTxvJpMJ04sW8YiICW6Wld9vwjsR4DBjaF8qt1dWpY1sZ1DKIz8I
	P2LX5xObV8SGSQou7haA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltV3I-006Ja7-1k; Wed, 16 Jun 2021 12:53:52 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltV3E-006JZC-VV; Wed, 16 Jun 2021 12:53:50 +0000
Received: by mail-pf1-x42a.google.com with SMTP id h12so2160142pfe.2;
 Wed, 16 Jun 2021 05:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=f4MrgwtY3/W6oCFjtro8tz651lyRS/Kv4xgNCHNchVM=;
 b=Y4T9AA0WWUCuyhxDCOgE0074vUGHK/oRcYfNE1lHhkqrxCLP9BCCNT973sEJMyUb9w
 kwm+iM8/CpAT43FscZpF68Z3La9iKUPax7GnLBJiTOQVqGnMk2Tw9CR/OYqqiScNehHB
 sFVjcZ5yZRqfiD6PK7VGeuWGvzqQ9vKvEQ5vtv3JJoAuijyu1ZpgWeFbr1OrHIoQGfFa
 wmpV2H/29r0Pe67NLDzzQujobRGpAKW+SkupLPS/j98HxB4t+7h5aikyl4RDyBMlDGT5
 vuRmPeI2Kwb5x+6l0HLTBUnKoenhLKIIsvu8sp1YuP6VQgRqiJ4DaIz3qiiMTXKVJYrR
 0yzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=f4MrgwtY3/W6oCFjtro8tz651lyRS/Kv4xgNCHNchVM=;
 b=tAOQYDk/gqZLgGZlBbFuB6dcjo2cSCXfx8hrhz0Zf9KoUJVw6v2/fKVn2A7mueQDbR
 O1ienQoftM7gzgLoFOQ57ovqSkc/doD5nBEFGo+RXFsxgI8NS0MkyjDU81Vn00TTFf/A
 ain74cP3VxB/m2Dj+RHvCFUhXItTKW6xA3ro5Wz4HdrNJaJELqR2LjmXftKqZWSzjKZ9
 szx85uYKwY2ykF34sJyOryGFsOOvdq4AI61hnFzzCbFihg3pZRXU1HT0pLN4dUyP2Ni6
 6bp6Wjr9K2pe1DWiKzS7Ow/Sc6lOKJX0V5gcxPTCZhmoApphyyh/+0Lu1597FmkGL95L
 EJEQ==
X-Gm-Message-State: AOAM53318lLxxVerMpEPKebC+OgW7tmETLc25Me+6Pf/OnUfglIwz8/b
 vHOj657PsA/kKKgg/WU5nVk=
X-Google-Smtp-Source: ABdhPJzi6fInaHylrnU5udt0FIOIHzxqnDRVrcq83azGckONk8DTBFxG+DNMq+oLtnT+qKE/MYi1YA==
X-Received: by 2002:aa7:9ecd:0:b029:2fc:779:b187 with SMTP id
 r13-20020aa79ecd0000b02902fc0779b187mr7716240pfq.28.1623848027861; 
 Wed, 16 Jun 2021 05:53:47 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id p9sm2211326pfo.106.2021.06.16.05.53.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 05:53:47 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>,  Marc Zyngier <maz@kernel.org>,
 Leonardo Bras <leobras.c@gmail.com>,  "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>,  linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>,  "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>,  PCI <linux-pci@vger.kernel.org>,
 Alexandru Elisei <alexandru.elisei@arm.com>,  wqu@suse.com,  Robin Murphy
 <robin.murphy@arm.com>,  Peter Geis <pgwipeout@gmail.com>,  Ard Biesheuvel
 <ardb@kernel.org>,  Brian Norris <briannorris@chromium.org>,  Shawn Lin
 <shawn.lin@rock-chips.com>,  Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v4] PCI: of: Clear 64-bit flag for non-prefetchable
 memory below 4GB
References: <20210614230457.752811-1-punitagrawal@gmail.com>
 <CAL_JsqLhOFHwBwtMFMnuEaXsDs9sqzUPS=68t+bDnbFsfXgo+Q@mail.gmail.com>
Date: Wed, 16 Jun 2021 21:53:45 +0900
In-Reply-To: <CAL_JsqLhOFHwBwtMFMnuEaXsDs9sqzUPS=68t+bDnbFsfXgo+Q@mail.gmail.com>
 (Rob Herring's message of "Tue, 15 Jun 2021 15:18:15 -0600")
Message-ID: <878s3at1gm.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_055349_057559_892747E7 
X-CRM114-Status: GOOD (  17.53  )
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

Hi Rob,

Rob Herring <robh+dt@kernel.org> writes:

> On Mon, Jun 14, 2021 at 5:05 PM Punit Agrawal <punitagrawal@gmail.com> wrote:
>>
>> Alexandru and Qu reported this resource allocation failure on
>> ROCKPro64 v2 and ROCK Pi 4B, both based on the RK3399:
>>
>>   pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff 64bit]
>>   pci 0000:00:00.0: PCI bridge to [bus 01]
>>   pci 0000:00:00.0: BAR 14: no space for [mem size 0x00100000]
>>   pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
>>
>> "BAR 14" is the PCI bridge's 32-bit non-prefetchable window, and our
>> PCI allocation code isn't smart enough to allocate it in a host
>> bridge window marked as 64-bit, even though this should work fine.
>>
>> A DT host bridge description includes the windows from the CPU
>> address space to the PCI bus space.  On a few architectures
>> (microblaze, powerpc, sparc), the DT may also describe PCI devices
>> themselves, including their BARs.
>>
>> Before 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
>> flags for 64-bit memory addresses"), of_bus_pci_get_flags() ignored
>> the fact that some DT addresses described 64-bit windows and BARs.
>> That was a problem because the virtio virtual NIC has a 32-bit BAR
>> and a 64-bit BAR, and the driver couldn't distinguish them.
>>
>> 9d57e61bf723 set IORESOURCE_MEM_64 for those 64-bit DT ranges, which
>> fixed the virtio driver.  But it also set IORESOURCE_MEM_64 for host
>> bridge windows, which exposed the fact that the PCI allocator isn't
>> smart enough to put 32-bit resources in those 64-bit windows.
>>
>> Clear IORESOURCE_MEM_64 from host bridge windows since we don't need
>> that information.
>>
>> Fixes: 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit memory addresses")
>> Reported-at: https://lore.kernel.org/lkml/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com/
>> Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
>> Reported-by: Qu Wenruo <wqu@suse.com>
>> Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
>> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
>> Cc: Bjorn Helgaas <bhelgaas@google.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>
> I think we've beat this one to death.
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks for taking a look. Hopefully everybody is happy with this
version and the patch can get merged soon.

I assume Bjorn will pick this up as a fix with Alex's Tested-by tag. Let
me know if any other steps are needed.

Thanks,
Punit

[...]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
