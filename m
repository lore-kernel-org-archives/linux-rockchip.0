Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F2ADE95A67
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 13:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOiVfgSUJvfxaJqXw6bzDYLz6JO5dUiZ8LkPGVm55QM=; b=saXFaZPxtaDLC9
	tzLPUhtvHqRIGllsVWgZP9CKwlor57DsKUIO/akow8I8XaVBZkxzJJX22GMR6d22SGQD4oVYZNtv6
	zLwNG+pgvZ0xF0aNtA3lHbJyRexjkaCWDMUNjIerA/LErkCiLDjtUAwLtl0fPgdVfQFgxRRARsAz6
	CDtFf5S7S5PZ2B6cfTKFmaa8wAXhFpG9qvL1pCaeqft56qCXqBZI38pvggpBdWBg3tpoyDkoBHj+S
	jPTDF5a9l+kbPysA8T0WcRkFuRQIL8U7hvXV1uuraDf1OI1H2+rsQ3yvowyKtj3qA4WN1D8sXsAR3
	B+0N9AxEy66DlpWNYY6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpTOE-008s7G-00;
	Sun, 08 Oct 2023 13:00:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpTOB-008s6V-1b;
	Sun, 08 Oct 2023 13:00:08 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qpTO2-0004O7-Qw; Sun, 08 Oct 2023 14:59:58 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Sam Edwards <cfsworks@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Daniel =?utf-8?B?S3VraWXFgmE=?= <daniel@kukiela.pl>,
 Sven Rademakers <sven.rademakers@gmail.com>,
 Lokesh Poovaragan <loki@gimmeapis.com>, Sam Edwards <CFSworks@gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Turing RK1 SoM support
Date: Sun, 08 Oct 2023 14:59:57 +0200
Message-ID: <4613093.CvnuH1ECHv@diego>
In-Reply-To: <20231007043600.151908-4-CFSworks@gmail.com>
References: <20231007043600.151908-1-CFSworks@gmail.com>
 <20231007043600.151908-4-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_060007_559371_5CDD5759 
X-CRM114-Status: GOOD (  15.24  )
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

Hi Sam,

Am Samstag, 7. Oktober 2023, 06:36:00 CEST schrieb Sam Edwards:
> The Turing RK1 is an upcoming RK3588-based SoM from Turing Machines,
> designed on the Jetson SO-DIMM form factor and meant to be compatible
> with most Jetson carrier boards (but especially the Turing Pi 2 cluster
> board from the same vendor). It has the typical I/O you'd expect from
> a Jetson board, including:
> =

> - Two UARTs (UART9 for console, UART2 is auxiliary)
> - PCI Express (2.0 x1 + 3.0 x4)
> - Gigabit Ethernet
> - On-board eMMC
> - PWM fan w/ tach
> - USB-OTG [1]
> - HDMI and MIPI DSI [1]
> - Miscellaneous external GPIO, I=B2C, SPI lines [1]
> =

> Beyond that, it is pretty similar to the RK3588 EVB (in terms of PMICs,
> RTC, etc).
> =

> This patch introduces a devicetree to enable most[1] of the SoM I/O.
> =

> [1] These peripherals are not addressed with this patch.
> =

> Signed-off-by: Sam Edwards <CFSworks@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588-turing-rk1.dts   | 627 ++++++++++++++++++

This is more a general concern. You're introducing the rk1 as a dts file
but the from looking at the module-page and your patch description
this is "just" a SOM that most likely cannot run without some sort of carri=
er
board.

In the rockchip devicetree directory you can see a number of som boards
as som-dtsi + base-board forming a full product. Simply because the number
of usable peripherals will highly depend on what baseboard is used.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
