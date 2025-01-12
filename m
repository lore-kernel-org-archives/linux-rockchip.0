Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8E2CE77188
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jan 2025 08:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WI4LVj0xJx28YUBeID9/zhetEKPpkeY+jXKxf3wYNFg=; b=qE8fXAwkkRhOcroOj03d4aYvlI
	PILYu/p3IPZJLMA28BHWupHPzLfyf9FhrkH41L3B/Jo4Ep4kb0/LhhWTghbm9r8DzonC4wPJrmpIL
	I+O7T+OeX2ihMNESc1JyUAmA9I9G2n59uJIaXNBT9RbPufwG/LDf/1kSYfdGNbpuo+NguLetOdKke
	xHugam19FhWPAKHh8m6UX18j5Nx8kicuvt8yO42IZSHFH7FbZglJ58Q0gJjv/n+HwdEXS/GsIhbhD
	ZJ2/vMpthpdVNFQvl04jNZJBXG2BlPW6oSNOqirET0y4ugdhVDR804qdNawF88u7ZInPNydHOZG/5
	ICssVeJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWte4-00000002MpC-3e6G;
	Sun, 12 Jan 2025 08:48:32 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtcn-00000002MiB-48dE;
	Sun, 12 Jan 2025 08:47:15 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736671629;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rrBZMX3isiKut8IdPpzmOqVncQJFg6Ju0J78pmuQScM=;
	b=t4mIgqp1KbrRwBjEHiQep2+1HN9DuwuuoZou78uVv25jvPOgyher+SCTS9YSdxvxKCeNyS
	1emd0DhoHgm73m70TR9pm8uuhSCFvfyp7ohVKlacoQjedQwKE6lR4OGZH6NlUxGecfkEc3
	yXqCRn2Yio6zRt174sDL1cxk0zBDaQBaZIp0j/4JVyhrv9V5RiqezUXPYbSOqZNAfL+sAh
	xtnvWYOSNT4JvOrXA2MXRik+nDw3bwwcBujywrI3SMYQGUFuZTTcQuJhHA4pzrZ/8FJM0r
	mBGeaHXkuEkaF7bTeFMGVchCl9Y//okNmreQKTZnZjRGdp549vFcxvDdlNsBWQ==
Date: Sun, 12 Jan 2025 09:47:08 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas
 Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki
 <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
In-Reply-To: <20250112073344.1976411-4-bigfoot@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <20250112073344.1976411-4-bigfoot@classfun.cn>
Message-ID: <1e72cc9cdc390e79e97806fe4f7d8abf@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_004714_203062_7D972EB6 
X-CRM114-Status: GOOD (  12.06  )
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

Hello Junhao,

On 2025-01-12 08:33, Junhao Xie wrote:
> Add dts for Ariaboard Photonicat RK3568.
> 
> Working IO:
>     Debug UART
>     SDIO QCA9377 WiFi and Bluetooth
>     M.2 E-Key PCIe WiFi and Bluetooth
>     M.2 B-Key USB Modem WWAN
>     Ethernet WAN Port
>     MicroSD Card slot
>     eMMC
>     HDMI Output
>     Mali GPU
>     USB Type-A
> 
> Not working IO:
>     Ethernet LAN Port (Lack of SGMII support)
>     Power management MCU on UART4 (Driver pending)
> 
> Not working IO in MCU:
>     Battery voltage sensor
>     Board temperature sensor
>     Hardware Power-off
>     Hardware Watchdog
>     Network status LED
>     Real-time clock
>     USB Charger voltage sensor
> 
> About onboard power management MCU:
>     A heartbeat must be sent to the MCU within 60 seconds,
>     otherwise the MCU will restart the system.
>     When powering off, a shutdown command needs to be sent to the MCU.
>     When the power button is long pressed, the MCU will send a shutdown
>     command to the system. If system does not shutdown within 60 
> seconds,
>     the power will be turned off directly.
>     MCU only provides voltage for charger and battery.
>     Manufacturer removed RK8xx PMIC.

Unless the design of the board is proprietary, it would be good
to provide a link to the board schematic, for those interested
in verifying the board DT file.

As a note, I already tried to find the board schematic with no
success, so the design might be proprietary.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
