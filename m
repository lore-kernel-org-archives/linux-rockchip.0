Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 380C7C52D7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 16:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fdl36HQadBAPsB/6LYLNomBf3Xu/2BFJhE50Hqp6Qjs=; b=M4eg+qZbLiZjpH
	O6sslEAF3lP0pCX5PujR9zf2nzyWzV3s+jWDS8BPL+FVR0MKFt5TJJ8bUS6C7EN8jFjUsesvNTxbZ
	oIetAEPMwWjFL7BwXA+M4KAL6F93tDqTduIpzZ/0R3OIS1rltCmsqFCXdSa3ct1CxIM5JZmiGzUML
	d5EsGEQBlPIITjebD1n7VuMzpNjgR9qwNB5ydE1cuxnjHRW5O7Fx/hIOdXwwYn0OuDXfemrJ28ix3
	voN6rKKH+4n7BbaySw/uS7YDcyF92apIwWhDYt7P1wMoKzmAUwflyRq+8NXjajzjvk5JnNxWpXj9J
	uhID84TMrvwD7RTGkYHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seH87-00000007iVj-0c8Q;
	Wed, 14 Aug 2024 16:45:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seFyG-00000007TkS-3UR5;
	Wed, 14 Aug 2024 15:31:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qXXIlCYalPd0zJHCfYqZGX6mxTPUzWj2COHc7ZwifQk=; b=B5nThtThF2LUfANjGlKJrz9dY2
	cTzRFql02FO86TlExchSzNSkUd1UwSiM7Qi1fJhdk7v+5SUZrzIM6epPUfb056CmvDk+KB+Igadbj
	By8snZ2548MFEyquPa8UDmlhowl5eXNySKiBFkTDHOn6/IAo/F8pdeCbvwPcmZsxNQUOKe2/oGM8g
	KmNfJraswHuNhuSampSd9mV6/v7YTeM+PvpJrEIImUwmYqIybouJmP76qymuvvdD5oI6WVVeBuxHp
	3EmicRn1YXl0QAAlhQqtDDsC3WjNR8USHs0AamcCztKY7o0dpB93qS7BI+olDDBWfB0vBBtKtNyhm
	qZuULYMg==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seFxr-00053d-0h; Wed, 14 Aug 2024 17:31:07 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Lee Jones <lee@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Muhammed Efe Cetin <efectn@protonmail.com>, Andy Yan <andyshrk@163.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shresth Prasad <shresthprasad7@gmail.com>, Ondrej Jirman <megi@xff.cz>,
 Weizhao Ouyang <weizhao.ouyang@arm.com>, Alexey Charkov <alchark@gmail.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Finley Xiao <finley.xiao@rock-chips.com>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-serial@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 09/10] arm64: dts: rockchip: Add rk3576 SoC base DT
Date: Wed, 14 Aug 2024 17:31:04 +0200
Message-ID: <21547916.mFnZMskM5D@diego>
In-Reply-To: <20240802214612.434179-10-detlev.casanova@collabora.com>
References: <20240802214612.434179-1-detlev.casanova@collabora.com>
 <20240802214612.434179-10-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_083132_929316_70268E55 
X-CRM114-Status: GOOD (  13.25  )
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

Hi Detlev,

Am Freitag, 2. August 2024, 23:45:36 CEST schrieb Detlev Casanova:
> This device tree contains all devices necessary for booting from network
> or SD Card.
> 
> It supports CPU, CRU, PM domains, dma, interrupts, timers, UART and
> SDHCI (everything necessary to boot Linux on this system on chip) as
> well as Ethernet, I2C, SPI and OTP.
> 
> Also add the necessary DT bindings for the SoC.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> [rebase, squash and reword commit message]
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

looks like (since 2019) there is a strong suggestion for having a soc node.

See Krzysztof's mail in
    https://lore.kernel.org/all/6320e4f3-e737-4787-8a72-7bd314ba883c@kernel.org/
that references
    Documentation/devicetree/bindings/writing-bindings.rst [0]

So I guess we should probably follow that - at least for new socs for now.


Heiko

[0] https://elixir.bootlin.com/linux/v6.11-rc1/source/Documentation/devicetree/bindings/writing-bindings.rst#L90



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
