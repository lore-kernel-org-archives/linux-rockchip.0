Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7B2EC7EE2C
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Apr 2023 12:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaFtJp8do3CbjqLLy/iiPJ9IuCSFLFuSBws5gyfhICA=; b=czl9qyScI17R2X
	vfFTi5HF5eFffKiQXUH6U9pJLZR/topZYdYSHwoBGhIeV79+RjyJEzcr/YCuzXR8fkCKLvi0nf8L5
	kxcTRhyVuiqFA/fnGmS2m/K7+KFNaGO0mdw9lNKmUVM3Pi9zzi8KLT8NDGxnOJJk8eHk9qXekcdW1
	ic2AOinw1s2tGjH4psrg7W4A74LhOKiHeSL2XXzfZ8YDTas4BHaNScr6XugjYFwra04nV0xfWr7qI
	cllrIQG57j2ho4FX/drCpGNIggP8IVF2eJTchVm59Q60B2//ZWv67FVrWEmscUa9WOFgmlF+BAynz
	VcNNEXqJnDHwoFDO4rag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppq2T-00Asol-0P;
	Fri, 21 Apr 2023 12:38:57 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppq2P-00Asne-06;
	Fri, 21 Apr 2023 12:38:54 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f193ca053eso3646325e9.0;
        Fri, 21 Apr 2023 05:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682080730; x=1684672730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WCMAHFppmdE0h2eSE7SVA2p77VP5tfUEgylFBcE3w+A=;
        b=bnYWqIosWfJi7eLKizd2y9D7vRS6Y0vmFTABs+IaNG0Q9xxl8W15Y/rRlqZy5hTrBz
         vrS4WupH+7PXNkuzG1IJixXPbI0cJMDAA4KC2HAf6XsOtqrOT/QlreY4kwuZogKI5/2o
         NOOOlKiWsdCU8TSJNteaaysLAVFDzaU+QjtzBZfWhcSCgumdels25tW+H9R7fBu96ld3
         QwVC3DzWgd1YG7R0pIZC0Fh1Zi1pEn/JGzh4suqk1qG7pETstAawt8mt1FanPWK+0KHF
         kHjIrl13egkf4j03KRCTgi2iTtSc5OfLddgS0TYm2JZVQ6TJKl3MxzF5/7TKxw8HvkY6
         Gf4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682080730; x=1684672730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WCMAHFppmdE0h2eSE7SVA2p77VP5tfUEgylFBcE3w+A=;
        b=fPa/XyYShB9DF/PLEb+33d5fi+NDFD61bc4noWJ0coudV99ypCtiLDgOIt/SfsYD9z
         TgoazJTLePeLuQ46gMG5dmGFptbwBKjJn7BaY6Cet6tk0eFoHy9z9rs8GXppstpZOXys
         vsas9fK4wSPb2JL0rBcbpyHiwNLcouRX9uUauWdemGW2IP+iIhQ6yPUR4t2fA9DENQRS
         IMCltaQ6pns6pgfJ9aXswdyEeia/Yy3nK2dybV4Mj03QgCHfSslWlQnEoCKLGLO1C8W2
         FQGW1WA70yxiadAWRFsnY5jHBSl+4JrCxZgwmTCYJWi+NeE5hcdS0mRAW32cmx2Dkcem
         uhbw==
X-Gm-Message-State: AAQBX9fuiMvdU/gmIRAlpiiDc8KaGovh0RU3AUlImAsqAVdkd7QkQ3hc
	/spR8iH83pCea1yo10XbxQY=
X-Google-Smtp-Source: AKy350bWSI4yUZ/Fus/xufW0w2UdGKgyzfF2T9heyFUrE4JvGhiMeEbXqHmCm3DFqwfPOXKBJd35YA==
X-Received: by 2002:a7b:c8c1:0:b0:3f1:7367:dd69 with SMTP id f1-20020a7bc8c1000000b003f17367dd69mr1881495wml.5.1682080730261;
        Fri, 21 Apr 2023 05:38:50 -0700 (PDT)
Received: from archbox.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id m6-20020a5d6246000000b002feea065cc9sm4271300wrv.111.2023.04.21.05.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 05:38:49 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix nEXTRST on SOQuartz
Date: Fri, 21 Apr 2023 14:38:48 +0200
Message-ID: <12191318.O9o76ZdvQC@archbox>
In-Reply-To: <8914603.GXAFRqVoOG@phil>
References:  <20230419171731.28641-1-frattaroli.nicolas@gmail.com>
 <8914603.GXAFRqVoOG@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_053853_075709_03CBA0B3 
X-CRM114-Status: GOOD (  20.00  )
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

Hello,

On Friday, 21 April 2023 13:58:58 CEST Heiko Stuebner wrote:
> Hi,
> =

> Am Mittwoch, 19. April 2023, 19:17:31 CEST schrieb Nicolas Frattaroli:
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi index
> > ce7165d7f1a1..f589a4fdaccb 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> > @@ -65,6 +65,17 @@ led_work: led-work {
> > =

> >  		};
> >  	=

> >  	};
> > =

> > +	nextrst_pin: nextrst-pin-regulator {
> > +		compatible =3D "regulator-fixed";
> > +		enable-active-high;
> > +		gpio =3D <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&nextrst_h>;
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-name =3D "nextrst";
> > +	};
> > +
> =

> I agree with the sentiment and of course the rationale of the change,
> but not necessarily with the implementation ;-) .
> =

> Why is this done as a regulator?
> =

> If you want the nextrst line to be high, you could just use a gpio-hog
> for the line instead of doing a (fake?-)regulator.

Simply put: because I didn't know gpio hogs were a thing. I'll send a V2
to correct this. Thanks for pointing it out!

> =

> For example the px30-ringneck.dtsi does something similar:
> =

> &gpio2 {
>         /*
>          * The Qseven BIOS_DISABLE signal on the PX30-=B5Q7 keeps the
> on-module * eMMC powered-down initially (in fact it keeps the reset signal
> * asserted). BIOS_DISABLE_OVERRIDE pin allows to re-enable eMMC after * t=
he
> SPL has been booted from SD Card.
>          */
>         bios-disable-override-hog {
>                 gpios =3D <RK_PB5 GPIO_ACTIVE_LOW>;
>                 output-high;
>                 line-name =3D "bios_disable_override";
>                 gpio-hog;
>         };
> ...
> };
> =

> =

> Thanks
> Heiko

Kind regards,
Nicolas Frattaroli




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
