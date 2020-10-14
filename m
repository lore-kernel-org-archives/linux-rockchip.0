Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D177FC433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 16:43:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5AE03214D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 16:43:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="nV9kruhA";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Up9k1hmu"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5AE03214D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=np+/rWS6dcvE0KWN4nPpm/QSpvwtfrgwVjDAiwQgT0U=; b=nV9kruhAsbAUQH3V2tqI7WMpU
	Nf5miKgWUVO+5OXYxSZWwYSGSNCQmpZwPoR46X1SsfnUinLyoAJH1UG9Y3kpud3Z6ANt/ittTl4v9
	Vt2IxJ0dDe1IkikEJyPQjgAgTkyARtcyvYlyt2WPxB5Ze1/qse8nZVTvYd+Xg4IxyY7nBii+l3oED
	4PxE7FYDFXJm/ZNszRerMqe+eE3ry7R5KaYe5tau6gTGo82hsMLmaxvW5Oh/PTReKtqgXdTyf9yr2
	GIdvX4ItlbmGf8q+8JmNh6cmEz7n8+ITpxz6O6j7TG722deRhUPz3zyYNxNy2KXPH18gxE98eL9rc
	bEx/2kl4g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSjsX-00023u-2F; Wed, 14 Oct 2020 16:43:53 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSjsV-00022q-49
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 16:43:52 +0000
Received: by mail-ed1-x544.google.com with SMTP id cq12so165627edb.2
 for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2020 09:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wuBPfResUSYyKIfZ5ftJfMdcgNsOdysiwgfFsxwVLOk=;
 b=Up9k1hmuJ3kQYCc/XiiZHeN6dxC3+Bt4DXTUrZ0NInm0Fv3mzKgsGybP05RAJynIda
 wcRLSsd72x7Z10Br5P7MB+uj08NwnOnz4n+UuiHKT9qmbalwarQbSv1POTDEGTi+WWlQ
 Py4YTDI4zmSAjy6qGOi1NgBJDRqd+sy9wEldc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wuBPfResUSYyKIfZ5ftJfMdcgNsOdysiwgfFsxwVLOk=;
 b=DWdR2ORiLCf6ZpLb3bePFrPVusdqQ2s5/vPPaPeuG5Rxdt1orm0aEjZuTjLshqF0R3
 IYWw7YReZQYsDX195A5A6Xi7A8RUVFp6G6yLytzrIXyOMuBbqXcNS8a5ok7/D1ZjRRXW
 1ipi78rxp93LhZicB/HHFZLbQVxFvfTH6/4IgkLC6BH+SB9q+B04HYkbN1OViDWzK4NU
 I9xHL/BIL6IzjDf0Otod0aCmkTqXw+KBOyNy8IYO+OHVVJCEMP0kan6AfacKVN9YnKRj
 cmim8u84jiS896XC/UGvXnsdgzmwS0hmtxl2kxeDKCgPt96TbKfAwga/A+6/LOTRUJfE
 E1fg==
X-Gm-Message-State: AOAM531Iu54b8uBdp77J2qfThegxJkKAiEmwobqdBv2xzkwthCwFEXxf
 BMSs1wBiG+2pxTdvqIqQjJYFossNzMqZDQ==
X-Google-Smtp-Source: ABdhPJwOevXmh9VHEgXTGDl1uT7Grfxc8Ic9a+t2Y2JQhyWxl7EC9zWekOgPEngOVoUEeb3sUSZ0hA==
X-Received: by 2002:a05:6402:2207:: with SMTP id
 cq7mr6354346edb.359.1602693828447; 
 Wed, 14 Oct 2020 09:43:48 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id cw15sm2040578ejb.47.2020.10.14.09.43.38
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 14 Oct 2020 09:43:41 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id n6so4618869wrm.13
 for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2020 09:43:38 -0700 (PDT)
X-Received: by 2002:adf:f1cd:: with SMTP id z13mr6554663wro.197.1602693817757; 
 Wed, 14 Oct 2020 09:43:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-9-helen.koike@collabora.com>
 <20200926130005.GC3781977@chromium.org>
 <905118dd-f108-6bc0-4cf0-9544fab51690@collabora.com>
In-Reply-To: <905118dd-f108-6bc0-4cf0-9544fab51690@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 14 Oct 2020 18:43:25 +0200
X-Gmail-Original-Message-ID: <CAAFQd5C4BcXyee58DpL4TfVJmaLQ-58_mwQucEm-df899va2Lw@mail.gmail.com>
Message-ID: <CAAFQd5C4BcXyee58DpL4TfVJmaLQ-58_mwQucEm-df899va2Lw@mail.gmail.com>
Subject: Re: [PATCH v5 8/9] arm64: dts: rockchip: add isp0 node for rk3399
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_124351_198690_A85BF247 
X-CRM114-Status: GOOD (  26.64  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, linux-devicetree <devicetree@vger.kernel.org>,
 Eddie Cai <eddie.cai.linux@gmail.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Robin Murphy <robin.murphy@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 jbx6244@gmail.com, Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Oct 14, 2020 at 6:27 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> Hi Tomasz,
>
> On 9/26/20 10:00 AM, Tomasz Figa wrote:
> > Hi Helen,
> >
> > On Wed, Jul 22, 2020 at 12:55:32PM -0300, Helen Koike wrote:
> >> From: Shunqian Zheng <zhengsq@rock-chips.com>
> >>
> >> RK3399 has two ISPs, but only isp0 was tested.
> >> Add isp0 node in rk3399 dtsi
> >>
> >> Verified with:
> >> make ARCH=arm64 dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >>
> >> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> >> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> >> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> >>
> >> ---
> >>
> >> V4:
> >> - update clock names
> >>
> >> V3:
> >> - clean up clocks
> >>
> >> V2:
> >> - re-order power-domains property
> >>
> >> V1:
> >> This patch was originally part of this patchset:
> >>
> >>     https://patchwork.kernel.org/patch/10267431/
> >>
> >> The only difference is:
> >> - add phy properties
> >> - add ports
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
> >>  1 file changed, 25 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> index dba9641947a3a..ed8ba75dbbce8 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> @@ -1721,6 +1721,31 @@ vopb_mmu: iommu@ff903f00 {
> >>              status = "disabled";
> >>      };
> >>
> >> +    isp0: isp0@ff910000 {
> >> +            compatible = "rockchip,rk3399-cif-isp";
> >> +            reg = <0x0 0xff910000 0x0 0x4000>;
> >> +            interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
> >> +            clocks = <&cru SCLK_ISP0>,
> >> +                     <&cru ACLK_ISP0_WRAPPER>,
> >> +                     <&cru HCLK_ISP0_WRAPPER>;
> >> +            clock-names = "isp", "aclk", "hclk";
> >> +            iommus = <&isp0_mmu>;
> >> +            phys = <&mipi_dphy_rx0>;
> >> +            phy-names = "dphy";
> >> +            power-domains = <&power RK3399_PD_ISP0>;
> >
> > Should this have status = "disabled" too? The mipi_dphy_rx0 node is
> > disabled by default too, so in the default configuration the driver
> > would always fail to probe.
>
> I'm thinking what is the overall guideline here.
> Since isp and mipi_dphy are always present in the rk3399, shouldn't they always be enabled?
> Or since they are only useful if a sensor is present, we should let the dts of the board to
> enable it?

I don't have a strong opinion. I'm fine with enabling both by default
as well, as it shouldn't hurt.

That said, I recall some alternative CIF IP block being present on
this SoC as well (and patches posted recently), which AFAIR can't be
activated at the same time as the ISP, so perhaps both of the
alternatives should be disabled by default?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
