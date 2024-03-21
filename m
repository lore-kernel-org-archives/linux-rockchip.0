Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9661C54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 15:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=68AV050yqhxFv6+Wv1X60mzPyppM5QpsVJEls9jyBrY=; b=Y9sAGlVeV4fti+oQOBrgNMbfTi
	naqEqrizWIDwlHuKzwS50yI3SdmNxwUEuy/hZXWH1IrNvz0ZkFoLtR5WL7J/5mi5Ki3fRMQuoqR5A
	1X7H0JuFlDNWuWkdPuyeLDEJgXmHgpxFkBsKTFcz+emyQquHgi0fwY3EXNKSYtmqMTB/pgLUhksyX
	SGJH25pHWMD1acxPdjQXBt7PasdhJDtGqfKza/OhAqXHBd31CJJ1tFip/YkpNrAzNP0+XgJFsy/oA
	TZuqG+ePew/M7reiOh2nqFpliNwEVavbpwLuXsrKCnP6IUFrsvDMMmRl9qEF3GYysjMNi+oVizz1J
	z83tlA/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJut-00000003NpC-2MFB;
	Thu, 21 Mar 2024 15:01:15 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJuo-00000003NnB-3ugO;
	Thu, 21 Mar 2024 15:01:13 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711033265;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Sft1JFZk5skzUoNvqsIk2m0oGI7tbYzzfxLI3ZVhHZo=;
	b=SiD/LbjNKb4AO6tgV6/Tnd6/ux2gXYJ3AEfGypJAFLS34zSNhV4XKCSvE/81nMKXYNQhF7
	ts3F5nJiVETb0Sah0NxVllHxkf0/7k++xFSPaPaC7CisDQOwvahcKSqR+5faVYq+aLzZ3i
	bhNuRVjzJ6AriEpWFupgQFXvoVcfflf7f8IoYBpyFrU3eeLF8F91W0VAw7ajiONOZ+Q1Tw
	+6hFdXCd9duHSvBucRVIIOkJRpiB4fNzECssiiTWd+kd6EntvPe6HtfiB9Eukv/iM0z1p1
	mlpiDY1iM7rkx9N6ildz9N+ILdA31tAOirTTM2GfwPibJYUnLgQ7MU6dw1ai4A==
Date: Thu, 21 Mar 2024 16:01:04 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Linus Walleij
 <linus.walleij@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>, Chris Zhong <zyw@rock-chips.com>, Zhang Qing
 <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [PATCH 0/5] Add RK816 PMIC support
In-Reply-To: <20240321143911.90210-2-knaerzche@gmail.com>
References: <20240321143911.90210-2-knaerzche@gmail.com>
Message-ID: <9a79e319d671b6a257f13ff945ee87e5@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_080111_967034_7096094E 
X-CRM114-Status: GOOD (  21.61  )
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

Hello Alex,

On 2024-03-21 15:39, Alex Bee wrote:
> This series aims to add support for Rockchip RK816 PMIC series. As per
> datasheet it's targeted for RK3126/RK3128 (RK816-1), RK1108 (RK816-2) 
> and
> PX3-SE (RK816-3) but might be used for other SoCs as well. The mfd 
> consists
> of an integrated RTC, a GPIO controller, two 32k clock outputs, a power 
> key
> (output), 4 buck- and 5 ldo regulators, 3 regulator-switches, and 
> charger
> with integrated fuel gauge. Charger and fuel gauge are not part of this
> series. Two of the switches (otg/boost) are part of the binding, but 
> not of
> the driver. They must only ever by enabled if no battery charging is
> happening, but it will be enabled automatically if a battery is 
> attached.
> Thus they need some incorporation of a yet to be added charger driver.
> Integration in the existing rk8xx-infrastructure was pretty 
> straightforward
> and only needed very little tweaking. In order to not further bloat the
> driver(s) too much with additional definitions I tried to re-use 
> existing
> ones wherever possible.
> 
> The patches are loosely based on the vendor's implementation, verified
> against the datasheet and tested/measured on RK3126 board. As they are
> touching several subsystems I'm sending them (very) early for the
> 6.10-cycle.

I went quickly through all patches in the series except the one that 
adds
the bindings, and I've spotted no glaring issues.  My main focus was on
ensuring there should be no regressions.

Thus, not worth a Reviewed-by tag, but still counting as a review.

> Alex Bee (5):
>   dt-bindings: mfd: Add rk816 binding
>   mfd: rk8xx: Add RK816 support
>   pinctrl: rk805: Add rk816 pinctrl support
>   regulator: rk808: Support apply_bit for
>     rk808_set_suspend_voltage_range
>   regulator: rk808: Add RK816 support
> 
>  .../bindings/mfd/rockchip,rk816.yaml          | 259 ++++++++++++++++++
>  drivers/mfd/Kconfig                           |   4 +-
>  drivers/mfd/rk8xx-core.c                      | 103 +++++++
>  drivers/mfd/rk8xx-i2c.c                       |  45 ++-
>  drivers/pinctrl/pinctrl-rk805.c               |  68 +++++
>  drivers/regulator/rk808-regulator.c           | 218 ++++++++++++++-
>  include/linux/mfd/rk808.h                     | 141 ++++++++++
>  7 files changed, 831 insertions(+), 7 deletions(-)
>  create mode 100644 
> Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
