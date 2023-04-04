Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 318EAC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 13:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G90cTOPdZMaK1yMbfNHf3S4R0f5bli3km1M0WJgZwBg=; b=f/Mk6ovtimKVAB
	sA0qpPzTj68grUOl3QUwXPb9OZtot7BRLH/bHvzpW5PBfAAFj70cBkxlHs3DIPE9/conT+Ymzh0Fj
	CkM5oCL3Pv0ME/cRd+80NWpxCozUvlVmAyRQNbmcEx3y7dyTLu86aXaLxs4iYawIUbp5AikN6izT9
	Lzs06ekuPu+1tMxWxQ7uIxUFsoZhW29ySoeeUR6gG2/wD8Qhg03o9jtxTZ8KEg1h4CQKPZHSln5QW
	YpoGe/j6NB4LZxfv7PNkGwEcY2tBSWdBqitFY+7tZyBhjCsNdSEauSfmMY0BZNuNjGAdil+KoV0hR
	dGAmiJXtn5wMbLCX+21w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjh8J-001cxZ-1w;
	Tue, 04 Apr 2023 13:55:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjh7w-001cco-1C;
	Tue, 04 Apr 2023 13:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=BJEw1H1pkfdI8k8tgnJUG93r+dsLUB9hI2v6VwBw+Ws=; b=I6qKkyt8PKb+d8czMz5XZ+RJGT
	l4EnEtjB88+33Rm281V/ltJZPtQTyAMakj+s9DkXXZmxSPNS1x3qfiG5X1AFg3huj00XLs9kPkvr7
	wQNZBOCEYNJrmeEStws+nSN717cowdzb+AqMv0b/mwXyRRa9Nkt84aj+zmKvtEpmf9KSb0lIivRLP
	d3SWC/PeVwfRCLf7eh5FcKw+CBRr62F9e0+IUxOy2UzFRisyRGt1DEk6Vnmp+4PnDhHZjILDV2GZE
	Bmmb9HLdjN566kYqNODAXMEwWGCSUKwKUO2m7vowdmiwFvs24Of9XKN06rilK4digHXWvKhJL0WMx
	sY1n99Hw==;
Received: from mail-ot1-f51.google.com ([209.85.210.51])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjh7s-009HOl-1Q;
	Tue, 04 Apr 2023 13:55:11 +0000
Received: by mail-ot1-f51.google.com with SMTP id 6-20020a9d0106000000b006a177038dfeso8187028otu.7;
        Tue, 04 Apr 2023 06:55:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680616500;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BJEw1H1pkfdI8k8tgnJUG93r+dsLUB9hI2v6VwBw+Ws=;
        b=SdADDP4sKX4Rb3OAKE84aiRWw7jmz/boiu2FcvFadQNuIkhsbOsgA8sBWAF3zJ/u3A
         iDO6zAB60gSXAn7MW3s3YD2DzgRKWX4d3PxYzsj8pP5wLTWxLoV7Xo+vVh6PINBwU+1m
         eDHLcHiobrZqIoxsmmEd230DyZns3CTGQncqfgwaZ2OBMFtBoC2V6V4wVTc68fGYnBhU
         bP2RJ42RLulFQd91y/DTw++yt33xktNTxI9a9cehXOa8iQN84o6hpaguvlr2fHWIU0RC
         /GzKEc+IVP3T1mriFfIO8I/IZ1CLU1Dbxwm9UvrxUj5WPz2Y+uCSsfcf7P6bq6EDnzn3
         +zEQ==
X-Gm-Message-State: AAQBX9cEGtkTvyPNVNN/y6qDeLBXNGkYwFle3gk7pO0zN2n02e8Qo/cO
	rxOO23V/7sDejkz+WNKsng==
X-Google-Smtp-Source: AKy350b+cqls0gSn2TeHIm4sRXtpjFeVIsHj7uZEjkZFzNbY1hEuGkXE9PfxqXau8Y9ylqfSGtmm+g==
X-Received: by 2002:a9d:75cd:0:b0:699:896e:c9e1 with SMTP id c13-20020a9d75cd000000b00699896ec9e1mr1102300otl.34.1680616500607;
        Tue, 04 Apr 2023 06:55:00 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s18-20020a056830149200b0069faca091acsm5499334otq.54.2023.04.04.06.54.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 06:55:00 -0700 (PDT)
Received: (nullmailer pid 3797380 invoked by uid 1000);
	Tue, 04 Apr 2023 13:54:59 -0000
Date: Tue, 4 Apr 2023 08:54:59 -0500
From: Rob Herring <robh@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: pwm-fan: Convert to DT schema
Message-ID: <20230404135459.GA3793612-robh@kernel.org>
References: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
 <20230403105052.426135-2-cristian.ciocaltea@collabora.com>
 <168052514639.463695.9544022277060710805.robh@kernel.org>
 <dcd79e14-d9df-39c1-5465-4e9d71221659@collabora.com>
 <79396eed-18ab-bcee-5c7e-c3e5e61f32c3@collabora.com>
 <49c226ff-08a3-a7ca-59bd-f0b9cea865e3@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49c226ff-08a3-a7ca-59bd-f0b9cea865e3@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_145508_584944_BD131C02 
X-CRM114-Status: GOOD (  22.57  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Apr 03, 2023 at 07:22:45PM +0300, Cristian Ciocaltea wrote:
> On 4/3/23 17:43, AngeloGioacchino Del Regno wrote:
> > Il 03/04/23 16:32, Cristian Ciocaltea ha scritto:
> >> On 4/3/23 16:10, Rob Herring wrote:
> >>>
> >>> On Mon, 03 Apr 2023 13:50:51 +0300, Cristian Ciocaltea wrote:
> >>>> Convert the PWM fan bindings to DT schema format.
> >>>>
> >>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >>>> ---
> >>>> =A0=A0 .../devicetree/bindings/hwmon/pwm-fan.txt=A0=A0=A0=A0 |=A0 68=
 +----------
> >>>> =A0=A0 .../devicetree/bindings/hwmon/pwm-fan.yaml=A0=A0=A0 | 109
> >>>> ++++++++++++++++++
> >>>> =A0=A0 2 files changed, 110 insertions(+), 67 deletions(-)
> >>>> =A0=A0 create mode 100644
> >>>> Documentation/devicetree/bindings/hwmon/pwm-fan.yaml
> >>>>
> >>>
> >>> Running 'make dtbs_check' with the schema in this patch gives the
> >>> following warnings. Consider if they are expected or the schema is
> >>> incorrect. These may not be new warnings.
> >>>
> >>> Note that it is not yet a requirement to have 0 warnings for dtbs_che=
ck.
> >>> This will change in the future.
> >>>
> >>> Full log is available here:
> >>> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202304=
03105052.426135-2-cristian.ciocaltea@collabora.com
> >>>
> >>>
> >>> pwm-fan: 'cooling-max-state', 'cooling-min-state' do not match any of
> >>> the regexes: 'pinctrl-[0-9]+'
> >>> =A0=A0=A0=A0arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dtb
> >>> =A0=A0=A0=A0arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-va=
r3-ads2.dtb
> >>>
> >>
> >> The only references to the offending cooling-{min|max}-state are locat=
ed
> >> in a few DTS files. Assuming they are obsolete, may I simply drop them?
> >>
> > =

> > If they're obsolete, you can mark them as `deprecated: true` in the
> > binding, but
> > dropping them entirely would be an ABI breakage, so no, you can't.
> =

> >From the pwm-fan driver point of view, the properties are not supported
> and I couldn't find any indication that they could have been used in the
> past.
> =

> Hence I'm not sure adding them to the binding is the proper way to
> handle this issue.

They can be omitted.

Rob


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
