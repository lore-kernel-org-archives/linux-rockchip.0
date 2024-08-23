Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7882CC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 07:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wKtJ7fQPHqbLEvS4hjVekQl/d+o+hE6dAdPV+2UXVdU=; b=0CRnnnSwLSRPTHUjbU4MOhmmy/
	mXu0gRlKPlN2OVam3wLkl+fF1/K3EAV6SteDA3Yfd5NvOoXvoxtF0xVtTalh5NZROwT06P7DI+D8Z
	pktLNI9AO+1YkDAYXibk+zFGJM+x3PbN46UVJzVnDt0vwTV1g+sbojcNcFB3DIcidgaVr45att4yV
	ziWPhbWEzkEXgI/WRE99nD9fFn8qvxqngBHFG66PPdu87nYsaWoQ9ijO6FNg2J2mhTjVbBRnLzx+k
	IaGarFOz49jSMaNMO9WdCyGIyfBzYxpaAjbsY9iiTjW9iAYeqWtL4VyMr/KzY7v7zg8iVAXiCenKG
	eLaySXDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shORN-0000000Faxj-0kRr;
	Fri, 23 Aug 2024 07:10:33 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shONp-0000000FZj5-2FKX;
	Fri, 23 Aug 2024 07:06:54 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724396811;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uk+gkYUflODc+eRWSAS3LGZzaVkq5JJYSdzC+cnX4hA=;
	b=JjtwRubot6tDXBlSTMcSA13Yb3AlCfGTaiJIQDtXbM13oYuSsgz4vOBehFmnDTZIeFethJ
	RAYwq/JszXK2zQG9HJ6/fq489F/8zs0roc+QaSz/8RwaNZktCD8GkggXXgRgp1Rg4SIPLY
	hRgaTCCCVsMhl/WFG90DvmRk7/HvD7MtBT0iz68CJtIGQPSN/7ncPTOQQqigTgD6fldjht
	e2E66iISKo+yblcr7qXSQLhLe4CGUhxyPasF+Wnn1OuOTaET6M0CMp1gBqTNI+nHvtr/E1
	TLyFlnZucALGjkba5p2opkT9mhWXI3lWTTZs3fF8V8wibVjWL863H9lCA3AOng==
Date: Fri, 23 Aug 2024 09:06:50 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 mika.westerberg@linux.intel.com, andriy.shevchenko@linux.intel.com,
 tao.huang@rock-chips.com, finley.xiao@rock-chips.com,
 tim.chen@rock-chips.com, elaine.zhang@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: Update the GPIO driver
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
Message-ID: <1195a341c0206b08318ca90af0b9cb00@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_000653_782913_BC3750D6 
X-CRM114-Status: UNSURE (   9.29  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Ye,

On 2024-08-23 05:43, Ye Zhang wrote:
> GPIO driver support acpi and new version, set input direction in
> irq_request_resources, fix division error and debounce config error.
> 
> Changes since v1:
> - Split commits with multiple changes into separate commits.
> - Adjust backportable fix to the forefront.
> - Modify messages of some commits.

It seems that you sent a bunch of separate patches, instead of sending
a patch series.  I believe that wasn't intended or requested, so could
you, please, resend the v2 patches as a series?

> Ye Zhang (11):
>   gpio: rockchip: avoid division by zero
>   gpio: rockchip: release reference to device node
>   gpio: rockchip: resolve overflow issues
>   gpio: rockchip: resolve underflow issue
>   gpio: rockchip: fix debounce calculate
>   gpio: rockchip: Update debounce config function
>   gpio: rockchip: support 'clock-names' from dt nodes
>   gpio: rockchip: support new version gpio
>   gpio: rockchip: Set input direction when request irq
>   gpio: rockchip: support ACPI
>   gpio: rockchip: driver works without pinctrl device
> 
>  drivers/gpio/gpio-rockchip.c | 297 +++++++++++++++++++++--------------
>  1 file changed, 181 insertions(+), 116 deletions(-)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
