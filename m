Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22A1FC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 May 2022 21:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUwqy5bvLbeIrVLEnmTiZM2MdfWdgUpKGTvq7dkUt3I=; b=ReqQkFjNtLVlEu
	2xV1Ee9dpqJlUvQ6w50zAfSJt4o1H4sQ29lxIpKGXPDKvM/ck7NR6ObbfHQQ3Lhj77n/JiUvHYI4Z
	SzTghblcQAcdkjsDlr+sm9w8LGWBTK8FN4vOmRLJ0TYKOooOmr3Ibaa/9tVVnh96OccrOjaWR/ABW
	mUtFZUwPunoJUIOCwbOO9hygi1Ep9AfymS3d/TZ2RDyTds7KMr/EN+4oFp/xXMOJiLEkf9phxvOsR
	nwHuLD+cWwDShyLSSHZ0pTQDnkfiNfDZG6p0qnZjvXrP9tMDldjFIZnbi9hE+PcWMSeoG6BMcO//6
	KI/dnnJbETxr/bgqiQ/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqide-00ANsI-8y; Mon, 16 May 2022 21:52:26 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqidT-00ANok-E3; Mon, 16 May 2022 21:52:16 +0000
Received: by mail-yb1-xb34.google.com with SMTP id e78so8304997ybc.12;
 Mon, 16 May 2022 14:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zzZisX84Vg2OWr0cWG9QgT8yxrNRlR4Nsje6UKglFgA=;
 b=Y/5zvGzWwE7UJ7NOoRGm/nPFyByfyN1daTqIdAMl0+7R5JrwX1iIbjsbhPnV7b6o3j
 slAv+enGD9g/EirCalum1+tvL8frWpiDRcFJ037oXn3Ux1QZOg0hXAXRQ4GBo4D6BLdQ
 94NJ2aHsLDfuobSgx+g/j+0tdagU54bJqTnV/rWNGK9a3/1W/uiAn4UsMO5ciu4GI0Rq
 3OuwXeFqFXvzcIOeiN6Gfksmj3BvcAgQ6g/CdO3mz7zDK6TpGEc3sblyGmH35YaqtUSR
 7iJAL6Nv8WWzwI7A6m1u8mpD014wmNoEVGXYkgQGgpUrxidtpB8fYN6tKJy2DkVR8GcI
 vgXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zzZisX84Vg2OWr0cWG9QgT8yxrNRlR4Nsje6UKglFgA=;
 b=21LP+UJN/FQQs0tcM1sSflszZUuWZXtT47QWtZCD95F0MU6q1GGeD6uzY0w6ivZ+M4
 SbVb1V4mwm5YIkxP6s1DSugNKXGoDmmL5jgDBEjp/mi2imPlKUOgtOdz+iIPZeTScyd0
 N4t8NcF9nN15PEEwmI5eI1S6X93QZF+OOANLsElVG58BuAOuATRGLI+IAXHoWQtODrkr
 +Iciy0Td1xgU07iPHs/zQKRHnMFbhBqkoVyNlViI/ZQtId3qvxEVs8s53Ejxsv/KJzDZ
 MfE7gRHw8BnNT7OUAhlKtk6NqqJqofXrvOjq0+j2l8BOSZ/b4T8w1i4h9pXecrrG7AYb
 xWOg==
X-Gm-Message-State: AOAM530bl7OTZ5ZDjsRqgctoJCThvV0UyrFM8Ntmb+TI2tnSnZ+yVzP1
 yp+Eln93fafYaW0kY9jzGHbLrj9dkOc1bDUVo88=
X-Google-Smtp-Source: ABdhPJzBo5/L9as/VSBWGQya1UD1+Dv9u82vrWD++mHF1+JUNvRZ7+25dViWmzipmM8qTXMmZtX4D2cB/nK9EmfmPm8=
X-Received: by 2002:a25:600b:0:b0:648:ef9b:172d with SMTP id
 u11-20020a25600b000000b00648ef9b172dmr19976789ybb.585.1652737931494; Mon, 16
 May 2022 14:52:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220511150117.113070-1-pgwipeout@gmail.com>
 <20220511150117.113070-7-pgwipeout@gmail.com>
 <20220516152651.GA18461@wintermute.localdomain>
In-Reply-To: <20220516152651.GA18461@wintermute.localdomain>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 16 May 2022 17:51:59 -0400
Message-ID: <CAMdYzYp9Yn7VGS3phj+QOP=Bh8+OH3i5oP81Ur_R_egXWYcyig@mail.gmail.com>
Subject: Re: [PATCH v1 6/6] arm64: dts: rockchip: enable sfc controller on
 Quartz64 Model A
To: Chris Morgan <macroalpha82@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_145215_529296_A38D55BD 
X-CRM114-Status: GOOD (  24.40  )
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

On Mon, May 16, 2022 at 11:26 AM Chris Morgan <macroalpha82@gmail.com> wrote:
>
> On Wed, May 11, 2022 at 11:01:17AM -0400, Peter Geis wrote:
> > Add the sfc controller binding for the Quartz64 Model A. This is not
> > populated by default, so leave it disabled.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  .../boot/dts/rockchip/rk3566-quartz64-a.dts      | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > index 71df64655de5..6ec349e7e521 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > @@ -603,6 +603,22 @@ &sdmmc1 {
> >       status = "okay";
> >  };
> >
> > +&sfc {
> > +     pinctrl-0 = <&fspi_pins>;
> > +     pinctrl-names = "default";
> > +     #address-cells = <1>;
> > +     #size-cells = <0>;
> > +     status = "disabled";
> > +
> > +     flash@0 {
> > +             compatible = "jedec,spi-nor";
> > +             reg = <0>;
> > +             spi-max-frequency = <24000000>;
> > +             spi-rx-bus-width = <4>;
> > +             spi-tx-bus-width = <1>;
>
> This isn't really a concern, just a comment. Did you test this with the
> spi-tx-bus-width of 4 by chance? While I did have to use 1 for my
> implementation (the Odroid Go Advance) the Rockchip engineer I worked
> with couldn't replicate the issue on his end and we ended up chalking
> my issues up to an implementation specific problem. I'm only commenting
> here because I don't want you to think that for this device the tx
> always has to be 1, of course if your implementation does have issues
> with a tx of 2 or 4 that's different...

Yes, and it was a data disaster. Looking into it I found all of the
flash chips that I could find only support 4x RX 1x TX. Some didn't
handle 4x RX terribly well either.

>
> Thank you.
>
> > +     };
> > +};
> > +
> >  /* spdif is exposed on con40 pin 18 */
> >  &spdif {
> >       status = "okay";
> > --
> > 2.25.1
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
