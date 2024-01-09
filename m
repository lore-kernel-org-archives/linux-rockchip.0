Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF47CC46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jan 2024 15:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3kqsDEP5vC0RY0lS8MgmHIDyE+on4UOdrD4Q5bdvU4=; b=uucJYyzUVsxplt
	2TaoXdYYxfL4AaK+M1j5xpksnnc/nrV/sYcdFoJXJfrTWebwqZ2pmS0LeYf07b2kDoZNqr9WMUpTc
	sbFFzaHY/eYDlfog3V8ABmg5ZMv2ljxNhhjR4G6fQl4eBvxA54dHV5koVr0pGCQC8KTJYFGTydMAa
	zRqf2KF3c3GNzUT7OAJXkdWAGXS9bG9SGO/PUSABkLF1foP7ebEii5YjsaqzPWAaUexzRBWXgoOqE
	opdjwfhL/+gXn5W8v9k84ZAsA1pVSf5WRwJluDDUgvXhZf3Y29w/EW5jTAxR5BekweBz6xFOjPtCn
	KrR9rX70JTBeW2K2f8eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNDvj-008eVA-2d;
	Tue, 09 Jan 2024 15:22:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNDvg-008eS3-0Y;
	Tue, 09 Jan 2024 15:22:13 +0000
Received: from i53875aaa.versanet.de ([83.135.90.170] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rNDvW-0003qY-KO; Tue, 09 Jan 2024 16:22:02 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add spi controller aliases on rk3399
Date: Tue, 09 Jan 2024 16:22:01 +0100
Message-ID: <2305627.1xdlsreqCQ@diego>
In-Reply-To: <685047b0-a907-49c6-919b-e46976d8ef7b@linaro.org>
References: <20240109-rk3399-spi-aliases-v1-0-2009e44e734a@theobroma-systems.com>
 <20240109-rk3399-spi-aliases-v1-1-2009e44e734a@theobroma-systems.com>
 <685047b0-a907-49c6-919b-e46976d8ef7b@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_072212_222942_5B8C2571 
X-CRM114-Status: GOOD (  18.92  )
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

Hi Krzysztof,

Am Dienstag, 9. Januar 2024, 16:15:30 CET schrieb Krzysztof Kozlowski:
> On 09/01/2024 14:35, Quentin Schulz wrote:
> > From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > 
> > There are 6 SPI controllers on RK3399 and they are all numbered in the
> > TRM, so let's add the appropriate aliases to the main DTSI so that any
> > RK3399-based board doesn't need to define the aliases themselves to
> > benefit from stable SPI indices in userspace.
> 
> But that contradicts the point that board should define aliases for
> exposable interfaces. Sorry, that's a NAK.

didn't we have this same discussion some weeks ago? ;-) .

I.e. spi2 on Rockchip socs is called spi2 in _all_ SoC documentation,
lines in _all_ schematics are also always called spi2_foo , so as before
I really don't see any value in repeating the very same aliases in
_every_ board.

Same for i2c, uart .


It is of course different for non-numerable interfaces - like the mmcX
aliases - where the controller is named sdhci, sdmmc, sdio ... and
similar cases. These get to stay in the board dts files of course.


Heiko

> > Cc: Quentin Schulz <foss+kernel@0leil.net>
> 
> No need to Cc yourself...
> 
> > Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > ---
> 
> Best regards,
> Krzysztof
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
