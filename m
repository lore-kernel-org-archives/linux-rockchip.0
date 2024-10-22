Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0AEFCDD0EA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 20:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIISdyMqjRml2RKqk5rQhY7Y9FSOpt2cGbbT3cD2szw=; b=E6Zfs1Jti0w/IJ
	JRLutkKhN43ZsP0GyZXsA15azxSoAnLJ28jjPtCA2eJA0dnzMnTuvhp3H6SSCv4A+1crq48A41bOF
	VWn33u8NcLYtgfoj6M71TLETECDdLgUMh4zM5qWL/SkOAKTpYu8BvSkoE+qmpWM9P+kQcpeEuZHbL
	FICmjL/TPYNZn8n7GGhIfLWYkz2YpTyOO4+FHEMsgl0ywpF8ER1/A+lPgy++6ZR74aKeF5GUmqI3m
	r4Nb2J4/pNLNQBi4eGl1JEc70W1+oiYIhrctpNooP9AKo4utzzEaQVX2wvOtZeHWqTlsukfIo+u5z
	6Zjqwxcbk8j3WfdbGx7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Lei-0000000C6o4-1Avk;
	Tue, 22 Oct 2024 20:39:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Lef-0000000C6nc-3jFn
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 20:39:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MQt8retUkqZ25m45uw/r/9nueROlQYViwNiSNSMKABY=; b=RtGZ92MVrsIJPtQjU22PFRSfQZ
	GJBvakB8iDUOITMJRbdQHE5rCEsyoBsjtWamwF//Eq7C9q98t8rgo3ytwq3i2Ovj14+GS2t37t7+y
	RNcoKgJkcSMndvccBIjOq7aja/H7KRrMCG7tXZhYP8LbttmCDNqrn2yOTAcfsLFK9vSc0jlPaglo2
	4WLi283oF/TUr8A1l/rGz2jVdgEYXN3axdQ+261xiehvWl74EA8NncUNFEET4laPXCzHTk6bv3Y4V
	Gv1JQ+Cqa2kM8E8A+oRtG9Aab6YVMQeXruGYPzF8korjjbnL7xznjOKPn1YIO7wSrWWjiBnodOluz
	i8Nm4ZXw==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3Lee-000299-8L; Tue, 22 Oct 2024 22:39:00 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: analog audio on Orange Pi 5
Date: Tue, 22 Oct 2024 22:39:01 +0200
Message-ID: <2211450.Mh6RI2rZIc@diego>
In-Reply-To: <CALWfF7+pT0VHD_DQfBsOvyi-qPksgxNoziaW=efOUt-SrPXDQw@mail.gmail.com>
References: <20241008031429.2410-1-honyuenkwun@gmail.com> <4958831.31r3eYUQgx@phil>
 <CALWfF7+pT0VHD_DQfBsOvyi-qPksgxNoziaW=efOUt-SrPXDQw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_133901_961815_43CC0EAB 
X-CRM114-Status: GOOD (  20.17  )
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

Am Dienstag, 22. Oktober 2024, 17:56:44 CEST schrieb Jimmy Hon:
> > > New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-orangepi-5.dtb' for 20241008031429.2410-1-honyuenkwun@gmail.com:
> > >
> > > arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: gpio-func: leds-gpio: {'rockchip,pins': [[0, 2, 0, 243]], 'phandle': 256} is not of type 'array'
> > >       from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
> >
> > the error is predating this patch but should be fixed
> > nevertheless.
> >
> > @Jimmy: can you check if the schematics for your board provide
> > an alternative name for the pin that is "leds-gpio" currently
> > in the orangepi-5 ?
> >
> > Or just rename it to something like status_pin or something?
> >
> > Thanks
> > Heiko
> >
> >
> The schematic calls the pin PWM0_LED.
> The schematic for the LED RUN led on the Orange Pi 5 looks a lot like
> Orange Pi 5 Plus's PWM_LED0 which is being driven by the "pwm-leds".
> Unlike the PWM_LED1 which is not connected to a PWM capable pin.
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts#n97
> 
> I'll try to switch it over to the pwm-leds and use "pwm0_led_pin",
> otherwise I'll just relabel it to run_led_pin or green_led_pin.

Thanks a lot for looking into that :-)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
