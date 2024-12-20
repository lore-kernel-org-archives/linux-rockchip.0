Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8374C87FDA
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIfAahkdsZMRs8eR4/684TKp6W4u953Jm2vvN7OigiM=; b=BEStu+qTghAqXX
	DAqOLx7s3VWtXskvmt9VZQZ4ndOGFcEp8c2E3ofUMvdWP7EfJCvRvP88TxM5Fo9V7TMvKGHrYcHcP
	pwtj5KtKGIeWVYA77EP0tRLjbWugV6x0/Gxi34jYXeo6+Z6Mt6OfA0t6unmNWVfsZVtGIeOxFpi1n
	4aXdp9Hbv/Z+EogNcqoELM8ChzHgW5mGB7L3Wl6hWFgSg0M9qj9ypcTwj6CxVORzu4PpOG7masYML
	a7KcO+5wMUN7QC2XbfX7mzbmg3UFEihaFDsJr+IEldjKC6Wsd7bV8CDrcfCjSDW23vUeVCvk1vP+W
	JRe6QKb/xL84QSuThbhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbh6-0000000EweQ-067S;
	Wed, 06 Aug 2025 10:48:28 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOc10-00000004sH6-0DYx;
	Fri, 20 Dec 2024 12:21:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id EBEE4A41B25;
	Fri, 20 Dec 2024 12:20:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02B3BC4CECD;
	Fri, 20 Dec 2024 12:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1734697316;
	bh=JduFaswRmxN5tGLStvzwUiaywMEIItZVTSmKsVx9nOI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Yq+tb1psbAD0EEaGVo62BeRkwh9Xj1zwGjU1RnX9bPc3zuKVZ+vFaKjzZirLF0O5Q
	 cWqZTrj/8oUOashMDH0in9idt9Jf9pCN3xfKSbuna7zWsHJDYmyLi1Jgqy+04F5+b+
	 WkFCtRLWZn13uCsuIFDP/5NAmVeHVQ3OLBfdEu0A=
Date: Fri, 20 Dec 2024 13:21:51 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 00/38] rockchip: Add rk3562 support
Message-ID: <2024122018-groove-glitzy-f3bc@gregkh>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241220103825.3509421-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_042158_247302_8B58886D 
X-CRM114-Status: GOOD (  11.68  )
X-Mailman-Approved-At: Wed, 06 Aug 2025 03:45:50 -0700
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
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Ulf Hansson <ulf.hansson@linaro.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, heiko@sntech.de, linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org, linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Dragan Simic <dsimic@manjaro.org>, linux-phy@lists.infradead.org, Eric Dumazet <edumazet@google.com>, Finley Xiao <finley.xiao@rock-chips.com>, Michael Riesch <michael.riesch@wolfvision.net>, Jisheng Zhang <jszhang@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Shresth Prasad <shresthprasad7@gmail.com>, Jamie Iles <jamie@jamieiles.com>, David Airlie <airlied@gmail.com>, linux-clk@vger.kernel.org, linux-watchdog@vger.kernel.org, Simona Vetter <simona@ffwll.ch>, Detlev Casanova <detlev.casanova@collabora.com>, Lars-Peter Clausen <lars@metafoo.de>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>, Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org, Jiri Slaby <jirislaby@kernel.org>, Lee Jones <lee@kernel.org>, Andy Yan <andyshrk@163.com>, Tim Lunn <tim@feathertop.org>, linux-stm32@st-md-mailman.stormreply.com, Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>, Jose Abreu <joabreu@synopsys.com>, linux-serial@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Kishon Vijay Abraham I <kishon@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, linux-pm@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Jonathan Cameron <Jonathan.Cameron@huawei.com>, Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org, linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, linux-spi@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, FUKAUMI Naoki <naoki@radxa.com>, Jonathan Cameron <jic23@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Wu <david.wu@rock-chips.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, "David S. Miller" <davem@davemloft.net>, Lukasz Luba <lukasz.luba@arm.com>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Dec 20, 2024 at 06:37:46PM +0800, Kever Yang wrote:
> 
> This patch set adds rk3562 SoC and its evb support.
> 
> The patch number is a little bit too big, some of them may need to split
> out for different maintainers, please let me know which patch need to
> split out.

I recommend you doing the split-apart as you know the dependencies here
the best, right?  Otherwise we all will just probably ignore them
assuming someone else is going to review/accept them...

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
