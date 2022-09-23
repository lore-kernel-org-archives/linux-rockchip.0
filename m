Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22141ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 10:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKPzDx+Zn620spPU4NiwkfW8tTyo1N2L3aNxfvHJMCM=; b=q3q1WryujQ19qX
	Lhz8RLLqC+46TZ3EObf/RPvdiTW2/5zXy1fShxshcuuXKicm/TsU8ayoT330Pz48AbM/gTygwRa42
	OZwlYr2x3C/tY0WQgaI3t2ZnrtR6dkGQ7ovy8/G+La9f80ElU/weIIKOeDvFWveFZq/8e8E/zBoYQ
	2LCMB5aIMNPBTwy+n6mNbmdEihbojpMA1FboEi+/k8FO94GWF7Ms5iNZ/DSlFtlh7Offvnx9bX+TW
	UHI69kRe0kF8/8654FPTEgd+osGveMpC3PXOdg90OtF22ANn5IV9z9YfmlNefvIgT7wxi/VwIRanE
	5xMeXSumTj9qrT8i8GFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obfzw-003fMq-Bg; Fri, 23 Sep 2022 10:33:32 +0000
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obfzt-003fKG-Bt
	for linux-rockchip@lists.infradead.org; Fri, 23 Sep 2022 10:33:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663929209; x=1695465209;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=sbt6cd6bMKZZescG1FHs0vj+QdI6/FusrkBoUfimDzM=;
  b=bCEEj8DkxgAx4KAUMUuolyHQBVd5xU+d/SNzcXqGtn/rCtQ7O8rdMOhS
   CjMNs70QpUwhCr24Px97z/J0nxBXMsJrESswC+BeMu7iOnft9YlWtwAIK
   cGxPSkiiqguqbrDRIr0J1znQpHNuo4HAee3Dx0UloTejS2a4Bi8C0jxP9
   nbETV4LRyZ/KrZYa8wSSo3XpwvmzarFgDRuYgPgSWmzEY9tDjipsYtHag
   5sW1RgmNUqO/qqyagIFtQqYGnPZ5gplfeBTQXH9TxjO8dgjWqM3AGVJhB
   T5wnj5/1+woaOJ7TzatFOEIyGsGtu+u82XU0oKPc3QsV3yNX9sZMgEJkm
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="362375737"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; 
   d="scan'208";a="362375737"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Sep 2022 03:33:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; 
   d="scan'208";a="571335290"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orsmga003.jf.intel.com with ESMTP; 23 Sep 2022 03:33:23 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1obfzl-006QDU-2e;
	Fri, 23 Sep 2022 13:33:21 +0300
Date: Fri, 23 Sep 2022 13:33:21 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Jianqun Xu <jay.xu@rock-chips.com>,
	Linus Walleij <linus.walleij@linaro.org>, jbx6244@gmail.com,
	brgl@bgdev.pl, linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 RESEND 0/2] rockchip pinctrl for acpi
Message-ID: <Yy2LcZmdaN3t898E@smile.fi.intel.com>
References: <20220917060929.657778-1-jay.xu@rock-chips.com>
 <CACRpkdanniba+TUAeqei93dmkBT82HY5D95KxTsc8aE7jV+5VQ@mail.gmail.com>
 <2419940.Icojqenx9y@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2419940.Icojqenx9y@phil>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_033329_491991_4F183D08 
X-CRM114-Status: GOOD (  17.96  )
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

On Fri, Sep 23, 2022 at 12:26:06PM +0200, Heiko Stuebner wrote:
> Am Dienstag, 20. September 2022, 11:26:26 CEST schrieb Linus Walleij:
> > On Sat, Sep 17, 2022 at 8:09 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
> > 
> > > These patch fixes to support acpi by:
> > > 1. populate gpio platform before pinctrl to probe
> > > 2. get gpiochip by finding from gpiochip list
> > > 3. get match data by device api
> > >
> > > Jianqun Xu (2):
> > >   pinctrl: rockchip: find gpiochip by name from gpio module
> > >   pinctrl: rockchip: get match data by device_get_match_data
> > 
> > These look OK to me but I would feel better if Heiko or Andy ACK:ed
> > them so I give them a few more days to comment.
> 
> Right now I'm actually quite confused as I seem to have a bunch
> of pinctrl/gpio-acpi patchsets of varying lengths in my inbox.
> 
> There is a "v2", a "v8", a 20-patchset without version.
> It's all quite confusing.

With the LKP complains on top of almost each series...

That's why I stopped considering them seriously (like some RFC is going on)
and no more reviewing.

I can suggest the author to create a branch on a public tree and collect all
series together (like topic branches that are merged one-by-one to the main
topic branch) and start again.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
