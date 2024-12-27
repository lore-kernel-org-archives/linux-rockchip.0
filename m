Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE1DEE7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 08:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Nwy2JrYfgy4flcPEYClmRJyfeceVV0KnSwLZ961z0c=; b=hhvym8eEH8rMwQ
	C7mjHKOOGeIrUpz/agOYA5/CGS7FdM1Mwv/0JID/l0VkekA1niHS3yfB9On/zGtnNUOBFMfTJ989g
	yX5DF87RMZts7wzUZBVR4SSaYrq6IhShevcrASwRzko5S8VmTGmxigT5QAJlM69Oefg41wTL94ETS
	asr0hOfjH/kvx7up/8yd9vlrCYXuZdG2MAwUjNdd2etKdxRJ059eZFU6Xgxg2WJhzFsn0ph3Gzn12
	JhvYsTVBmejkZof6NJc7rwggqJcTyjxbZnTHNHw9rku2NB4oiHDKOcRfVFuRKcAEthGGyR+RLA3z4
	8GEeJrG0V+yCM6bscYjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5my-0000000HNpk-3dJe;
	Fri, 27 Dec 2024 08:33:44 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5le-0000000HNbE-1CsU;
	Fri, 27 Dec 2024 08:32:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 28453A4125C;
	Fri, 27 Dec 2024 08:30:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54858C4CED0;
	Fri, 27 Dec 2024 08:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735288340;
	bh=SomxrRy3DEcymeIZFaLbSytrxsSP9+O9g1S7IZ1EnHE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tetoHWau0+A61rbzcsUZqGjxnX8y6868nvvOWrH6GOLTDVC7r8kdrT9uX+0+Lk6bK
	 yyDSjFt6ZTnySdTg+2o7RE9kSTvjOijq/3nj0ljJo6QdZXgJroOIEml83oDYZY297I
	 8MHUFkxNBnq+1Am6PZJhBzQC1AijfDXGQjvxLCRWU398ZrLbmUoItQ69YAm82y1wbD
	 9+gbJ+kVXA3chDVGmCK50zaxZ+Yh/tEet8AzsJISJpnoWyn2wul+FicsEs7lwO+6gZ
	 7JWNBSDyQhKkSdspOMQ7pMAMQ5GV57PkFN1ICY7l37/a85AlH1wDzcBy/l3UcT+7Y8
	 vytiYH3WBFfFw==
Date: Fri, 27 Dec 2024 09:32:16 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 00/17] rockchip: Add rk3562 support
Message-ID: <z52ppg6iolgd6qqxusqm2a2eor552bfpknyxjgf7ttyy4ifxbs@q4jf4wblnh3q>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241224094920.3821861-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_003222_393965_DD12E068 
X-CRM114-Status: GOOD (  10.54  )
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
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Ulf Hansson <ulf.hansson@linaro.org>, heiko@sntech.de, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, dri-devel@lists.freedesktop.org, Andy Yan <andyshrk@163.com>, Finley Xiao <finley.xiao@rock-chips.com>, linux-i2c@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Shresth Prasad <shresthprasad7@gmail.com>, Jamie Iles <jamie@jamieiles.com>, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, linux-watchdog@vger.kernel.org, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Simon Xue <xxm@rock-chips.com>, Jiri Slaby <jirislaby@kernel.org>, Lee Jones <lee@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org, linux-serial@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>, Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Frank Wang <frank.wang@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Mark Brown <broonie@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, linux-arm-kernel@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <didi.debian@cknow.org>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Riesch <michael.riesch@wolfvision.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Dec 24, 2024 at 05:49:03PM +0800, Kever Yang wrote:
> 
> This patch set adds rk3562 SoC and its evb support.
> 
> Split out patches belong to different subsystem.
> 
> Test with GMAC, USB, PCIe, EMMC, SD Card.
> 
> This patch set is base on the patche set for rk3576 evb1 support.
>

I am going through patchwork and marking all your patches as changes
requested. All my comments apply to each of your patches and each of
your patchsets.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
