Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED9D1CEBF87
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 23:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nQeSc197VEQ72RFc8bUI5kONC/XRGmooIbdxBuDEf7o=; b=ZRlfyupUJkz3vt
	5or2b/jFGnqzv4nYxGy/jKiMpsbvSVnpqGuBmVQMZWinX5iCHDLNNH5g+/7VpH2MQ9p/+IJfC/JTr
	bmWhJpB2DpOzvMgRtE6A2ZTrGFNb83GzTkKvnWXZQXa14X+97bcfHo0/Nxk6fskuuo3L/UR/S3msI
	L+c8GeFqdn6V1W+aWcW/XtPIjfj/iqvpq987nOrhPDuAOJUYOczLBU2GJnsxBcH8XW3ilK57yW/X+
	5HSRSjECKXx616MbllG3JJbxH6Hs30CXFvipzYVMm47zUlSQEAW+81Xw2Xg/ORJOHBJXv66UTydxt
	WPGi//27bp/9TrA4epAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKPhx-0000000ECYE-0Qd9;
	Sat, 15 Nov 2025 23:29:29 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK4Xa-0000000DJ22-2eB5;
	Sat, 15 Nov 2025 00:53:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id B458140CFC;
	Sat, 15 Nov 2025 01:53:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763168000; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=pTTod1rI5CQ232hgj1u76/djAv0gQLeHyDWpYjiwYwQ=;
	b=j7pniwSXR9lWzrkFPcwtfogT3myBfqLs8ynj6vtBu4Kd1BqmyzzR7oK+zIfpaUwoHlriXI
	mPLUQHqNQWLolAVph5bkDqnkLDusZ5vdu1tBdv3+6NNloQZcsm15sSOXXrSIa0yLtFNyu7
	N3RHOkgf7onfhsApLSMDCloBbvcUFmjqqWf8vlZn+BLNJhIJWNjMMqsnKnBt/fAWk9C8DR
	Kw1la4bjOmcutP9FH4wwT9ETrXGGkarhRxGEmSw6F9TIMeGev02FbtVOb19Ad7QyPxY6Ms
	OxLsaungRSe3sdBvuegxvw+dleDe24MzISvMJUs6Sraqeq3SAb3X0USVTph3Iw==
From: "Dragan Simic" <dsimic@manjaro.org>
Date: Sat, 15 Nov 2025 01:53:19 +0100
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: michael.opdenacker@rootcommit.com
MIME-Version: 1.0
Message-ID: <12d6e151-dfa0-ca0a-5888-ddffb2dbdec7@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3 and 3S device tree
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_165322_856312_7B2C3B06 
X-CRM114-Status: GOOD (  11.21  )
X-Mailman-Approved-At: Sat, 15 Nov 2025 15:29:00 -0800
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

Hello Michael,

Thanks for the v2!  Please, see one nitpick below.

On Friday, November 14, 2025 16:46 CET, michael.opdenacker@rootcommit.com wrote:
> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>

I'm sorry for not mentioning it in my earlier responses, but this
line is redundant, because it duplicates the From value found in
the actual email message.

> Add initial device tree support for Asus Tinker Board 3 [1] and 3S [2],
> which are SBCs based on the Rockchip 3566 SoC.
> 
> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
> and a "mask ROM" DIP switch (to mask the eMMC and enter "Mask ROM"
> mode for recovery) to the "3" version.
> 
> This adds support for:
> - Debug UART (/dev/ttyS2)
> - SD card (/dev/mmcblk1)
> - eMMC (/dev/mmcblk0, only on Tinker Board 3S)
> - I2C:
>   - i2c0 (internal bus with a PMIC and regulators)
>   - i2c2 (internal bus with an at24 eeprom and an RTC device)
> - USB 2.0 ports
> - 2 GPIO LEDS
> 
> [1] https://tinker-board.asus.com/series/tinker-board-3.html
> [2] https://tinker-board.asus.com/series/tinker-board-3s.html
> 
> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../dts/rockchip/rk3566-tinker-board-3.dts    |  14 +
>  .../dts/rockchip/rk3566-tinker-board-3.dtsi   | 280 ++++++++++++++++++
>  .../dts/rockchip/rk3566-tinker-board-3s.dts   |  30 ++
>  4 files changed, 326 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-tinker-board-3.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-tinker-board-3.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-tinker-board-3s.dts

[snip]



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
