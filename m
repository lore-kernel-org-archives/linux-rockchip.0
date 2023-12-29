Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01ECFC46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Dec 2023 11:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35jXRjdfKq5iL3/0Ub1aleDr9vMx3DWiQKUDMNSmUvg=; b=hyXZ6Ll6ojNsG9
	x65VHx70pQg7wvgqFId0T+zzJfRD1aQwmTMM0Ezselz44riS8mt3W3qcNof3kwMihIFOUXChwCE/x
	812HvDBltFkGEcpAS3Iv9tej9E7trbI51byS6lV9GHSvLjZvbBTX6nrfrGGJTzkM8ynO44hsHi98b
	ubzCyUJsSLuW2nyeKF9OnqbptgWxzqLPlUAdsyk43hNHgoMqS8MAY/QogVeYAfslr/IZGHiRfZjy5
	6bn137iOzaQSBE0BJhBPD2EaNyg9h5tfkjWPbkYM7x2Tj7TTeFvOW4YS0PAM7egALG6MY64niMmlv
	3lK1vyRBQPr+8z0JFrCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJAdD-000eji-3D;
	Fri, 29 Dec 2023 11:02:24 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJAdB-000ejC-2u;
	Fri, 29 Dec 2023 11:02:23 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50e7dff3e9fso3756110e87.2;
        Fri, 29 Dec 2023 03:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703847739; x=1704452539; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NsD+IB2GT6Qzi6UFqd7zR6s13SfDz8WzYWnYArIREis=;
        b=F6bxNAIPOmsYiJkAse0wqJ5jDwm8T8bPM0vgWMLfvwj1nAD70485CHln2O0ouNL6Ic
         TH1CAGyQUnxAG2rHjwwPHmgH/i+ZS+gOeyeHFJ5/PsLXtEIjGzjuI1kewo39PBVTSwFx
         fbpAeLFs452biroaxqVjBAVhcEu72zaFZ51bLOBbsi8Zd3Cqx8dC7P1gjQZxbwNY1yuN
         dsszHXU+NfjhPpnQbWGO6zvNgueLeXehcIGXe/khhn7lbtOTF2rHemyt5EKHy5K8QL/u
         cXXMe81EQrgpFPRatdtfAMHXYn/DBRS49Xwd91Lla/Bevcb2SbncddGOPKMOWDTMWubD
         N7Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703847739; x=1704452539;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NsD+IB2GT6Qzi6UFqd7zR6s13SfDz8WzYWnYArIREis=;
        b=N27PbyZ0wbxl1pOlTESNXK3b+60JhxI/9jN7ZpP4vMuMhOdlsDMdTsJDOjIJA5E0ru
         DUzN3rxllkCXr3i+nFHAIdXuCCwg8v+A83VJMPss4x47K0dul6vwYZSo4vhFnU3EHXiY
         /VAiGYi6/5qv3pB3f6LfRyIqXRaLXhlbeESUPufsLX+onKWM/WcHM6VVuVQsatMF9Yno
         CrRw+Y2TSCq19opFyDQtAA4qbDeV0Zzof1U+E2IxTBE3IOX0BTZZ8TmypQwAmTXM3qCs
         TYBBIOZRIxX/0ggWJ0UECXrZwv0DIBVjbRXfSMxf6z88RE8MxWO6m01HbIbA56MZo9IC
         ZgDA==
X-Gm-Message-State: AOJu0YyRXrT5z+ogG3CU4asjipB40kef6axgUa0a86YR9H69z39Mr4Ja
	dtvwZeVbmGRYwoaKPH1zKYMoOSJWghtIyW7r08puFLCeyUI=
X-Google-Smtp-Source: AGHT+IERL8Fz7j8WMbUOpMCFPbrDbSTtPYypwgal/QfaUZS54vWya0WCGbTSxe/zIN2kyKTgHAh7Lm/csOMuUbNpOMM=
X-Received: by 2002:ac2:4259:0:b0:50e:40bf:e0a4 with SMTP id
 m25-20020ac24259000000b0050e40bfe0a4mr4242506lfl.132.1703847739347; Fri, 29
 Dec 2023 03:02:19 -0800 (PST)
MIME-Version: 1.0
References: <20231228131617.3411561-1-liujianfeng1994@gmail.com> <20231228131617.3411561-3-liujianfeng1994@gmail.com>
In-Reply-To: <20231228131617.3411561-3-liujianfeng1994@gmail.com>
From: Hugh Cole-Baker <sigmaris@gmail.com>
Date: Fri, 29 Dec 2023 11:02:08 +0000
Message-ID: <CAAXNxMRkpM+dSV3azDFgm07ygJrXyS=Htz_h8Z_WMmeG0YZ+ig@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add Hantro G1 VPU support
 for RK3588
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	heiko@sntech.de, sfr@canb.auug.org.au, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_030221_939004_0E65D1DF 
X-CRM114-Status: GOOD (  14.54  )
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

On Thu, 28 Dec 2023 at 13:17, Jianfeng Liu <liujianfeng1994@gmail.com> wrote:
>
> This patch enables Hantro G1 video decoder in RK3588's
> devicetree.
>
> Tested with FFmpeg v4l2_request code taken from [1]
> with MPEG2, H.264 and VP8 samples.
>
> [1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
>
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 5fb0baf8a..5da668184 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -640,6 +640,26 @@ i2c0: i2c@fd880000 {
>                 status = "disabled";
>         };
>
> +       vpu: video-codec@fdb50400 {

The node name should be video-codec@fdb50000 to match the reg address.

> +               compatible = "rockchip,rk3588-vpu";
> +               reg = <0x0 0xfdb50000 0x0 0x800>;
> +               interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
> +               clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +               clock-names = "aclk", "hclk";
> +               iommus = <&vdpu_mmu>;
> +               power-domains = <&power RK3588_PD_VDPU>;
> +       };
> +
> +       vdpu_mmu: iommu@fdb50800 {
> +               compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> +               reg = <0x0 0xfdb50800 0x0 0x40>;
> +               interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
> +               clock-names = "aclk", "iface";
> +               clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +               power-domains = <&power RK3588_PD_VDPU>;
> +               #iommu-cells = <0>;
> +       };
> +
>         vop: vop@fdd90000 {
>                 compatible = "rockchip,rk3588-vop";
>                 reg = <0x0 0xfdd90000 0x0 0x4200>, <0x0 0xfdd95000 0x0 0x1000>;
> --
> 2.34.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
