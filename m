Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B484CD98C5
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 10:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVCUjxzBNLaMtR1ITWkdoiEKlVOTo+bc5lnJdWep9c0=; b=gqgF6Rnhz2hTj7
	QKCKzxd7hXtTRnJ74aiy9tGxC/1zrP3SWezhZVGkWRWNyjIEY8slvzJxAkG4VoWSqzTEceKzmEh2Z
	05BDaNqfdG/ddp7dgyt4xIyZxIXlmytGFZIR98npOmgH0PyERdINcDD29dDvVw6/Wafvo2jCOVxBv
	ECEWVHNBZfcVXrALns0LFitKjkp0XjERAnCFhMq3m3SUpTHzow9zL1g3bHYg5tFRdDIhQ9vVa6jG1
	B3ukC13//tMQ4tZlXmqPteRu86wGxjAcdtm//YWEV/ZuOUdoL5tM1UcXApX9H1lZJQBC3RhRygre0
	9I+4Gfsn6yTWvtXA47eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ4Vp-0000000E34j-1xNW;
	Mon, 15 Jun 2026 10:25:49 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ4Vl-0000000E2yy-290d
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 10:25:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781519145; x=1813055145;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=JlxMRRzmNLl5motzE3G6Kxf7KBpQ0QeKSXmg+oxTlDA=;
  b=ZlyFbsMa49r1/vy6Ksq4DFoEdDsbFDoQ8OJJhh84vX3pNc2NaYCfAxrB
   5PPbeGrn0RRoCr0XeWmXbnmSQL0o3jcTCnCiTGmYswj9H1iQ3S2rF3J4f
   6bgW3ay+o9wSY02XmHrQLRV9i1CP+Mjh/B/+D/Rf9kdNfKCD/vj1FdGoZ
   DDwStLGLd2TsZy0J1oOtyDiiPy+wOhcKxwlXZDRDRcmfg1RJQcA7zGGzk
   Pmg+3yatFzMOiqYBxBAKZZ5L4f6fpYXp/pLjIFhK4CkS4EoC1wtVWnRrr
   Gww59MY3R6yG3UoeV5pVHks0V/Seh9D6A9Hr28k/MziynSYjTqMLtw2bD
   g==;
X-CSE-ConnectionGUID: MVUivVsMQd+X2rzyf+lyUw==
X-CSE-MsgGUID: UmcBs//ZTSO8osy7ITRtkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="82102486"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="scan'208";a="82102486"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 03:23:43 -0700
X-CSE-ConnectionGUID: 5X9uSTOYTlGXJeJgC+24mg==
X-CSE-MsgGUID: XVYi6KlESCqG5krYV3y3qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="scan'208";a="246544081"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.235])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 03:23:40 -0700
Date: Mon, 15 Jun 2026 13:23:37 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V12 4/9] iio: imu: inv_icm42607: Add SPI For icm42607
Message-ID: <ai_SqaTvBYI7wL79@ashevche-desk.local>
References: <20260611202607.85376-1-macroalpha82@gmail.com>
 <20260611202607.85376-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260611202607.85376-5-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_032545_599739_DDA8BB76 
X-CRM114-Status: UNSURE (   8.82  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jun 11, 2026 at 03:26:01PM -0500, Chris Morgan wrote:

> Add SPI driver support for InvenSense ICM-42607 devices.

...

> +#include <linux/bitfield.h>
> +#include <linux/dev_printk.h>
> +#include <linux/err.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +#include <linux/spi/spi.h>

...

> +static const struct spi_device_id inv_icm42607_spi_id_table[] =3D {
> +	{
> +		.name =3D "icm42607",
> +		.driver_data =3D (kernel_ulong_t)&inv_icm42607_hw_data
> +	}, {
> +		.name =3D "icm42607p",
> +		.driver_data =3D (kernel_ulong_t)&inv_icm42607p_hw_data

I believe I have commented on this already. But anyway, please leave
a trailing comma for .driver_data assignments as well. Same for I=B2C
driver.

> +	},
> +	{ }
> +};

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
