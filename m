Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60DD1C4708E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 18:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uvg7hvOgCk1phGN2J4LYcreyUnVdM6lNLly+MCqVxhg=; b=Tvb64OAzruUm9r
	q/rbSvb0otl1XHqLePVmUzmZ3XzZjNCz3RbAiH7UtIc8XpbVFk65dsnRMyAe1DbDIvERjZ7M8Od3x
	Stt4bXJ3RY0F6o6EkWxTYjqy+v4bflr6g2kP4TMGlUiLeHxDUNg/7Cxd3aEXhPX+O9FJDfjSOld+U
	uv7bGDRmkHakH4BkyObjX9ieZoGVIlWgviECIWBhpjEcPLoGiipl7qZMsaUgZHn3LZFzjA7pL1PK3
	KHhmua4Yea882BGNSqRN2RW1zjjL3TAbNv9lVgmrE+sVEJbbeR11njTenZ6wBzyvRVs+haOFjx3A4
	/VftPFey8isRSPWKdwiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDVAL-00Dk0S-QP; Thu, 05 Jan 2023 18:40:37 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDE8w-00Eezc-Si
	for linux-rockchip@lists.infradead.org; Thu, 05 Jan 2023 00:30:07 +0000
Received: by mail-wm1-x335.google.com with SMTP id z8-20020a05600c220800b003d33b0bda11so1620649wml.0
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jan 2023 16:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FKz+FNKC3bWFmt6bB6J0SBycZanvO++ywhnMrcKk70A=;
        b=cUUyUeKcf2S+Qaql03XisWLeNjtIqXdv1ZzjziUfWRwKfTRFt1EstpKNjYE50uJM/y
         u1f8F9OXx170qKFM7yhUuZBO1z8cJTPW130ez5WrOfbND2pPhBK0eAWvQdlMq6ham4Vv
         izUs8B3whycvOJ0mHBmvrr/vE2e3IcUmrxVrBSOC+5Ks5Z5Gt7eUHHQX+hdpgRydlV5C
         hxNNiyrX0U2uVF0swk76XkOCmuiQdo83jS4np7dsAqgeIk+7jm6rgiDoaGgz+Iy2UMES
         H8ua2QYYqCOsdkuSf2Ww5WfT8zC4wzAAByRt26R+S8xzjORmx8iCJOJms8UFnONmv6sS
         wpNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FKz+FNKC3bWFmt6bB6J0SBycZanvO++ywhnMrcKk70A=;
        b=sw6Vfx/epNS1BPcD5qORZOpVQX2gnu4M2LJmbhmbLZU2CEufYNYsaRvhu33lOuwuyr
         OEYJXy4YNyB4St8qchz+Oz08vm1frbWVGnor9Q2xzlYIc8wQQG5aNQ4hiOv1og/KZAVO
         fluc9/zq50FbsikYhAsjR9fpOw/OJeFUTuHD3a6LXGmTi/QmrmpWkHdmwld388AM1MZO
         HoQrli1gdgisAOGDKLlzQHQ6aSKKHgu1GzOx0SmfvShiVXhvMTNxgtad6x+S1rpfeDcw
         /ckApLnMLibypSH9M8RqTCXadTMldyhsr7THYxnjFasdMYhFG8PyqDITnmBsX7u7cZ+O
         7kDg==
X-Gm-Message-State: AFqh2kqRvokkjHTlRZU9PCj8hXrJSgHSwYSUA9nNxjjHNRbUJ8CNRMdW
	n2r01wYYGx7iaaus8OP9ypkhp7/1IYvU79OhnAA=
X-Google-Smtp-Source: AMrXdXtakpunrLiS8vG4m2/tdNj/vCml4O58iSHxb0A+ZHSrd9GpOKJ8FYczqz6n3gG6jVgsh22Tx4xUxrhIK7MFPu8=
X-Received: by 2002:a05:600c:22d2:b0:3d1:f0e3:722c with SMTP id
 18-20020a05600c22d200b003d1f0e3722cmr2457280wmg.33.1672878600296; Wed, 04 Jan
 2023 16:30:00 -0800 (PST)
MIME-Version: 1.0
References: <20230104205434.867219-1-lorenz@brun.one> <CAMdYzYq4Nev1Vya7Bw9M5x5Fv_QNh0tCjfn4e33T5wkA6iwijQ@mail.gmail.com>
 <VRJZNR.A6ZTK7O95IUL@brun.one>
In-Reply-To: <VRJZNR.A6ZTK7O95IUL@brun.one>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 4 Jan 2023 19:29:47 -0500
Message-ID: <CAMdYzYq_icv=2X1BkgZAsNROv__cfB0kivr4c5P8kJTLQAhE-Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix USB regulator on ROCK64
To: Lorenz Brun <lorenz@brun.one>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_163005_646694_79C2ADFF 
X-CRM114-Status: GOOD (  29.51  )
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

On Wed, Jan 4, 2023 at 6:55 PM Lorenz Brun <lorenz@brun.one> wrote:
>
>
> On Wed, Jan 4 2023 at 18:46:25 -05:00:00, Peter Geis
> <pgwipeout@gmail.com> wrote:
> > On Wed, Jan 4, 2023 at 3:55 PM Lorenz Brun <lorenz@brun.one> wrote:
> >>
> >>  Currently the ROCK64 device tree specifies two regulators,
> >> vcc_host_5v
> >>  and vcc_host1_5v for USB VBUS on the device. Both of those are
> >> however
> >>  specified with RK_PA2 as the GPIO enabling them, causing the
> >> following
> >>  error when booting:
> >>
> >>    rockchip-pinctrl pinctrl: pin gpio0-2 already requested by
> >> vcc-host-5v-regulator; cannot claim for vcc-host1-5v-regulator
> >>    rockchip-pinctrl pinctrl: pin-2 (vcc-host1-5v-regulator) status
> >> -22
> >>    rockchip-pinctrl pinctrl: could not request pin 2 (gpio0-2) from
> >> group usb20-host-drv  on device rockchip-pinctrl
> >>    reg-fixed-voltage vcc-host1-5v-regulator: Error applying setting,
> >> reverse things back
> >>
> >>  Looking at the schematic, there are in fact three USB regulators,
> >>  vcc_host_5v, vcc_host1_5v and vcc_otg_v5. But the enable signal for
> >> all
> >>  three is driven by Q2604 which is in turn driven by GPIO_A2/PA2.
> >>
> >>  Since these three regulators are not controllable separately, I
> >> removed
> >>  the second one which was causing the error and left a comment
> >> explaining
> >>  that this regulator actually controls multiple rails.
> >>
> >>  Signed-off-by: Lorenz Brun <lorenz@brun.one>
> >>  ---
> >>   arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 14 +++-----------
> >>   1 file changed, 3 insertions(+), 11 deletions(-)
> >>
> >>  diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> >> b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> >>  index f69a38f42d2d..bd82bc80444d 100644
> >>  --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> >>  +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> >>  @@ -37,6 +37,9 @@ vcc_sd: sdmmc-regulator {
> >>                  vin-supply = <&vcc_io>;
> >>          };
> >>
> >>  +       // vcc_host_5v also controls the vcc_host1_5v and
> >> vcc_otg_5v rails
> >>  +       // but there is only one common control signal
> >> (USB20_HOST_DRV) at
> >>  +       // GPIO_A2
> >>          vcc_host_5v: vcc-host-5v-regulator {
> >>                  compatible = "regulator-fixed";
> >>                  gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> >>  @@ -48,17 +51,6 @@ vcc_host_5v: vcc-host-5v-regulator {
> >>                  vin-supply = <&vcc_sys>;
> >>          };
> >>
> >>  -       vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
> >>  -               compatible = "regulator-fixed";
> >>  -               gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> >>  -               pinctrl-names = "default";
> >>  -               pinctrl-0 = <&usb20_host_drv>;
> >>  -               regulator-name = "vcc_host1_5v";
> >>  -               regulator-always-on;
> >>  -               regulator-boot-on;
> >>  -               vin-supply = <&vcc_sys>;
> >>  -       };
> >
> > Fixed-regulator supports multiple regulators sharing a gpio, the issue
> > is you have the pinctrl assigned multiple times which is not
> > supported. Simply removing the pinctrl from all but one of the
> > regulators will solve this issue.
> Sure, I can just remove the pinctrl. Should I do anything about the
> fact that there are three USB switches on that GPIO, but only two of
> them are described as regulators here? Seems a bit inconsistent to me.

All hardware *should* be described, though it isn't uncommon to see a
single fixed-regulator describe several individual switches that are
all fed from a common source and controlled by the same gpio. If they
are not fed by a common source (for example, the otg port is often fed
from a separate regulator), they must be modeled separately.

>
> >
> >>  -
> >>          vcc_sys: vcc-sys {
> >>                  compatible = "regulator-fixed";
> >>                  regulator-name = "vcc_sys";
> >>  --
> >>  2.38.1
> >>
> >>
> >>  _______________________________________________
> >>  Linux-rockchip mailing list
> >>  Linux-rockchip@lists.infradead.org
> >>  http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
