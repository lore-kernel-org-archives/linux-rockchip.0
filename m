Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3917ECCD195
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 03:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3HvnUJwB+ziUyJqZIUwXAY1OEfn6U0vAtGQTOQsM7co=; b=jx0u92LA3x0ndP
	f4TOAzJiYOU2OhIafzcvioo8WzLfZzMColwFUDIPjojlhpOxmJpiN0Tih6O5uGO+aRlaiBPmpaykj
	lXc7gwQMDkRr9bfWAzHE6q0elUS41CJ2Xdv5+INso/jp//aU/IEr950hrTSciMicLXE6mYXtXfjLK
	qw9r3Mae1ZJFU7vGKeYTu4G9zQudDKCwh8Uc2MiELotgnju8fthPwF+Rihz0B7GHespzd8mQgy9dZ
	2QdhvCqh3KkobBSLGID28U5vOWW2IMulB3FiR4mWb9W5zpwfP/42mp18oyNHrCdZ49VAay8lVxEVZ
	ryc/Qetdh9WJ5yTvYh2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAgL9-0000000BlOr-1i8C;
	Mon, 20 Oct 2025 03:13:43 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAgL5-0000000BlNZ-47OG
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Oct 2025 03:13:41 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-637e9f9f9fbso7188907a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Oct 2025 20:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760930018; x=1761534818; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c5ZF0nIWQuoX7NVIe6I5+JsT65xxxmpn6kzl5bwhRQw=;
        b=iV0qntYbKCIISC+zdcmKZomCCBIFqWgBiTftLW1wu6u0HFqELqgMiyg8ZLrOjEgcn+
         ycpjlhYA+s9FduVNA2NYvJTExyG+uc9BjZl2D4opf0koNJVQ46PqtrFKZs1bJTDy3IHK
         cwVQyjwp+GN5bSr/RuDxdiqNM8jZjM4iBWs+SlqKPnOkAbDMACCoqM7pq82gnt78dgmL
         JC0VpgheaPXD2vS2WRjozaEc1k/ptFq5P9fsleoNPU7hUb2/r+bgCKbGhIbsBDOiJ0hz
         oj1bRJ1QsNWglDL7FCCs5soByk2IG7C4ZHArLpGhOhZyLwYlclOQtkMF0AADY2WMUve4
         7ziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760930018; x=1761534818;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c5ZF0nIWQuoX7NVIe6I5+JsT65xxxmpn6kzl5bwhRQw=;
        b=gW9HGqFcl82JUkhinn6GtGNJ5ZW7+uq3jKWw2sz72rtaBL+Qr8/5o06EAG5emxjoaI
         Z5o6Q6Na64vKWuh6wh1Z10wUhHieLxlWedieBBqyH41gLxYfHQMo5LJx1vtbtzq1iowJ
         ksb0JiyJii3yAgTmkNgPcqA7ldeVdU8CvFT5iJHtexYKpWUwYxZTRPfFUthakf/cu9p9
         ABPUhqLXM2MWvILxVxmdgUq2NIYNfH/umEuTKmmpymRr4/BbtLLrS7i8FGsv2uUyr9wc
         Eyf+N+sjVMHiXYs0OZjHwLDrz0vvjRk3uNkxCSO60SapIDWCYOuvHM5ZZkdL9soIlEI1
         3CGw==
X-Forwarded-Encrypted: i=1; AJvYcCXqjdTyA5KYeiMEb4pGpfK14IV04hyDL2OZl09z78sArMIqHkNRTKeDkz0W3uGH137d+HgTQrbN+Pyz4jqCrQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCoNKt/2KGR4w0BoCF5XAx90D/tvp3dH3v11HOjZtbuDxCAarf
	iYJkTPxCK7aHf582yL+EI/slfOZrLO+n0VlSsdrmKBec+xDSN8onSXtjVVTjy9oyLcSTBZaEMkA
	kymTaox3pXpumYJuHu9FwgCltCvFPqv4=
X-Gm-Gg: ASbGncs7odLvZJSp0h5ic+i1+yl+2OFNMhbBcxdRQBITxpgXeFBkSDFuywUY5D66nos
	vD9qq+xVAVmyfddIFjBGDWXMI/WCNZTrNQqtGm9E0MGAWg1ey5+0RlLKW+HWWgczYmK3eVnUPQg
	3GIc6XTfXPWRNhnP9NgHoeWPVz4Ja8Sx5NeY7yGe07uwQEVJHglVr4VcMK4U+mt+NCrV0GbwGRa
	Hogv+HiJg2MWENzJ3et4nBHZHQjWkSEAN13bzWS7wuvT3QKK93iX0q9X0c=
X-Google-Smtp-Source: AGHT+IFlIM9veSfUiCEqCs4cu1zurxwbaOmQwJt6C38o77/S8LVLD6y47Rn4sx8fit0dIc30Wd0JSNIXuLu1cF7zy6g=
X-Received: by 2002:a05:6402:278a:b0:63c:17f5:cc93 with SMTP id
 4fb4d7f45d1cf-63c1f630f4emr10867390a12.8.1760930017243; Sun, 19 Oct 2025
 20:13:37 -0700 (PDT)
MIME-Version: 1.0
References: <20251017073954.130710-1-cnsztl@gmail.com> <7f0b1747-87eb-0b0b-6fb0-304811a4be21@manjaro.org>
 <d9d14ce2-2e65-422e-95fb-eb30b128ad90@gmail.com> <41154cde-a447-0707-4387-cd3dca90b97d@manjaro.org>
 <CALWfF7K0=J3E-zr41wV-28+SCFkT_so55Aee8BvQsB4KJZy6YQ@mail.gmail.com>
 <47931e9e-09db-3909-4531-dae6869171d7@manjaro.org> <b22425c3-01e0-4d2e-bf78-5db884d4ec38@gmail.com>
 <de5e8643-49bb-4e0e-45fd-51b25ecf530d@manjaro.org> <CANAwSgTZa7PXBuyh9EdDOXCNuCTOHGsJz18pSjP6WUN8sOaqTQ@mail.gmail.com>
 <047fe2b8-0f94-0f0f-5964-b65844834706@manjaro.org>
In-Reply-To: <047fe2b8-0f94-0f0f-5964-b65844834706@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 20 Oct 2025 08:43:18 +0530
X-Gm-Features: AS18NWCj3sZ27S7v2lVifIDB-bfHc9CGVpcmzR6xkep1HgXpZq9MDT3bZH4TJtE
Message-ID: <CANAwSgRuPhgnGy=2oY6u1jQtDRkQAdPqGv5NUNv8+WDeHq-56Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
To: Dragan Simic <dsimic@manjaro.org>
Cc: Hugh Cole-Baker <sigmaris@gmail.com>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Grzegorz Sterniczuk <grzegorz@sternicz.uk>, Jonas Karlman <jonas@kwiboo.se>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251019_201340_033296_3A94DB00 
X-CRM114-Status: GOOD (  19.24  )
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

Hi Dragan,

On Sun, 19 Oct 2025 at 23:40, Dragan Simic <dsimic@manjaro.org> wrote:
>
> Hello Anand,
>
> On Sunday, October 19, 2025 19:25 CEST, Anand Moon <linux.amoon@gmail.com> wrote:
> > Would you consider the following patch?
> >
> > As per the Rockchip RK3588S SoC Technical Reference Manual (TRM) Part 1,
> > chapter 21.6, Interface Description, the eMMC signals require careful handling
> > to ensure signal integrity.
> >
> > I2C2_SCL_M2 I/O EMMC_RSTN/I2C2_SCL_M2/UART5_RTSN_M1/GPIO2_A3_d
> > BUS_IOC_GPIO2A_IOMUX_SEL_L[15:12]=0x9
> > I2C2_SDA_M2 I/O EMMC_DATA_STROBE/I2C2_SDA_M2/UART5_CTSN_M1/GPIO2_A2_d
> > BUS_IOC_GPIO2A_IOMUX_SEL_L[11:8]=0x9
> >
> > $ git diff .
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> > index 6584d73660f6..f60a1d8be0ef 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> > @@ -327,7 +327,7 @@ emmc {
> >                 emmc_rstnout: emmc-rstnout {
> >                         rockchip,pins =
> >                                 /* emmc_rstn */
> > -                               <2 RK_PA3 1 &pcfg_pull_none>;
> > +                               <2 RK_PA3 1 &pcfg_pull_down_drv_level_2>;
> >                 };
> >
> >                 /omit-if-no-ref/
> > @@ -369,7 +369,7 @@ emmc_cmd: emmc-cmd {
> >                 emmc_data_strobe: emmc-data-strobe {
> >                         rockchip,pins =
> >                                 /* emmc_data_strobe */
> > -                               <2 RK_PA2 1 &pcfg_pull_down>;
> > +                               <2 RK_PA2 1 &pcfg_pull_down_drv_level_2>;
> >                 };
> >         };
>
> Frankly, I'm not really sure how would such changes do something
> good regarding the eMMC signal integrity?  In general, signal
> integrity depends mostly on the routing of the PCB traces, which
> is purely hardware design.  Sure, termination of data lines also
> plays a significant role, but that surely isn't at play here.
>
It is necessary to enhance the signal quality from the controller to
the eMMC module

> Moreover, the eMMC RSTn line is already pulled high to VCCIO in
> the reference RK3588 design, so pulling it down in the SoC itself
> would be pretty much wrong thing to do.
>
It is specified in the TRM that this is only applicable during
initialization.as per my understanding.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
