Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D184EE0203
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 14:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TmW++HT8c1geQfMipoodXJuB7ZcheDoy5F1Pmg4bnw=; b=LuJncHqm2JGwlz
	mdgNKQawgASMrIAJ5+wJU0v/7Ydr3ffe9CA6NLX5l2KPk7ppPKVUFHqJBVJ33CcWSuDl1g5788bAk
	2139spzguKBGGoMxRtW1vEwKuYRifZawW/MY9FoiMXEhJRQJeATaP89h0rcbkVlr4qzrVAB9WO8QR
	gNe3tUu/o6QAQwzrV+/a1R6GRvfHRe6AsrdNkwFlECbSlbktx4hbukhjGPbNHjX//qqnC7Q/444VG
	cvKGs9GkFpjA1fmBou+RPN3gh8RCnmdbE34XdPg4pj1HQPtaS1R2jIJ4+CRQ8PHeJLs0GzM5VcRAu
	qWkF/Z+gzYhJgO9UzfVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaatq-00000004weL-2nmX;
	Tue, 30 Dec 2025 14:40:38 +0000
Received: from out-185.mta0.migadu.com ([91.218.175.185])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaatn-00000004wdw-1tm9
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Dec 2025 14:40:37 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1767105632;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ziEtXLcpFBCjfzgTqfbUWrGVwPN/l0EtRe61oQ0DM/A=;
	b=ON1iMg9Bde60GDrSW9qBWkAlnQa98vY6cncy+4tqwyL/LWvtXCV6Bw//W/q2W6z30znFrd
	iLuTO94uUBQBaKNtxIez5lr/Ds0XwLm/7R+JOFi7+isjI5Okbx5Zgo2C1jvXaLaFe0VfDT
	PAPMCiMYW1GCCYtojD6Z5P8fBndBcSEA2jdDeRf5JbKGYoA7Cq2Zep3oNSzPYS3NTLoCIq
	G+8tdWSPAexSdcS1D655pgtr+hbkstqh+mdZW4kX10J8EjfBhLPx/qsIpQ8wwi+bRcXdtX
	Ale7LYAd9602sceNKzCqZJF4dmkzphU/xR7hAOxuDvlCT9BbnF0lQu4TBXI4+g==
Date: Tue, 30 Dec 2025 15:40:27 +0100
Message-Id: <DFBMNYF0U5PK.24YOAUZFZ0ESB@cknow-tech.com>
Cc: "Huacai Chen" <chenhuacai@kernel.org>, "Alan Stern"
 <stern@rowland.harvard.edu>, <linux-usb@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>, "Shengwen Xiao"
 <atzlinux@sina.com>, <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] USB: OHCI/UHCI: Add soft dependencies on ehci_hcd
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Huacai Chen"
 <chenhuacai@loongson.cn>
References: <20251230080014.3934590-1-chenhuacai@loongson.cn>
 <2025123049-cadillac-straggler-d2fb@gregkh>
In-Reply-To: <2025123049-cadillac-straggler-d2fb@gregkh>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_064035_779350_D10129CC 
X-CRM114-Status: GOOD (  20.45  )
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

On Tue Dec 30, 2025 at 9:15 AM CET, Greg Kroah-Hartman wrote:
> On Tue, Dec 30, 2025 at 04:00:14PM +0800, Huacai Chen wrote:
>> Commit 9beeee6584b9aa4f ("USB: EHCI: log a warning if ehci-hcd is not
>> loaded first") said that ehci-hcd should be loaded before ohci-hcd and
>> uhci-hcd. However, commit 05c92da0c52494ca ("usb: ohci/uhci - add soft
>> dependencies on ehci_pci") only makes ohci-pci/uhci-pci depend on ehci-
>> pci, which is not enough and we may still see the warnings in boot log.
>> So fix it by also making ohci-hcd/uhci-hcd depend on ehci-hcd.
>> 
>> Cc: stable@vger.kernel.org
>> Reported-by: Shengwen Xiao <atzlinux@sina.com>
>> Signed-off-by: Huacai Chen <chenhuacai@loongson.cn>
>> ---
>>  drivers/usb/host/ohci-hcd.c | 1 +
>>  drivers/usb/host/uhci-hcd.c | 1 +
>>  2 files changed, 2 insertions(+)
>> 
>> diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
>> index 9c7f3008646e..549c965b7fbe 100644
>> --- a/drivers/usb/host/ohci-hcd.c
>> +++ b/drivers/usb/host/ohci-hcd.c
>> @@ -1355,4 +1355,5 @@ static void __exit ohci_hcd_mod_exit(void)
>>  	clear_bit(USB_OHCI_LOADED, &usb_hcds_loaded);
>>  }
>>  module_exit(ohci_hcd_mod_exit);
>> +MODULE_SOFTDEP("pre: ehci_hcd");
>
> Ick, no, this way lies madness.  I hate the "softdep" stuff, it's
> usually a sign that something is wrong elsewhere.
>
> And don't add this _just_ to fix a warning message in a boot log, if you
> don't like that message, then build the module into your kernel, right?
>
> And I really should just go revert 05c92da0c524 ("usb: ohci/uhci - add
> soft dependencies on ehci_pci") as well, that feels wrong too.

FWIW, I've been seeing this warning on several of my Rockchip based
devices as well. I thought I had already mentioned that on some ML, but
couldn't find it on lore.k.o ... turns out I reported it on my 'own' ML:
https://lists.sr.ht/~diederik/pine64-discuss/%3CDD65LB64HB7K.15ZYRTB98X8G2@cknow.org%3E
(and likely on #linux-rockchip IRC channel)

Most of it is just my research notes, but the last post also had this:

```
I checked the last 20 boots on my devices to see that warning (or not).
Device				Number of times that warning showed up
Rock64 (rk3328)			16x
RockPro64 (rk3399)		11x
Quartz64 Model A (rk3566)	 7x
Quartz64 Model B (rk3566)	14x
PineTab2 (rk3566)		17x
NanoPi R5S (rk3568)		13x
Rock 5B (rk3588)		12x
```

While I generally don't like seeing warning messages, it often also
resulted in USB2 ports not working. Maybe even every time, but I only
notice it when I actually tried to use one of the USB2 ports.

The first post mentioned what I 'assume' to be the problem:
```
CONFIG_USB_XHCI_HCD=m
CONFIG_USB_EHCI_HCD=m
CONFIG_USB_OHCI_HCD=m
```

So I guess USB_EHCI_HCD doesn't work with '=m'.

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
