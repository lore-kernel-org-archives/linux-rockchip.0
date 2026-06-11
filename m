Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 630F5CD98CE
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 16:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kycLrvSQEfybC3wBRhSMuVUqp0bezOm/vrh5rvQbddg=; b=GG/V6GnL03QbIz
	6kbsLnm3BfRT82jrlLrFPbJfX97D/emI81tT56aY20HqwYgVnBm2U+5//WtX6E7vkIoBQhj0Kyyt9
	UEwAcARF1Zfrw3ABLhZ7XT7BMKjBZS9BGYLg/kJn7sQpOz2M732CVqnORwAQoGSMv2BOFyRkwGyzI
	Xm54JMpLS0/nkJAzy0bE6ToLPQFNS74Xr4W8LOOYMXFfq3imAldDlL1t6EYPMbi93gkEVz/Zb1rZG
	Wt+IqzC+XOvhSUuJWqcFLu0RKAvPmYsfsv9jegWiTKMSH31Nn3MtNd/rNqxxFjf1kCm2gqCkGogzf
	dhZ1W080zFiaithxg1JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXi6y-00000009kQ9-2zq4;
	Thu, 11 Jun 2026 16:18:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXi6y-00000009kPt-03tu
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 16:18:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A05CC423D7;
	Thu, 11 Jun 2026 16:18:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FACD1F00893;
	Thu, 11 Jun 2026 16:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781194711;
	bh=qQppVLeWH0TOuEFEy5iQoyvPB6/Yhmt/u7HRd/Sg38Y=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Drk2SBYVjVsfl1R5r2BwLZ7ZzeCkwakkMXe25YZE9Hk00mYyvR7CiQkdpJ+DGJ2bq
	 n3LYxOcC30rWmpT9t2LRClEbc97fCxgaUE0o3uKErfgzGDzfWWgCBAcIT+VMR1lkkc
	 XVpByt2Wkx+17tMMHLoaZ3IwwwyJxfGQ1hoFdwi5RqMEUv+1m50GHATKf5LeHg0Ysn
	 IdliOCVB4P97CCzttGJuS5v25KCUWpufiZvnAW2P3pc8Xjfuz8FLKcSCKFFiz5iFlY
	 x2vB8hwwlerMErmQW1CF/2JG41/3HDUMhKQvctga9ZFZamgMs8twp7RNBZDSwfQrvo
	 F5Mi3K9/Td9ZA==
Date: Thu, 11 Jun 2026 17:18:24 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH V11 0/9] Add Invensense ICM42607
Message-ID: <20260611171824.0f932f3f@jic23-huawei>
In-Reply-To: <PH0PR19MB99733845CDEFA1D8441200B60FA51B2@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
	<20260611115938.27712b66@jic23-huawei>
	<PH0PR19MB99733845CDEFA1D8441200B60FA51B2@PH0PR19MB997338.namprd19.prod.outlook.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Thu, 11 Jun 2026 09:36:08 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

> On Thu, Jun 11, 2026 at 11:59:38AM +0100, Jonathan Cameron wrote:
> > On Wed, 10 Jun 2026 12:54:44 -0500
> > Chris Morgan <macroalpha82@gmail.com> wrote:
> >   
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Add support for the ICM42607 IMU. This sensor shares the same
> > > functionality but a different register layout with the existing
> > > ICM42600.
> > > 
> > > This driver should work with the ICM42607 and ICM42607P over both I2C
> > > and SPI, however only the ICM42607P over I2C could be tested.  
> > Hi Chris,
> > 
> > Just a quick reminder to check if there is useful feedback at:
> > https://sashiko.dev/#/patchset/20260610175455.19006-1-macroalpha82%40gmail.com
> > 
> > I didn't look into most of the but the last one about no avail mask bits
> > being set for gyro channels was easy to verify as correct and suggests
> > a testing gap.
> > 
> > Jonathan
> >   
> 
> Thanks, I've been checking sashiko on every patch and trying to address
> what it says to the best of my ability. Honestly I wish there was a way
> to simply push to that bot first and *then* push to the mailing list
> once I've resolved all of its comments.

Agreed - that would be helpful.  I believe it is possible to run locally
against a bunch of LLMs - I recall seeing something saying there
is a git repo with scripts. No idea if that is possible with a free level though.

Jonathan

> 
> Thank you,
> Chris


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
