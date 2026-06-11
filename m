Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C173CCD98D2
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 10:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4tSCzQrYTHvgqR1mAkBSFuo1YUyot96HEyFO8DJPywU=; b=WrIOb4nmLP72pS
	M+46QQBsl/ulA04p70aBHOFP9DZDdh1QRCdNibfyshJWboo+Uou/4oDniNnx4k8W9jhVC5XD86oTu
	Rhg4KMdpTn/FhbBc00DtizNmQe+ZgsY9wu38LKqh+0FPgNpD7Gz1PUEtG1vAlmFN/cIPi8KqNF3+L
	K815br4hxcK/al10CKquEbJcg7XV5WpRr3MbRBxS4j3NddHfWaMaVe8xKgUaKvo4AWB/ei6H8D6LN
	sAF6HVJ2BBWdiQoAuy+yInj4nBSQc9QaVVdbsyG/siVjHjLzmL9kOClztH5cNxh3RQJVMnAwuEa/2
	4oFoTnxiajuPzjXwbfUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd1V-00000009FmW-0QEy;
	Thu, 11 Jun 2026 10:52:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd1T-00000009FmK-24LV
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 10:52:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9206E60209;
	Thu, 11 Jun 2026 10:52:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF7F91F00893;
	Thu, 11 Jun 2026 10:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781175150;
	bh=jryDJyoQuOPseqrNNz87t6jVz7MBbbeS4jrOFkWcCPo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=eL4RBtpDo6T1lxpec7dkBsOXEp3HcE3lCIB7JqsvI+BepK0wZvN8JG0lvLZW0t/x3
	 QA9WrQMnQ4dUlyXNooG9H6zaz+uBTQcj6PnlVlIcHh6tHUU7NF4P6tV5tzudDAlng/
	 M584BTkGHJEz/PCo8+B5YmnaQA3jlM8YDlmGukTNM4G7YcFUWTDoRyml0tWKXO5EKV
	 PzIFFLCDa1Mj4pUOjmtZ2BKyikZKMYvmZS3HgwzcqiMruqObJE1Hl2JC0/Qnd32TSt
	 YcDH29LbwYWeDr3/IThMF8FlWfZ9mY8NeUnpr6GP/v8Hpek1YPDAsYCLQAPcMxdRpu
	 Jxz0LrITCtGCQ==
Date: Thu, 11 Jun 2026 11:52:19 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V11 4/9] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
Message-ID: <20260611115219.318fe543@jic23-huawei>
In-Reply-To: <aipolU1W3QNXdd5b@ashevche-desk.local>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
	<20260610175455.19006-5-macroalpha82@gmail.com>
	<aipolU1W3QNXdd5b@ashevche-desk.local>
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

On Thu, 11 Jun 2026 10:49:41 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Wed, Jun 10, 2026 at 12:54:48PM -0500, Chris Morgan wrote:
> 
> > Add I2C and SPI driver support for InvenSense ICM-42607 devices.
> > Add necessary Kconfig and Makefile to allow building of (incomplete)
> > driver.  
> 
> ...
> 
> >  drivers/iio/imu/Kconfig                       |   1 +
> >  drivers/iio/imu/Makefile                      |   1 +
> >  drivers/iio/imu/inv_icm42607/Kconfig          |  30 +++++
> >  drivers/iio/imu/inv_icm42607/Makefile         |  10 ++  
> 
> These should be part of the previous patch.
> 
> ...
> 
> > +config INV_ICM42607
> > +	tristate  
> 
> To make it compilable w.o. SPI/I2C make this as
> 
> 	tristate "Inven... Core driver" if COMPILE_TEST
Hi Andy,

Is it worth it?  I'm not convinced - we will get pretty 
good build coverage with a dependence on either SPI or I2C.
Plus as someone who always builds with COMPILE_TEST this
seems overly noisy to me.

Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
