Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1F28C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 11:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHWT/uewfu09AOlsBCcHCBnZSAAOVV62CvQNkn7KHWo=; b=1qriLHau8Zmare
	ZfIpMO/z0pdpua+Lnfb+/ESs6/9IQncdVnIqg6yI+nt3Z7Te+llQyb/sBYHxGQCIZcADdRezUFz+m
	woCRS053P/PU3Cq1nU+uJ1iDZjivKTbHdXCpbxqRVWOdkDrEerohdlqEjLyt5tapUwK6gH3g9qEaG
	G0qFrOjQrRv3GlZ5ZLuH1oQg5mlJgw4WttMQrydLRdIqNx0nmx3hzxnh98KxjZpnO+l+2Lr+BbtHf
	QaNAT0l7L87NSfKDcHu/3cyHZ+cV5a0N7eEuPYBd/vuNouXe6NhZJqi+8uWwWdCB+23P4uCIspg45
	/hIkWUyIuKeTfg5ey4oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjash-0000000BdI0-41OW;
	Tue, 14 Jul 2026 11:00:56 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjasg-0000000BdHX-0VQl
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 11:00:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784026854; x=1815562854;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Yw3UByh9lza4l+oROGbFdHgEwE9MVd7gDa2MvYy2QbA=;
  b=CnxhbB8NQ2Ks4JOtnDZXI7KSinjbs0FU1xmjFwWcLPo1GP9A3LCOzVxL
   myD9hnoJseZCVk+nbn24uAm/oLnxENbV8iWQBkj665lO76kEE0mWGPrNK
   spaGwMJAEBwbTYSVDq+xIDZY3N70OCiJC3QM2jt/U+08pTt6wI7qjvpFo
   GhBX67rf/SY54UaQzuVV/N0w9gtRJmlSNQ/uXmsjowRsEuRXNj0yUhPmd
   z0dG8rJpdTBXgs6EK1KaHoayWHymJwWSloI4HzUiimxNN6EEas9WHSo5j
   5ORWRakQR0lE8brtnBnuadTlEJTVrKXNTFPf55H79VzfsO6YL82i4Twvu
   A==;
X-CSE-ConnectionGUID: pNuOaPHRR0u2uFKAhOF/sQ==
X-CSE-MsgGUID: dG5+diJFRQmT6EEFwhELoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="102198198"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; 
   d="scan'208";a="102198198"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 04:00:50 -0700
X-CSE-ConnectionGUID: OCETTmGHRDaDqfO9C4ls2w==
X-CSE-MsgGUID: tdAzxbYhTeyhJs6x74p/zQ==
X-ExtLoop1: 1
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.189])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 04:00:47 -0700
Date: Tue, 14 Jul 2026 14:00:45 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v16 05/10] iio: imu: inv_icm42607: Add SPI For icm42607
Message-ID: <alYW3YEbjnCqrY2k@ashevche-desk.local>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-6-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260713215842.69097-6-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_040054_175941_AF0506C5 
X-CRM114-Status: GOOD (  13.77  )
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

On Mon, Jul 13, 2026 at 04:58:35PM -0500, Chris Morgan wrote:

> Add SPI driver support for InvenSense ICM-42607 devices.

A few nit-picks below, otherwise
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

...

> +static int inv_icm42607_spi_bus_setup(struct inv_icm42607_state *st)
> +{
> +	unsigned int val;
> +	int ret;
> +
> +	/* Only support 4-wire mode for now. */
> +	ret = regmap_set_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
> +				      INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_clear_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
> +				INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN |
> +				INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN);
> +	if (ret)
> +		return ret;
> +
> +	val = FIELD_PREP(INV_ICM42607_DRIVE_CONFIG3_SPI_MASK,
> +			 INV_ICM42607_SLEW_RATE_2NS);
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_DRIVE_CONFIG3,
> +				 INV_ICM42607_DRIVE_CONFIG3_SPI_MASK, val);
> +	if (ret)
> +		return ret;
> +
> +	val = FIELD_PREP(INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
> +			 INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_I2C_DIS);

+ blank line?
(Not sure, this is an interesting case and I have no strong opinion on
 either style.)

> +	return regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,

> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
> +				  val);

This can be a single (a bit longer) line.

> +}

...

> +static int inv_icm42607_probe(struct spi_device *spi)
> +{
> +	const struct inv_icm42607_hw *hw;
> +	struct device *dev = &spi->dev;
> +	struct regmap *regmap;
> +
> +	hw = spi_get_device_match_data(spi);
> +	if (!hw)
> +		return dev_err_probe(dev, -ENODEV, "Failed to get SPI data\n");
> +
> +	if (spi->mode & SPI_3WIRE)
> +		return dev_err_probe(dev, -ENODEV, "SPI 3-wire mode not supported\n");

Hmm... I would distinguish these two by the error code, perhaps -ENODATA for no
match data?

> +	regmap = devm_regmap_init_spi(spi, &inv_icm42607_regmap_config);
> +	if (IS_ERR(regmap))
> +		return dev_err_probe(dev, PTR_ERR(regmap),
> +				     "Failed to register spi regmap\n");

> +	return inv_icm42607_core_probe(regmap, hw,
> +				       inv_icm42607_spi_bus_setup);

This is perfectly a single line.

> +}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
