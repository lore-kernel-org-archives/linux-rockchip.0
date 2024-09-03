Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A932CD3448
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 16:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhwZ9szePslfO+3ptxuhRGoBwfI0fpKX6YHD9cE0EKY=; b=xlCVw9/JOlPBRD
	86DVO2Gs3hifVv1OKfQZhLXMg37duqe+TQwQPd6nr+hoUqWDvbCPvNrjCFTjlbEGlZjgRc5KwaRzO
	4pICKT079hv6/PQ5NyknhS2pmUquo8C5az9uHIcARqO8EYYoniL4NEAnXkiQPyh7/5/0DF4gTqaQy
	e4KPc8rT9auLC8ZZzDclWJujAYU5UQq4lU0vFVYRcsyvjVM6k/eGNEMQtZqkZbmckCtGRNCWEXIxq
	UaJWyAJ8xdjXHeZZTjbChDeR+YcyGJnvdKpe1qSP88iWGhtr3OnIJlePoQoEzKJtYK1EFF1Qeocaj
	d7JQNx2Nvzaqd95oMbRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slWHg-000000014cz-0maT;
	Tue, 03 Sep 2024 16:21:36 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVxb-00000000zjs-1gel;
	Tue, 03 Sep 2024 16:00:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725379251; x=1756915251;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Oew8IDhF6NxnCQa2ei5kdBgarOsXjY6eAd6r7gRPK/Q=;
  b=DIrxv1s3JrRH2NHzYSvXJIwegsz2hlydRotPuc81/MtKGAztdvSbGXTY
   YLavmebQPdgB2k+UiCbQf2O2J0Yb5+65L2oSlZRjRUtQ9F4n4dRY/qUx2
   C3ZGJWp5vH+xbF8sFYbQMuP0LSatfvWRldUwULUJI03wxewNlXRrnhsF+
   t6MwQ3jenrXexyieFA8KiWSk/ZfoJFCunW1GGJrUh/Q5K0JGsLphuiR05
   /Pzvq9q/G18HwBfJrHpHyp0v6DAWUlDHrWjuzWnr3NntrZJrpHsDGHIms
   JsE4d1HBTY0whWREaXQL7JDh0dbuqWPC5jqYSSH+23fCQ6pSR7sd1GAx3
   w==;
X-CSE-ConnectionGUID: xxRiQElmQQ+5XgpjYXX+9g==
X-CSE-MsgGUID: Cp35lBvtTUiWadITtWL3WA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="26905830"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="26905830"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 09:00:48 -0700
X-CSE-ConnectionGUID: HO7fN3G2SHekqfXha2S5Ig==
X-CSE-MsgGUID: N914ntmLSau3alqs+hN68w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="64630668"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 09:00:45 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1slVxT-00000004lIG-1JOJ;
	Tue, 03 Sep 2024 19:00:43 +0300
Date: Tue, 3 Sep 2024 19:00:43 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com, tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: Re: [PATCH v3 00/12] gpio: rockchip: Update the GPIO driver
Message-ID: <Ztcyq2lb1YS43ncV@smile.fi.intel.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903073649.237362-1-ye.zhang@rock-chips.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_090051_491578_8FB6EC80 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
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

On Tue, Sep 03, 2024 at 03:36:37PM +0800, Ye Zhang wrote:
> GPIO driver support acpi and new version, set input direction in
> irq_request_resources, fix division error and debounce config error.

Looking at patch 7 it seems the new feature has been barely tested.
First of all, I recommend to split out the real fixes for now and send them
separately while working on the rest. Second, perform better bisectability
(both compile and run time) and overall test coverage in different scenarios.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
