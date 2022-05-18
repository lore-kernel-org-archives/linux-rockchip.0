Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF9CC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 May 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dmILSAeFECnL/zrVZPlLi+WV43QeFQcrUTDCftWHE/Q=; b=PvvsMs+Y9hIR3k
	8vXmUjD+cBaygxWh12LtuvyZVtKO/lbQkVgO1CdCdSPDMIGE6LSDomc9wK2/dwCEcK/l8rUkqQ4Hv
	HKxWmtKUD2yYLzyzDpa9APPfP4yVV+QpaCfiwznke8yNwI0I93InzWJtMApASZyP2d90DGnuXHQKK
	FWZ7BIFAtXFst8Mr9rlPHTJl08kRd2eZukzoT/FVDERn+QybbG7xDzvCR6CTKsjzne+DCz+9nyP4r
	hVewr8h18RlGhZdT9a+SNbAr39zQubYnPfgBzRXavLYnvODfzY9c8kzbevcXe1f063p7IvZUB1EV0
	cR/y9r0j4MsDc9oWQoGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrSRA-004AV4-Jk; Wed, 18 May 2022 22:46:36 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrSR0-004AQe-EK; Wed, 18 May 2022 22:46:27 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id r1so6100901ybo.7;
 Wed, 18 May 2022 15:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r48GKaexilEZNN+sQI3f0KxD7Fc9KKp25yevrNkJt6M=;
 b=Uzpo+Wgkuo7R9nwjoHz1Ywf5spGLvNmVK+Xc6NxnoGeZGsW9V8khu/KycVadRKaXiy
 iq3kVj+dY8e4KMrH8HSV5JV/KPPFunpcLjWea7QhqBHGggAcffOYB2Frt9evVt/HhO2Y
 0mulST3hR6HRg4ftUvKogatrBdZfVpv2crnQuJml1ybZmKZl2IRfEam1UbH4Fx5sR9GC
 ARYrsqhHqqY40hR95yK83uSNwJfkOYJoQDmM5Axo3wMICESqCKQ1dVYgAzqypMr8X8FG
 a5E6revze3QNx75jZgt2mFBXg70+yGgDA1RC+Xd+9z9CclvEK2CPPj8s4XAUsjliPJZa
 p1fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r48GKaexilEZNN+sQI3f0KxD7Fc9KKp25yevrNkJt6M=;
 b=tZl/q72M3Z8iX6Kz3qNA8IxQ03N4KSyQW5xomyIxrNxne85o3pRqUAm7E6+lftUWLJ
 g/VdGsBuUmyIZfNVBqEbjghEk20QUdbvLbWjS6atciHtVMhV+DcH17Wh4y75qvD/S82N
 3Whqswqo/F7QfNG9lGp9OIqgDCS6LisQc4gfXqXE/b1+jI16CdFaadaDFLF0wAlarcvG
 NFHlMXePFt1DQVwfQgrXSdHE3aRfqLjufoVaKgaD8i1Ci/p0s2gDv35otWjqPYYQLypt
 i6W7EBrfakqvDKv6fdTCoQHSikqp3LVyCu8bpMZ9Yfx6/EbymZakgdsUEIRZR5nvPajP
 CSWQ==
X-Gm-Message-State: AOAM531+l152qiKDbK3ul8WjRzuHafmqL9kEHIv84bO2x34b6dSxowMG
 iCTBWg8Mv3k+ioHA5zC8+DBBChehLst9SyeEk+c=
X-Google-Smtp-Source: ABdhPJye/mYo5nOX2hmyGqdD1Ru3j/LwxF30VPrIqOSRotDqSuRuVEvHLiMrmLPSBPHAaE7iXLfqSf7LfaQf75CdokM=
X-Received: by 2002:a25:748b:0:b0:64d:b0ec:2c68 with SMTP id
 p133-20020a25748b000000b0064db0ec2c68mr1790213ybc.173.1652913984223; Wed, 18
 May 2022 15:46:24 -0700 (PDT)
MIME-Version: 1.0
References: <20220415104951.27104-1-linux@fw-web.de>
 <20220415104951.27104-2-linux@fw-web.de> <11363549.CDJkKcVGEf@phil>
In-Reply-To: <11363549.CDJkKcVGEf@phil>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 18 May 2022 18:46:12 -0400
Message-ID: <CAMdYzYqOEzNqwwRWx2U85uBBXtkz3OfVEWXDS-YCGmFg8Z7q5Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: set display regulators to
 always-on on BPI-R2-Pro
To: Heiko Stuebner <heiko@sntech.de>
Cc: Frank Wunderlich <linux@fw-web.de>,
 Frank Wunderlich <frank-w@public-files.de>, 
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220518_154626_522805_A3A1D3E7 
X-CRM114-Status: GOOD (  20.13  )
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

On Tue, May 17, 2022 at 2:47 PM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Freitag, 15. April 2022, 12:49:49 CEST schrieb Frank Wunderlich:
> > From: Frank Wunderlich <frank-w@public-files.de>
> >
> > Set display related regulators to always-on on Banana PI R2 Pro
> > board.
>
> Hmm, I'd expect some sort of explanation for the "why" here.
> It looks like both the gpu patch as well as the vop patch do
> reference the relevant regulators for the gpu+hdmi nodes,
> so in theory this shouldn't be necessary anymore?

I agree the hdmi power nodes don't need to be always on, if the hdmi
driver is handling them correctly. Unfortunately the gpu power supply
needs to stay always on until the issues with power-domains not being
regulator aware is resolved. Otherwise we run into issues like the one
mentioned in Lee's email, and issues where the gpu-regulator gets shut
down and we start getting mmu faults.

>
> >
> > Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> > index 2700fb18a3bc..0950f9659bb4 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> > @@ -225,6 +225,7 @@ regulator-state-mem {
> >
> >                       vdd_gpu: DCDC_REG2 {
> >                               regulator-name = "vdd_gpu";
> > +                             regulator-always-on;
> >                               regulator-init-microvolt = <900000>;
> >                               regulator-initial-mode = <0x2>;
> >                               regulator-min-microvolt = <500000>;
> > @@ -274,6 +275,7 @@ regulator-state-mem {
> >
> >                       vdda0v9_image: LDO_REG1 {
> >                               regulator-name = "vdda0v9_image";
> > +                             regulator-always-on;
> >                               regulator-min-microvolt = <900000>;
> >                               regulator-max-microvolt = <900000>;
> >
> > @@ -369,6 +371,7 @@ regulator-state-mem {
> >
> >                       vcca1v8_image: LDO_REG9 {
> >                               regulator-name = "vcca1v8_image";
> > +                             regulator-always-on;
> >                               regulator-min-microvolt = <1800000>;
> >                               regulator-max-microvolt = <1800000>;
> >
> >
>
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
