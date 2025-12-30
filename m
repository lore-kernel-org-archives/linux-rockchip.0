Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80E46EE01FF
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 14:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U91eelMtt9TkUhz13dIf9D9rXjZTk2NxB6rCIWp58bg=; b=Ef6ZOyX8Zet4ir
	34JDJbjEL2IA4tb89l/xg8e4NoMQJLBtZ0TvQEklgVCjxa52tXE4HOADdB3r/AamQwjyka79ykuAd
	dPVW+ZLE22DJFXGdA3H1W1VAws4cuqtmS2i0b6heCQJL77tSZTW9hj9x6/Tpx+njtUuLP0/bMhNtU
	bLBas7wQrCZw5hyQDAsfVOSxxBh9EA04lhPumOlZUzfzlOxS8zSSAQ3JxJi0gbRWunrHi0AbJIEmS
	z/T77OuaEwdZeX0jNpUeb7KMY3qeNsS5VU3xZB2lB5KTsSUzEef7Ld7C7buR1LXGz4kZIOLke855U
	TrzGu1x3rZVKXNpBqNDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaaeV-00000004w0L-0G9w;
	Tue, 30 Dec 2025 14:24:47 +0000
Received: from out-185.mta0.migadu.com ([91.218.175.185])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaaeR-00000004vzu-3qb8
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Dec 2025 14:24:46 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1767104681;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=F65DHavl98UgPL/qkMsKtPU/1fyxHhQMwzJ1DLVv1GQ=;
	b=U1e62Vp3WHgQQdDGIJddA/nZXacR7Q2CqdL918d/KN8//XhURHQPLLoFgXlYzbJsgrSVqE
	89sULcLC/HWWZBmeZzmmb2wYSf4rbcsj25GzsFo/ghBqm52ZKeJJbHCD8CvR4zJjpnqkkD
	iy738VjmOPycJMn9y4jvJ1X02dzbUfUklsoBDyZAv3M8hpkRu5AarFZmpQH45OS2dxjU0x
	TR2jgos0L5gyVs/v+AF55Vnghj5n13dYlvjhJBLMdp0MClONnr6EtyF7b91oSu9thJ8zwU
	3kZoxc2EPtdLaNN/wCS0CIJvMpkyQ5CnmvMSWzTkv/Uz3wOZ7EGAE16GI/tYhA==
Date: Tue, 30 Dec 2025 15:24:36 +0100
Message-Id: <DFBMBT98MEJA.2O0H79T59N5BL@cknow-tech.com>
Cc: "Michael Wu" <michael@allwinnertech.com>, <myungjoo.ham@samsung.com>,
 <cw00.choi@samsung.com>, <linux-kernel@vger.kernel.org>, "Dragan Simic"
 <dsimic@manjaro.org>, <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v3] extcon: Fixed sysfs duplicate filename issue
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>, "Diederik de
 Haas" <diederik@cknow-tech.com>
References: <20251024024946.16618-1-michael@allwinnertech.com>
 <DF3Y6Z8X4GC6.11WQOENQD4EDW@cknow-tech.com>
 <aU_2VbFLPKqcyvp_@smile.fi.intel.com>
 <DF9SRIU7GHOX.1G7OOKX72555M@cknow-tech.com>
 <aVFoNbsd13ufl7ge@smile.fi.intel.com>
 <DFB3BUDFOIN1.3IM5386T534NQ@cknow-tech.com>
 <aVO27QwEol-4OkV8@smile.fi.intel.com>
In-Reply-To: <aVO27QwEol-4OkV8@smile.fi.intel.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_062444_520068_F2292294 
X-CRM114-Status: GOOD (  33.14  )
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

On Tue Dec 30, 2025 at 12:26 PM CET, Andy Shevchenko wrote:
> On Tue, Dec 30, 2025 at 12:31:17AM +0100, Diederik de Haas wrote:
>> On Sun Dec 28, 2025 at 6:26 PM CET, Andy Shevchenko wrote:
>> > On Sun, Dec 28, 2025 at 12:01:54PM +0100, Diederik de Haas wrote:
>> >> On Sat Dec 27, 2025 at 4:08 PM CET, Andy Shevchenko wrote:
>> >> > On Sun, Dec 21, 2025 at 03:01:11PM +0100, Diederik de Haas wrote:
>> >> >> On Fri Oct 24, 2025 at 4:49 AM CEST, Michael Wu wrote:
>> >> >> > With current extcon_dev_unregister() timing, ida_free is before
>> >> >> > device_unregister(), that may cause current id re-alloc to another
>> >> >> > device in extcon_dev_register() context but sysfs filename path not
>> >> >> > removal completed yet.
>> >> >> 
>> >> >> I periodically get errors like this:
>> >> >> 
>> >> >> [    7.116152] rockchip-usb2phy fe8a0000.usb2phy: error -EEXIST: failed to register extcon device
>> >> >> [    7.117005] rockchip-usb2phy fe8a0000.usb2phy: probe with driver rockchip-usb2phy failed with error -17
>> >> >> 
>> >> >> This was today on a NanoPi R5S (rk3568), but I have seen it before and
>> >> >> on multiple devices. They are all Rockchip based, but that's (quite)
>> >> >> possible because that's what I use the most (and where I pay quite a bit
>> >> >> of attention to dmesg).
>> >> >> 
>> >> >> Slightly fuller dmesg output of the above error is here:
>> >> >> https://paste.sr.ht/~diederik/42c6b3405386c823cd9f837d73a9a32e810361be
>> >> >> And via 'journalctl' I hopefully got the full dmesg output:
>> >> >> https://paste.sr.ht/~diederik/7a6109115b1ad85290de482db091dad3759ec159
>> >> >> 
>> >> >> Here are 2 similar logs, this time on PineTab2 and Quartz64-A (both rk3566)
>> >> >> https://paste.sr.ht/~diederik/cfe606801d3dab0267bea7049687d24c0d6e8d71
>> >> >> 
>> >> >> Those are all the logs I have saved, but it has happened several times
>> >> >> besides that. But most times I just rebooted and didn't save the log.
>> >> >> Today I looked a bit further, found commit 7bba9e81a6fb, searched on
>> >> >> lore.k.o and found this patch.
>> >> >> 
>> >> >> So I'm wondering whether this patch would also fix 'my' issue?
>> >> >> Or is this a different issue?
>> >> >
>> >> > But have you had a chance to test it? The code looks correct after this patch
>> >> > as the first we remove the struct device and all associated data (including
>> >> > sysfs nodes) and then remove the ID from the list. Without that there is a
>> >> > window to get the same id for the devices that is pending to be removed.
>> >> 
>> >> I've build a kernel with it and it will be part of my kernels going
>> >> forward. But it can take many months before the issue shows up again.
>> >> So if I don't get it in a year, then I'm going to *assume* it's probably
>> >> fixed.
>> >
>> > I believe you may speed up the test case by creating two shell scripts that
>> > trying insmod / rmmod the same module in parallel.
>> 
>> I checked on several devices and the phy_rockchip_inno_usb2 module is
>> used by various other modules on all of them, so I can't just 'rmmod' it.
>> I guess it should technically be possible to remove all its dependencies
>> and then remove that module. I don't know if my skills are sufficient
>> for that and it feels like I'm mostly testing the robustness of the USB
>> subsystem.
>> 
>> As I regularly already get the following kernel warning
>> ``Warning! ehci_hcd should always be loaded before uhci_hcd and ohci_hcd, not after``
>> which often results in USB 2 ports not working, I have my doubts about
>> the robustness anyway.
>
> This is interesting issue, have you reported it to USB people (such as Alan Stern)?

Not yet. I was reasonably sure I had mentioned this issue before, but
when doing a search on lore.k.o I couldn't find it. I guess I only
'reported' it on IRC.

Interestingly enough, I did find another very recent mail/patch:
https://lore.kernel.org/all/20251230080014.3934590-1-chenhuacai@loongson.cn/

but looks like Greg doesn't like it ... and his suggestion (make the
kernel module built-in) was exactly the thing I wanted to try before
reporting it. If it's tristate it _should_ be able to be built as
module, but it's extremely unlikely I'll spend time on that though.

>> So I'll just keep an eye out if the ``sysfs: cannot create duplicate
>> filename`` error pops up again 'naturally' and report if/when it does.
>
> Good, please monitor it and try to collect logs for the further investigations,
> if required.

Will do. FWIW, Dragan asked me to enable DEBUG_DEVRES and share the
logs. Maybe they're useful for you too.
On Rock 5B (RK3588): https://paste.sr.ht/~diederik/2d8e0beced6477cc1abd28cd870ea76a1e413a9e
On NanoPi R5S (RK3568): https://paste.sr.ht/~diederik/1c4026d0c277b92391136bab4e80f64a989006f5

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
