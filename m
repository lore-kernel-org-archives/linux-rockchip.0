Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5CAFC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Dec 2023 14:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqrzY4obE7gSaGWLIR4rU4JhQQ6qzW5I+J1wk/VNl0o=; b=EBKOP7PRMYgyqS
	MafeIiJTcDCghMHhQeNgEnk3QOTQ+/KpVdvB/QvXa9WMWiRDVA+vpb8Yvl0UekAnlfakIr7X04E7J
	DoIrzsMNUK7SLMUksf7oOKqGBgYCU5ldq+S8coNu5PcCAHdgrUEAg3jgc4fHwC1pUSC0m8A4pyF7s
	mfCwvYLqRQD8QA2OUP+IzlWwwwRixNL+UWLGvikj9O3r/EHscSu6wIE4t1pNGaizod15gnXSSvzR6
	o4RtuKC5ecW31BbpsbmP0uy9l2MiJ+fZSbou5OJnJyq1e+kgwsgn/PBAQyJ2ShzutJ/m7KSDpr5XO
	X8FvPOLc3Jcq2LmN9WfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH2bQ-0080Oy-2Y;
	Sat, 23 Dec 2023 14:03:44 +0000
Received: from mecka.net ([159.69.159.214])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH2bL-0080OO-1d;
	Sat, 23 Dec 2023 14:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1703340218; bh=5OOE51P/fnbC7hmn3p7A0wk68byUx7ej8itJJrIT0xs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C2Uf9EyrzPWACpvRQMmg+3hQATX2cDa/Ke2lo5WPRtI9MORmxmGR4uaY7PJ8MnujY
	 Fcj6oTbCdS1GM8kwY10kD+puJlZ19d2ueZalm1ZauJjHNlB5OILOcKAZlqYHKRIQFJ
	 uow61GOmFMKuTo8eRcs7sSDeuzLFP7YG3M9TOozd2ZBMu/cz0jBbVzeCRtZFdWoDoo
	 D6lADdOlZycixIOjJj6trDoA2C2XjuayAHQI2kLNhQwTkwQQjjUOQ/orwQYQ1j4y0+
	 GFrBRB/JPOTrj9uhgR9/hFwTDnSwc10U+PE/Dk1UjDt4nsnaDHdKdl3UWXYhS5zSQp
	 bgxbcUZ+fTwFg==
Received: from mecka.net (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 788423718BA;
	Sat, 23 Dec 2023 15:03:37 +0100 (CET)
Date: Sat, 23 Dec 2023 15:03:36 +0100
From: Manuel Traut <manut@mecka.net>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>,
	Segfault <awarnecke002@hotmail.com>,
	Arnaud Ferraris <aferraris@debian.org>,
	Danct12 <danct12@disroot.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: Add devicetree for Pine64
 Pinetab2
Message-ID: <ZYbouFFFmf7PInOk@mecka.net>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
 <20231222-pinetab2-v1-4-e148a7f61bd1@mecka.net>
 <2250271.fI8GBZLEnK@bagend>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2250271.fI8GBZLEnK@bagend>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_060340_160944_602E16A4 
X-CRM114-Status: GOOD (  29.66  )
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

On Fri, Dec 22, 2023 at 05:49:35PM +0100, Diederik de Haas wrote:
> On Friday, 22 December 2023 12:05:44 CET Manuel Traut wrote:
> > +       rk817-sound {
> > +               compatible = "simple-audio-card";
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&hp_det_l>;
> > +               simple-audio-card,format = "i2s";
> > +               simple-audio-card,name = "PineTab2";
> > +               simple-audio-card,mclk-fs = <256>;
> > +
> > +               simple-audio-card,widgets =
> > +                       "Microphone", "Mic Jack",
> > +                       "Headphone", "Headphones",
> > +                       "Microphone", "Microphone",
> > +                       "Speaker", "Speakers";
> > +
> > +               simple-audio-card,routing =
> > +                       "MICL", "Microphone",
> > +                       "MICR", "Mic Jack",
> > +                       "Headphones", "HPOL",
> > +                       "Headphones", "HPOR",
> > +                       "Speaker Amplifier INL", "HPOL",
> > +                       "Speaker Amplifier INR", "HPOR",
> > +                       "Speakers", "Speaker Amplifier OUTL",
> > +                       "Speakers", "Speaker Amplifier OUTR";
> > +
> > +               simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6
> > GPIO_ACTIVE_HIGH>; +               simple-audio-card,aux-devs =
> > <&speaker_amp>;
> > +               simple-audio-card,pin-switches = "Speakers", "Microphone";
> > +
> > +               simple-audio-card,cpu {
> > +                       sound-dai = <&i2s1_8ch>;
> > +               };
> > +
> > +               simple-audio-card,codec {
> > +                       sound-dai = <&rk817>;
> > +               };
> > +       };
> 
> Not sure if it's right (or allowed) to post a different patch as attachment, 
> but I have been using a different audio configuration (see attachment).
> I haven't yet tried if/how it works via HDMI yet, but the speakers and 
> headphones work fine.
> This patch is based on the following commit:
> https://github.com/TuxThePenguin0/linux/commit/
> 872b829a3511cfa853bd3af3bd4f30be1cb3d1ab

Yes, this fixes the headphone detection. I cannot test HDMI because of a missing
cable.

I will pick the change in v2.

> I've added 'Danct12' to the To list as they are the maintainer of the primary 
> PT2 image and we worked together to get to this audio config.
> I don't if they still use it.
> (I've been using my own kernel/image for a while now).

Thanks. I just crossed this repo:
https://github.com/dreemurrs-embedded/linux-pinetab2/tree/v6.6.7-danctnix1

It includes some more improvements I will pick for v2.

Regards
Manuel

> From 17efeb0ae766886345ff0574c534079742539b56 Mon Sep 17 00:00:00 2001
> From: Scott Santucci <ScottFreeCode@users.noreply.github.com>
> Date: Mon, 17 Jul 2023 13:06:20 +0200
> Subject: [PATCH 3/8] arm64: dts: rk3566-pinetab2: Fix audio configuration
> 
> The audio configuration of the PineTab2 matches the `rk817_ext` alsa
> ucm2 profile, so switch the configuration to that. Use `rk817_ext` and
> not `rk817_int` as the PineTab2 uses an external amplifier.
> 
> Also the headphones plugged/unplugged detection is backwards, so apply
> the fix provided by Danct12 <danct12@disroot.org>.
> 
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
> Link: https://github.com/dreemurrs-embedded/Pine64-Arch/pull/555
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
> index a766f21bd6f8..59e4bf2f77c7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
> @@ -116,14 +116,14 @@ rk817-sound {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&hp_det_l>;
>  		simple-audio-card,format = "i2s";
> -		simple-audio-card,name = "PineTab2";
> +		simple-audio-card,name = "rk817_ext";
>  		simple-audio-card,mclk-fs = <256>;
>  
>  		simple-audio-card,widgets =
>  			"Microphone", "Mic Jack",
>  			"Headphone", "Headphones",
>  			"Microphone", "Microphone",
> -			"Speaker", "Speakers";
> +			"Speaker", "Internal Speakers";
>  
>  		simple-audio-card,routing =
>  			"MICL", "Microphone",
> @@ -132,12 +132,12 @@ rk817-sound {
>  			"Headphones", "HPOR",
>  			"Speaker Amplifier INL", "HPOL",
>  			"Speaker Amplifier INR", "HPOR",
> -			"Speakers", "Speaker Amplifier OUTL",
> -			"Speakers", "Speaker Amplifier OUTR";
> +			"Internal Speakers", "Speaker Amplifier OUTL",
> +			"Internal Speakers", "Speaker Amplifier OUTR";
>  
> -		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
> +		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_LOW>;
>  		simple-audio-card,aux-devs = <&speaker_amp>;
> -		simple-audio-card,pin-switches = "Speakers", "Microphone";
> +		simple-audio-card,pin-switches = "Internal Speakers", "Microphone";
>  
>  		simple-audio-card,cpu {
>  			sound-dai = <&i2s1_8ch>;
> -- 
> 2.42.0
> 




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
