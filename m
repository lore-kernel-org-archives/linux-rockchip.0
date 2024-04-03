Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B6BCD1288
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 09:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5eqVDGDOTHOTH6aM+IRnx0l4FJl1tf9ysIINUzspBQk=; b=qlp/UFb+BYKRjb
	D+m80W3IGKEQ8MU/c2e5AUrNee8GgwzLa52Uzo0GV3aCijL3gRLoPuRTuuc+iNbtVvghs80aAqvg0
	XzMn9LYp0w87Tui4p0MrDwxtmsHXTopAvvmP8aqRybdzzGLtpixvJ35YfD7fm5rIhJe7uhk01QujM
	lOyFOmbjpyXzWoWOosx+kcXgtXNWQ7mwS1Osf9nvbpkCTjTNBUPBjN3eTp+RaVaBF2YjSFxDTvRa8
	C0s31HIjrD5EecRKLoVjLzOnLdY3RpNqBob5vwkjfMkhV7FixyzkiV33r5y2G9ws2UvrELdU6bNfa
	Mm+X+x1Pxiz4F2UApqxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrwYQ-0000000F6VR-3iH8;
	Wed, 03 Apr 2024 09:05:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrwYL-0000000F6R4-4ApN;
	Wed, 03 Apr 2024 09:05:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ZGKexqA+2WomfAR9uqTQdZr/Ot33GRFcNHcfDOzoXfw=; b=FAZLViN4KBwVn9W6mBAwD/tto1
	1hBnjSPZYrJXnyGPX40AClnUKEL8om5kBQhZ2aIVSGg/z/ZR34cM+q33ErFPOcWpT+4i2MYdppye1
	3ecwy8caLZM3zPbKjIVJbLzPqG0ZT5kWI8z9tCGZRkU+T9RDQxD043SNSqSmL/R5LaX6D4D71cnuD
	s4mVonCf2KpZ1gXUub+R0NtL6+bdJx+xFaKBQ9DY/NAaqXsOt1PIpKtTTkSBKZXqNfwuDzyNp0jqH
	MDcXJlRHt5faM9+hnje5DMs6s/y7Q9mOmB2C2l4cP0CFyV5U/NZvZdychXpNzPCLnEBLaLl3hVFKq
	W2tua3/w==;
Received: from mgamail.intel.com ([198.175.65.16])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrwYF-000000047NA-2wZD;
	Wed, 03 Apr 2024 09:05:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1712135099; x=1743671099;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=3vfTelqA3yYRG96fAMrL2EeVlynnaMGtmej49RqpETA=;
  b=N6DbYtCl5Q2E4CrpwEaQagncWHG3zSOvNSun2Ue74y368fmBPfvP27FY
   An3SrEqBAjPfvM1MIqDtEdKYzHDwdC+5/eV/3iBNmPsC9eQHWWFJL0Wa3
   yUzTIcFxKc5+2c8DpksskwG82/23OnMB79fHBvh9UzNc8gTP9WEVAepf7
   hfpCANaXLpqtPFFXI0RF+sl6G9KPW07u2DExTswjl2gH8LeeZ3Kv1m1wC
   sdB7bho+3m0ajybGkHPiy9ZW3DfMXo3dQp76petA+DG7mLyIKCKhZ9cU+
   2XteciFsnR0NWs+C2q130IRubAIsF+2FCkPTlVQ1iPbov2qkZSU2RjvZE
   A==;
X-CSE-ConnectionGUID: vmRe5gXPSDSGqe0HNeX0iQ==
X-CSE-MsgGUID: oKlSKXTjROGcu9LupiWyYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7480121"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7480121"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2024 02:04:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="915175028"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="915175028"
Received: from smile.fi.intel.com (HELO smile) ([10.237.72.54])
  by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2024 02:04:47 -0700
Received: from andy by smile with local (Exim 4.97)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1rrwY1-000000014L0-0vqT;
	Wed, 03 Apr 2024 12:04:45 +0300
Date: Wed, 3 Apr 2024 12:04:44 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>, Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Li Zetao <lizetao1@huawei.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Yang Yingliang <yangyingliang@huawei.com>,
	Luis de Arquer <luis.dearquer@inertim.com>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Jaewon Kim <jaewon02.kim@samsung.com>, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 31/34] spi: remove incorrect of_match_ptr annotations
Message-ID: <Zg0brIClNuW_Ur1B@smile.fi.intel.com>
References: <20240403080702.3509288-1-arnd@kernel.org>
 <20240403080702.3509288-32-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240403080702.3509288-32-arnd@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_100500_217756_4A292FE8 
X-CRM114-Status: GOOD (  14.91  )
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

On Wed, Apr 03, 2024 at 10:06:49AM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When building with CONFIG_OF  disabled but W=1 extra warnings enabled,
> a couple of driver cause a warning about an unused ID table:
> 
> drivers/spi/spi-armada-3700.c:806:34: error: unused variable 'a3700_spi_dt_ids' [-Werror,-Wunused-const-variable]
> drivers/spi/spi-orion.c:614:34: error: unused variable 'orion_spi_of_match_table' [-Werror,-Wunused-const-variable]
> drivers/spi/spi-pic32-sqi.c:673:34: error: unused variable 'pic32_sqi_of_ids' [-Werror,-Wunused-const-variable]
> drivers/spi/spi-pic32.c:850:34: error: unused variable 'pic32_spi_of_match' [-Werror,-Wunused-const-variable]
> drivers/spi/spi-rockchip.c:1020:34: error: unused variable 'rockchip_spi_dt_match' [-Werror,-Wunused-const-variable]
> drivers/spi/spi-s3c64xx.c:1642:34: error: unused variable 's3c64xx_spi_dt_match' [-Werror,-Wunused-const-variable]
> drivers/spi/spi-st-ssc4.c:439:34: error: unused variable 'stm_spi_match' [-Werror,-Wunused-const-variable]

I would drop these 'drivers/spi/' parts as we know they are all in the same folder.

> These appear to all be copied from the same original driver, so fix them at the
> same time by removing the unnecessary of_match_ptr() annotation. As far as I
> can tell, all these drivers are only actually used on configurations that
> have CONFIG_OF enabled.

LGTM,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
