Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D92A7ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Sep 2022 13:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpblyXwkWsD8eFo4Ji8fKiKuHuF0Rh5HIKw1iAyfg98=; b=Tq1vU/Jngvldx9
	xa+aHJ2hKE4i/+wkdH7nnMLKkv5Blu4J57Dv07ssNx0DuSvM4xb0FJ6AmqPkjg5YEVW2QECa3OdH3
	3DrQjZwaZVPUwUD51jVvblwaFZnQrjo4eUvl5KVukpgRDK514XXojqpjiYG26jv9mCCBbDtgyCNRd
	eAlADXkXO2zgI0CM5gmwPAtBBLTh8YOgrIl+oxJ7tBhNR0fj3FWsRCY0UEbDvSfJwZROu82IGozxW
	HAA4K+RvcGUlCrA9mXR9FbGhl1VcpIF+hNW0Q/zFn04DV+DE2wudgjEapb3OYaP+HgcevC1Atlh0R
	NgIXxXPyc1u1+PmB1mHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHD6-00BxLD-Ec; Mon, 19 Sep 2022 13:53:20 +0000
Received: from mga17.intel.com ([192.55.52.151])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHD3-00BxKI-TX
	for linux-rockchip@lists.infradead.org; Mon, 19 Sep 2022 13:53:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663595597; x=1695131597;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=9mnewEZpZptCq4MGPR28tLs4sWdFIy767pEeXlprqRE=;
  b=H+0MB5twd2fhDM2PXXQ+LEUp/eUM1rTE5t20mzIHFg1g3Rq19fTcbthE
   26nLQesYzqwf0LbJjjDrk49g//u6AMaLzgpgjiEF5UjxKPNVgok6OFY5S
   B5CN2HvJeZb+IbB+f5P+oBzeVurwTC14KV3j7h5qBBfBoWk+VVkLxczC0
   sgMuj8i/DtBRj2CpVWYwkFT452IneG99NBUbdFGonanOKvpZntmcing7f
   iLO8WwJ5ECG7arEVJFdVQRspKP9xx3QGtPke/FFKGjmYglc7jGVmH4c1Q
   KRQXSgdpDFeOre/2JmLPmqdXQeECCNCGSxkBnlwWI1l1SYw2G4rYPtdfY
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="279785543"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; 
   d="scan'208";a="279785543"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 06:53:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; 
   d="scan'208";a="707574492"
Received: from smile.fi.intel.com ([10.237.72.54])
  by FMSMGA003.fm.intel.com with ESMTP; 19 Sep 2022 06:53:13 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1oaHCy-004Zsi-0j;
	Mon, 19 Sep 2022 16:53:12 +0300
Date: Mon, 19 Sep 2022 16:53:11 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: jbx6244@gmail.com, heiko@sntech.de, linus.walleij@linaro.org,
	brgl@bgdev.pl, linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] pinctrl: rockchip: find gpiochip by name from gpio module
Message-ID: <YyRPy8MnklttTup8@smile.fi.intel.com>
References: <20220916084343.458566-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220916084343.458566-1-jay.xu@rock-chips.com>
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andriy.shevchenko@linux.intel.com>) id 1oZ8aB-003AUC-1p;
 Fri, 16 Sep 2022 13:28:27 +0300
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_065318_123396_2008A3FC 
X-CRM114-Status: GOOD (  13.05  )
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

On Fri, Sep 16, 2022 at 04:43:43PM +0800, Jianqun Xu wrote:
> Currently the pinctrl device acts as parent for the gpio devices for
> rockchip platform, the pinctrl driver probes first and then populate the
> gpio platform lastly.
> 
> This patch makes the pinctrl to populate gpio platform firstly and then
> do probe after gpio probed successfully. And get gpiochips througth a
> find function by the gpio label.

> +static int gpiochip_match_name(struct gpio_chip *gc, void *data)
> +{
> +	const char *name = data;
> +
> +	return !strcmp(gc->label, name);
> +}

> +		gc = gpiochip_find((void *)ctrl->pin_banks[i].name, gpiochip_match_name);
> +		if (!gc) {
> +			dev_err(dev, "fail to find gpiochip\n");
> +			return ret;
> +		}

NIH find_chip_by_name()


-- 
With Best Regards,
Andy Shevchenko



-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
