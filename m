Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD692E95A79
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 11:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsVSEMZz0buxyU4tlnzfNVUpvhJAJl1cC7BLnGtAI80=; b=TjLFcnO8FPrk/H
	kWxXEkNuVQPpdegVsYfZciYP0Cb/sY+ygCzb8yOpWwxeh/g8yyxIlsCKI/SAPWFHfwxFziMLTev5D
	u4l4oA5lzXOXXkbdO8G1VZynaHAAC+cF7JtTa2X8x6uLL/JC50JwuyRBr46nvW+qGaY4bTRmDy9jj
	cEX1ekeNRTOxunEjlp6L1RqUHVxIV32dL7BQD2XiMziZi8/iCP54kZ80U0wOW/QDVeeKrEDSIO0Lp
	4RdCfMM3XRk3PauyhhpeGNZQtwd00u9NQZzxth1ieHgx25PM2F1ZLp04QUlcFyArwvpgf9+BiNEzV
	XXI4W5uTNYLOS9qN909A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaXsE-00000004l7U-3dNT;
	Tue, 30 Dec 2025 11:26:46 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaXsC-00000004l78-2l3c
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Dec 2025 11:26:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1767094004; x=1798630004;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=KYfxjXq9J6AVt3eKknhB4OWOV8+O4kCM2eoYg1/0q9M=;
  b=MMfMpeF8NTPD+io4tBYXq1MSWBhv8SokKWi+xXgiIQiNdXn9yiQ12NrK
   9kuAy8D1gfR5SzsDeW67MFXH/CWhSU08see2ve4XTNrm8/ChAgcQD+KQW
   S+C6oE/xwpFZQ0qDpsDN2olDX9YBRMDK/ctRm0eUxct/dJCVUxfqHuzPz
   q29/RdNc8wJMm1obXS9i+q/FuhiPA0sApGBbQ1ntvqkqSFl75ogvKNYYv
   UgshUupoEeHfK2PmF36qynB0vTpdxinaMzJX6WruD5v+RgsiqC19Md1sG
   CfjLLv1X2ZWfL8Oo3to/5oyXCP0VnhQ4EQ4c0hRctFf18r2nw2H6k8GBu
   A==;
X-CSE-ConnectionGUID: dG2AibU4SdaEWOpT/6DBeA==
X-CSE-MsgGUID: YB8d4BxJRQuudM9o+WbqPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="68574728"
X-IronPort-AV: E=Sophos;i="6.21,188,1763452800"; 
   d="scan'208";a="68574728"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Dec 2025 03:26:42 -0800
X-CSE-ConnectionGUID: yUBeaH2sQiGGK28linQH1A==
X-CSE-MsgGUID: 6zgjnLlITHe3zah+Qn74LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,188,1763452800"; 
   d="scan'208";a="201665824"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.103])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Dec 2025 03:26:40 -0800
Date: Tue, 30 Dec 2025 13:26:37 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Michael Wu <michael@allwinnertech.com>, myungjoo.ham@samsung.com,
	cw00.choi@samsung.com, linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] extcon: Fixed sysfs duplicate filename issue
Message-ID: <aVO27QwEol-4OkV8@smile.fi.intel.com>
References: <20251024024946.16618-1-michael@allwinnertech.com>
 <DF3Y6Z8X4GC6.11WQOENQD4EDW@cknow-tech.com>
 <aU_2VbFLPKqcyvp_@smile.fi.intel.com>
 <DF9SRIU7GHOX.1G7OOKX72555M@cknow-tech.com>
 <aVFoNbsd13ufl7ge@smile.fi.intel.com>
 <DFB3BUDFOIN1.3IM5386T534NQ@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DFB3BUDFOIN1.3IM5386T534NQ@cknow-tech.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_032644_742769_8EDBB2DF 
X-CRM114-Status: GOOD (  39.89  )
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

On Tue, Dec 30, 2025 at 12:31:17AM +0100, Diederik de Haas wrote:
> On Sun Dec 28, 2025 at 6:26 PM CET, Andy Shevchenko wrote:
> > On Sun, Dec 28, 2025 at 12:01:54PM +0100, Diederik de Haas wrote:
> >> On Sat Dec 27, 2025 at 4:08 PM CET, Andy Shevchenko wrote:
> >> > On Sun, Dec 21, 2025 at 03:01:11PM +0100, Diederik de Haas wrote:
> >> >> On Fri Oct 24, 2025 at 4:49 AM CEST, Michael Wu wrote:
> >> >> > With current extcon_dev_unregister() timing, ida_free is before
> >> >> > device_unregister(), that may cause current id re-alloc to another
> >> >> > device in extcon_dev_register() context but sysfs filename path not
> >> >> > removal completed yet.
> >> >> 
> >> >> I periodically get errors like this:
> >> >> 
> >> >> [    7.116152] rockchip-usb2phy fe8a0000.usb2phy: error -EEXIST: failed to register extcon device
> >> >> [    7.117005] rockchip-usb2phy fe8a0000.usb2phy: probe with driver rockchip-usb2phy failed with error -17
> >> >> 
> >> >> This was today on a NanoPi R5S (rk3568), but I have seen it before and
> >> >> on multiple devices. They are all Rockchip based, but that's (quite)
> >> >> possible because that's what I use the most (and where I pay quite a bit
> >> >> of attention to dmesg).
> >> >> 
> >> >> Slightly fuller dmesg output of the above error is here:
> >> >> https://paste.sr.ht/~diederik/42c6b3405386c823cd9f837d73a9a32e810361be
> >> >> And via 'journalctl' I hopefully got the full dmesg output:
> >> >> https://paste.sr.ht/~diederik/7a6109115b1ad85290de482db091dad3759ec159
> >> >> 
> >> >> Here are 2 similar logs, this time on PineTab2 and Quartz64-A (both rk3566)
> >> >> https://paste.sr.ht/~diederik/cfe606801d3dab0267bea7049687d24c0d6e8d71
> >> >> 
> >> >> Those are all the logs I have saved, but it has happened several times
> >> >> besides that. But most times I just rebooted and didn't save the log.
> >> >> Today I looked a bit further, found commit 7bba9e81a6fb, searched on
> >> >> lore.k.o and found this patch.
> >> >> 
> >> >> So I'm wondering whether this patch would also fix 'my' issue?
> >> >> Or is this a different issue?
> >> >
> >> > But have you had a chance to test it? The code looks correct after this patch
> >> > as the first we remove the struct device and all associated data (including
> >> > sysfs nodes) and then remove the ID from the list. Without that there is a
> >> > window to get the same id for the devices that is pending to be removed.
> >> 
> >> I've build a kernel with it and it will be part of my kernels going
> >> forward. But it can take many months before the issue shows up again.
> >> So if I don't get it in a year, then I'm going to *assume* it's probably
> >> fixed.
> >
> > I believe you may speed up the test case by creating two shell scripts that
> > trying insmod / rmmod the same module in parallel.
> 
> I checked on several devices and the phy_rockchip_inno_usb2 module is
> used by various other modules on all of them, so I can't just 'rmmod' it.
> I guess it should technically be possible to remove all its dependencies
> and then remove that module. I don't know if my skills are sufficient
> for that and it feels like I'm mostly testing the robustness of the USB
> subsystem.
> 
> As I regularly already get the following kernel warning
> ``Warning! ehci_hcd should always be loaded before uhci_hcd and ohci_hcd, not after``
> which often results in USB 2 ports not working, I have my doubts about
> the robustness anyway.

This is interesting issue, have you reported it to USB people (such as Alan Stern)?

> So I'll just keep an eye out if the ``sysfs: cannot create duplicate
> filename`` error pops up again 'naturally' and report if/when it does.

Good, please monitor it and try to collect logs for the further investigations,
if required.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
