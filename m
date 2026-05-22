Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FB18CD5BAC
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 10:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAjexbmQEJEbQlB6cOCUZl1v+JIAMhNxQp2lD5aCc7E=; b=oGgXk/2laDJ9K+
	RYxOUGpM50JH0Q+5kerwFao56iOhjrcczHWN6kgmDqpSFxnhS+ir+Igy5tTewD9R5hEpWDdvlUpBx
	dEveVo4jCfu4xpyZiYwGU0Nag9uFTP/6yL/I26OTCxcaG0++FA+raG8+zLIJZ7sqUDY792chNd6Vb
	XkX/6WlMzR4uhvyXyfKzCD1JNscoYiNZdxw2hdejd99KU55NLUQBnVK+efimAuThUpQMCOuSnmtic
	SiRrrnTBLI5e9O3Wjs0BOyfnBQP+IhHGq9RoUFHZoLk0EjU3gW11F8aLTiUJGp0UA5unLFcPPld7+
	H74aF8CycoaW8BR4tFFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNWV-0000000AYj0-2r3B;
	Fri, 22 May 2026 10:54:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNWU-0000000AYii-2qW3
	for linux-rockchip@lists.infradead.org;
	Fri, 22 May 2026 10:54:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CEA8260136;
	Fri, 22 May 2026 10:54:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C1321F000E9;
	Fri, 22 May 2026 10:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779447273;
	bh=zo7xZVZuaqNUtAJ4AFiwelE3O6ioLTV60tcoTNmKXEs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=YW4b9h+a+Z6HzD1qgVqNfQKy+HO6hkwS3FXSphq6qkZOJOc6r1y8i2Lpt7uElgXmv
	 Xavot82qkPMfHMJUpJroElhuqqRclOul7YFpM0mzcW45qtAPNcqmWyHJLe62WGsl/s
	 6HxX3A+b3U7tG/PVyfWG/K3oKfEHclvMWOc4EWX7wAkxjxqSwp8CfZVOjFcxqtk7PQ
	 saGQzC+lUrFurtRjtSgtt6WwVkWD9DU4EA3negswERMfF8Nm9VVBDiv6aIm+0gGmPR
	 6Vpc12ud6azAnaVa69m+eb2Z+zcEL9t5qXeal7Q/6Zv/rgfKYjpXnSzN6PmfJiXKIC
	 mbceIvo8X5veA==
Date: Fri, 22 May 2026 11:54:23 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Chris Morgan <macromorgan@hotmail.com>, Chris Morgan
 <macroalpha82@gmail.com>, linux-iio@vger.kernel.org, andy@kernel.org,
 nuno.sa@analog.com, dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Krzysztof Kozlowski
 <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH V8 02/10] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260522115423.1b30d4d4@jic23-huawei>
In-Reply-To: <20260521-challenge-flaccid-26b6f5d2d0bd@spud>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
	<20260518200526.458421-3-macroalpha82@gmail.com>
	<20260520174217.6ca98524@jic23-huawei>
	<20260521-premium-afterlife-0d7a22b77517@spud>
	<PH0PR19MB99733879756FFB321CDCDD9B81A50E2@PH0PR19MB997338.namprd19.prod.outlook.com>
	<20260521-challenge-flaccid-26b6f5d2d0bd@spud>
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

On Thu, 21 May 2026 21:08:07 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Thu, May 21, 2026 at 12:43:09PM -0500, Chris Morgan wrote:
> > On Thu, May 21, 2026 at 05:44:21PM +0100, Conor Dooley wrote:  
> > > On Wed, May 20, 2026 at 05:42:17PM +0100, Jonathan Cameron wrote:  
> > > > On Mon, 18 May 2026 15:05:17 -0500
> > > > Chris Morgan <macroalpha82@gmail.com> wrote:
> > > >   
> > > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > > > 
> > > > > Add devicetree binding for the Invensense ICM42607 and Invensense
> > > > > ICM42607P inertial measurement unit. This unit is a combined
> > > > > accelerometer, gyroscope, and thermometer available via I2C or SPI.
> > > > > 
> > > > > This device is functionally very similar to the icm42600 series with a
> > > > > very different register layout.
> > > > > 
> > > > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>  
> > > > Note that Sashiko has highlighted that the binding this being added to
> > > > has a potential problem.
> > > > 
> > > > interrupts are required but interrupt-names are not.
> > > > That would be fine but the binding doesn't say there is a default
> > > > ordering for the interrupts - so if we don't have names we have no
> > > > idea which interrupt it is.
> > > > 
> > > > This needs fixing - probably by adding a default  
> > > 
> > > Worth pointing out that this isn't an issue with this particular patch,
> > > the problem exists in mainline.  
> > 
> > The driver I lovingly borrowed this code from seems to have fallback
> > logic, basically picking the first interrupt if it couldn't find one
> > named "INT1". I was told early on not to do this that way, so in my
> > case the interrupt-names would be required (but not for the existing
> > driver because of this fallback).
> > 
Ah, so it  has a default that we've elected not to document.
I can't remember the history of that - probably similar discussion about
there being no right default when there are two (near?) identical operating interrupt
pins.

> > Should I make the requirement conditional just to my compatible
> > strings?  
> 
> Sure, sounds like a good idea to me

Agreed - that closes this for this part without spitting lots of warnings
for the older one.

J

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
