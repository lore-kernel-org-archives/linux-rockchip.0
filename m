Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 424BFC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 16:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXhU4l7hjTXT9K1vJ4HdlJcuS5sWBv14SrC7PhvGqjA=; b=boFU36UG6fhWfG
	J6lM6jVmPF+4jTDB0xuwIiv6wpRNyA1eQIcRMBbhAmbUmsO2O0ZB8qknI3cpurLRElITWsDDL3z+R
	Rfx8fzIBGIOAWacmhzkO+MwtM0SaN1CfW0l9XciBa/5N7Cvl3GHj1dgHEBDVc404nE47u1CwLjrqO
	RTZRHFRfZFHXXeKaa9jy7VXdmt39p/osKj0qLEWJJt0gubczmXpt1TBtBvNv5KsjnPycU70p6F3av
	ZTobKg15M6QGXhvafIqGze3+8i8a8Jw3Hl3oSV/eqYRrnjclviUtQbX9M+S2ZRADSGr5R2oi/L/MO
	ZoNZTfhPPO2/GnQ63yNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfzW-00000003WVu-00ql;
	Sat, 13 Apr 2024 16:12:34 +0000
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfzN-00000003WV8-35Bd;
	Sat, 13 Apr 2024 16:12:27 +0000
Received: from localhost.localdomain (unknown [82.64.135.138])
	by smtp2-g21.free.fr (Postfix) with ESMTPS id 9046E2003D6;
	Sat, 13 Apr 2024 18:12:04 +0200 (CEST)
Received: by localhost.localdomain (Postfix, from userid 1000)
	id 9349040039; Sat, 13 Apr 2024 18:11:10 +0200 (CEST)
Date: Sat, 13 Apr 2024 18:11:10 +0200
From: Etienne Buira <etienne.buira@free.fr>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	shironeko <shironeko@tesaguri.club>,
	Etienne Buira <etienne.buira@free.fr>,
	Jonas Karlman <jonas@kwiboo.se>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Avoid error message on rk3328 use
Message-ID: <ZhqunpH6WjKEhePN@Z926fQmE5jqhFMgp6>
Mail-Followup-To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	shironeko <shironeko@tesaguri.club>,
	Etienne Buira <etienne.buira@free.fr>,
	Jonas Karlman <jonas@kwiboo.se>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <ZhqO-DEmh-6TeHrt@Z926fQmE5jqhFMgp6>
 <f245966c-267f-4159-a9ca-2561693d24d9@linaro.org>
 <Zhqjhvq38oNH5-sR@Z926fQmE5jqhFMgp6>
 <45eea851-ed28-4066-8bc1-d04acf4021f7@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45eea851-ed28-4066-8bc1-d04acf4021f7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_091225_950591_779B7E54 
X-CRM114-Status: GOOD (  16.13  )
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

On Sat, Apr 13, 2024 at 05:49:13PM +0200, Krzysztof Kozlowski wrote:
> On 13/04/2024 17:23, Etienne Buira wrote:
> >>> presence of gpio,syscon-dev node (or it will call dev_err() when probed).
> >>> Correct rk3328.dtsi and related documentation to follow syscon's
> >>> expectations.
> >>
> >> No, look at gpio-syscon driver. Parent is used.
> > 
> > Parent is used, but the next lines are:
> > ret = of_property_read_u32_index(np, "gpio,syscon-dev", 1, &priv->dreg_offset);
> > if (ret)
> > 	dev_err(...)
> > 
> > So if gpio,syscon-dev does not have at least 2 items (or is missing),
> > dev_err will be called, 3 items for dev_dbg.
> > Current tree displays a spurious "can't read the data register offset"
> > message.
> 
> Hm, indeed, then I think driver, so
> aa1fdda8f7ebf83f678e8d3c2ab4f1638c94195f, should be fixed. Otherwise
> please say why binding is not correct and driver is good.

I tried fixing the driver first, this was discussed here:
https://lore.kernel.org/linux-gpio/ZhptEWb7tD5pummq@Z926fQmE5jqhFMgp6/T/#t
you're welcome to comment.

I have no strong opinion over what should be fixed, i just wished to
shut a spurious error message, that i expected to be straightforward at
first (hence good candidate for first kernel patch).

Regards


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
