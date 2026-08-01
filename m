Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87503C55171
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 02:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6sO4FyB6wjL1csjTn5pH9gDScHo+//Azol357hO6IQ=; b=VO5VNSNhzZn1ei
	B51hjx5PzyFUeeXs0NuxGjoP2FNOx05/VwVGlpn0wfaC+WhV/FzN9Ju3Vdyz7RkH+MJ+4ZjBp/e5H
	n4498OsqBBEd8SUG26qeE8RbRjwhQ+O6FOllgy89pMrPZDI0DEeRbYdJG799KXQXIjMI6cpAqD83r
	mkaA+Etnc463uqnaQNHry2Esmddw7/QVvNJFKXLPIrFc15vFAYMRR5b5NuZjpHPoLebE2nTg4dIQ2
	qYp1TK5B+UDbIg8NqrFlAbiOL+6NJiaPleyQkF/KlrDoX5eZ2v/W0u0qNSHj9Q4JmRAMyuLJxvB6j
	v//yPzicfxcVGX+gmGPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpzF5-0000000Dp7V-3R2q;
	Sat, 01 Aug 2026 02:14:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpzF3-0000000Dp7F-0ndW
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 02:14:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8753A43405;
	Sat,  1 Aug 2026 02:14:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C144A1F00AC4;
	Sat,  1 Aug 2026 02:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785550464;
	bh=orVQNd/2zHKQaSBQxkSy/VCEDjroalGuV+v6+496uno=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=gW2GDjOWYy0gO1UHtOM7NfEABZ6Hh9NQQk2djeQ/ZYQkG1zK324wR8hnc3hMx/KQa
	 3FjVjVyn7WMVLZ/xABcF779Ym1OUrKI5rXP72hHIw5XZTSnn5KyAGDoNwW60HXpE3U
	 EMPl7BjxAc4SQ3BzaphMuwPYM6ROAxNs9OfQd0IOOOSTU2kfZN5ZjUJFk7LO55zFz5
	 kEiKg6ndTtGqjf8rYkGrcbQgaGHuPFudciw+6NUzn9cROQu63VZg5LYzF9zn6j1lZK
	 oPBZMZpAoaz/n7yG5aAqzgoEsGZuTmQSemq/gYNdqEzjMmRpAHnuPwE1aOhm547Mb9
	 WQW4yWWhu31PQ==
Date: Sat, 1 Aug 2026 03:14:18 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH V21 0/9] Add Invensense ICM42607
Message-ID: <20260801031418.31ecb46a@jic23-huawei>
In-Reply-To: <PH0PR19MB99733896FD0C3E2C24017C52AFA5CA2@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260728225542.174825-1-macroalpha82@gmail.com>
	<PH0PR19MB99733896FD0C3E2C24017C52AFA5CA2@PH0PR19MB997338.namprd19.prod.outlook.com>
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

On Tue, 28 Jul 2026 19:12:47 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

> On Tue, Jul 28, 2026 at 05:55:31PM -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add support for the ICM42607 IMU. This sensor shares the same
> > functionality but a different register layout with the existing
> > ICM42600.
> > 
> > This driver should work with the ICM42607 and ICM42607P over both I2C
> > and SPI, however only the ICM42607P over I2C could be tested.
> > 
> > Changes Since v19:
> >  - Removed remove routines and converted call to sensors_off to void,
> >    and then added a devm_add_action_or_reset() to call it on device
> >    teardown.
> > 
> > Changes Since V20:
> >  - Added missing include to inv_icm42607_temp.c.
> >  - Corrected note pointed out by Sashiko.dev as incorrect.
> >  - Added an additional delay for poweron based on the odr value of the
> >    given sensor. After doing an extensive amount of testing with low
> >    odr values (and even the default value for the gyro sensor) I was
> >    able to intermittently create EINVAL conditions because the driver
> >    was not waiting long enough after enabling the sensor, even
> >    accounting for the sleep delay. Adding a delay for the time it takes
> >    for the sensor to register a value corrected this intermittent issue
> >    as best I can tell. 
> > 
> > Chris Morgan (9):
> >   dt-bindings: iio: imu: icm42600: Add mount-matrix
> >   dt-bindings: iio: imu: icm42600: Add icm42607
> >   iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
> >   iio: imu: inv_icm42607: Add SPI For icm42607
> >   iio: imu: inv_icm42607: Add PM support for icm42607
> >   iio: imu: inv_icm42607: Add Accelerometer for icm42607
> >   iio: imu: inv_icm42607: Add Gyroscope to icm42607
> >   iio: imu: inv_icm42607: Add Temp Support in icm42607
> >   arm64: dts: rockchip: Add icm42607p IMU for RG-DS
> > 
> >  .../bindings/iio/imu/invensense,icm42600.yaml |  20 +-
> >  .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |   8 +-
> >  drivers/iio/imu/Kconfig                       |   1 +
> >  drivers/iio/imu/Makefile                      |   1 +
> >  drivers/iio/imu/inv_icm42607/Kconfig          |  30 +
> >  drivers/iio/imu/inv_icm42607/Makefile         |  13 +
> >  drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 421 +++++++++++
> >  .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 316 ++++++++
> >  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 702 ++++++++++++++++++
> >  .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 313 ++++++++
> >  .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  97 +++
> >  .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 107 +++
> >  .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  99 +++
> >  .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  38 +
> >  14 files changed, 2164 insertions(+), 2 deletions(-)
> >  create mode 100644 drivers/iio/imu/inv_icm42607/Kconfig
> >  create mode 100644 drivers/iio/imu/inv_icm42607/Makefile
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_temp.h
> > 
> > -- 
> > 2.43.0
> >   
> 
> Woot! Perfect sashiko score. 21st time's the charm...
Nice and LGTM so applied patches 1-8.  The final one should get picked up
via the appropriate rockchip tree.  

It was a hard slog, but having watching sashiko rip apart a driver
of mine this week (long since merged) I definitely sympathise.

Congratulations. Applied to the testing branch of iio.git where the much
less 'risky' 0-day build bot will check we didn't miss anything on that front.

Thanks,

Jonathan

> 
> Thank you,
> Chris


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
