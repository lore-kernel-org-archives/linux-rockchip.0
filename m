Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 775AFC27C75
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 22:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lha/q8pFg+JXVGYRKJkRXWXeumGPftw4EsLXpg0ew2A=; b=4nbS8kcngeUFag
	DIHUiVQTWDk3HPkUhTpt/P6sggDhiF6aP9AoUeJPMUX4HW5L7knBGiULECCPxwunnbhBsmjR0EZ0k
	PUWezHkNwUMFwdLZag8CmJd3yR7HVqhuUAJ7vDko8QwJV41YCTmmA6p9hNCAPUV2nUY8aZX3duB5/
	v5d8E8DZEKKwV9UqNGbllMWj/WuMtSopNOcsrs/6Kjm43XVHpk8Qi5+Go45Si7O2YTw5zgxpqFIVp
	1pPHCN/mi3YfzIcPE/SJXXubyRBw5ELcKdVvs7Pgfc5Zk0XNcJSAZriLtqJlDrLTjDSo4m9xZ7fpV
	2f3SRAuWv4Z0qnxuzhSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHWPC-0000000EJwd-3RFj;
	Wed, 12 Jun 2024 22:25:22 +0000
Received: from fout5-smtp.messagingengine.com ([103.168.172.148])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHWP8-0000000EJvL-1LHd;
	Wed, 12 Jun 2024 22:25:20 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailfout.nyi.internal (Postfix) with ESMTP id AD5C61380171;
	Wed, 12 Jun 2024 18:25:14 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 12 Jun 2024 18:25:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	the-space.agency; h=cc:cc:content-transfer-encoding:content-type
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to; s=fm2; t=1718231114; x=1718317514; bh=O6LgGsmjjGx/r/VemAsov
	TvYFktWVkA0a+80L+R5FD4=; b=X9IpTEM2bLNYi5NEtZUPnnBXDdYIIo9sOKdTn
	xQDkM263Otof1FCyTwGsl7ZrrEhKAuKQllOq8ktSWNxeCAIglf1lJ+VZywWIBndD
	rBPSQz8MuBEQ9I66hvZPkFT+eXV6MSr1ajF2w4gyhOVjMZX326itYK/uOyYW+wrG
	nRKsa8EuLD30WzlQiAbxXneE3KEOssIKi0CbWR+E686bqNlMRo3LpxQS90k3kWPR
	STF0DwnH2DaGJA6E1+AkbW1YOMypza0bN6704qsUGnMTPFhGjLi3rZXLZeppmzss
	MK18gKV7oGKeV+MKpyz8/ON+vLN8cGe6rzSYlAj3YEI2XIXLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1718231114; x=
	1718317514; bh=O6LgGsmjjGx/r/VemAsovTvYFktWVkA0a+80L+R5FD4=; b=c
	JyenuAFf55VnDFGZycNxFnTjqIfRw94YTCnhMHqmbGi5G/tQG7dhxPL/OBM0Y+nG
	tMVFLCzpQtfua+erSBPUKxAPmaxtNAuIlujciEdEJdsfGG/+i8yrUK0jtQquGSMS
	cT4InZ79cMRSma4TfUjFuoFr0S+jPYR1HSljJ3tCjdfgyTT5OgSd87oT+a/x7sON
	6vURfnwduW8+uhSLoK17OCu99RM/dF3zKW4e1VURUq8Kp60bWBTdGYhk8ldngt7G
	o/87/YwuS7v8CWkpUKCWqH2gM1y5Vgph/XQgYq1D0pjfUXFIrQtak89y7sNjLPhv
	73OQKPgC22rSN8QiayhFA==
X-ME-Sender: <xms:SSBqZoVb6T4f_cIlE6WIWFAD9DZXTRBL9PbjAuwD9taAyMYc3CyXrw>
    <xme:SSBqZsmRJ26oZwSRM3NRm8j_hUeZU5X7XN47A74koRNu_s3SXis_cjYFyLz5PVPnn
    yBGuV9NsL60UeJZPA>
X-ME-Received: <xmr:SSBqZsYAgB7iy_Dj-LKi4Co44dc3fDALBg575vjVQpmLm16mbreeHaNfD5U8nrXqYhufbQ7Qra0BPenA86kfLpMVryH4_FR2h9yM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeduhedgtdelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtjeertddtvdejnecuhfhrohhmpehmvges
    thhhvgdqshhprggtvgdrrghgvghntgihnecuggftrfgrthhtvghrnhepgeegkeelvdeive
    duiefgffevveekueeigedtheekkeefudeugfduteetveekiedvnecuvehluhhsthgvrhfu
    ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgvsehthhgvqdhsphgrtggvrd
    grghgvnhgthi
X-ME-Proxy: <xmx:SiBqZnWknayaUw9jc5_dLO5iESc6ZRw0EWA6bXuEnM8cyYm2qJQhDA>
    <xmx:SiBqZino_25NbisCcnLfYSgy4jg0Qa9tfZcPS7DlqJE1iCvEIKmFqw>
    <xmx:SiBqZsdLPUKikYMiWETnX71LR1x2D_H9tUFJEDIILF2IRnSWRYFdOA>
    <xmx:SiBqZkGfPybnT3BI08kwLshnVgfgj_ToslGvEYGka9n5RIwR05UnoA>
    <xmx:SiBqZkfe6YCDVtu78vURrb7Jhfo-lE8-OzwcZQ_Q_EfqargZ7D0ydp3j>
Feedback-ID: i2f914587:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Jun 2024 18:25:12 -0400 (EDT)
Message-ID: <57506a95-4667-495d-80c5-d9fa0f6be215@the-space.agency>
Date: Thu, 13 Jun 2024 00:25:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add FriendlyElec CM3588 NAS
 board
To: Sebastian Kropatsch <seb-dev@mail.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240609222428.134977-1-seb-dev@mail.de>
 <20240609222428.134977-3-seb-dev@mail.de>
Content-Language: en-US
From: me@the-space.agency
In-Reply-To: <20240609222428.134977-3-seb-dev@mail.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_152518_949343_78133D02 
X-CRM114-Status: GOOD (  15.30  )
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

On 10.06.2024 00:20, Sebastian Kropatsch wrote:
> The CM3588 NAS by FriendlyElec pairs the CM3588 compute module, based on
> the Rockchip RK3588 SoC, with the CM3588 NAS Kit carrier board.
> To reflect the hardware setup, add device tree sources for the SoM and
> the NAS daughter board as separate files.
> 
> Hardware features:
>      - Rockchip RK3588 SoC
>      - 4GB/8GB/16GB LPDDR4x RAM
>      - 64GB eMMC
>      - MicroSD card slot
>      - 1x RTL8125B 2.5G Ethernet
>      - 4x M.2 M-Key with PCIe 3.0 x1 (via bifurcation) for NVMe SSDs
>      - 2x USB 3.0 (USB 3.1 Gen1) Type-A, 1x USB 2.0 Type-A
>      - 1x USB 3.0 Type-C with DP AltMode support
>      - 2x HDMI 2.1 out, 1x HDMI in
>      - MIPI-CSI Connector, MIPI-DSI Connector
>      - 40-pin GPIO header
>      - 4 buttons: power, reset, recovery, MASK, user button
>      - 3.5mm Headphone out, 2.0mm PH-2A Mic in
>      - 5V Fan connector, PWM buzzer, IR receiver, RTC battery connector
> 
> PCIe bifurcation is used to handle all four M.2 sockets at PCIe 3.0 x1
> speed. Data lane mapping in the DT is done like described in commit
> f8020dfb311d ("phy: rockchip-snps-pcie3: fix bifurcation on rk3588").
> 
> This device tree includes support for eMMC, SD card, ethernet, all USB2
> and USB3 ports, all four M.2 slots, GPU, RTC, buzzer, UART debugging as
> well as the buttons and LEDs.
> The GPIOs are labeled according to the schematics.
> 
> Signed-off-by: Sebastian Kropatsch <seb-dev@mail.de>
> ---
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../rk3588-friendlyelec-cm3588-nas.dts        | 759 ++++++++++++++++++
>   .../rockchip/rk3588-friendlyelec-cm3588.dtsi  | 655 +++++++++++++++
>   3 files changed, 1415 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi


Reviewed-by: Space Meyer <git@the-space.agency>

Confirmed v3 fixed the usb-c port. I only tested with a single USB 2 
device, as I'm not home at the moment and don't have many options to 
test things here.

Cheers,
Space

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
