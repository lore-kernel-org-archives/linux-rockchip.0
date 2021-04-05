Return-Path: <SRS0=J5Gw=JC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A74CC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 08:53:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1AC65610E8
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 08:53:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1AC65610E8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fr4IGPtPQKwF8+Lic59pPFvJB6ut9/7BzFMPEpuGk0M=; b=hQnvX0JVQRjW2y20bP2MQhqzI
	g67n899v6i7P/k8JqdO50GTrJZlA/FO3l4yxfi2THf+PLWHEnQNCNzTBE0uB4gnTZd9YR5HgFftB1
	AlWxyFyxgZ1q6jn8zhCWI0nX5YOeBfJg8k/VEJb+PAMv9falrb1Y8U1jtLcuLqLnR0luIUqSzh4hm
	66hN5wJzNgxEZydke/ety9DDTgPwb6kW8j3bPlm3hIMG7Go+vPchXYNzRp2iZd++1TTA5UKQKr1vn
	6CWctZc1yA0vLz4qLGWj6FINYQ5eCSvEYKj628vJtwGh1iaoTwwN+3JnQiyBMp/ebxhicT2F2a2wR
	cfGtKLOwg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTKz7-00GzhA-Gj; Mon, 05 Apr 2021 08:53:26 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTKyr-00Gzez-Kh; Mon, 05 Apr 2021 08:53:11 +0000
Received: by mail-lf1-x129.google.com with SMTP id q29so16405909lfb.4;
 Mon, 05 Apr 2021 01:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=66eFVhQITP6e2usZV3iYiCUliC2/qX94Zfl0FBPlH+E=;
 b=jHQ5A0edCkKm5HoDaDPKf6B8a1YXnkOdSPvlBlN2Spux/3ltSMbcP6KXqChhp9EYq3
 4LQ4kz9NpZshwWki7t2apmP11IqkNWNTMEGjGlg6rCPKGZd9O0KCFbofu2zBU49eXcNR
 e61qB6J0tINAcwaWb/xpt29tYpB2xBFNUUV40N2naZq73Bze2o/U1hciIROWOSO+gex+
 5QjjBcw37bdIiXDQSMLhJ+sSglEIgwFO2jEYYS9ECNzDcq6N2eennielubP2BoHkRigt
 Q4DIx80ENP8l+9sSTSetzw3JQVvY5ZGJJiEOVoEv2h8mHF1iDHNdiQJBNs6v6e7bNVzD
 FwZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=66eFVhQITP6e2usZV3iYiCUliC2/qX94Zfl0FBPlH+E=;
 b=DZTea0bhZ8m11lJOPlrIbnsg5io50PHJXux2+kNnP0Sc/JvlzsFfoYv8iBgCc3pf4k
 wU1rOjmpmEWGpsAxc+EY0k5RJp4anuXFsS3yPA2qVU2PafDYFNseJb1vyqzggR1Kl9zj
 WbA6kumCy/ki3dWs8RHMHG9P2OWMnX42AgY/zTLTc3FxVgMS4jazYbJNy/87nXVcskHr
 qkN4QdXqHdrl/if0aM6cnFa4YtXTrN4rptlqiYhXjWM7qeYbJSjtOyfpxAKpQcaifm0u
 jyBsMDDwp2bWsO/OT0j13KlLse7RHjqfgivQ5W43cxS/uaPnegIOYkougg2FRKl2c1ye
 dXUw==
X-Gm-Message-State: AOAM532m7facFZ+x/2yVH9S7OL3Fg/SubYL1a2VwxQ8TfjdDvvE1nO1A
 tJCzEU7fkK52dw8z7wW+Ef5hR02j7DwDgZjCk4k=
X-Google-Smtp-Source: ABdhPJxs9e9v8ObaK3QKnr4HhThJ4aLtN8wUIQCUc0ikxB4S7f9zjUR1pK6SDQ0nr63G1kHQTkUuQxWor4QjB4KTdHM=
X-Received: by 2002:ac2:5f19:: with SMTP id 25mr17650197lfq.328.1617612788906; 
 Mon, 05 Apr 2021 01:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210405074459.4217-1-cnsztl@gmail.com>
 <CAGb2v66K3SFSkm9T_D6X5o7jSYOoYpYeS_yMp1k6nMonmjiHZA@mail.gmail.com>
In-Reply-To: <CAGb2v66K3SFSkm9T_D6X5o7jSYOoYpYeS_yMp1k6nMonmjiHZA@mail.gmail.com>
From: Tianling Shen <cnsztl@gmail.com>
Date: Mon, 5 Apr 2021 16:52:57 +0800
Message-ID: <CAOP2_Th4+ZXtYfrr2kWnnuuzzS-HdNvN6FVtMj=5-nk4QTOvnQ@mail.gmail.com>
Subject: Re: [PATCH] rockchip: enabled LAN port on NanoPi R2S
To: wens@kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, David Bauer <mail@david-bauer.net>, 
 Robin Murphy <robin.murphy@arm.com>, devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210405_095309_832897_F277FE00 
X-CRM114-Status: GOOD (  23.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chen-Yu,

On 2021-04-05 16:14, Chen-Yu Tsai <wens@kernel.org> wrote:
>
> Hi,
>
> On Mon, Apr 5, 2021 at 3:46 PM Tianling Shen <cnsztl@gmail.com> wrote:
> >
> > From: David Bauer <mail@david-bauer.net>
> >
> > Enable the USB3 port on the FriendlyARM NanoPi R2S.
> > This is required for the USB3 attached LAN port to work.
> >
> > Signed-off-by: David Bauer <mail@david-bauer.net>
> > Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> > ---
> >  .../boot/dts/rockchip/rk3328-nanopi-r2s.dts   | 23 +++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> > index faf496d789cf..6ba9799a95c5 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> > @@ -37,6 +37,18 @@
> >                 };
> >         };
> >
> > +       vcc_rtl8153: vcc-rtl8153-regulator {
> > +               compatible = "regulator-fixed";
> > +               gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&rtl8153_en_drv>;
> > +               regulator-always-on;
> > +               regulator-name = "vcc_rtl8153";
> > +               regulator-min-microvolt = <5000000>;
> > +               regulator-max-microvolt = <5000000>;
>
> This is just a simple switch, not an actual regulator.
> It would make more sense to drop the voltage range and
> instead have the implementation pass-through voltage
> constraints from its parent.

Thanks, I'll remove them in v2.

>
> > +               enable-active-high;
> > +       };
> > +
> >         leds {
> >                 compatible = "gpio-leds";
> >                 pinctrl-0 = <&lan_led_pin>,  <&sys_led_pin>, <&wan_led_pin>;
> > @@ -265,6 +277,12 @@
> >                         };
> >                 };
> >         };
> > +
> > +       usb {
> > +               rtl8153_en_drv: rtl8153-en-drv {
> > +                       rockchip,pins = <2 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +       };
> >  };
> >
> >  &io_domains {
> > @@ -364,6 +382,11 @@
> >         dr_mode = "host";
> >  };
> >
> > +&usbdrd3 {
> > +       dr_mode = "host";
> > +       status = "okay";
>
> Please also add a device node for the actual Ethernet controller, and
> set up an aliases node for it, so that the bootloader has some place
> to fill in a MAC address.

But there's no valid (unique) MAC address for both this or on-board ethernet...
They're non-existent in design.

Thanks,
Tianling.

>
>
> ChenYu
>
> > +};
> > +
> >  &usb_host0_ehci {
> >         status = "okay";
> >  };
> > --
> > 2.17.1
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
