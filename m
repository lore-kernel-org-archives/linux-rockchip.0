Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BB9EC25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 07:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBQ1cFbJ06tI3K6iKQf/cUQFZvQfNGKjGY4XUPK68Bs=; b=c9lBNPXycFebAr
	gNO8pTHQ855DccY57EoGA5PfL8SCHDqnNHoNul0u72R57UbqX0833Xq9jHMzmgZFtlESGCdCZX4WY
	XLUOPxKCv/SBBg/z8LzDKOUWObiPaTfqSiI8ZQYZt/9uMPDqIJ/01QxRNQKVN5D6S//l2TE8m9zqr
	lGka8Dur6zLkuIlMf1klbpNhsm/zGec6uO7+bzW2roHj8KCyG1AcGGMYE5IaL1JHTSJIzQua+ZD8g
	4d+Jd9cWfExjF6aSpiyTcb5M+Y8Rvkco6eE4nRvqWeJHoK9huyJW9tqr3PeWppDAIDN1+lE3V1Cf1
	4KgIo1tx6Yv80mj3+wJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEC4-00000003EoK-3Icu;
	Wed, 29 May 2024 07:57:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEC2-00000003En4-2MOh;
	Wed, 29 May 2024 07:57:56 +0000
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sCEBr-0002F8-B5; Wed, 29 May 2024 09:57:43 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>, Sebastian Kropatsch <seb-dev@web.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add CM3588 NAS board
Date: Wed, 29 May 2024 09:57:42 +0200
Message-ID: <2693701.q0ZmV6gNhb@diego>
In-Reply-To: <ac376b42-a52f-4fef-8543-b961becd5f4d@web.de>
References: <20240526214340.8459-1-seb-dev@web.de> <3609340.LM0AJKV5NW@diego>
 <ac376b42-a52f-4fef-8543-b961becd5f4d@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_005754_644422_2624D4D3 
X-CRM114-Status: GOOD (  22.14  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebastian,

Am Dienstag, 28. Mai 2024, 17:55:55 CEST schrieb Sebastian Kropatsch:
> Am 27.05.2024 um 22:54 schrieb Heiko St=FCbner:
> > Am Montag, 27. Mai 2024, 21:02:02 CEST schrieb Jonas Karlman:
> >> On 2024-05-26 23:48, Sebastian Kropatsch wrote:
> >>> The CM3588 NAS by FriendlyElec pairs the CM3588 compute module, based=
 on
> >>> the Rockchip RK3588 SoC, with the CM3588 NAS Kit carrier board.
> >>>
> >>> Hardware features:
> >>>      - Rockchip RK3588 SoC
> >>>      - 4GB/8GB/16GB LPDDR4x RAM
> >>>      - 64GB eMMC
> >>>      - MicroSD card slot
> >>>      - 1x RTL8125B 2.5G Ethernet
> >>>      - 4x M.2 M-Key with PCIe 3.0 x1 (via bifurcation) for NVMe SSDs
> >>>      - 2x USB 3.0 (USB 3.1 Gen1) Type-A, 1x USB 2.0 Type-A
> >>>      - 1x USB 3.0 Type-C with DP AltMode support
> >>>      - 2x HDMI 2.1 out, 1x HDMI in
> >>>      - MIPI-CSI Connector, MIPI-DSI Connector
> >>>      - 40-pin GPIO header
> >>>      - 4 buttons: power, reset, recovery, MASK, user button
> >>>      - 3.5mm Headphone out, 2.0mm PH-2A Mic in
> >>>      - 5V Fan connector, PWM buzzer, IR receiver, RTC battery connect=
or
> >>>
> >>> PCIe bifurcation is used to handle all four M.2 sockets at PCIe 3.0 x1
> >>> speed. Data lane mapping in the DT is done like described in commit
> >>> f8020dfb311d ("phy: rockchip-snps-pcie3: fix bifurcation on rk3588").
> >>>
> >>> This device tree includes support for eMMC, SD card, ethernet, all US=
B2
> >>> and USB3 ports, all four M.2 slots, GPU, RTC, buzzer, UART debugging =
as
> >>> well as the buttons and LEDs.
> >>> The GPIOs are labeled according to the schematics.
> >>>
> >>> Signed-off-by: Sebastian Kropatsch <seb-dev@web.de>
> >>> ---
> >>>   arch/arm64/boot/dts/rockchip/Makefile         |    1 +
> >>>   .../boot/dts/rockchip/rk3588-cm3588-nas.dts   | 1269 ++++++++++++++=
+++
> >>>   2 files changed, 1270 insertions(+)
> >>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-cm3588-nas.d=
ts
> >>
> >> Because the CM3588 is a SoM and the NAS is a carrier board this should
> >> probably be split in two, cm3588.dtsi and cm3588-nas.dts.
> >
> > also, because of that way too generic name "cm", please incorporate the
> > company name in the filename as well. For the same reason we named
> > the rk3568-wolfvision-pf5.dts that way ;-) [Wolfvision being the compan=
y]
> >
> > So maybe:
> > rk3588-friendlyelec-cm3588.dtsi and rk3588-friendlyelec-cm3588-nas.dts
> >
> =

> Yes, I agree that the name is very generic. I struggled with this as
> well, but your suggestion sounds good!
> =

> In this case, is it also preferred to change the commit message to
> include the company name event though the commit message subject exceeds
> 50 characters this way?
> ("arm64: dts: rockchip: Add FriendlyElec CM3588 NAS board")

Were does a 50 character limit even come from?
In other words, the subject should be meaningful and with the needed
prefixes adhering to a 50 chars maxlen would cause pretty unreadable
subject in a lot of cases.

So the proposed subject is absolutely fine :-) .


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
