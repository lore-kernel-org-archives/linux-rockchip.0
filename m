Return-Path: <SRS0=5KZ+=PZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03682C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 08:28:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9419A61159
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 08:28:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9419A61159
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYaART+ZfLtATyXGSz4ySszgafZgUao7ej0RgT57JPg=; b=LzChxg2xhSo7iE
	k+FadwwUfQUgxj1r8Rs51eTk4Z7eTrhe/8KuQahfATj8Cn+ogDrviZ3ZSq246mpSfXF1mSUAYgT2e
	AG39dMeCUoZEdoBmVK/HSkDyaOvIPNRZoOj/PbHNa9O6WutAl5hNnFHp6qhsfS5Zhd03MV4zqUzdX
	P7vrtzWCTxhZgS/eMCdRH4wHCNnKO7qnEa/gmY2MLWB64eqfHw2wOZsR5cWtnadSo5GTMdSqdEpoi
	FFnstw0gQn5ZPqlFhRAZTUo6UDzudG4jLgqCCs0ZNv8KpE7igWdke2BKIgVZXOHger8VjYFzOwS5L
	nZ4e2xvvZQakDmO4DF7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjH42-00CotH-52; Sat, 06 Nov 2021 08:28:38 +0000
Received: from smtprelay0244.hostedemail.com ([216.40.44.244]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjH3o-00CorO-Hs; Sat, 06 Nov 2021 08:28:26 +0000
Received: from omf03.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 01D14837F24A;
 Sat,  6 Nov 2021 08:28:23 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf03.hostedemail.com (Postfix) with ESMTPA id EB6B013D96; 
 Sat,  6 Nov 2021 08:28:18 +0000 (UTC)
Message-ID: <103d7321a2d18e44fb8c01483b1197766aff645a.camel@perches.com>
Subject: Re: [PATCH v1 14/19] pinctrl: st: Use temporary variable for struct
 device
From: Joe Perches <joe@perches.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>, Linus Walleij
 <linus.walleij@linaro.org>, Sai Krishna Potthuri
 <lakshmi.sai.krishna.potthuri@xilinx.com>, Andrew Morton
 <akpm@linux-foundation.org>, "linux-gpio@vger.kernel.org"
 <linux-gpio@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Bamvor Jian Zhang <bamv2005@gmail.com>,  Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@foss.st.com>, Michal Simek
 <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Date: Sat, 06 Nov 2021 01:28:17 -0700
In-Reply-To: <CAHp75Ve0Bv9VsWFFZxL9wYk=Z_Mm7nat-vf7g8HHTiROi7EY=Q@mail.gmail.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-14-andriy.shevchenko@linux.intel.com>
 <4b3f1ee1179dd6d4b010cb110b38d26e7d91c19f.camel@perches.com>
 <CAHp75Ve0Bv9VsWFFZxL9wYk=Z_Mm7nat-vf7g8HHTiROi7EY=Q@mail.gmail.com>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
X-Stat-Signature: h8rybhkjgkwct5m577thmm95p3sew5ni
X-Rspamd-Server: rspamout05
X-Rspamd-Queue-Id: EB6B013D96
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX19DqiwzorEKDYikYui8SpA+cKLioisfSSU=
X-HE-Tag: 1636187298-402643
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211106_012824_690964_BCD796F1 
X-CRM114-Status: GOOD (  15.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sat, 2021-11-06 at 10:07 +0200, Andy Shevchenko wrote:
> On Saturday, November 6, 2021, Joe Perches <joe@perches.com> wrote:
> > On Fri, 2021-11-05 at 14:42 +0200, Andy Shevchenko wrote:
> > > Use temporary variable for struct device to make code neater.
> > []
> > > diff --git a/drivers/pinctrl/pinctrl-st.c b/drivers/pinctrl/pinctrl-st.c
> > []
> > > @@ -814,26 +814,25 @@ static int st_pctl_dt_node_to_map(struct
> > pinctrl_dev *pctldev,
> > >  {
> > >       struct st_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
> > >       const struct st_pctl_group *grp;
> > > +     struct device *dev = info->dev;
> > []
> > > -     new_map = devm_kcalloc(pctldev->dev,
> > > -                             map_num, sizeof(*new_map), GFP_KERNEL);
> > > +     new_map = devm_kcalloc(dev, map_num, sizeof(*new_map), GFP_KERNEL);
> > 
> > Are pctldev->dev and dev the same pointer?
> 
> Seems so.

OK.

> https://elixir.bootlin.com/linux/latest/source/drivers/pinctrl/core.c#L2015
> 
> > It seems they are not.
> 
> Can you elaborate, please?

From code shape, you assign dev to info->dev rather than pctldev->dev

I also believe this single 19 patch series would be better as
multiple patch series.

IMO: the strarray variants introduction and use should be a separate
patchset from the rest.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
