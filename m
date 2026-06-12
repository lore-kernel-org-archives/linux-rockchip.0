Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D54ECD8CA8
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 10:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqU2n996NbqQsZRcVD0dGjYs65GpfIE/Yl2+O/WU/RA=; b=AnlsRRqU7KDARV
	6W7Vy8o/jSSKhDT0OLaQgbNQJox24r7JIsTCpp0BPWj+XjRjVVm8FHbwgkfutFCKyI45Vvbj882uE
	ixSubA6Yo6IRMQ/zGUBSXU20n5IvesqGrli9hb233/okAyiiXYi2g9vJQCVBs82SVxRrkgEekcm7T
	vkk55aY2UO8MNn2FmlULZAykmY84gubSY8wQgdmaCwGvvkuMrEBDulB5bnq8hHJlHq0NdrX+TQjWU
	+WIJPAF0/sV2p9bONlL1Ibmwyw9y2D5cBcpWrHG4xB1U7RAWeEgJn9NY48HKgTohVYWyN/mEuT9FD
	39Bbm+ZAO0g34a0aoR1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXzLV-0000000AlMu-3maL;
	Fri, 12 Jun 2026 10:42:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXzLV-0000000AlMm-0cy0
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jun 2026 10:42:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 756A2432AF;
	Fri, 12 Jun 2026 10:42:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96F381F000E9;
	Fri, 12 Jun 2026 10:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781260960;
	bh=TDAHrpYZ6EtG6Z5qfwCH1qFBecbQ13ZGD/JYhR1ZyiY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=LOESSHvn2qT0OB32WytdOew0BJ0iUhZVcpJIQydN+IsMmKtWZVr3CvQU1jDzwh8NH
	 PCYdDVhKeyMO0AlAAsu5BjXByuONotT7+PPka18btW68MgpBhAoGfN2l8sIXfkBeid
	 8Nm95Sr83+mkfhzJ1B5oYHFQDw476nSBxSVUGdNEd75746h2/0HsKkP5bFAAM6EXaX
	 hGMx1/+FQBn6Vkb1SuiwUAPo62bgCaQYbp7ZpVjtcRyHg38GpjKjg8EzQ0BH/Lq49F
	 3l1YrO1eWKNzLUDgi0/hKMWW3qwA54B1ksxwhBMhS0ZYGnzpkdwzGGRFn3bRd+mekX
	 m6jvbFlM1vKoQ==
Date: Fri, 12 Jun 2026 11:42:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH V11 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <20260612114230.0fd2f391@jic23-huawei>
In-Reply-To: <PH0PR19MB997338CE11110E16E7FB668E3BA51B2@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
	<20260610175455.19006-4-macroalpha82@gmail.com>
	<20260611120943.7119975b@jic23-huawei>
	<PH0PR19MB9973387E29375D4E8F28C6B9D9A51B2@PH0PR19MB997338.namprd19.prod.outlook.com>
	<20260611172022.4d138820@jic23-huawei>
	<PH0PR19MB997338CE11110E16E7FB668E3BA51B2@PH0PR19MB997338.namprd19.prod.outlook.com>
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

On Thu, 11 Jun 2026 11:31:09 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

> On Thu, Jun 11, 2026 at 05:20:22PM +0100, Jonathan Cameron wrote:
> > On Thu, 11 Jun 2026 09:32:38 -0500
> > Chris Morgan <macromorgan@hotmail.com> wrote:
> >   
> > > On Thu, Jun 11, 2026 at 12:09:43PM +0100, Jonathan Cameron wrote:  
> > > > On Wed, 10 Jun 2026 12:54:47 -0500
> > > > Chris Morgan <macroalpha82@gmail.com> wrote:
> > > >     
> > > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > > > 
> > > > > Add the core component of a new inv_icm42607 driver. This includes
> > > > > a few setup functions and the full register definition in the
> > > > > header file.
> > > > > 
> > > > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>    
> > > > Hi Chris,
> > > > 
> > > > A couple more minor things from a fresh read.
> > > > 
> > > > Thanks
> > > > 
> > > > Jonathan
> > > >     
> > > > > ---
> > > > >  drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 334 ++++++++++++++++++
> > > > >  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 197 +++++++++++
> > > > >  2 files changed, 531 insertions(+)
> > > > >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
> > > > >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> > > > > 
> > > > > diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> > > > > new file mode 100644
> > > > > index 000000000000..716fc0f1c3fd
> > > > > --- /dev/null
> > > > > +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h    
> > > >     
> > > > > diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> > > > > new file mode 100644
> > > > > index 000000000000..334264120b42
> > > > > --- /dev/null
> > > > > +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c    
> > > >     
> > > > > +
> > > > > +static int inv_icm42607_setup(struct inv_icm42607_state *st,
> > > > > +			      inv_icm42607_bus_setup inv_icm42607_bus_setup)
> > > > > +{
> > > > > +	const struct device *dev = regmap_get_device(st->map);
> > > > > +	unsigned int val;
> > > > > +	int ret;
> > > > > +
> > > > > +	ret = regmap_read(st->map, INV_ICM42607_REG_WHOAMI, &val);
> > > > > +	if (ret)
> > > > > +		return ret;
> > > > > +
> > > > > +	/* Warn, but don't fail. */
> > > > > +	if (val != st->hw->whoami)
> > > > > +		dev_warn(dev, "Unknown whoami %#02x expected %#02x (%s)\n",
> > > > > +			 val, st->hw->whoami, st->hw->name);
> > > > > +
> > > > > +	ret = regmap_write(st->map, INV_ICM42607_REG_SIGNAL_PATH_RESET,
> > > > > +			   INV_ICM42607_SIGNAL_PATH_RESET_SOFT_RESET);
> > > > > +	if (ret)
> > > > > +		return ret;
> > > > > +
> > > > > +	fsleep(INV_ICM42607_RESET_TIME_MS * USEC_PER_MSEC);
> > > > > +
> > > > > +	/*
> > > > > +	 * No polling interval specified in datasheet, so use reset time as
> > > > > +	 * polling interval and 10x reset time as timeout period.
> > > > > +	 */
> > > > > +	ret = regmap_read_poll_timeout(st->map, INV_ICM42607_REG_INT_STATUS,
> > > > > +				       val, val & INV_ICM42607_INT_STATUS_RESET_DONE,
> > > > > +				       (INV_ICM42607_RESET_TIME_MS * USEC_PER_MSEC),
> > > > > +				       (INV_ICM42607_RESET_TIME_MS * USEC_PER_MSEC * 10));
> > > > > +	if (ret)
> > > > > +		return dev_err_probe(dev, ret,
> > > > > +				     "reset error, reset done bit not set\n");
> > > > > +
> > > > > +	/* Sync the regcache again after a reset. */
> > > > > +	regcache_mark_dirty(st->map);
> > > > > +	ret = regcache_sync(st->map);    
> > > > 
> > > > Sashiko raised the point that you don't have a writeable register list for the regmap
> > > > and so potentially we at very least write a bunch of stuff that isn't needed.
> > > > I doubt it's actually a problem or you would have seen it, but nice little optimization
> > > > to reduce what is written.    
> > > 
> > > I will add such a list, I'd put it in patch 4 unless you think I should
> > > merge patch 3 and 4 to make the driver compileable at the first commit
> > > of code (will push the number of lines to the ~850/900 range though).
> > >   
> > I'm fine with them split but don't mind if Andy prefers them combined.
> > His comment on adding a COMPILE_TEST option would allow that to be
> > built, but it is a bit odd to do it just for that purpose.
> > 
> > Jonathan
> >   
> 
> I'm going to add the i2c stuff to this series, and then do the SPI
> on the next patch. That should add only a little bit to this one but
> still ensure the very first (code) commit has something to compile.
> I'm going to avoid doing COMPILE_TEST unless collectively you all
> think I should.
> 
> I'm still racing to try and get this one done before the merge
> window opens up, but I'm pretty sure it's already too late at
> this point. I'll refrain from submitting updates once the window opens
> though.
Unfortunately you are correct. IIO in practice closes around 10 days before
the merge window to give time to both expose new things to testing in linux-next
and to allow time for Greg KH to merge my pull request into char-misc (which
is the path IIO takes to upstream)

Sorry about that, and whilst no need to rush as a result, we also don't
stop merging IIO stuff in the merge window, it just sits in the testing
branch until I can rebase that on rc1 and then push it out for linux-next
to pick up.

Thanks,

Jonathan
> 
> Thank you,
> Chris
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
