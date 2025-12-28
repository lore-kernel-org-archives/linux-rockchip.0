Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F7EFE784BE
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Dec 2025 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOt/fL7MTgKJOdyxwn5Jw4s8WJ9fmFs9/+5yK5NSpYE=; b=Dj7Dbx1Up1nDxU
	blfkA6I0T2eXl9Jr8KBjlb8gkym5BwSvQBywY6TgfHfSvesDLBxVRdJkYS1UtEGyUR+8+dS/DROBh
	P0YzsD6NEaX6nNT5kApK2tL71vJKjsfjUYW+Xed1S7JXv7g6cspNawoPi95+g1RBeo8bEbEUL++e8
	aC+CXgHEjc7GqB0Zem3dig5T4KA9ReXobsfJ7Y6xjXGN9cyXsyAXi+cbRYwv+UzhQ5nSMIS8ZEekQ
	ljvSGfuNSb+5SiD2pJOPVHMayaBIJshqhd36iuQQeTwAiyp+sfzHLtbSGg6YGp92lZ8cgCvds3WmQ
	7BxTREA3nJNoAoIZoU1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZoXK-00000002ecZ-3v4l;
	Sun, 28 Dec 2025 11:02:10 +0000
Received: from out-170.mta1.migadu.com ([2001:41d0:203:375::aa])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZoXH-00000002ec5-0cxS
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Dec 2025 11:02:09 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1766919721;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ORPbeGCezq2RycIES2ovg1z4YfgPj7odDnKIXufBjpA=;
	b=c8NdSiEaF6lKUnk0ll/c64CeXpwq2rdYQK8WhTMFD1ZY02PdKPsERv1eEGAZ5mJnec54aT
	WUb+8WrmhF+ukFgwkQ/JJs6/92iJM5j9AheOxZeLnVZW6G5lJtr7p0gP58/KYMZq7RQG7B
	2bOjtL7LWKS33Qd9YBkk56VsGZqzg+KCQ3kNZzKiERrJXt3hdebhvCXfi+0ML0+fLllAud
	t7EGNnmGP7+KzbTiaI0l6Y9DaBnr5ROy3MljS5v/YhAJfeAjOvJQ57sz5dg8LUAT/h6juy
	wkA4+BnRqAVhB3cZHQSl0e4cMNb1hfgFDOJOnQ3mCTDmmuYRS1Q+9j8wC2Lw9g==
Date: Sun, 28 Dec 2025 12:01:54 +0100
Message-Id: <DF9SRIU7GHOX.1G7OOKX72555M@cknow-tech.com>
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
In-Reply-To: <aU_2VbFLPKqcyvp_@smile.fi.intel.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251228_030207_959395_51875E22 
X-CRM114-Status: GOOD (  19.24  )
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

On Sat Dec 27, 2025 at 4:08 PM CET, Andy Shevchenko wrote:
> On Sun, Dec 21, 2025 at 03:01:11PM +0100, Diederik de Haas wrote:
>> On Fri Oct 24, 2025 at 4:49 AM CEST, Michael Wu wrote:
>> > With current extcon_dev_unregister() timing, ida_free is before
>> > device_unregister(), that may cause current id re-alloc to another
>> > device in extcon_dev_register() context but sysfs filename path not
>> > removal completed yet.
>> 
>> I periodically get errors like this:
>> 
>> [    7.116152] rockchip-usb2phy fe8a0000.usb2phy: error -EEXIST: failed to register extcon device
>> [    7.117005] rockchip-usb2phy fe8a0000.usb2phy: probe with driver rockchip-usb2phy failed with error -17
>> 
>> This was today on a NanoPi R5S (rk3568), but I have seen it before and
>> on multiple devices. They are all Rockchip based, but that's (quite)
>> possible because that's what I use the most (and where I pay quite a bit
>> of attention to dmesg).
>> 
>> Slightly fuller dmesg output of the above error is here:
>> https://paste.sr.ht/~diederik/42c6b3405386c823cd9f837d73a9a32e810361be
>> And via 'journalctl' I hopefully got the full dmesg output:
>> https://paste.sr.ht/~diederik/7a6109115b1ad85290de482db091dad3759ec159
>> 
>> Here are 2 similar logs, this time on PineTab2 and Quartz64-A (both rk3566)
>> https://paste.sr.ht/~diederik/cfe606801d3dab0267bea7049687d24c0d6e8d71
>> 
>> Those are all the logs I have saved, but it has happened several times
>> besides that. But most times I just rebooted and didn't save the log.
>> Today I looked a bit further, found commit 7bba9e81a6fb, searched on
>> lore.k.o and found this patch.
>> 
>> So I'm wondering whether this patch would also fix 'my' issue?
>> Or is this a different issue?
>
> But have you had a chance to test it? The code looks correct after this patch
> as the first we remove the struct device and all associated data (including
> sysfs nodes) and then remove the ID from the list. Without that there is a
> window to get the same id for the devices that is pending to be removed.

I've build a kernel with it and it will be part of my kernels going
forward. But it can take many months before the issue shows up again.
So if I don't get it in a year, then I'm going to *assume* it's probably
fixed.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
