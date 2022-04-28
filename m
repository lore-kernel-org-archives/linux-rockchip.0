Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4384C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Apr 2022 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJeZPqirlusMKIRhb5NbYzIIb1J8mJSEKhHULAMbyiQ=; b=vLr42s+RDWhxwz
	s1wnP0AjPd4Gija+9zrC06wmk4f/kmtADNjzNBJUIWRUZgSoTav2g40+mU/0JxqnwGPfyHqEj/cuk
	w0FJ8lH+UXuvoEmSrLXeEFcHNUalnne/w8hJCGwCo8pClaiYt8m+HuLp8eh/Zhv/F4JVmv4n5C678
	5nUAYDfq1viEDLV92/6Ua/dNKv7mlXPP0Hg8p783HJeaK7iv0RODehEqGf0TkHNOvBcIMdzqpkoNz
	rOvNJ+WzEInf6SmvpuGCxQ4ai7zkkw4Lrc72RMjgUdaeMCi+pNwoI8RitmQbc5j7AFqtVBRCxCJyW
	te5mVHL1uEO2Nkj7Wbpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nk27h-006TLd-EO; Thu, 28 Apr 2022 11:15:49 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nk275-006T5l-6l; Thu, 28 Apr 2022 11:15:12 +0000
Received: by mail-ej1-x634.google.com with SMTP id l7so8899990ejn.2;
 Thu, 28 Apr 2022 04:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m+MfYH2YQ+litd9nC4WLDji5G/nTM7/Ix1hsN4aQQiE=;
 b=jHDaRN+NjsQ+9ro4gz2Wvs/dDGIlEWHb+T9Y5mQ8AObnsBA5Pd0FlIoc/BIu2k8+bj
 /SqLjEdJ0MZBiONiCGTKXiTaa5DqMmVe7Sph+iCnEyB20tu2Qw6eNSS3+zCc+D/axZsL
 rjBBnKxSScWm3WwnPeg65OWtkedtlAZ8F1Kex53HXfIm2H88bMNA1Tn5HoEUlNUA65/6
 NcxY+80Ezi1ctMi6XpRx/YS4rDtLM5kc8ZJhKrBI5XW/VL4O84FMUxs6FkQzkLKcsAx7
 c5nTCPQ77/aJ3432dxYq66k7k7wrGE7gYwARTs4fAry2AD/KtPpSrv/UQkd6gSBBGF8O
 ttjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m+MfYH2YQ+litd9nC4WLDji5G/nTM7/Ix1hsN4aQQiE=;
 b=NoOacRouKpJkGbKR93FWKNjSj2aEertF9f7Ze8syO5vrkipV01QJwyC3fpnxJqmryi
 FLcpuTCLpa+Bj3TgGx+T0gE4+OXx+fefgm+qKSrvLWtjHi3zz1Rfpayi8yz3j6rZWUi4
 YKw3IDlXji87aAjW51dneQpVJbHomdf62x1/Hu79nieinEUw3/utyN9I1H8FbKkioB/z
 ksvd//JsKDzjGJnzPVzrP4DCCSd0XbguWVVhxtz7DR/fMnCFpqyRSogwCCZz4FGiOQmz
 ccC0J2XddnRkXCzG09Ku0Rbv2VmBcn+Mn3Gf/UirHKVC+cdN0nW522mitDH3mz8JiPIp
 +pEQ==
X-Gm-Message-State: AOAM531hY41HWYsOr7d4zZfaUnKO4KEJ9yAKrwhHGJCYzJnbeS0QywWr
 /Ajh2urI/npnW8JFBjzgOSM=
X-Google-Smtp-Source: ABdhPJzAYtvVXrl9CAWvbv76jT6c8d/n2DovgQHySmatr7l5Dm4yG1AqCIsF6qg23AwQhhKxNa+28Q==
X-Received: by 2002:a17:906:6a22:b0:6f3:e768:7de0 with SMTP id
 qw34-20020a1709066a2200b006f3e7687de0mr1469172ejc.480.1651144507953; 
 Thu, 28 Apr 2022 04:15:07 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 kk14-20020a170907766e00b006f3a6a528c8sm4898179ejc.146.2022.04.28.04.15.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Apr 2022 04:15:07 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: enable otg/drd operation of
 usb_host0_xhci in rk356x
Date: Thu, 28 Apr 2022 13:15:06 +0200
Message-ID: <2087500.ItEYzMA54p@archbook>
In-Reply-To: <20220425133502.405512-1-michael.riesch@wolfvision.net>
References: <20220425133502.405512-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_041511_321196_D42E38A4 
X-CRM114-Status: GOOD (  17.64  )
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

On Montag, 25. April 2022 15:35:00 CEST Michael Riesch wrote:
> This USB 3.0 controller is capable of OTG/DRD operation. Enable it in the
> device tree.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 55e6dcb948cc..f611aaf2d238 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -266,7 +266,7 @@ usb_host0_xhci: usb@fcc00000 {
>  			 <&cru ACLK_USB3OTG0>;
>  		clock-names = "ref_clk", "suspend_clk",
>  			      "bus_clk";
> -		dr_mode = "host";
> +		dr_mode = "otg";
>  		phy_type = "utmi_wide";
>  		power-domains = <&power RK3568_PD_PIPE>;
>  		resets = <&cru SRST_USB3OTG0>;
> 

Hi Michael,

according to official specs[1], only the RK3568 is capable of using the
USB 3.0 controller in OTG mode. For the RK3566, OTG is USB 2.0, if I
understand this correctly.

So I think this should be an override in rk3568.dtsi.

Regards,
Nicolas Frattaroli

[1]: Compare page 17 of the RK3568 datasheet to page 16 of the RK3566
     datasheet



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
