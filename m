Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E273BD3B7E5
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Dec 2025 17:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxN6HZ0zWTp49x2SVPlw+dc4npMhbCYSi3quahFvxiI=; b=e5QinSWD6oI6kK
	I6hnoYoOQqWpvbw9mc9nB5tBuBhpKsvKYk2XIokGATIIOu316svzq8fIgkFgAW71yFoBz1UsA6u+/
	sfdp6JdWpcdA4V3NptIpzXH544fI6bZcxeN5yUDam7xp+L8tmSPedxE6dW7rTKNR3frWdwHHL6U3d
	itSM0h3GZ+dCyAsLgykmvRHGnOFXm+9k45EuZz1s/r4X+yi1LCqDuzoXdTncMZQhYviGnirnAftCp
	WJt3qIW4prFvaevzcxuygknQPX9C9y/zWEKLhQy5ZyRg+OYawLZVQlaE7afkrrQxfprogHD0xBltq
	1MCtq6+/lYs1gPNBmP0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZuX9-00000002vLl-0mBv;
	Sun, 28 Dec 2025 17:26:23 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZuX6-00000002vLF-0qHU
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Dec 2025 17:26:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1766942780; x=1798478780;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=5s1ONPFCb6zhe/2cygceRy0ZotmKUG/UDqcCs6qDnoY=;
  b=D3UiO59IzYWGjEeBOJyxAvi8YFSoq2ZDRpDMrY1McWrdjj3GlynAhjA0
   /f697X0Y6Yt/00dy1STS0PjglRReImAdvB4eBmHwQC4McjWSOugXSh8zG
   pJxpaUIl7doXwq9oVqkJdUvqxhfSjRK6s+Zj7iDBJ1B47Lobq6Cg8U1qu
   oAMrIKpnvEgUM6wQEUauLNddNmra50DO+VU073V+xRbnjci7TmRPRv/FV
   GLnIRPuwUuaaCvSppocRpgJdln+aSdH0LdyGyDOrp+8TihJMfIv1nYGtM
   oOLsM77GEal/uBBy9JBISkpk4LXrgqzIpb7qP9jR98vcfVLRpcGCVzUeJ
   A==;
X-CSE-ConnectionGUID: i4nwmpqvSoGh5KXpZuoLAQ==
X-CSE-MsgGUID: lW9nRAWRSACst4LwueFs2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11655"; a="86160037"
X-IronPort-AV: E=Sophos;i="6.21,183,1763452800"; 
   d="scan'208";a="86160037"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Dec 2025 09:26:18 -0800
X-CSE-ConnectionGUID: n7yBwMK8QieeQjj34+ZGnQ==
X-CSE-MsgGUID: oon2Wh1/Qx+dvdXOKAFFVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,183,1763452800"; 
   d="scan'208";a="231826757"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost) ([10.245.244.236])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Dec 2025 09:26:16 -0800
Date: Sun, 28 Dec 2025 19:26:13 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Michael Wu <michael@allwinnertech.com>, myungjoo.ham@samsung.com,
	cw00.choi@samsung.com, linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] extcon: Fixed sysfs duplicate filename issue
Message-ID: <aVFoNbsd13ufl7ge@smile.fi.intel.com>
References: <20251024024946.16618-1-michael@allwinnertech.com>
 <DF3Y6Z8X4GC6.11WQOENQD4EDW@cknow-tech.com>
 <aU_2VbFLPKqcyvp_@smile.fi.intel.com>
 <DF9SRIU7GHOX.1G7OOKX72555M@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DF9SRIU7GHOX.1G7OOKX72555M@cknow-tech.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251228_092620_256029_9F55EEF8 
X-CRM114-Status: GOOD (  28.99  )
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

On Sun, Dec 28, 2025 at 12:01:54PM +0100, Diederik de Haas wrote:
> On Sat Dec 27, 2025 at 4:08 PM CET, Andy Shevchenko wrote:
> > On Sun, Dec 21, 2025 at 03:01:11PM +0100, Diederik de Haas wrote:
> >> On Fri Oct 24, 2025 at 4:49 AM CEST, Michael Wu wrote:
> >> > With current extcon_dev_unregister() timing, ida_free is before
> >> > device_unregister(), that may cause current id re-alloc to another
> >> > device in extcon_dev_register() context but sysfs filename path not
> >> > removal completed yet.
> >> 
> >> I periodically get errors like this:
> >> 
> >> [    7.116152] rockchip-usb2phy fe8a0000.usb2phy: error -EEXIST: failed to register extcon device
> >> [    7.117005] rockchip-usb2phy fe8a0000.usb2phy: probe with driver rockchip-usb2phy failed with error -17
> >> 
> >> This was today on a NanoPi R5S (rk3568), but I have seen it before and
> >> on multiple devices. They are all Rockchip based, but that's (quite)
> >> possible because that's what I use the most (and where I pay quite a bit
> >> of attention to dmesg).
> >> 
> >> Slightly fuller dmesg output of the above error is here:
> >> https://paste.sr.ht/~diederik/42c6b3405386c823cd9f837d73a9a32e810361be
> >> And via 'journalctl' I hopefully got the full dmesg output:
> >> https://paste.sr.ht/~diederik/7a6109115b1ad85290de482db091dad3759ec159
> >> 
> >> Here are 2 similar logs, this time on PineTab2 and Quartz64-A (both rk3566)
> >> https://paste.sr.ht/~diederik/cfe606801d3dab0267bea7049687d24c0d6e8d71
> >> 
> >> Those are all the logs I have saved, but it has happened several times
> >> besides that. But most times I just rebooted and didn't save the log.
> >> Today I looked a bit further, found commit 7bba9e81a6fb, searched on
> >> lore.k.o and found this patch.
> >> 
> >> So I'm wondering whether this patch would also fix 'my' issue?
> >> Or is this a different issue?
> >
> > But have you had a chance to test it? The code looks correct after this patch
> > as the first we remove the struct device and all associated data (including
> > sysfs nodes) and then remove the ID from the list. Without that there is a
> > window to get the same id for the devices that is pending to be removed.
> 
> I've build a kernel with it and it will be part of my kernels going
> forward. But it can take many months before the issue shows up again.
> So if I don't get it in a year, then I'm going to *assume* it's probably
> fixed.

I believe you may speed up the test case by creating two shell scripts that
trying insmod / rmmod the same module in parallel.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
