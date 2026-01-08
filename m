Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7F44D148AF
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 06:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNeEeYSrVUwTBy9zBLP65i0zZ1kK/drReQPfJCSbkQU=; b=MCSoM90YU46JWj
	NEKe1ofzg2cAZQ9BTNGbaODVcFh05vohybwBw0BiMW5R8zRXZmWlxOwi7oTfEBkPSpax/QFbHTGur
	mrir+KTiGMRBNIjNb+DqZVNRQNmBJu/WH8t7Rfc2z2R6fIm6MyUighVC+Zef8zev7oYKufpQy08am
	wL7gi41IveDqWqcPVMCStFhFzpJJ85QKa275VFPkUJxjhIVvcECJpKM2fh89TE/UHUM8c/+qD40eW
	NoJo4MejjqQPom9VdZM2ZkQA3wqiBi2s8QDvzKeumCOw3SyD8+t4i+eBOlZFmC7Nfag7Jr47qqBlq
	3/eBpcoMI7CK8lirIqJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjvO-0000000G2Ep-2DU2;
	Thu, 08 Jan 2026 06:55:14 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjvM-0000000G2Dp-1Bb6
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jan 2026 06:55:13 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-64d4d8b3ad7so4401410a12.2
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 22:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767855311; x=1768460111; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yAyXDWLGELFvv1UWhWJn7SNZwSDSfP0ZE2dhDg/EXvA=;
        b=VJoyb75v1Igmm3j4VHajc6b0OJXO0DwUkDOOcaNE73GOqatFqqjdCbKCot4KyC4JCK
         rVDdBa+gGZ7FziWeTrMZPPfMD6YLpO6LeBOmWEIvHt2wnRQiGbK0AVHGbrZzHhpx2Tua
         ZmI0ET/H/MJFE221K9EP4Rl21gS+EvNcFRMsUgtKTf9QkLu7c82BJUpOVzDvWw1CkvBF
         uQxp9CuwxqzkMNQ2P/fdDqzJAaQcpwAItZT9JhfjnP/kuz/e3U1I3VNDB1aJ5k7I+PD8
         EBOvmVq2fmYhu62F155bZ3kDCzYrO/RQ+OUsAF+qJ2I1SuDr8DqOQrFE+VUyuipw9qss
         sn9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767855311; x=1768460111;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yAyXDWLGELFvv1UWhWJn7SNZwSDSfP0ZE2dhDg/EXvA=;
        b=HDFx1SYeiOZPlm7gOv59AQNPgZdwa1Tf+qCdBPVHHZXbcD6X6sGq7KG3N7mJwZ3NYF
         bKsdd8zWDkp6zB+FvLAOQvQjQRbTjT2dJwHtb/NmFibK6xHBQ0eMpKPMkWquYq02HKUB
         jVJkLrPaIxw/luG+gMSlpzsGVTGRALT0gbx3wOqaHS6+yhV3HRBB4eNfhgUondWYXQLn
         KJaJAVmVHX971wtdun+Tpp4ijGDGn4Gxyuhzm2EBKFwzutmTXSNpMI8NOp+jqhZe46Wd
         NpQAblGzzvikVY2IfzcWuzS7jrVZhvHNVkbb9MtlHY1+dTrntTgSNbYHEjlqSz0+mIz4
         QXQw==
X-Forwarded-Encrypted: i=1; AJvYcCUyxUj6s/DXAOKnOpZTXxX2xLmbg2B06Dp3iOnNdk/Zw54C6nYr1UagvelmVy8sXIw5a1oNrDpKZ6/S67K26w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxecVIOVn5jZz4pFyQ+ouuDQLUUCCuvwGe0D692ipkZAmYlNnPH
	fyIML7O6ENmfadB5IXbIx620HVTObLpKEltLTJ09cSsPMpNQzf1oo9snRXrKakmzm20Nf366blf
	ut5IMe5YIgqnUtYdkiglT+ptDx8wf8fU=
X-Gm-Gg: AY/fxX7QTtZSIro/yOr6hAGjs/EGM3JhndjQqKki91lYFsqoXat2xHbGBv8yTrnzQTo
	m5NvAnPduKpNgX/aNmwycF/GFRX70Eo/iIeOeLPsPpYpHmX0+3NpzUJsGQXMuPeIYRaAlg/6ijM
	TDhnaF5//BTFjN27afh9Si2PsEa31PcvvaEQ+aOFgnfL1DzTm4akVQ/aEKcc2bmSshrWlmLjFVF
	sPjMwpNZzwMqiYNsPZ1V4oDGTXC7JvlDbDd/3Sl4ea9HPY5C9PYsImtNeqQQ8aQJmY=
X-Google-Smtp-Source: AGHT+IG4m9qvtkc1tMc4hksJp1Vna2m4aQX4wMUQg4Vqs3Y0Vu+b7EVPh7KsSp/EWOjuxv2xkQR9qBYjiSFRJ2sMnsk=
X-Received: by 2002:a05:6402:27c8:b0:64b:5f4e:9e88 with SMTP id
 4fb4d7f45d1cf-65097e4d851mr3774748a12.21.1767855310352; Wed, 07 Jan 2026
 22:55:10 -0800 (PST)
MIME-Version: 1.0
References: <20260103083232.9510-1-linux.amoon@gmail.com> <20260103083232.9510-2-linux.amoon@gmail.com>
 <aVke1kQnHJLqWGHi@venus>
In-Reply-To: <aVke1kQnHJLqWGHi@venus>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 8 Jan 2026 12:24:50 +0530
X-Gm-Features: AQt7F2qhaPGkLVIcZtPHVBeTYLw90eQbbpNMhgJtysYJBe3JW3HGYEkeT1DfTvQ
Message-ID: <CANAwSgSd0TLrkxpnS5qdot8B7vkd4wH76-g8hAixqfbEtH4LyA@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] arm64: dts: rockchip: rk3588-rock-5b-5bp-5t:
 Correct Type-C pin bias settings
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, FUKAUMI Naoki <naoki@radxa.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Yongbo Zhang <giraffesnn123@gmail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_225512_357888_D4282D48 
X-CRM114-Status: GOOD (  21.73  )
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

Hi Sebastian,

Thanks for your review comments.

On Sat, 3 Jan 2026 at 19:23, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> On Sat, Jan 03, 2026 at 02:01:17PM +0530, Anand Moon wrote:
> > As pre FUSB302 datasheet interrupt line (INT_N) is an open-drain,
> > active-low signal. It requires a pull-up resistor to maintain a stable
> > high state when deasserted. Similarly, the TYPEC5V_PWREN_H enable signal
> > requires a pull-down resistor to ensure it defaults to a low state,
> > preventing unintended power delivery during the boot sequence.
> >
> > Update the pinctrl entries to use pcfg_pull_up for usbc0_int and
> > pcfg_pull_down for vbus5v0_typec_en to align with the hardware's
> > electrical requirements.
> >
> > Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> > Fixes: 67b2c15d8fb3 ("arm64: dts: rockchip: add USB-C support for ROCK 5B/5B+/5T")
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > v1: As per the shematics CC_INT_L interrupt pin is GPIO3_B4_u
> >     As per the shematics TYPEC5V_PWREN_H pin is GPIO2_B6_d
> > ---
>
> Checking the schematics:
>
> 5B v1.45 - CC_INT_L - R2613 10K pull-up resistor
> 5B v1.45 - TYPEC5V_PWREN_H - GPIO is effectively unused because R95035 is NC
>
> 5B+ v1.2 - CC_INT_L - R2613 10K pull-up resistor
> 5B+ v1.2 - TYPEC5V_PWREN_H - R163 100K pull-down resistor
>
> 5T v1.2 - CC_INT_L - R2613 10K pull-up resistor
> 5T v1.2 - TYPEC5V_PWREN_H - R163 100K pull-down resistor
>
CC_INT_L is gpio interrupt pin to enable the I2C read operation.

As per FUSB302 datasheet, here is the updated version of the commit message

Configure CC_INT_L as an active-low, open-drain output. Per the hardware design,
this pin utilizes an external pull-up and is driven LOW by the Type-C
controller to
signal the processor to perform I2C register reads.

The TYPEC5V_PWREN_H pull-down resistor is turned on as a signal to
the Type-C regulator, which has an active-enable-high property. In this context,
the regulator is used to set the polarity of the GPIO used to enable or disable
the regulator.

> TLDR: All GPIOs have pull resistors in discrete hardware and do not
> need them muxed in the SoC.
>
It depends on the GPIO, pinctrl PMU configuration.

I was thinking of converting the vbus5v0_typec regulator to 'regulator-gpio.'
to better reflect the hardware schematics. The TYPEC5V_PWREN_H signal
(GPIO2_B6_d) acts as a state controller rather than a simple enable pin,
and this change ensures the device tree aligns with that design

[1] https://dl.radxa.com/rock5/5b/docs/hw/radxa_rock_5b_v1450_schematic.pdf
(page 28)

$ git diff arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index 5f58e339a052..387ff009ec76 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -57,9 +57,10 @@ rfkill-bt {
        };

        vbus5v0_typec: vbus5v0-typec {
-               compatible = "regulator-fixed";
+               compatible = "regulator-gpio";
                enable-active-high;
-               gpio = <&gpio2 RK_PB6 GPIO_ACTIVE_HIGH>;
+               gpios = <&gpio2 RK_PB6 GPIO_ACTIVE_HIGH>;
+               states = <5000000 0x1>, <0 0x0>;
                pinctrl-names = "default";
                pinctrl-0 = <&vbus5v0_typec_en>;
                regulator-name = "vbus5v0_typec";

Could you please try this at your end?

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
