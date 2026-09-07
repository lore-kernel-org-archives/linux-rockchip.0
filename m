Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27A96C79F9E
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 11:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLpDuN6PfqmWkWcWiev73OXGtobXDGfOT2DFeCVBJkA=; b=XTsR9I/AHjRshU
	tr78IieRwuxbTqR9gSFdOl2js8DDkdhqNZBXVjVbhp6Xwx+97VxgOhdLbbgKavBt+KOO8/KO851TV
	ntrIj3QrWgMN7XmLzTqaDghmTaS/mvGOdUzCkogKKWLLu/FzE2SipSKSdSgqqjRsKF1eMf1LDo5/J
	oLE/yJb/M+JVq3OO+pUNevlzOSamGj1xe2ftRg82S1VFhLG+iRkK0hKRdXwk2r3L5SQ8iGLrecmw6
	/QpcQfAUXwOwWBL+BtVtoL8Rln/akCr0o8Lx8vGtDPfUiTAegMz/YKlMmGBq7IQRu0m3vkO2pc6lf
	AuMM7qQ3Ri2/3GB93YtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Xi6-00000006gMl-2j8A;
	Mon, 07 Sep 2026 11:40:26 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Xhz-00000006gLh-1FzN;
	Mon, 07 Sep 2026 11:40:26 +0000
Received: from Vostro-3710.. (unknown [14.220.232.127])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4cd235a67;
	Mon, 7 Sep 2026 19:40:15 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: devnull+hystericaldragons.proton.me@kernel.org
Cc: HystericalDragons@proton.me,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jensenhuang@friendlyarm.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add devicetree for the FriendlyElec NanoPi R28S
Date: Mon,  7 Sep 2026 19:40:10 +0800
Message-Id: <20260907114010.2166428-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260905-r28s-upstream-v1-2-f68d5389269a@proton.me>
References: <20260905-r28s-upstream-v1-2-f68d5389269a@proton.me>
MIME-Version: 1.0
X-HM-Tid: 0aa07bab3ea703a2kunm7cb50498ea708
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaHh1LVkhMQkMYH0saHUlMSFYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKT1VJSUtVSUhJVUpJTFlXWRYaDxIVHRRZQVlPS0hVSktISk
	5MTlVKS0tVSkJLS1kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_044019_522107_CCCB6576 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
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

Hi,

> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile

> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-nanopi-r28s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-nanopi-zero2.dtb

This device tree has many similarities to the nanopi zero2.
Can you create a shared device tree?

> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-nanopi-r28s.dts

https://wiki.friendlyelec.com/wiki/images/7/7c/NanoPi_R28S_2605_SCH.pdf
Please name the labels according to the schematic.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&user_key>;

Schematic label: GPIO4_B2_USR_BTN

> +		button-reset {
> +			debounce-interval = <50>;
> +			gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_LOW>;
> +			label = "reset";
> +			linux,code = <KEY_RESTART>;

label = "USER";

> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&lan_led_g>, <&sys_led_r>, <&wan_led_g>;

Schematic label: LED1 LED2 LED_SYS

> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h>;

Schematic label: PWR_WF

> +&pcie {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_reset_h>;

Schematic label: PCIE_ETH_PERSTB

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
