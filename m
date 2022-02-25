Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C580FC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 16:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xK8DR2dFXga20XpKXU7peKy8M5qyXOuE/f8RnN4yi0k=; b=zLYAbh7LC5GY0h
	O1xGDFoYZ+dE7VAvCdWVwQ8ZajJlJBnJ5kYBcefDoP4XgPyZIi7CqntIF6beAlJUzQIfe5PD9Bh7i
	Qvwjb+lz/GEOHQBjFPIwoCBNnhpucPEgn6GdoD4ySMPgOXcGUR9acrALXzDetTYbG/nd1BY0F0zFv
	OEa94U1EGbZQyOI05qgROLtLI/08VBRCX4I6+26cWBgT65ck7yK1mqVBrxCXFIG4t1ij5dI8ddC6U
	2r0P5nCzRNANPV/OUuqzznfEKmkYmS/F1B6MlRfNJYzdJv5ckv6G47P2LUvyudMp2js8Ee7EBRtf9
	Mno5Mv7wYTZ2/GchxIlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNdgO-005z6Z-4Z; Fri, 25 Feb 2022 16:43:04 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNdg6-005z0t-VY; Fri, 25 Feb 2022 16:42:49 +0000
Received: by mail-ed1-x530.google.com with SMTP id cm8so8230407edb.3;
 Fri, 25 Feb 2022 08:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=S8SL7rE8T9Den9dkGBlQpTedO4EN66ojHcp4IxiL2TY=;
 b=X+IaxB/CALk6pahXiXUiNOX+jWZ48DJse2PS08TfmsykL+yrkf0pMzH+Wm/ZnLaMyx
 kZ8E3e7hNdKZt/buRQwAZwF1Z8EvsJm4vo3QIEhnGLbWyOZ93upQDcnZ7wff24bGxK8h
 bPal1Kp0gueh0fV0jZ3w/wyI2t+MDBWIYnE+gbHoyqxNFPshtlAo0xnkRMq4r0+gwowI
 XSOYyd2fCmLmOA5pKagLZ48rH6zmtf4M2Gak+efIRuOGB6aBrxe73XxKclUhOM+nnrMx
 sN+oaRc3tq5LOXslhLm0sm8FASkyOQdIzZoaGkUYq93rYAw+Vnkb9/fb6KIkonhyjtwv
 IFJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=S8SL7rE8T9Den9dkGBlQpTedO4EN66ojHcp4IxiL2TY=;
 b=F01vDuiZKawX21T0vzN1nxqgt0G6yRPaFY6BycePuiubM+cyHk9CDr19dJLWdxoQ2J
 0qTyQ17RfxUarsnh2gNkjBSHd13Re/uOe0B48yllmZY7iDC48us7okmMyyG9NoLFqrCA
 tSchCCm4NgGtosDH5LXTNTOj5DdxfkoOi2tlJbLGcIHu/MwxsS1lIOPCEarikKNTxZZ/
 XZ42+s+PMTZx1Q92JYKRR92Bml5OzpSJGWwMkXEQAJ+eMX3gsqSZP/qT+53rJD5fzZYj
 bQF99LWkFfpmT376Z9afkzLaKVAgXcyeaBWyYnVJIFWKuy4IP2z0odDU64Pt7+8Kusqf
 Awhw==
X-Gm-Message-State: AOAM532jXfERt7e7zKSrWM8eKajlhOBn3gpDGherQ43GdaP7prrZ5MaB
 vTmXG7z41G3qM0gBz5ur8yk=
X-Google-Smtp-Source: ABdhPJzVekY5Q6L+YRXw49HZO/1wKiAFTfdXshcnDoen7ncUKqnFoPPqIOZVbdltr3saEk+SiLt7cw==
X-Received: by 2002:a50:e004:0:b0:410:a39b:e30c with SMTP id
 e4-20020a50e004000000b00410a39be30cmr7738034edl.198.1645807365494; 
 Fri, 25 Feb 2022 08:42:45 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 lx9-20020a170906af0900b006d0d3179e11sm1197992ejb.105.2022.02.25.08.42.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Feb 2022 08:42:45 -0800 (PST)
Message-ID: <f9488e93-6794-21bd-1e50-126c15dace1e@gmail.com>
Date: Fri, 25 Feb 2022 17:42:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/4] arm64: dts: rockchip: move power domain PD_PIPE to
 rk356x
Content-Language: en-US
To: Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Frank Wunderlich <frank-w@public-files.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
References: <20220225131602.2283499-1-michael.riesch@wolfvision.net>
 <20220225131602.2283499-2-michael.riesch@wolfvision.net>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220225131602.2283499-2-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_084247_072299_9BCF13AB 
X-CRM114-Status: GOOD (  18.13  )
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

Hi Michael,

Some more comments. Have a look if it's useful.

On 2/25/22 14:15, Michael Riesch wrote:
> The power domain PD_PIPE was moved to the RK3568 specific dtsi but
> is available on the RK3566 as well. Move it back to the shared dtsi.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 16 ----------------
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 14 ++++++++++++++
>  2 files changed, 14 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 91a0b798b857..ecc0f3015915 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -100,19 +100,3 @@ opp-1992000000 {
>  		opp-microvolt = <1150000 1150000 1150000>;
>  	};
>  };

> -
> -&power {
> -	power-domain@RK3568_PD_PIPE {
> -		reg = <RK3568_PD_PIPE>;
> -		clocks = <&cru PCLK_PIPE>;

Should contain a complete list of rk3568 clocks for which RK3568_PD_PIPE
must be enabled.

Could someone check which we need here?
Same for rk3566 but then reduced.

<&cru PCLK_PIPE>,

<&cru PCLK_XPCS>,

<&cru CLK_USB3OTG0_REF>,
<&cru CLK_USB3OTG0_SUSPEND>,
<&cru ACLK_USB3OTG0>,

<&cru CLK_USB3OTG1_REF>,
<&cru CLK_USB3OTG1_SUSPEND>,
<&cru ACLK_USB3OTG1>,

<&cru ACLK_SATA0>,
<&cru CLK_SATA0_PMALIVE>,
<&cru CLK_SATA0_RXOOB>

<&cru ACLK_SATA1>,
<&cru CLK_SATA1_PMALIVE>,
<&cru CLK_SATA1_RXOOB>,

<&cru ACLK_SATA2>,
<&cru CLK_SATA2_PMALIVE>,
<&cru CLK_SATA2_RXOOB>

<&cru ACLK_PCIE20_MST>,
<&cru ACLK_PCIE20_SLV>,
<&cru ACLK_PCIE20_DBI>,
<&cru PCLK_PCIE20>,
<&cru CLK_PCIE20_AUX_NDFT>

<&cru ACLK_PCIE30X1_MST>,
<&cru ACLK_PCIE30X1_SLV>,
<&cru ACLK_PCIE30X1_DBI>,
<&cru PCLK_PCIE30X1>,
<&cru CLK_PCIE30X1_AUX_NDFT>

<&cru ACLK_PCIE30X2_MST>,
<&cru ACLK_PCIE30X2_SLV>,
<&cru ACLK_PCIE30X2_DBI>,
<&cru PCLK_PCIE30X2>,
<&cru CLK_PCIE30X2_AUX_NDFT>;

> -		pm_qos = <&qos_pcie2x1>,
> -			 <&qos_pcie3x1>,
> -			 <&qos_pcie3x2>,
> -			 <&qos_sata0>,
> -			 <&qos_sata1>,
> -			 <&qos_sata2>,
> -			 <&qos_usb3_0>,
> -			 <&qos_usb3_1>;
> -		#power-domain-cells = <0>;
> -	};

Maybe keep it here for rk3568.

> -};
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 8b9fae3d348a..742f5adcdf2b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -490,6 +490,20 @@ power-domain@RK3568_PD_RKVENC {
>  					 <&qos_rkvenc_wr_m0>;
>  				#power-domain-cells = <0>;
>  			};

> +
> +			power-domain@RK3568_PD_PIPE {
> +				reg = <RK3568_PD_PIPE>;

> +				clocks = <&cru PCLK_PIPE>;
> +				pm_qos = <&qos_pcie2x1>,
> +					 <&qos_pcie3x1>,
> +					 <&qos_pcie3x2>,
> +					 <&qos_sata0>,
> +					 <&qos_sata1>,
> +					 <&qos_sata2>,
> +					 <&qos_usb3_0>,
> +					 <&qos_usb3_1>;
> +				#power-domain-cells = <0>;
> +			};

rk3566 doesn't have a combphy0
Already in rk3566.dtsi

&power {
	power-domain@RK3568_PD_PIPE {
		reg = <RK3568_PD_PIPE>;

		clocks = <&cru PCLK_PIPE>;


Should contain a complete list of rk3566 clocks for which RK3568_PD_PIPE
must be enabled.

		pm_qos = <&qos_pcie2x1>,
			 <&qos_sata1>,
			 <&qos_sata2>,

			 <&qos_usb3_0>,

Does rk3566 have a qos_usb3_0 ??
See support list below.

			 <&qos_usb3_1>;
		#power-domain-cells = <0>;
	};
};

===

Rockchip RK3568 Datasheet V1.0-20201210.pdf page 16

Multi-PHY0 support one of the following interfaces
USB3.0 OTG
SATA0

Multi-PHY1 support one of the following interfaces
USB3.0 Host
SATA1
QSGMII/SGMII

Multi-PHY2 support one of the following interfaces
PCIe2.1
SATA2
QSGMII/SGMII

===

Rockchip RK3566 Datasheet V1.0-20201210.pdf page 16

Multi-PHY1 support one of the following interfaces
USB3.0 Host
SATA1

Multi-PHY2 support one of the following interfaces
PCIe2.1
SATA2

===

https://eji4evk5kxx.exactdn.com/wp-content/uploads/2020/12/RK3568-multiplexed-sata-usb-3.0-pcie.jpg?lossy=1&ssl=1


On rk3568:
&usb_host0_xhci {
	phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
	phy-names = "usb2-phy", "usb3-phy";
};

Does this exists on rk3566?

&usb_host0_xhci {
	phys = <&usb2phy0_otg>;
	phy-names = "usb2-phy";
};

If not then why is usb_host0_xhci in a common rk356x.dtsi ??
Else fix rk3566.dtsi

===

Johan



>  		};
>  	};
>  

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
