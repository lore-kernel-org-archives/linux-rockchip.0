Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3EA4C64EC4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 15:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KVDtpwrV3gQyF3Xa6zyCaENamSQWpnTEHIraxyY60Z0=; b=2ZP8YMsi4nzZF4
	KW72dyWDBz2rHmX18YiBtuOAxH1VQZjb2+seyp0QX2DfEKVXvYoz8MedLEr7U4+PEWvDrFmitcuFL
	dr4sBPPJmQS7xcwIue3K8LPr06sauwQIvcRoIpywYk/tArQ2DZdoRXhN4Sj6ZsK+vp5gnjhQcmJQo
	BdC5TllfDyK9F+MckD92IGt8r/PSsaANQKG8RVG/xHdFY4m81tJHqJHZTe7IjBUFUwK17OR5WfFPf
	tCdC4ztHJxcYrh2Arn5TD+Rb1iFOHqfEVwUk9eTBYzr0YjjrhhtTCRS/nde0ZcErDwNOPTK6MSu4O
	4MeG1nO31DV2Krlk7Dsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSJJD-006Jfz-Gr; Wed, 15 Feb 2023 15:02:59 +0000
Received: from mail-vk1-xa30.google.com ([2607:f8b0:4864:20::a30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSJJA-006JeL-K4
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 15:02:57 +0000
Received: by mail-vk1-xa30.google.com with SMTP id b81so9811248vkf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Feb 2023 07:02:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1676473374;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=M7hd4U2ofjGk96iav3XLY03QqIBY+w0lGe4zEy9ew+Y=;
        b=Il0dF+hkuBktSDCWulUrO/H0UVqWRqb9i4DKQes3R1sFYDEHw9FG99WaP3x3+86yug
         urV4j539iKTkV11sB8ENuBtddkQ08+pz5iYj4FwmKaLxz4KpYIzielLcHwPlB6PfV/WG
         hOKwWe33yVk71XJdpSCd4MvZW8b5wUsP/cbmsiEu2sRJCyyfalAEJKlrKExwOeQQikBJ
         WBQCf9ThzZxeYi2J+Sx+g5uaRmZZVuU/LxPCtIIb3ocuT22i6Nannbf8MHHPOTpwzJvf
         u2niaZpBh4U+nENbH0dtzXOLnQFP32z/lTK1Hc9bENgOAJwOmOjY6Ipw0IQuviyb75dD
         ACaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676473374;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M7hd4U2ofjGk96iav3XLY03QqIBY+w0lGe4zEy9ew+Y=;
        b=sukgWUUALb3xmOeemG4Vm0qzT3B74VE5olkmfABDP4qdMFEfx3XJZRX+ZaQr8aaoUn
         OyLAOsQ5H2pmnnfzbGA1oOKTYBRHh2hw/3GqBqvu93LNJgenig4GOh/jFFDu6I94zW3h
         gy+nz5Y5XXGsJemxOm55lyevN02rBkahkG/QqFq7dhF48k4HoE7a3COOFpWoHJ+w9cEZ
         BucX2SJhXyGOzCSqKCs1zMWsVLl99v4fAk2ZWG2T36bVR6bFwdyZrq6RDmFg9mijaypP
         2fL6t+vvyNHIi/UHY80O2d+PJ2OqieY0QssLq2HyrJHCCw9Srfv3YZVaCvO+z7T/8KmI
         bQDA==
X-Gm-Message-State: AO0yUKVTZUFGmWlo7espiuhbypbiLYcjlM1vY8gvotSHbE49SXx9Pbj4
	OCdlBFenZ+B8poMY9EobGdwFsU2aHSuixOPlWZ6IQQ==
X-Google-Smtp-Source: AK7set/q1okhI51WZK1/r5p2g0WPqKECkT2DwWZhoOSsnHFlc0UhCRfSj/7yXDPFE76jmkl4J1YO2/z2kky9CxMgd2Q=
X-Received: by 2002:a1f:2896:0:b0:401:5477:5c2c with SMTP id
 o144-20020a1f2896000000b0040154775c2cmr342082vko.10.1676473372884; Wed, 15
 Feb 2023 07:02:52 -0800 (PST)
MIME-Version: 1.0
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
 <CACRpkdbmXri1vtRShm7a3N0sRA7Qg_ni5FpAtiEv+72a6g9Wng@mail.gmail.com>
 <CAMRc=MeKdb=xmidwXQiNxtJpb1xii1D-43m1z6cNtF1VxFwogg@mail.gmail.com> <e0bf4347-ec24-a4e2-0851-d5cdf850cc28@linaro.org>
In-Reply-To: <e0bf4347-ec24-a4e2-0851-d5cdf850cc28@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 15 Feb 2023 16:02:42 +0100
Message-ID: <CAMRc=MdZOmxSTvtKaPo7cnx6q+dg8ANQYuM8PeuN+KQ7fqV61g@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] dt-bindings: gpio: rockchip,gpio-bank: add
 compatible string per SoC
To: Johan Jonker <jbx6244@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kever.yang@rock-chips.com, sjg@chromium.org, philipp.tomsich@vrull.eu, 
	john@metanate.com, quentin.schulz@theobroma-systems.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_070256_680625_08187264 
X-CRM114-Status: GOOD (  17.74  )
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

On Sun, Feb 12, 2023 at 5:14 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 10/02/2023 21:03, Bartosz Golaszewski wrote:
> > On Wed, Feb 8, 2023 at 12:08 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> >>
> >> On Sat, Jan 21, 2023 at 12:06 PM Johan Jonker <jbx6244@gmail.com> wrote:
> >>
> >>> Currently all Rockchip gpio nodes have the same compatible.
> >>> Compatible strings should be SoC related.
> >>>
> >>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> >>
> >> Bartosz can you merge this one patch and keep the rest back
> >> so we get a more defined DT binding baseline?
> >>
> >> Yours,
> >> Linus Walleij
> >
> > Krzysztof, you left your ack but seem to also have pointed out an
> > issue - do you want me to fix it up somehow before applying? Drop the
> > oneOf and turn it back into an enum?
>
>
> Sure, you can apply with my comment fixed but then just please check
> with `make dt_binding_check DT_SCHEMA_FILES="xxx.yaml"`, that
> indentation is not mixed up.
>
> Best regards,
> Krzysztof
>

I prefer to get your ack on the final version really.

Johan, please address the enum issue and resend just this patch.

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
