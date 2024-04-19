Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3FABC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 17:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Q6kdug3OyimOkb3VtoeT+VTGqJeAi1uhYVKSfXf2yA=; b=h1N5bSmwz9luZm
	Af2TD+uDRIzsMSLcv9LeHPkKAydiH1MkqE/y44Z9nyLA69JVRTOdbfPKqf2OW/pAnsXU+gMTnEUEp
	T8/iwcb3NlE7ou3glrZ36do2WIItUiR2YVfmpU1AYf+LdDadXe3FuQaVMpTshK2CDDNwoUUgRH+ZW
	5nq1YraU0ps6DHz9RMXDtqhKxFEHZE0kyVdMQKWtxbNe525NPmEMM+I0ne9uXwZAmqCjo5G3nMUee
	mZtVmHDyDwBxZfl59W88E5xaFSVxVOrYV+YQRbN4AG96m2+WWTEQW6xmVOaginX1iQF5jzwVYvR7w
	OWfLde9duRyubvOlC7Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxs27-00000006XEO-3YRo;
	Fri, 19 Apr 2024 17:28:19 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxs25-00000006XCu-1VZJ;
	Fri, 19 Apr 2024 17:28:18 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-34782453ffdso2081215f8f.1;
        Fri, 19 Apr 2024 10:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713547693; x=1714152493; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Atbe4MPhJuRT7fbR5tzI2HH3PRwHbiVkk8k6A1FcZ4s=;
        b=eNy60OjAqQGbHlK4SzcJrwit0E6aXoo12ChsFY8g22fAiHYqkqSs89Dj/oe1mh+MkP
         8Fb/eFcXGL0lZpx84LF+tu1GpeRaOHlXqVNqRnfa+oRnc4m42mQJJGbDhq/XIw0ylXWc
         9b+kkFO+1c6cKeVk7vBJR3R9qbsWP91sZgsBmH778QzhZFVo4VsLjr/NbuvaGJAG0OXD
         Q+Tv7izOXrxLtapt7S4Dyoq1oTvjIRtAbM6lSRxK8xFzgzupFQG9tA+uXfJDqNRP0JJe
         8vSEAz6yTRegH6a6ovehT4+R3tC7o9Oj9SdsI0tieb9VDIAd0jz1Ezz+642BfOgAwF1+
         ZH2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713547693; x=1714152493;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Atbe4MPhJuRT7fbR5tzI2HH3PRwHbiVkk8k6A1FcZ4s=;
        b=hg4jIEw/Y3UqHt+abVrBSr4SAvpamaQu7JrCjQm+erOAHA8/NNu1hbqkZ+7SzE5c5I
         fJtR928J8yb2TG8bvYpLePzdY+KligM9s+laFfkM1bN0VQsjLdW9VCd8ktjtY3KZPxs6
         zorqqhVEJzBdnabHC+5RgWRJuPtyTMnhOhtIEPX8zxho+HyaFQOW5ndyw38aQzzLDdrC
         03BlWGbXI2aCfAZ2sOxQp7L8D+RzFz9+yQqy83kkmFSTXfhxh9Hh4umSuX+y2jRzOL19
         s/DvoBU1SmdsGkXekzugLdENIfOQ8mjuTRbr7KCkGNk0uFgWfZrQa+8UOwLylLkPA69B
         ghRA==
X-Forwarded-Encrypted: i=1; AJvYcCUE2Sa096BqyuiXmHcAgobxqqGDuN3N0rDEFGqsmPzIcWbP7d4eve1d67Co87svtvyNtQJD4px8fLYUEqnQvPuZMfy45vnaKb6OyHvpYOI4L/ar/9oTtzvSP1Hol+eDyYvb3IWdN1mbfUU1IlwFAQyIiXKe8ME7H9E=
X-Gm-Message-State: AOJu0YzkpoSfiUVb62sduVPGhe5u6S6TbdRGWbS3Vh/LDgPcPTDV3gMG
	VEDK9iPK/nDN3P/TP1G8FaS0ifkvVzKadQX8gSJpRSOzJLz8YLP8xeCH6eei
X-Google-Smtp-Source: AGHT+IF6A+v0NN01QBnz5fAkXZW88z/35Cm0aPRsMcAa+BCGpAJrxeXuNMaFWA8mTEjVyx/z7j97/Q==
X-Received: by 2002:a5d:4e0d:0:b0:33e:c91a:127e with SMTP id p13-20020a5d4e0d000000b0033ec91a127emr2289532wrt.63.1713547693290;
        Fri, 19 Apr 2024 10:28:13 -0700 (PDT)
Received: from smtpclient.apple ([2a02:8010:6606:0:8130:9b6:fda5:3b16])
        by smtp.gmail.com with ESMTPSA id fj3-20020a05600c0c8300b00416b2cbad06sm11117515wmb.41.2024.04.19.10.28.12
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Apr 2024 10:28:12 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: Re: [PATCH v6 2/2] arm64: dts: rockchip: Add Hantro G1 VPU support
 for RK3588
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <20240418111002.83015-3-liujianfeng1994@gmail.com>
Date: Fri, 19 Apr 2024 18:28:01 +0100
Cc: linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de,
 mchehab@kernel.org,
 robh@kernel.org,
 krzk+dt@kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 sfr@canb.auug.org.au,
 sebastian.reichel@collabora.com,
 didi.debian@cknow.org
Message-Id: <B9F108CF-4BC5-41A0-A28A-1CA1F4D2CD3C@gmail.com>
References: <20240418111002.83015-1-liujianfeng1994@gmail.com>
 <20240418111002.83015-3-liujianfeng1994@gmail.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
X-Mailer: Apple Mail (2.3774.500.171.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_102817_427486_2EE50FA1 
X-CRM114-Status: GOOD (  18.04  )
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

Hi Jianfeng,

> On 18 Apr 2024, at 12:10, Jianfeng Liu <liujianfeng1994@gmail.com> wrote:
> 
> Enable Hantro G1 video decoder in RK3588's devicetree.
> 
> Tested with FFmpeg v4l2_request code taken from [1]
> with MPEG2, H.264 and VP8 samples.
> 
> [1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
> 
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> Tested-by: Hugh Cole-Baker <sigmaris@gmail.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 21 +++++++++++++++++++++
> 1 file changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index b0a59ec51..b0817382f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1135,6 +1135,27 @@ power-domain@RK3588_PD_SDMMC {
> };
> };
> 
> + vpu: video-codec@fdb50000 {
> + compatible = "rockchip,rk3588-vdpu121", "rockchip,rk3568-vpu";
> + reg = <0x0 0xfdb50000 0x0 0x800>;

The register range at 0xfdb50000 length 0x800 includes "VEPU121 core0" encoder
regs at offset 0 and "VDPU121" decoder regs at offset 0x400 (referring to the
TRM v1.0 Part 1, section 5.5.1). So I think the "rockchip,rk3588-vdpu121"
compatible isn't exactly correct to use for this entire device.

IMO "rockchip,rk3588-vpu121" would be more appropriate if including both the
decoder and encoder. It also raises the question of whether the decoder and
encoder should be modeled in DT as one device like on RK3399, or separate
devices. In the vendor DT [0] they are modeled as two devices but they share
clocks, resets, IOMMU, and a "rockchip,taskqueue-node" value.

I've tested the JPEG encoding functionality of this encoder with [1], and it
seems to work, gstreamer produces a MJPEG video of the test pattern as
expected.

> + interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
> + interrupt-names = "vdpu";
> + clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> + clock-names = "aclk", "hclk";
> + iommus = <&vdpu_mmu>;
> + power-domains = <&power RK3588_PD_VDPU>;
> + };
> +
> + vdpu_mmu: iommu@fdb50800 {
> + compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> + reg = <0x0 0xfdb50800 0x0 0x40>;
> + interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
> + clock-names = "aclk", "iface";
> + clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> + power-domains = <&power RK3588_PD_VDPU>;
> + #iommu-cells = <0>;
> + };
> +
> av1d: video-codec@fdc70000 {
> compatible = "rockchip,rk3588-av1-vpu";
> reg = <0x0 0xfdc70000 0x0 0x800>;
> --
> 2.34.1
> 

[0]: https://github.com/friendlyarm/kernel-rockchip/blob/18fd1215fee01daef16b6ced1c0c3c3b83a4d8df/arch/arm64/boot/dts/rockchip/rk3588s.dtsi#L3630-L3683
[1]: https://github.com/sigmaris/linux/tree/rk3588-hantro-vpus
     with: gst-launch-1.0 videotestsrc pattern=ball flip=true ! v4l2jpegenc \
      ! matroskamux ! filesink location=jpegtest.mkv


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
