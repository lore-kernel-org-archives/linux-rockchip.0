Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67FF4C71134
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 19:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mhYI4OnyISKMAesM09UCdiV/pKsN1AeZAON0cSAVhU=; b=RXGTcvWgpyljsv
	gNumJT5LlC7/nZb/b1/1FAOtKgeUk1OwRwv4OvwEhitLCyFBsKJVf+GVErvtuWDalkh0lO3BllqmH
	NuW3HhuwFm0bfyaFXFjSv4p9FBIHdJCAH3+S86cCzfx/p0qzhXtN2tSVKze5wtZQ3C47CYQFV+jik
	8Bf7dt8yTDp/+fU0y9KJufe9/lEa5T7fYSV1W7l8PjlRDowFXjopgWc9umRLdzFqWb2LlHUZBGSWl
	FBOsnCqnQjxPLJzd6Uw2Dxps0O4tufRoeSotoBkRBAxjYgWlty9HLKA+xSGZAXPU78c5xwo2IXDrC
	1Ik182v4y9HVNYuxqzeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPRXC-0000000B2PW-3tHw;
	Wed, 11 Jun 2025 19:54:54 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPNDW-0000000AMTr-27aS;
	Wed, 11 Jun 2025 15:18:19 +0000
X-CSE-ConnectionGUID: 9VWqZ2/FTBqI6IOZPnwzjA==
X-CSE-MsgGUID: mgqW0CV8RP+uEqLDEM8ODg==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62839534"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; 
   d="scan'208";a="62839534"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2025 08:18:18 -0700
X-CSE-ConnectionGUID: wJ16Cb+nRaC7FDUPLS4m5A==
X-CSE-MsgGUID: mdZBOygwSXumz5p8Y8VXaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; 
   d="scan'208";a="148128870"
Received: from smile.fi.intel.com ([10.237.72.52])
  by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2025 08:18:12 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
	(envelope-from <andy@kernel.org>)
	id 1uPNDM-00000005gLk-42DS;
	Wed, 11 Jun 2025 18:18:08 +0300
Date: Wed, 11 Jun 2025 18:18:08 +0300
From: Andy Shevchenko <andy@kernel.org>
To: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
Cc: linux-kernel@vger.kernel.org, tglx@linutronix.de,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Doug Berger <opendmb@gmail.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Keerthy <j-keerthy@ti.com>, Vladimir Zapolskiy <vz@mleia.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
	imx@lists.linux.dev, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] gpio: Use dev_fwnode()
Message-ID: <aEmeMOW5e3q9TrUu@smile.fi.intel.com>
References: <20250611104348.192092-1-jirislaby@kernel.org>
 <20250611104348.192092-6-jirislaby@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250611104348.192092-6-jirislaby@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_081818_584717_27BA1D24 
X-CRM114-Status: GOOD (  14.25  )
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

On Wed, Jun 11, 2025 at 12:43:34PM +0200, Jiri Slaby (SUSE) wrote:
> irq_domain_create_simple() takes fwnode as the first argument. It can be
> extracted from the struct device using dev_fwnode() helper instead of
> using of_node with of_fwnode_handle().
> 
> So use the dev_fwnode() helper.

Thanks for this change. See my nit-pick below.

...

> @@ -436,10 +436,8 @@ static int brcmstb_gpio_irq_setup(struct platform_device *pdev,
>  	struct device_node *np = dev->of_node;
>  	int err;
>  
> -	priv->irq_domain =
> -		irq_domain_create_linear(of_fwnode_handle(np), priv->num_gpios,
> -				      &brcmstb_gpio_irq_domain_ops,
> -				      priv);
> +	priv->irq_domain = irq_domain_create_linear(dev_fwnode(dev), priv->num_gpios,
> +						    &brcmstb_gpio_irq_domain_ops, priv);

In cases like this, I would rather see something like

	struct fwnode_handle *fwnode = dev_fwnode(dev);

just near to the respective of node extraction. This will help to reduce churn
when converting the rest of the code to use fwnode instead of of_node/np.

>  	if (!priv->irq_domain) {
>  		dev_err(dev, "Couldn't allocate IRQ domain\n");
>  		return -ENXIO;

Other than that I appreciate the series!

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
