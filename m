Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 834FEC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Mar 2022 12:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uSTYNXjo7OWstrEPv429Gu3GGiyCKhWygACq/1OHf4=; b=SFvHZoGrASLwax
	WeJbGsLmWrESictVghapIwskDdpf1NvTbbkJbKzUp4zacuMHf1kMPXGma2mQXkczOCZFHF+1C6VNI
	3TverREI/x2myvOaf8c2eWkLCCzGxYEWh7lDN2X3QOoNARP5Xdu2BQGI6xpip1zDZLPoftu52AFpw
	g4/iQHKmfntZYHnby/UWEeppMUmj8ZH5yJYreImcEgvydgh+Ovwq8AbjuFda913UKRxCXq6RIEut+
	0hirQ54QA8HsX9hkYwd4kJVI6EwP3rskN5m/MhzxWhEusPidMyieTZb21M7bO8h5W1fzQPqh2df9V
	BO4/93Ws3wufm1uIYIlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVuoZ-005Ef1-PW; Sun, 20 Mar 2022 12:37:43 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVuoV-005EeH-Uv
 for Linux-rockchip@lists.infradead.org; Sun, 20 Mar 2022 12:37:41 +0000
Received: by mail-oi1-x22d.google.com with SMTP id k10so2164002oia.0
 for <Linux-rockchip@lists.infradead.org>; Sun, 20 Mar 2022 05:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XgEXsVncSVxZu1lWL68gFPTtf1cjMMavbj6IDx6Ws6I=;
 b=DNP52BwvYPqjh7/TIBd0FZwHVMVcpMnsQ1aKl0GLrEXLNGgo7I1yd8uoqf2K+7rCKr
 zAMIA9iZzMoDtsAKC1MCdek3ieLDce0Yhw/jC1KvBCynlMCX6etfLxjpp2kQ2t8KKZeK
 CXKJV1LXcaI3cVnrvv/LLSmJPpWjSl/jLs0FIdJVJXcn5RJ6BEIzG0qQxKJ6L8dXTSOZ
 rV0pchyEUPdiP0EZ2LSy47PHXi0S8IlU0AUxQTs249/P8mFqIMtK7GU72KKceeWr5mXN
 vXdXFY7oJv/CaYrSZOo6b9T3sez/EyYRIGTzKBgh4QLqfww9BIB2Iy7jaDj0zCVitB6h
 HZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XgEXsVncSVxZu1lWL68gFPTtf1cjMMavbj6IDx6Ws6I=;
 b=xoPhNIxZX+lwPcSKXoFgg5Kqe07C0UR+Q67J71SLun7mXKyiR98Uc2sY9pJ4VNINnb
 /kDiZebdlCZ7aOQDUJNsrBVY28alYq5xkd8L2mBEAzcO+4jOBioIIL6a11ql64t97cSB
 /M9pL9HPGJJCjEvg/TCThRnMYw4QBjjr7be9psNDMj9ngzjHZrDEGVykz1zUilvI4SBQ
 D9fItxJI7W2AK8i/o5QgfQ08nk0g63osAfW0ur4G2GF5lkezNRuVDRTj6uM3QZjCpdKk
 JDJtc+6hsRsHg+PFG8PFXZlEs/Ik+zQ3vkAJVZ+j3mOidzhe8BhHS8/EptEKb/zkqVIz
 WnHQ==
X-Gm-Message-State: AOAM533WgqtJOq5XZozQOqprmL0TvSh1HboiJs3VX16DuDVlptcq/k4T
 6xFr1jXZogN1+D/6+jWQrRx6Aw==
X-Google-Smtp-Source: ABdhPJxlGXpZHn7fvSYOkVOqSZxaMXy4FJXqMuAZNhyB1dPtoMP7+9pGthVPL91bPXqmxO1R0FntgQ==
X-Received: by 2002:a54:4592:0:b0:2ec:aef5:e0ae with SMTP id
 z18-20020a544592000000b002ecaef5e0aemr11784386oib.21.1647779858796; 
 Sun, 20 Mar 2022 05:37:38 -0700 (PDT)
Received: from eze-laptop ([186.122.18.6]) by smtp.gmail.com with ESMTPSA id
 u14-20020a4ad0ce000000b0032174de7c2csm5933100oor.8.2022.03.20.05.37.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Mar 2022 05:37:38 -0700 (PDT)
Date: Sun, 20 Mar 2022 09:37:31 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: linux-media@vger.kernel.org, Linux-rockchip@lists.infradead.org,
 heiko@sntech.de, hverkuil@xs4all.nl
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add VPU support for
 RK3568/RK3566
Message-ID: <YjcgC9HZeDQX1sNJ@eze-laptop>
References: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
 <20220214212955.1178947-2-piotr.oniszczuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220214212955.1178947-2-piotr.oniszczuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220320_053740_041036_18E9E7CE 
X-CRM114-Status: GOOD (  14.11  )
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

On Mon, Feb 14, 2022 at 10:29:54PM +0100, Piotr Oniszczuk wrote:
> From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
> 
> RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP8
> video formats.
> 
> This patch enables RK356x video decoder in RK356x device-tree
> include.
> 
> Tested on [1] with FFmpeg v4l2_request code taken from [2]
> with MPEG2, H.642 and VP8 samples with results [3].
> 
> [1] https://github.com/warpme/minimyth2
> [2] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
> [3] https://github.com/warpme/minimyth2/blob/master/video-test-summary.txt
> 
> Signed-off-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index a68033a23975..33ecaafa8cb7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -390,6 +390,26 @@ power-domain@RK3568_PD_RKVENC {
>  		};
>  	};
>  
> +	vpu: video-codec@fdea0400 {
> +		compatible = "rockchip,rk3568-vpu";
> +		reg = <0x0 0xfdea0000 0x0 0x800>;
> +		interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +		clock-names = "aclk", "hclk";
> +		iommus = <&vdpu_mmu>;
> +		power-domains = <&power RK3568_PD_VPU>;
> +	};
> +
> +	vdpu_mmu: iommu@fdea0800 {
> +		compatible = "rockchip,rk3568-iommu";
> +		reg = <0x0 0xfdea0800 0x0 0x40>;
> +		interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-names = "aclk", "iface";
> +		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +		power-domains = <&power RK3568_PD_VPU>;
> +		#iommu-cells = <0>;
> +	};
> +
>  	sdmmc2: mmc@fe000000 {
>  		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xfe000000 0x0 0x4000>;
> -- 
> 2.29.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
