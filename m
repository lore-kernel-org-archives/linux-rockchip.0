Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D29D5C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 16:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWxltAQZ7WkwGi4KlRbDIe0erIRgbXP4+SYOjdQS1jc=; b=xnhkykfsXqaKdb
	7az6/QPJewD2HE1Xj7vY3YmTw+9Bb1+L7gmiTC3sk2CgpZJ4Wt3Ek9cKLdxCTOWYi8Iy+celVWRbv
	Qck/pYmHlgjdPtyXqvrdCzkZTkVpl5f/kBJpxTKz2ymhnDiHUXjl0NA3WNoHfGpxXLwnQwSqU4PxW
	SnM/j31/aZMZZX2eOJMEL+OCt+ihjEOQUXI1yY+loeJJ9Vr1Aw7d2YuQbAdB4zbCSfNEcgZ3q44c2
	+sakZ2k4UI7v294MXYVO45gS/r3G2Usz75ipZ2E+vW3mht5wIcykrBDkuLt0y3az6RuksBub5p/e9
	PcjeZWY/z0noZYUmfIHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7HWR-000000027GK-4AVq;
	Wed, 15 May 2024 16:30:31 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7HW7-00000002779-0iDk;
	Wed, 15 May 2024 16:30:14 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4AA38C0006;
	Wed, 15 May 2024 16:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1715790599;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eOto8pkdzNcDGrx6zGWKATW1hZHmdFwBb/iquxmXsu0=;
	b=DFxOs1kPZXEjrYT7zrVpLQ8+MV1VFCFSNxIl7VbSNEjAdCF2bHaUQccNGAG08mRZB8TUlu
	fgeVCNxsSiEgcqiLOERDy+DW8CbrnsyHUBmMYcEW+b+h8JpvUjrbu41sHJ22snoQu8i0ol
	UasyrI+PHdEmJaMIJVuKVP2lQaa83sn/SfvFslms8zpaJhWH/NELKvdT/jpk2z4LH4regT
	8TXZP1I4w3LUEUtoHE0ScTUwknULloPO+KCRoTRf24QmeX+MiNvDceG/ZfLzQXUnon2+0z
	FiYpY1Fhj1FSeQRJz8aXlHQDdOovu3fTpxXGZi/3ZDzckkFzwtidhYmo0MBCWw==
Date: Wed, 15 May 2024 18:29:54 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, Jianqun Xu
 <jay.xu@rock-chips.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] pinctrl: rockchip: add rk3308b SoC support
Message-ID: <20240515182954.03c4a475@booty>
In-Reply-To: <20240515121634.23945-4-dmt.yashin@gmail.com>
References: <20240515121634.23945-1-dmt.yashin@gmail.com>
	<20240515121634.23945-4-dmt.yashin@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_093012_075876_86A55D6A 
X-CRM114-Status: GOOD (  17.38  )
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

Hello Dmitry,

On Wed, 15 May 2024 17:16:34 +0500
Dmitry Yashin <dmt.yashin@gmail.com> wrote:

> Add pinctrl support for rk3308b. This pin controller much the same as
> rk3308's, but with additional iomux routes and 3bit iomuxes selected
> via gpio##_sel_src_ctrl registers. Set them up in the function
> rk3308b_soc_sel_src_init to use new 3bit iomuxes over some 2bit old ones.
> 
> Fixes: 1f3e25a06883 ("pinctrl: rockchip: fix RK3308 pinmux bits")
> Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>

Thanks for the effort! I have one high-level remark, see below.
Otherwise at a superficial look it looks good.

> @@ -3952,6 +4150,8 @@ static const struct of_device_id rockchip_pinctrl_dt_match[] = {
>  		.data = &rk3288_pin_ctrl },
>  	{ .compatible = "rockchip,rk3308-pinctrl",
>  		.data = &rk3308_pin_ctrl },
> +	{ .compatible = "rockchip,rk3308b-pinctrl",
> +		.data = &rk3308b_pin_ctrl },

I'm skeptical about this being bound to a new DT compatible. As far as I
know the RK3308 and RK3308B are mostly equivalent, so it looks as the
pinctrl implementation could be detected at runtime. This would let
products to be built with either chip version and work on any without
any DT change.

Code for reading the chip ID is in the RK3308 codec driver [0].

[0] https://lore.kernel.org/all/20240305-rk3308-audio-codec-v4-4-312acdbe628f@bootlin.com/ -> search "GRF_CHIP_ID"

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
