Return-Path: <SRS0=t2gw=O3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7562C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Oct 2021 17:13:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A875D61108
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Oct 2021 17:13:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A875D61108
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkNAg44VuTnDm3huBGzMsdLWipvzSYgt+FsC+8XEVVI=; b=J57WyeBjFo+64f
	kjGzx7Fr5C4ymhL9oEWqAnrYLRWKEk/MZ16p2GIVrDzh+V64rRbCm2Zs/KwkfEJhiJYmXKLYqEWEl
	5r3bMuY80nKLTonSPrP10rZPFmsmiTkHU8Yse2tqttVpj5lCtTmlyVmC4DjMWQTpNbQrOcmfLTTEO
	Tt5hCTktMC4BxncUfITknwXJj4ftrgfSzBRv/LP2qES9psfKXI+kZGj/nNwRmmORTYdnLy6HLe01P
	x1f+PNLvuFO0kBneUUkV0x8ntJ9bA/lRBZwLtprQHDIhoiEGYfEbdcvHv6qWscIBnJ+RTCaNo8qlg
	PG5k61e6ROK3hBjCXl2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYWxb-000LL7-UV; Thu, 07 Oct 2021 17:13:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYWxP-000LJI-Gt; Thu, 07 Oct 2021 17:13:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D561D61260;
 Thu,  7 Oct 2021 17:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633626802;
 bh=qgaRkKylb5I7rL0mEhfxEXR9XIrcqAJxFLzv8e5JG88=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=lPcFKMPJUrxSO2zGApX5vGLRmoUwVi1rdOpOD3HfzJbMF+yI9oi2WdKUxwAAvxkju
 mBDvBA417YhzIJK49U8r65LworeDV+XmeyC3s8I2x0Hbw20xkpzj+yDB2LIMYoOyI+
 HC0//WOEPilcK42nhhU7OgFBHFHmugMvBWRDpqquR4CIAF7sSQDcOZvCQB/pFKPEUQ
 dq9bATZJMgXocUJVJkst7F1y2DwsFfQqmwZN1/ixej4FLkorfteMHcc0WQ8NlEs7sq
 jI23jNUOwTKzWAVE7x7PlEUCYw9x3Lj4Hrn8cpDOM7dbBF5TKbdVW4bK+4zY7GXmh7
 7q0wwUN5CR8cg==
Received: by mail-vs1-f42.google.com with SMTP id l22so5097143vsq.9;
 Thu, 07 Oct 2021 10:13:22 -0700 (PDT)
X-Gm-Message-State: AOAM533rubkzenIwQuWyprm4VK7PHhFOMcKQI8b0Tswcsjoc2e50HiSu
 aoXNLNWqBHTuaQ40+Iz/FKLX1cjKe8ZhuckzUFE=
X-Google-Smtp-Source: ABdhPJz4d+CxciE86cm0an+klVYy8vZNXeGzVO8rMl/54qPRzymGwVMpiZwmLxviwztCIOJoXCPLvCq5C4v+XIgxJVY=
X-Received: by 2002:a67:c284:: with SMTP id k4mr5637887vsj.24.1633626802047;
 Thu, 07 Oct 2021 10:13:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210920175647.13008-1-wens@kernel.org>
 <64f06ddb-cde6-d71a-7920-41c485a1d3fb@arm.com>
In-Reply-To: <64f06ddb-cde6-d71a-7920-41c485a1d3fb@arm.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 8 Oct 2021 01:13:10 +0800
X-Gmail-Original-Message-ID: <CAGb2v67dixQ7BH+YoBVWEJFup9FdgvrDaCZACEYidPuD4pB7YQ@mail.gmail.com>
Message-ID: <CAGb2v67dixQ7BH+YoBVWEJFup9FdgvrDaCZACEYidPuD4pB7YQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: nanopi4: decrease Bluetooth UART
 baud rate
To: Robin Murphy <robin.murphy@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_101323_639612_A5816E2E 
X-CRM114-Status: GOOD (  29.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Oct 6, 2021 at 6:49 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-09-20 18:56, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > The RK3399 does not seem to be able to properly generate the required
> > 64 MHz clock for the UART to operate at 4MBd.
> >
> > Drop the baud rate down to 3MBd, which can be used as the clock
> > controller is able to produce a 48 MHz clock.
>
> Hmm, I've been running mine this way (with DMA) for ages now :/

I guess you have extra patches on top for DMA? I sent another patch
to hook up DMA.

> Looking at clk_summary, clk_uart0_src ends up at 800MHz off CPLL (same
> as several other significant clocks), with clk_uart0 at an exact 64MHz
> as a division of that. I stuck a scope on the UART pins of the module
> and all the edges look nicely lined up to 250ns intervals.

Could you provide a partial dump of /sys/kernel/debug/clk/clk_summary ?
Just the bits related to uart0 should be enough.

Mine is also running from CPLL, but ends up at 1843200 Hz, which seems
like the clock rate used for 115200 baud:

 xin24m                              24       24        0    24000000
        0     0  50000         Y
    pll_cpll                          1        1        0   800000000
        0     0  50000         Y
       cpll                           7       15        0   800000000
        0     0  50000         Y
          clk_uart0_src               1        1        0   800000000
        0     0  50000         Y
             clk_uart0_div            1        1        0   800000000
        0     0  50000         Y
                clk_uart0_frac        1        1        0     1843200
        0     0  50000         Y
                   clk_uart0          1        1        0     1843200
        0     0  50000         Y

I also observe a couple error messages:

Bluetooth: hci0: BCM: failed to write clock (-56)
Bluetooth: hci0: Failed to set baudrate
Bluetooth: hci0: BCM: chip id 130
Bluetooth: hci0: BCM: features 0x0f
Bluetooth: hci0: BCM4345C5
Bluetooth: hci0: BCM4345C5 (003.006.006) build 0000
Bluetooth: hci0: BCM4345C5 'brcm/BCM4345C5.hcd' Patch
Bluetooth: hci0: BCM: failed to write clock (-56)
Bluetooth: hci0: BCM4345C5 Ampak_CL1.5 UART 37.4 MHz BT 5.0 [Version:
Version: 0033.0080]
Bluetooth: hci0: BCM4345C5 (003.006.006) build 0080

So I think my UART is actually still running at its initial speed.

Another thing is that the Rockchip datasheet says something about the
denominator has to be 20 times larger than the nominator for a stable clock.

> This is with a 5.11.4 kernel, though - I wonder if the recent fractional
> divider changes in the clock driver have changed anything?

I tried reverting the three patches but that didn't make a difference.

Regards
ChenYu


>
> > Fixes: 3e2f0bb72be3 ("arm64: dts: rockchip: Add nanopi4 bluetooth")
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >   arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> > index 8c0ff6c96e03..45ff053b119d 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> > @@ -699,7 +699,7 @@ bluetooth {
> >               device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
> >               host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
> >               shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
> > -             max-speed = <4000000>;
> > +             max-speed = <3000000>;
> >               pinctrl-names = "default";
> >               pinctrl-0 = <&bt_reg_on_h &bt_host_wake_l &bt_wake_l>;
> >               vbat-supply = <&vcc3v3_sys>;
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
