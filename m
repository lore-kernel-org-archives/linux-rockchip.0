Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FBBCC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 14:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Evi/HewCN0MPXv++6XO/VauHfi6O+yw1VpzyBBITgHY=; b=1jVVpNv4GCoU7V
	RMdeuCz80F6qnsl0GSmZJsMvBwNihetn9ELJ7oNwlhs4TA7+J1ObDnyxqjc2Dd4uROrBpNkPg5T1l
	x1BWeaxf9rCf1u4nNZhRlx8BeyRDeb/F0XgSwWp2i5XYrulVwy7z/B5f1NkoFZsi30z0+eGqYk2bt
	Kh37WpvJedC32DZo1L0fbIUrWFSXuFIPiEAPlpgYpDDqK2qiytz17kN9lHibEEQSI4y6Pym0nVZ0J
	ywJqpeeeaeLN6Pc1XZmCggNkDjddX6yktyJmCnbjFQPzJuyNrx8RFEVSXM/Rf/9hOhz+dhqEZLXQ2
	pJg473rnAMuMCLy5o8UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNbNI-005LpS-AC; Fri, 25 Feb 2022 14:15:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNbMm-005LkI-I7; Fri, 25 Feb 2022 14:14:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF705106F;
 Fri, 25 Feb 2022 06:14:38 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A17A63F5A1;
 Fri, 25 Feb 2022 06:14:36 -0800 (PST)
Message-ID: <2939d801-586d-85fd-97ef-d42925ddecce@arm.com>
Date: Fri, 25 Feb 2022 14:14:31 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH v2 1/4] arm64: dts: rockchip: move power domain PD_PIPE to
 rk356x
Content-Language: en-GB
To: Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Frank Wunderlich <frank-w@public-files.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Simon Xue <xxm@rock-chips.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
References: <20220225131602.2283499-1-michael.riesch@wolfvision.net>
 <20220225131602.2283499-2-michael.riesch@wolfvision.net>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220225131602.2283499-2-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_061440_698222_92E885F1 
X-CRM114-Status: GOOD (  15.19  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2022-02-25 13:15, Michael Riesch wrote:
> The power domain PD_PIPE was moved to the RK3568 specific dtsi but
> is available on the RK3566 as well. Move it back to the shared dtsi.

Note that a corresponding definition does already exist in rk3568.dtsi. 
That one *could* inherit the base definition and only override the 
"pm_qos" property, but looking back to the original patch series it 
seems like not doing that was a deliberate choice.

Robin.

> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>   arch/arm64/boot/dts/rockchip/rk3568.dtsi | 16 ----------------
>   arch/arm64/boot/dts/rockchip/rk356x.dtsi | 14 ++++++++++++++
>   2 files changed, 14 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 91a0b798b857..ecc0f3015915 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -100,19 +100,3 @@ opp-1992000000 {
>   		opp-microvolt = <1150000 1150000 1150000>;
>   	};
>   };
> -
> -&power {
> -	power-domain@RK3568_PD_PIPE {
> -		reg = <RK3568_PD_PIPE>;
> -		clocks = <&cru PCLK_PIPE>;
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
> -};
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 8b9fae3d348a..742f5adcdf2b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -490,6 +490,20 @@ power-domain@RK3568_PD_RKVENC {
>   					 <&qos_rkvenc_wr_m0>;
>   				#power-domain-cells = <0>;
>   			};
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
>   		};
>   	};
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
