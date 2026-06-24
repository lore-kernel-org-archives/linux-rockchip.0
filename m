Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55B0ACDB479
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 15:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDNY5ehpPOBbWEuca3qvwr+/P41WNHQpII1Rc7CR6B0=; b=R02+LbAv8XBg2t
	rZYWgSwdaj4NL4eUZTTKClaSXntov+M+MRpEFFO67nRw/3MgLQ3wFVxyECCoDgxbh+CqjLjp+iCh9
	fBidzMA4BHGEAlPOqt//lAJK0ZnM/vmSy+8irJBFH1rHF74aatxOwRv8qErSHIBSz0/dEyWdQ2rRW
	ZOOouxxNkKK6oBnBSoAxFkbuyLsV3/ab6cONCDHavEOpincKCqTEnCo4ZV6bu1zPGSldpKtMeTX5q
	TqkEjNgo7rHPkJd+hNdKDe+ytnYnTqs1/+mQSRzt4UfS0yTqpMQHAKuz+QT+1w5jjMd2GJw4wWKwn
	lxYgQkiy7LTsStNZeZGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcPBu-00000007y3B-42eH;
	Wed, 24 Jun 2026 15:07:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcPBt-00000007y2w-2xWi
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 15:07:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 145B841786;
	Wed, 24 Jun 2026 15:07:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D195A1F000E9;
	Wed, 24 Jun 2026 15:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782313621;
	bh=m/LT8iicFWn/DKm58YR1jErmFau35XPFn/Pq+ixa7Hc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=n7jOVnfD/I1exlbN3eYiKrHUvaUDgj7PYHVSyUN9Jl+RLKjehTZTYWEVrMdPbODcj
	 OX4G6YSTEoN51Y0DOgV+3XTwbrdNaCiBC4GDGHryjWy9WaY5/eDWSnoXA8evZYQed1
	 LgmlBWgOdpgiMOKGbFuBGk2tZ0u7mhHd5l3/YAMOLzhFRt4Als3n8Qlx5gP40vntSF
	 732zwyOnTlBlvTBnfILE6suD7aU+ReR8cmWG1D+8mTTJOSrtYobGZIACluhfGRvss6
	 PSxkwDlI25/dBvko9bXCeWt2k6k2SgSnjI2HO6pWlevuJwaCnowLNLNxFzbmtacE/F
	 hqf9eyMGW8bdw==
Date: Wed, 24 Jun 2026 16:06:51 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH V13 5/9] iio: imu: inv_icm42607: Add PM support for
 icm42607
Message-ID: <20260624160651.03645da7@jic23-huawei>
In-Reply-To: <PH0PR19MB99733833C502FDB1FA4927B8DEA5EE2@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
	<20260615172554.160910-6-macroalpha82@gmail.com>
	<20260621181948.21d40a09@jic23-huawei>
	<ajnwk_zWevY14mEO@wintermute.localhost.fail>
	<PH0PR19MB99733833C502FDB1FA4927B8DEA5EE2@PH0PR19MB997338.namprd19.prod.outlook.com>
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

On Tue, 23 Jun 2026 13:08:02 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

> On Mon, Jun 22, 2026 at 09:34:10PM -0500, Chris Morgan wrote:
> > On Sun, Jun 21, 2026 at 06:19:48PM +0100, Jonathan Cameron wrote:  
> > > On Mon, 15 Jun 2026 12:25:48 -0500
> > > Chris Morgan <macroalpha82@gmail.com> wrote:
> > >   
> > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > > 
> > > > Add power management support for the ICM42607 device driver.
> > > > 
> > > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>  
> > > A few things from taking a look at the sashiko report:
> > > https://sashiko.dev/#/patchset/20260615172554.160910-1-macroalpha82%40gmail.com
> > >   
> > > > ---
> > > >  drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  18 +++
> > > >  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 139 ++++++++++++++++++
> > > >  .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |   1 +
> > > >  .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |   1 +
> > > >  4 files changed, 159 insertions(+)
> > > > 
> > > > diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> > > > index a6a58571935f..4f4f541027dc 100644
> > > > --- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> > > > +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h  
> > >   
> > > > @@ -334,11 +345,18 @@ struct inv_icm42607_state {
> > > >  #define INV_ICM42607_GYRO_STOP_TIME_MS			45
> > > >  #define INV_ICM42607_TEMP_STARTUP_TIME_MS		77
> > > >  
> > > > +/*
> > > > + * Suspend delay assumed from other icm42600 series device, not
> > > > + * documented in datasheet.
> > > > + */
> > > > +#define INV_ICM42607_SUSPEND_DELAY_MS			(2 * USEC_PER_MSEC)  
> > > 
> > > Sashiko had a valid comment on this.  MSEC_PER_SEC seems more
> > > appropriate given this is 2 seconds in milli seconds.
> > >   
> > > > +
> > > >  typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
> > > >  
> > > >  extern const struct regmap_config inv_icm42607_regmap_config;
> > > >  extern const struct inv_icm42607_hw inv_icm42607_hw_data;
> > > >  extern const struct inv_icm42607_hw inv_icm42607p_hw_data;
> > > > +extern const struct dev_pm_ops inv_icm42607_pm_ops;
> > > >  
> > > >  int inv_icm42607_core_probe(struct regmap *regmap,
> > > >  			    const struct inv_icm42607_hw *hw,
> > > > diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> > > > index 4b8e19091786..64f5d263de4f 100644
> > > > --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> > > > +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> > > > @@ -4,6 +4,7 @@
> > > >   */
> > > >  
> > > >  #include <linux/bitfield.h>
> > > > +#include <linux/cleanup.h>
> > > >  #include <linux/delay.h>
> > > >  #include <linux/dev_printk.h>
> > > >  #include <linux/device/devres.h>
> > > > @@ -11,6 +12,7 @@
> > > >  #include <linux/iio/iio.h>
> > > >  #include <linux/module.h>
> > > >  #include <linux/mutex.h>
> > > > +#include <linux/pm_runtime.h>
> > > >  #include <linux/regmap.h>
> > > >  #include <linux/regulator/consumer.h>
> > > >  #include <linux/time.h>
> > > > @@ -103,6 +105,63 @@ const struct inv_icm42607_hw inv_icm42607p_hw_data = {
> > > >  };
> > > >  EXPORT_SYMBOL_NS_GPL(inv_icm42607p_hw_data, "IIO_ICM42607");
> > > >  
> > > > +static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
> > > > +				      enum inv_icm42607_sensor_mode gyro,
> > > > +				      enum inv_icm42607_sensor_mode accel,
> > > > +				      bool temp, unsigned int *sleep_ms)
> > > > +{
> > > > +	enum inv_icm42607_sensor_mode oldaccel = st->conf.accel.mode;
> > > > +	enum inv_icm42607_sensor_mode oldgyro = st->conf.gyro.mode;
> > > > +	bool oldtemp = st->conf.temp_en;
> > > > +	unsigned int sleepval_ms;
> > > > +	unsigned int val;
> > > > +	int ret;
> > > > +
> > > > +	if (gyro == oldgyro && accel == oldaccel && temp == oldtemp)
> > > > +		return 0;
> > > > +
> > > > +	/*
> > > > +	 * Datasheet on page 14.26 says we need to ensure the gyro sensor is on
> > > > +	 * for a minimum of 45ms. So if we transition from an on state to an
> > > > +	 * off state wait 45ms to ensure a sufficient pause before power off.  
> > > 
> > > Sashiko commented on this..  I think what we could do with adding to the
> > > comment is what the path is that didn't pass through this function which would
> > > ensure we have been on for 30 of this msecs already.  
> > 
> > I'm going to track whatever time the gyro started, and then if less
> > than 45ms has elapsed just pause the remaining amount of time.
> >   
> > >   
> > > > +	 */
> > > > +	if (!gyro && oldgyro)
> > > > +		fsleep(INV_ICM42607_GYRO_STOP_TIME_MS * USEC_PER_MSEC);
> > > > +
> > > > +	val = FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, gyro);
> > > > +	val |= FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, accel);
> > > > +	ret = regmap_write(st->map, INV_ICM42607_REG_PWR_MGMT0, val);
> > > > +	if (ret)
> > > > +		return ret;
> > > > +
> > > > +	st->conf.gyro.mode = gyro;
> > > > +	st->conf.accel.mode = accel;
> > > > +	st->conf.temp_en = temp;
> > > > +
> > > > +	/*
> > > > +	 * If a state change occurs from off to on, sleep for the startup
> > > > +	 * time of the sensor, unless a sleep_ms is specified. Since more
> > > > +	 * than one sensor can be transitioned from off to on, select the
> > > > +	 * maximum time from each of the sensors changing from off to on.
> > > > +	 */
> > > > +	sleepval_ms = 0;
> > > > +	if (temp && !oldtemp)
> > > > +		sleepval_ms = max(sleepval_ms, INV_ICM42607_TEMP_STARTUP_TIME_MS);
> > > > +
> > > > +	if (accel && !oldaccel)
> > > > +		sleepval_ms = max(sleepval_ms, INV_ICM42607_ACCEL_STARTUP_TIME_MS);
> > > > +
> > > > +	if (gyro && !oldgyro)
> > > > +		sleepval_ms = max(sleepval_ms, INV_ICM42607_GYRO_STARTUP_TIME_MS);
> > > > +
> > > > +	if (sleep_ms)
> > > > +		*sleep_ms = sleepval_ms;
> > > > +	else if (sleepval_ms)
> > > > +		fsleep(sleepval_ms * USEC_PER_MSEC);
> > > > +
> > > > +	return 0;
> > > > +}  
> > >   
> > > >  
> > > >  int inv_icm42607_core_probe(struct regmap *regmap,
> > > > @@ -236,6 +305,8 @@ int inv_icm42607_core_probe(struct regmap *regmap,
> > > >  	if (!st)
> > > >  		return -ENOMEM;
> > > >  
> > > > +	dev_set_drvdata(dev, st);
> > > > +
> > > >  	ret = devm_mutex_init(dev, &st->lock);
> > > >  	if (ret)
> > > >  		return ret;
> > > > @@ -271,10 +342,78 @@ int inv_icm42607_core_probe(struct regmap *regmap,
> > > >  	if (ret)
> > > >  		return ret;
> > > >  
> > > > +	ret = devm_pm_runtime_set_active_enabled(dev);
> > > > +	if (ret)
> > > > +		return ret;
> > > > +
> > > > +	pm_runtime_set_autosuspend_delay(dev, INV_ICM42607_SUSPEND_DELAY_MS);
> > > > +	pm_runtime_use_autosuspend(dev);  
> > > Sashiko does put out some stuff here.  Please take a look and work out or
> > > test if it is right (I think not but haven't checked that carefully!)
> > > From a quick look I think that the auto disabling of autosuspend does a
> > > rpm_idle() that should result in it suspending...
> > >   
> > 
> > I see a few other drivers adding one more call to
> > devm_pm_runtime_enable() so I'm going to see how that works out.  
> 
> Obviously that didn't work, but digging in much deeper into the PM code
> I see that devm_pm_runtime_set_active_enabled() returns
> devm_pm_runtime_enable(), which sets devm_add_action_or_reset() on
> pm_runtime_disable_action(), which calls
> pm_runtime_dont_use_autosuspend() and pm_runtime_disable(). Shouldn't
> this work, or am I missing something? Basically when the driver
> detaches shouldn't this chain end up calling
> pm_runtime_dont_use_autosuspend()?
Agreed. That was how I read things.  The only thing I didn't entirely
confirm (states involved were fiddly enough I'd want to check it
with the actual driver!) was that pm_runtime_dont_use_autosuspend()
ends up calling rpm_idle() in this case.

Jonathan

> 
> Thank you,
> Chris
> 
> >   
> > >   
> > > > +
> > > >  	return 0;
> > > >  }
> > > >  EXPORT_SYMBOL_NS_GPL(inv_icm42607_core_probe, "IIO_ICM42607");  
> > 
> > Thank you,
> > Chris  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
