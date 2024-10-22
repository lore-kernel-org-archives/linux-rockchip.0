Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD693D2CDFB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 15:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/6LvQ8EyuA9kYggHF7eWV2mvO1vjGaS9IgWiKTngUw=; b=46HTO1zSPo/kJb
	HCm4l7JzYCZjt/xOet5d+ky/EYt9+hZgdRpmovUbD8WD9BXRWOYtRnfK2YD6pWyBZ7mAwBFyl47nH
	VOrNbPSu2kLLXKMbHN1GPuVZJecwiC/uqyhkAgBMhcSUcVlVcEEuLev+5pTlot0rPGDdc1XuFCIRW
	N8b7wx144wQgVQH3/92Wt21a1/G06654ZNVKFspZL7v1BvQ8zJdzinWprFGt5I/Pv/XWvAACniQQz
	yV799443/ThN5Gp8C/HzEyjJyuEsN4K5NWlrrOX8Ap4qM2idNHGuTWYaWd1we0pk54MlBT6QckVJ7
	eHLLNDMi5QHu419XjSgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3HGT-0000000BKxQ-2YQ6;
	Tue, 22 Oct 2024 15:57:45 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3HFh-0000000BKjv-43x7
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 15:56:59 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-37d4a5ecc44so4286312f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2024 08:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729612615; x=1730217415; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eoUFYnoX2oUL2AziIPfIJDDAZ+iERWN+wybcOJOaeZU=;
        b=WZczVWWuFiFmRH293kyC67hzd/zYS1l2s+iZfnhXA78hLEa/i9YH4ENDStEh+4+/4N
         HdYGyNu7K3TPRFHLK+DsSIWUDSQ7EBdc4zz0R0EX4n0JtjFXEAdUnpwIDuF2qba54mBG
         JSmTUWbkqmmuzZOWQinUnwD1IcY+34bcAmfwO8ixUmB4GtLJH9Z50952VeImZ5+M2/fU
         yIm9XGuVcxUboh5lTMPrn9l1d/wtQUdrjItLf9uzB8o3n09ww5F5+LZyLVmlhqVQ8IIV
         BhJNlJnSUWfi2PoorhgpAavmjkdBuGBFLyOoTJq56SiTqQ0CDaZqMWNDzSFnakQwt2ur
         VnXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729612615; x=1730217415;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eoUFYnoX2oUL2AziIPfIJDDAZ+iERWN+wybcOJOaeZU=;
        b=whlT2lwftFwS2oz7ydPez6g72Xyv5YGC2VApsM/UcY7hIGXK8vp6/H8xZ9l8dMwAWS
         sse+d0ZyBx91AQxaHLAqfv3ijmcZ1xUHmvswBIspma7qpvVn1zIeHqZPF+ET0yY1d+Hc
         npmijDPkfYHFj6pNBtlrQZp/Rwur7edi1HSOh1FQ+8zn/B4K5aqdIrj7yOLN1meG8/o2
         FYc/X/98TzJBgrdU+7YFTNN2xKLk8Yah+nnNgEnzuI2fKbElCnPbehrv0AbzwlhLh/qF
         7nFIZPgj8J4ww/bymmw4VwOHEmdi2L3GZVU3xyKCkLBDowofhg0jXjcj+cdYv/UyDfAV
         AeEg==
X-Forwarded-Encrypted: i=1; AJvYcCXG5WD5vewNhszrWYega37LbxLPdjkWAD5hoA3XHaqH4kt81Sew5R0//D9h4x63Cx1ngoAet8JUdEu5uSB4kA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4zSXtf9sQpFSL9NAM0yq7OQPT+O0zlgKU3dm0ri2rOIlccMJI
	j0VVKgZXXa5UpdSBNpnQBzxlYMYXCXId2Zz3Uy3KnOfcPApR2W60lnlPEFG++1uTJn3MqbPFEWS
	EmSWWUK/oqaVdBoBsa32daryJr5BXf6Dz1ew=
X-Google-Smtp-Source: AGHT+IGGpJCZrl2ulXh3AqCe3aoFgAk6SSHC3Cacxq9q/SWqdxn6MArljVC+vQ7lrNwHiUdWzkJ4nTYYVwV59M12dTs=
X-Received: by 2002:adf:e9c2:0:b0:37d:493c:f7b8 with SMTP id
 ffacd0b85a97d-37eab72779emr9549550f8f.2.1729612615262; Tue, 22 Oct 2024
 08:56:55 -0700 (PDT)
MIME-Version: 1.0
References: <20241008031429.2410-1-honyuenkwun@gmail.com> <172839929050.1375676.6206290291229445428.robh@kernel.org>
 <4958831.31r3eYUQgx@phil>
In-Reply-To: <4958831.31r3eYUQgx@phil>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 22 Oct 2024 10:56:44 -0500
Message-ID: <CALWfF7+pT0VHD_DQfBsOvyi-qPksgxNoziaW=efOUt-SrPXDQw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: analog audio on Orange Pi 5
To: Heiko Stuebner <heiko@sntech.de>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_085658_071149_D2BA336E 
X-CRM114-Status: GOOD (  15.49  )
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

> > New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-orangepi-5.dtb' for 20241008031429.2410-1-honyuenkwun@gmail.com:
> >
> > arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: gpio-func: leds-gpio: {'rockchip,pins': [[0, 2, 0, 243]], 'phandle': 256} is not of type 'array'
> >       from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
>
> the error is predating this patch but should be fixed
> nevertheless.
>
> @Jimmy: can you check if the schematics for your board provide
> an alternative name for the pin that is "leds-gpio" currently
> in the orangepi-5 ?
>
> Or just rename it to something like status_pin or something?
>
> Thanks
> Heiko
>
>
The schematic calls the pin PWM0_LED.
The schematic for the LED RUN led on the Orange Pi 5 looks a lot like
Orange Pi 5 Plus's PWM_LED0 which is being driven by the "pwm-leds".
Unlike the PWM_LED1 which is not connected to a PWM capable pin.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts#n97

I'll try to switch it over to the pwm-leds and use "pwm0_led_pin",
otherwise I'll just relabel it to run_led_pin or green_led_pin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
