Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFE03ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 19:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSjEqrloHfuxmpBMFhIhR+jpKRrOP6JoFs4v7WWNtOw=; b=Z7v1fTpl8tNsqE
	uNOPVsRx5Bk1GO0bFxf0mLBUvjx/ajHDjNS2RVmTIl5cAZNikx2TLfZgAcnoNhA/6Q85i6pOrGeGd
	C1tpfkyNcJ+XS/9U+LQPpophrcI5uFFmZv/dXCYHGmdyUxg55dD99LNyM/9WTQnZWbajqeHyTbg73
	2bke1zua3RbKe+D7EcgnR6EPXqgY8muIDxbuq97s7mqasKxSf7LpSJFZQTmm5B37qLbyRXr3RRf4S
	6SXGGaBW60tdvSGO083pJqGIdRgeoApXzHFKron7HFLoY5773FGskbF+4mGmntezID/pdXT0esgTX
	AUxsS7BjjqYdexSc4hig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTT01-007kET-1C; Wed, 31 Aug 2022 19:03:41 +0000
Received: from mga07.intel.com ([134.134.136.100])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTSzp-007k7R-4z; Wed, 31 Aug 2022 19:03:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1661972609; x=1693508609;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Oc5afPBJoiKAq9k8AffdBfDU/q/uf+1J66UG/80FFUk=;
  b=ncqJ2YIhDsBqQLTxlTCxMNvPIlinhuuAMYf/96YI4uYzlKoJzAQmBjtO
   TbnTYzNdPhdKDkxH2VheC4WVEg7Ct9Jc7vCeQ3QOMykGygZs6YNacAAlx
   +DBYTn4iCWU0GnqUfAJZBQ7EqJbdnp1FEgswKejjpqLUIau5hf/y6kItU
   M0Fo/Tv2zEiZnNPgYVHD7q6He7ob9aHuSlTFM3y/wr3acXX+ZiTq3UMm8
   6ov5PJK2K5CO6vDmRRJSnqyThwZ/T2Me5JlLsayI1uwbKpQ0s1I9BlO0J
   0Bj+kAUcmH3Q6bgNYyhEJBvIeClFi7Bb7xoGkPIIRUk0UHsMCl4xC+gui
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="359481882"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; 
   d="scan'208";a="359481882"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2022 12:03:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; 
   d="scan'208";a="680525696"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2022 12:03:21 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1oTSze-006VQP-0a;
	Wed, 31 Aug 2022 22:03:18 +0300
Date: Wed, 31 Aug 2022 22:03:17 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 1/1] gpio: rockchip: Switch to use fwnode instead of
 of_node
Message-ID: <Yw+wdUvRm8rIAK4G@smile.fi.intel.com>
References: <20220831134516.78108-1-andriy.shevchenko@linux.intel.com>
 <CAMRc=MdQiBHr3cDPWN_PRj2nGVoG-GJJyRNrHNwTaAUvz=35ew@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMRc=MdQiBHr3cDPWN_PRj2nGVoG-GJJyRNrHNwTaAUvz=35ew@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_120329_299102_C8056B6F 
X-CRM114-Status: GOOD (  14.66  )
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

On Wed, Aug 31, 2022 at 05:11:36PM +0200, Bartosz Golaszewski wrote:
> On Wed, Aug 31, 2022 at 3:45 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:

...

> > -       bank->clk = of_clk_get(bank->of_node, 0);
> > +       bank->clk = of_clk_get(np, 0);
> 
> Why did you stop above? Why not regular clk_get here?

Indices... And there is no non-OF API for that.

> >         if (IS_ERR(bank->clk))
> >                 return PTR_ERR(bank->clk);
> >
> > @@ -668,7 +660,7 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
> >         if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
> >                 bank->gpio_regs = &gpio_regs_v2;
> >                 bank->gpio_type = GPIO_TYPE_V2;
> > -               bank->db_clk = of_clk_get(bank->of_node, 1);
> > +               bank->db_clk = of_clk_get(np, 1);
> 
> Ah, the clocks don't have names in DT? That's unfortunate...

Yeah...

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
