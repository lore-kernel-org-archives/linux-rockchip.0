Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51E57FA3734
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Jan 2026 11:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EekmTLSNxrsnbZW5y2qwpfJshkcAvSCHf28bijTC1Q8=; b=01vBYisG2i2DPs
	l1rc0c9w4kCzKteI2cU3oEBxj2eZBCukWhQZ+jJ6hPDPI2t0Kun7Esna/ValWpGMPl5sfvK56mezS
	gvVK75q/csj+Ksi27501t+g1dXzqQge1Gqq1QMoF81YchHMiHFi1RQ2fOZTApQn0aYXg8YN5/LOlH
	1B6viAnkxH1VX8kRZI+HWEj9Ja/2BrZSwPzuJwVN9uzpCgw2bD4Zn13axBVqrUera3HoFYVfuoElm
	qF5a9WnLx1T/2Cw0kUg8hNd5jT/GZWncN3vOpWN4wITyzrKs5oLYo6RjvpI1cmvMSfS02nd91bJzY
	gCq9kutZhyblzbgd8w0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbdUC-000000089El-3JRL;
	Fri, 02 Jan 2026 11:38:28 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbdUA-000000089Dt-1eUI
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Jan 2026 11:38:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1767353907; x=1798889907;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=rnW5GkAMZuPUJQWbiyetfXsLLkG1QwiCHbVg2xxlaVE=;
  b=Z+U1CymnQJpBmsPWtMmhqgfurPBcNZRnriDgM9YXeql+wtFJWo2uXiro
   PT5EnUzhnCxwE9NSsJ5HrP68efQFBwFPEJNmrwjaNDspCw/oCPUK/zF42
   h6VvVszpT/QWpICcPcdXasDxunBzE7ytenb5qJw3+69fWKjOVbnIskzs3
   TfBAp3EHipH4/E5RzZEMyeiLY7q8bnuwey0Ia4a7L3kL34g+yFtGsti54
   e0ZVIivG2+uzP7Jz81E425jP2BNg8XOme2cobdXnODnmEtWjZHLPXBcGM
   RT0+vg3BQHSF7q3yRUBdIveVpD6paeVYZv8+ZcfaRjc6MpWKyG+3ChTnf
   g==;
X-CSE-ConnectionGUID: Bjz1kmO/R8m7E9mhfnpcXg==
X-CSE-MsgGUID: jfy4WXD9TJygNSLAul8O5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11658"; a="80293592"
X-IronPort-AV: E=Sophos;i="6.21,197,1763452800"; 
   d="scan'208";a="80293592"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jan 2026 03:38:23 -0800
X-CSE-ConnectionGUID: BmaERz2xSWu6qUQyPgUSVg==
X-CSE-MsgGUID: Dz1set7RSXSjlFmWkdTqcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,197,1763452800"; 
   d="scan'208";a="232495780"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.46])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jan 2026 03:38:20 -0800
Date: Fri, 2 Jan 2026 13:38:18 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Michael Wu <michael@allwinnertech.com>, myungjoo.ham@samsung.com,
	cw00.choi@samsung.com, linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] extcon: Fixed sysfs duplicate filename issue
Message-ID: <aVeuKp0MKhj8N43L@smile.fi.intel.com>
References: <20251024024946.16618-1-michael@allwinnertech.com>
 <DF3Y6Z8X4GC6.11WQOENQD4EDW@cknow-tech.com>
 <aU_2VbFLPKqcyvp_@smile.fi.intel.com>
 <DF9SRIU7GHOX.1G7OOKX72555M@cknow-tech.com>
 <aVFoNbsd13ufl7ge@smile.fi.intel.com>
 <DFB3BUDFOIN1.3IM5386T534NQ@cknow-tech.com>
 <aVO27QwEol-4OkV8@smile.fi.intel.com>
 <DFBMBT98MEJA.2O0H79T59N5BL@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DFBMBT98MEJA.2O0H79T59N5BL@cknow-tech.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260102_033826_486934_16FA19B4 
X-CRM114-Status: GOOD (  46.98  )
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

On Tue, Dec 30, 2025 at 03:24:36PM +0100, Diederik de Haas wrote:
> On Tue Dec 30, 2025 at 12:26 PM CET, Andy Shevchenko wrote:
> > On Tue, Dec 30, 2025 at 12:31:17AM +0100, Diederik de Haas wrote:
> >> On Sun Dec 28, 2025 at 6:26 PM CET, Andy Shevchenko wrote:
> >> > On Sun, Dec 28, 2025 at 12:01:54PM +0100, Diederik de Haas wrote:
> >> >> On Sat Dec 27, 2025 at 4:08 PM CET, Andy Shevchenko wrote:
> >> >> > On Sun, Dec 21, 2025 at 03:01:11PM +0100, Diederik de Haas wrote:
> >> >> >> On Fri Oct 24, 2025 at 4:49 AM CEST, Michael Wu wrote:
> >> >> >> > With current extcon_dev_unregister() timing, ida_free is before
> >> >> >> > device_unregister(), that may cause current id re-alloc to another
> >> >> >> > device in extcon_dev_register() context but sysfs filename path not
> >> >> >> > removal completed yet.
> >> >> >> 
> >> >> >> I periodically get errors like this:
> >> >> >> 
> >> >> >> [    7.116152] rockchip-usb2phy fe8a0000.usb2phy: error -EEXIST: failed to register extcon device
> >> >> >> [    7.117005] rockchip-usb2phy fe8a0000.usb2phy: probe with driver rockchip-usb2phy failed with error -17
> >> >> >> 
> >> >> >> This was today on a NanoPi R5S (rk3568), but I have seen it before and
> >> >> >> on multiple devices. They are all Rockchip based, but that's (quite)
> >> >> >> possible because that's what I use the most (and where I pay quite a bit
> >> >> >> of attention to dmesg).
> >> >> >> 
> >> >> >> Slightly fuller dmesg output of the above error is here:
> >> >> >> https://paste.sr.ht/~diederik/42c6b3405386c823cd9f837d73a9a32e810361be
> >> >> >> And via 'journalctl' I hopefully got the full dmesg output:
> >> >> >> https://paste.sr.ht/~diederik/7a6109115b1ad85290de482db091dad3759ec159
> >> >> >> 
> >> >> >> Here are 2 similar logs, this time on PineTab2 and Quartz64-A (both rk3566)
> >> >> >> https://paste.sr.ht/~diederik/cfe606801d3dab0267bea7049687d24c0d6e8d71
> >> >> >> 
> >> >> >> Those are all the logs I have saved, but it has happened several times
> >> >> >> besides that. But most times I just rebooted and didn't save the log.
> >> >> >> Today I looked a bit further, found commit 7bba9e81a6fb, searched on
> >> >> >> lore.k.o and found this patch.
> >> >> >> 
> >> >> >> So I'm wondering whether this patch would also fix 'my' issue?
> >> >> >> Or is this a different issue?
> >> >> >
> >> >> > But have you had a chance to test it? The code looks correct after this patch
> >> >> > as the first we remove the struct device and all associated data (including
> >> >> > sysfs nodes) and then remove the ID from the list. Without that there is a
> >> >> > window to get the same id for the devices that is pending to be removed.
> >> >> 
> >> >> I've build a kernel with it and it will be part of my kernels going
> >> >> forward. But it can take many months before the issue shows up again.
> >> >> So if I don't get it in a year, then I'm going to *assume* it's probably
> >> >> fixed.
> >> >
> >> > I believe you may speed up the test case by creating two shell scripts that
> >> > trying insmod / rmmod the same module in parallel.
> >> 
> >> I checked on several devices and the phy_rockchip_inno_usb2 module is
> >> used by various other modules on all of them, so I can't just 'rmmod' it.
> >> I guess it should technically be possible to remove all its dependencies
> >> and then remove that module. I don't know if my skills are sufficient
> >> for that and it feels like I'm mostly testing the robustness of the USB
> >> subsystem.
> >> 
> >> As I regularly already get the following kernel warning
> >> ``Warning! ehci_hcd should always be loaded before uhci_hcd and ohci_hcd, not after``
> >> which often results in USB 2 ports not working, I have my doubts about
> >> the robustness anyway.
> >
> > This is interesting issue, have you reported it to USB people (such as Alan Stern)?
> 
> Not yet. I was reasonably sure I had mentioned this issue before, but
> when doing a search on lore.k.o I couldn't find it. I guess I only
> 'reported' it on IRC.
> 
> Interestingly enough, I did find another very recent mail/patch:
> https://lore.kernel.org/all/20251230080014.3934590-1-chenhuacai@loongson.cn/
> 
> but looks like Greg doesn't like it ... and his suggestion (make the
> kernel module built-in) was exactly the thing I wanted to try before
> reporting it. If it's tristate it _should_ be able to be built as
> module, but it's extremely unlikely I'll spend time on that though.

Okay, it seems you engaged Alan into the discussion, so I leave it to that
thread where all necessary stakeholders are present.

> >> So I'll just keep an eye out if the ``sysfs: cannot create duplicate
> >> filename`` error pops up again 'naturally' and report if/when it does.
> >
> > Good, please monitor it and try to collect logs for the further investigations,
> > if required.
> 
> Will do. FWIW, Dragan asked me to enable DEBUG_DEVRES and share the
> logs. Maybe they're useful for you too.
> On Rock 5B (RK3588): https://paste.sr.ht/~diederik/2d8e0beced6477cc1abd28cd870ea76a1e413a9e
> On NanoPi R5S (RK3568): https://paste.sr.ht/~diederik/1c4026d0c277b92391136bab4e80f64a989006f5

I don't see any smoking gun there.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
