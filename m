Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B42F8E92713
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Dec 2025 15:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OVOJGIIIsZnVkGG519SpWC4lZD9HxR8cqUx3vVJaj3U=; b=VWGoqHEbKCGq94
	cBnWy7GVsDVUsOGIJCjBrZiSC8zSuut1GsMWLuVMrYnlKP5Jc4Av81tT/EQMTm20h1Y2hB1VMzrHQ
	fwJROGElvxBkMH+sXMcSL/m1GLKfJaB9erYHEhKTazBHwLwStJ9RLXExuuEOSM3lLvGQ1NXmlJ9Ju
	e5JFvy2eSSQPmMz8dbdKTvEZhXUyzWnCJC7ie4gH9IGjX2T/ir6D+tDg8j28B2wy/LkogrZYO67Kr
	iVWgIu0KTX5IKOrt1UJ3zwfhcT0pmE+9QTJaQEROOu/o4c22n4FGAgzwi6jMZT2pLPX1kd/vF4Xgw
	OCEhuR+vX5aDRYBul+mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZVtw-000000022rn-0TE3;
	Sat, 27 Dec 2025 15:08:16 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZVts-000000022rS-1gqk
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Dec 2025 15:08:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1766848092; x=1798384092;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=nokbZUBtGJz+9lTtAToHWMoqoay1Q0X5TfXzkA4lT/8=;
  b=cxL9cII6LMgZN4Tcd5tFGPUfct5VWqn86acMj7K/5oiJaXt5Xit2lg8w
   C3tWHql1SlDwDTTnOMVFXxFdH1vQov+5V1nZyQXheuMAI+b31EuuEPxmM
   FptjXqVURiF04JrS72z1ZY8d3YHy3P7jxDTX/rHUtQV/r9LZ8u7QgJc4t
   7IAfQziX3LiME/nlc0VB/FX05mhckR0Dc1zAjCD1QZo/Wv8Y+2L/po6Sm
   ntWAHRfMYF+KSCIoapNXvPUu+eR+f4ipYVU3WuYFtwDBQtgRECf2gsdrL
   7/2xYnnacaJzPIsLgAiMKyYzOTJfzPbMhNdc4/3aNDGsm51H5DK/eL+2C
   g==;
X-CSE-ConnectionGUID: DQIbBmM6TryeJzrHeyicSA==
X-CSE-MsgGUID: X6ZNcL4ESzarm5DicM1GPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11654"; a="79178613"
X-IronPort-AV: E=Sophos;i="6.21,180,1763452800"; 
   d="scan'208";a="79178613"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Dec 2025 07:08:10 -0800
X-CSE-ConnectionGUID: iCm6ZcmcSDyiyrh9/8CxQA==
X-CSE-MsgGUID: TThJ/9OeSQGUCF67ttHpqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,180,1763452800"; 
   d="scan'208";a="237968645"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.244.211])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Dec 2025 07:08:08 -0800
Date: Sat, 27 Dec 2025 17:08:05 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Michael Wu <michael@allwinnertech.com>, myungjoo.ham@samsung.com,
	cw00.choi@samsung.com, linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] extcon: Fixed sysfs duplicate filename issue
Message-ID: <aU_2VbFLPKqcyvp_@smile.fi.intel.com>
References: <20251024024946.16618-1-michael@allwinnertech.com>
 <DF3Y6Z8X4GC6.11WQOENQD4EDW@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DF3Y6Z8X4GC6.11WQOENQD4EDW@cknow-tech.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251227_070812_482705_BD115145 
X-CRM114-Status: GOOD (  20.63  )
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

On Sun, Dec 21, 2025 at 03:01:11PM +0100, Diederik de Haas wrote:
> On Fri Oct 24, 2025 at 4:49 AM CEST, Michael Wu wrote:
> > With current extcon_dev_unregister() timing, ida_free is before
> > device_unregister(), that may cause current id re-alloc to another
> > device in extcon_dev_register() context but sysfs filename path not
> > removal completed yet.
> 
> I periodically get errors like this:
> 
> [    7.116152] rockchip-usb2phy fe8a0000.usb2phy: error -EEXIST: failed to register extcon device
> [    7.117005] rockchip-usb2phy fe8a0000.usb2phy: probe with driver rockchip-usb2phy failed with error -17
> 
> This was today on a NanoPi R5S (rk3568), but I have seen it before and
> on multiple devices. They are all Rockchip based, but that's (quite)
> possible because that's what I use the most (and where I pay quite a bit
> of attention to dmesg).
> 
> Slightly fuller dmesg output of the above error is here:
> https://paste.sr.ht/~diederik/42c6b3405386c823cd9f837d73a9a32e810361be
> And via 'journalctl' I hopefully got the full dmesg output:
> https://paste.sr.ht/~diederik/7a6109115b1ad85290de482db091dad3759ec159
> 
> Here are 2 similar logs, this time on PineTab2 and Quartz64-A (both rk3566)
> https://paste.sr.ht/~diederik/cfe606801d3dab0267bea7049687d24c0d6e8d71
> 
> Those are all the logs I have saved, but it has happened several times
> besides that. But most times I just rebooted and didn't save the log.
> Today I looked a bit further, found commit 7bba9e81a6fb, searched on
> lore.k.o and found this patch.
> 
> So I'm wondering whether this patch would also fix 'my' issue?
> Or is this a different issue?

But have you had a chance to test it? The code looks correct after this patch
as the first we remove the struct device and all associated data (including
sysfs nodes) and then remove the ID from the list. Without that there is a
window to get the same id for the devices that is pending to be removed.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
