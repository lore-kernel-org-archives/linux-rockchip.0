Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6278C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 08:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNohdVvqLcvaZT5rh0k8QKHDP3JYGmLIOFMsNM0VIzs=; b=OPp5a51/5QJW6I
	Irh1ZBdqNIXwrLR/67GRI0+tSdbL3kPf7rP2eBowhLnJPMMqViqm1x7Ad/pMGjHO/QFO9R5R/JM3b
	whZDEo92quvixGoyoNM7v0LWYhHXBixY2+aE8uFgvAOt9MKOqmYWrHSYVbB1V+fveX1b28NPnlOX3
	uw8Rz575nRFITTXCwLMhaabuoCMUvyRyXtFz4/csBbcNkUi9OtAzV04yFyaKf32/RQ/K4QP+5CvAY
	C2iCeMXbbYMvoVjExa6Ott3Wr5BncutZm4A/RUmaU0/YGFltoava8Uj5rkZ0J3oJTliIwpl2SIzYr
	TmH3Jp+xuClOh37HA9Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUM52-0000000GJxj-1qMQ;
	Thu, 18 Jul 2024 08:01:36 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUM4b-0000000GJq9-0txw;
	Thu, 18 Jul 2024 08:01:12 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-5d3cf39c239so237806eaf.1;
        Thu, 18 Jul 2024 01:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721289668; x=1721894468; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xQ4KLPCsHLF601xsALWSSWpNdAW9n5m+faKZQ6JL9u0=;
        b=Nbwf4tyuyU3RpxnzCoWf8oNOrDqjs075A/ArPwfSJ1Qr5uP/ztqYTCbSmzLcelynPO
         HH3rarxYNlFlNeeykY8SkBbTRVryTMCyzwZ12ZXHHU5/abuz7Muzg6PPQtUF6SL5/ZtN
         DfD5edxeQSBqCuAMhndDKSfYfQxw+HUAHkbak5FoI7B5Y3JuGDpf8FIQGewnoxlm1qzZ
         wRxPVuj/a4GGPuDuZxfc3TisbD77fMOgdsu9JQOp0CgINSPe4a1Ej7fA792x1OMqwawb
         2bHrfeQPIJxlCnSVxJKccWo5LADKmRNBsYu8J1f4ogT9n2mkj5s3FWp93fgx8l6d7C6d
         jrWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721289668; x=1721894468;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xQ4KLPCsHLF601xsALWSSWpNdAW9n5m+faKZQ6JL9u0=;
        b=jkN/d4/xH6uOZj4QasUgbDp95PoP7kaKiBHSffUNdnssMLx8UngmBwFDCzVcostAM6
         05PFhNezL0R9D1hOJqPQCouhZHULd2yN17GnY4VNnvejMDUvrv9hr+lJC/fdVbZCUR4a
         X23oMUjrHvG8IQq1Z4QpqImWHqHvMoKG2d+Modtbr+vquDlB+iH0IpwZIDzCdHfJFD7n
         YB+zvt0/IGq+tDp0OhMT3uYPs1dnBxBPJ9oNELGMUPPaC7X2hBIp/UYCsZhAli5EYVqD
         +MXlcbLnQIz+ondmbg+Kh49bpA0Y2v/f7UstmrLttlcQeXDfpjKcBw6mrT0FnJi5HZ0W
         nPbQ==
X-Forwarded-Encrypted: i=1; AJvYcCVuPJ5tcwuL2HX3qitIObuMB29qvZc7iWRVIFKyGu2cJhBNQHNSkHyMwd+MfYZvNDI0ad6krhBiCzMmP1jfPhGAxrrfMqzLZUKaEy29eHDVjTiq13eguNc2gT1BMjDlRTidE2c7vPED+leOgM8h0AlQ7uLgM/7ybBY=
X-Gm-Message-State: AOJu0Yx1DU85sm19ffTHihGUV4RquwEYpzr21Dn21SpUNxVuBat8dLs/
	sLPekKsVwm4O7EHDkPPgopZAa5XsSvpeFQVR1tp5Ty2zVVOhik8AQPP9nO9t8vaZO2sOc+tWzka
	SHOvXnQ4shEhYhr+3XIv6/TXa4Kf5xw==
X-Google-Smtp-Source: AGHT+IFI1ZltMngartedHgQwV1wVfgFoB+tXcMaJkFke5b0QVF204SgFc8cQFkPOxZ0NukJ5PoVnX15p8W2AsrPxZh8=
X-Received: by 2002:a05:6820:2782:b0:5c6:5f2d:8430 with SMTP id
 006d021491bc7-5d41a1ce1c7mr4684422eaf.2.1721289668077; Thu, 18 Jul 2024
 01:01:08 -0700 (PDT)
MIME-Version: 1.0
References: <20240715110251.261844-1-heiko@sntech.de> <20240715110251.261844-4-heiko@sntech.de>
 <CANAwSgS_ZaEkt5-kKud9OwdN4za+xvW5SoBr34EmOdU2OQJWnw@mail.gmail.com>
 <8a16eb6a29a39719ba4e4c43bae3b6ec@manjaro.org> <CANAwSgRZR8cM9qDD0Xn5ims4GX+PNMQ1+PEMBDQtZq2GxFd6Rw@mail.gmail.com>
 <72b84761ef93c1d4d6d61b16ef1bb1ce@manjaro.org>
In-Reply-To: <72b84761ef93c1d4d6d61b16ef1bb1ce@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 18 Jul 2024 13:30:51 +0530
Message-ID: <CANAwSgS7qFZ4wbvLOxZ+9k=F7c3mFGo=Ab4aJjLgVu+JhfQneg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: fix the pcie refclock
 oscillator on Rock 5 ITX
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_010109_277850_B507ECA2 
X-CRM114-Status: GOOD (  25.09  )
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

Hi Dragan

On Thu, 18 Jul 2024 at 13:28, Dragan Simic <dsimic@manjaro.org> wrote:
>
> On 2024-07-18 09:52, Anand Moon wrote:
> > On Thu, 18 Jul 2024 at 13:02, Dragan Simic <dsimic@manjaro.org> wrote:
> >> On 2024-07-18 09:26, Anand Moon wrote:
> >> > On Mon, 15 Jul 2024 at 16:35, Heiko Stuebner <heiko@sntech.de> wrote:
> >> >>
> >> >> The Rock 5 ITX uses two PCIe controllers to drive both a M.2 slot and
> >> >> its
> >> >> SATA controller with 2 lanes each. The supply for the refclk
> >> >> oscillator is
> >> >> the same that supplies the M.2 slot, but the SATA controller port is
> >> >> supplied by a different rail.
> >> >>
> >> >> This leads to the effect that if the PCIe30x4 controller for the M.2
> >> >> probes first, everything works normally. But if the PCIe30x2
> >> >> controller
> >> >> that is connected to the SATA controller probes first, it will hang on
> >> >> the first DBI read as nothing will have enabled the refclock before.
> >> >
> >> > I just checked the rk3588-rock-5-itx.dts in the linux-next.
> >> > You have not enabled sata0 and sata2, which might be the problem
> >> > for the SATA controller not getting initialized.
> >>
> >> Rock 5 ITX doesn't use RK5588's built-in SATA interfaces, so that's
> >> fine.
> >> Please have a look at the board schematic, it uses a separate PCI
> >> Express
> >> SATA controller for its four SATA ports.
> >>
> > yes, But I am referring to sata node not enabled which enable
> > the PHY_TYPE_SATA.
> >
> > see rk3588-coolpi-cm5-evb.dts and rk3588-edgeble-neu6a-io.dtsi
> > rk3588-quartzpro64.dts
> > which have sata port on board.
> >
> > &sata0 {
> >         status = "okay";
> > };
>
> QuartzPro64, as an example, uses RK3588's built-in SATA interfaces,
> so it enables sata0 in its board dts.  Rock 5 ITX doesn't do that,
> as I already described.

Ok no problem,

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
