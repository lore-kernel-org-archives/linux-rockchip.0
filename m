Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCA63C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jul 2022 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oh40o8cHGAJTQ19fqDBpjIcVWXyQ38CwKcC1VcaM5bI=; b=CB3Q0jFS2Log/H
	xDQkS67TTNPoPeMHOgjdrGo/jJQ3d0bZoBcdfR/YPCTu7vB1KuFBbTRNrfV6LWR7xZX9c3TX7wYJs
	7plyivP8QnmcvP27dwBDjvFLnh0aZvKIyPC3RRg8c6VRyGgoPqk2ze9N/eStq6feklGQfmFEtMc4E
	IERmO8dQu+2YLjM0qib9UEzuIxIeVjmMJAAXDQnhE3zjHNeViDJQLbH/sEwe3nW97zKAsz07vvCTt
	dhpGMCjWIxRL5aNTZgr691Ii7Eo2KVBXW3jHihThm/9Sx8KtTg68S6iBkTZ21QrjD6hjMb22mKWtO
	kx63r0UXrIiHNTwX5X6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG0xb-00FeyT-1B; Mon, 25 Jul 2022 16:29:35 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG0xX-00FevQ-M8
	for Linux-rockchip@lists.infradead.org; Mon, 25 Jul 2022 16:29:33 +0000
Received: by mail-ed1-x536.google.com with SMTP id w5so2243108edd.13
        for <Linux-rockchip@lists.infradead.org>; Mon, 25 Jul 2022 09:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=C7F63YfqSElTKH6vhYb8WCgwhCzeeugfwAKRk2UaFis=;
        b=ZNjqPIarAp4UgnVWPjpK4U0VWutd5PZe++WcmJ4sPcpfw1lln2kn3iNO0oaEjD+iMS
         3AZZC/eV3ukNtMAVPr3F9bCoJI4x6o9uWjJlpuLJ8djT2NzCUiqjBz8ACJqJ9CKu3Kb3
         B8mBNRCwLO67+jEj3aF8INRpux6UxauSA0zYbZYMF6R17qWuk9CThgnHPrdEHHAjsBJ7
         0gCrcX5rr4JYgb/iSLOKHtV399uUDle4AS9rHLBdPHC/jjdEFZbNE5U7CZBiCQleNsjb
         oxoSH4wjh6txrNmEdLRpDeaitDKAkBF7j5RrbPpbccJR0IrIyMyVwWKrJvXJkMB6kPX/
         q3HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=C7F63YfqSElTKH6vhYb8WCgwhCzeeugfwAKRk2UaFis=;
        b=Dk3z/mGzpXq37gFczN4EfW1ZzDWMnrkbw+MMvlR/dTShHbX2nBOjgeifVBcBpOhSYK
         5/EBLGBueszGTblhNzAUapw1y+21jhl9PxzCTkDuwlRC2NSs0GMbSA5gG4NlE/udv+8G
         QY2ds6pz9f0qCyWdZocrl8pP+3HBUMrp9yEoskI69626OEHMy40Yjx/Qf7aahVgVTtmv
         CU6XSocfDANi7Uu4uoA5QSo3Ytt4K2l2vWKxZyngm5jLxs6Vd6z08rSLyKQbqMVSFN+B
         zrEn014CRN2NGzaOpxgBUsao3Zs3Cj4grgkcvIVm/IsZCnmgMqCrRZE80AtpM1Cp3mSL
         U3pg==
X-Gm-Message-State: AJIora816VIQp4bAgGY/RbPSNCEO09jG6Ep8FZ74tkF9CgT/tz/OU9X3
	tYthqM6exqHor/H1akJedQuITHWunf2ZV8Jxj4+elw==
X-Google-Smtp-Source: AGRyM1sfFHfiyXyI1PRrm0pqMoNzo1OT79L5DayUQB4W3Z03Vhq3fvixU/ny5bzLWyonj33wuRZwdjFiF4POWuFcxOY=
X-Received: by 2002:a05:6402:3492:b0:43a:d1f0:978e with SMTP id
 v18-20020a056402349200b0043ad1f0978emr14456065edc.306.1658766566375; Mon, 25
 Jul 2022 09:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
 <20220214212955.1178947-2-piotr.oniszczuk@gmail.com> <YjcgC9HZeDQX1sNJ@eze-laptop>
In-Reply-To: <YjcgC9HZeDQX1sNJ@eze-laptop>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 25 Jul 2022 13:29:15 -0300
Message-ID: <CAAEAJfAo9Onyxesxm37V=YWp6YNm+QWDeF-evfg9sFzm7uRrzg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add VPU support for RK3568/RK3566
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: linux-media@vger.kernel.org, Linux-rockchip@lists.infradead.org, 
	heiko@sntech.de, hverkuil@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_092931_982354_CA6D098C 
X-CRM114-Status: GOOD (  17.52  )
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

Hi Heiko,

On Sun, Mar 20, 2022 at 9:37 AM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> On Mon, Feb 14, 2022 at 10:29:54PM +0100, Piotr Oniszczuk wrote:
> > From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
> >
> > RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP8
> > video formats.
> >
> > This patch enables RK356x video decoder in RK356x device-tree
> > include.
> >
> > Tested on [1] with FFmpeg v4l2_request code taken from [2]
> > with MPEG2, H.642 and VP8 samples with results [3].
> >
> > [1] https://github.com/warpme/minimyth2
> > [2] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
> > [3] https://github.com/warpme/minimyth2/blob/master/video-test-summary.txt
> >
> > Signed-off-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
>
> Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
>

Looks like this slipped thru the cracks.

Any chance it gets queued?

Thanks,
Ezequiel

> Thanks,
> Ezequiel
>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > index a68033a23975..33ecaafa8cb7 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -390,6 +390,26 @@ power-domain@RK3568_PD_RKVENC {
> >               };
> >       };
> >
> > +     vpu: video-codec@fdea0400 {
> > +             compatible = "rockchip,rk3568-vpu";
> > +             reg = <0x0 0xfdea0000 0x0 0x800>;
> > +             interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
> > +             clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> > +             clock-names = "aclk", "hclk";
> > +             iommus = <&vdpu_mmu>;
> > +             power-domains = <&power RK3568_PD_VPU>;
> > +     };
> > +
> > +     vdpu_mmu: iommu@fdea0800 {
> > +             compatible = "rockchip,rk3568-iommu";
> > +             reg = <0x0 0xfdea0800 0x0 0x40>;
> > +             interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> > +             clock-names = "aclk", "iface";
> > +             clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> > +             power-domains = <&power RK3568_PD_VPU>;
> > +             #iommu-cells = <0>;
> > +     };
> > +
> >       sdmmc2: mmc@fe000000 {
> >               compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
> >               reg = <0x0 0xfe000000 0x0 0x4000>;
> > --
> > 2.29.2
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
