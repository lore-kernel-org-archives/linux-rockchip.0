Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BA05C282DE
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 16:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C4Xbi2Xj5Gpg6a3Fl98MfWPM2FbqckMUJHHi01lHyqo=; b=FwIThTw9vb5nAH
	4vAd9TuOwJPZZvOf1G7RyuVLrJ62bx2Y6S9+aCqmyKKEWJbLKdv7pGOqS/dcpKO32GLPe/wSTekx7
	22CbucgziKMh9L+SLE65MeGmBR/Wuw2WB8xScro5kprJ6aaRlmaKqNgn/h5S6f6fVBp/tTGVSOJAO
	IWnZQcPfONy55PLVnfeT1lPJ+xKLCKb6FXEoru8XDs1Wfif8YZISzUbHiBMYKXFIwfvKlJxwQTMsy
	gWdH4qZAfQP27TYPxgXA8FQm+tuZr2DXQ9qkHKK72zwgVSgvfqYYN6IwdOAmP+jZ9CiEg7jH/cj8s
	faYglVAt/YlQnlche/WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqEVW-0000000BaZt-2zjb;
	Thu, 06 Mar 2025 16:55:38 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqEVU-0000000BaY9-0uJl
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 16:55:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741280136;
 bh=6bMGhfu3cKthCvL1T3G+dPSizYb8EcgG80qlrt/kJJ8=;
 b=R1xXqlF90yW3Y/W62mWYiyrgqOf81SwNLt3FuCHVFrHgH68FUSSUVNLPG8oQR9ORrfiZ4Q6xI
 HKnkbj9cVn37yimZ11dl0WV+Q2u/BOI+h7om+1riP/UNn+2S8CeddwFSTlm3TZyxr4qXeeARoKx
 /K9HHkVop/tK7NkODy0vPcAI+G9VGAjaYyWtCTyAVfwPPz+07YKLY85dEvjVfWrel7AL1p9Bh02
 2fBT7FBYmhPnX/Dg+EWdBWX7n2WWuywz5cGLgyfRLQx/xqgyf9Y8Kx3Is6/1uqOfHmlSZLFPvYi
 kE44L07Qp88UpT6Brq5CpVGWn4HVBpGwAVtq64EsbKnA==
X-Forward-Email-ID: 67c9d3797d53aa09926043e9
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <cdbc1556-4662-4078-a4d6-33545e2e2491@kwiboo.se>
Date: Thu, 6 Mar 2025 17:55:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3528 QoS register node
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yao Zi <ziyao@disroot.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250306123809.273655-1-amadeus@jmu.edu.cn>
 <20250306123809.273655-3-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250306123809.273655-3-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_085536_584323_BC5F1F50 
X-CRM114-Status: GOOD (  13.88  )
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

Hi Chukun,

On 2025-03-06 13:38, Chukun Pan wrote:
> The Quality-of-Service (QsS) node stores/restores specific
> register contents when the power domains is turned off/on.
> Add QoS node so that they can connect to the power domain.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 160 +++++++++++++++++++++++
>  1 file changed, 160 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> index b1713ed4d7e2..0c0e7f151462 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> @@ -129,6 +129,166 @@ gic: interrupt-controller@fed01000 {
>  			#interrupt-cells = <3>;
>  		};
>  
> +		qos_crypto_a: qos@ff200000 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff200000 0x0 0x20>;
> +		};
> +
> +		qos_crypto_p: qos@ff200080 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff200080 0x0 0x20>;
> +		};
> +
> +		qos_dcf: qos@ff200100 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff200100 0x0 0x20>;
> +		};
> +
> +		qos_dft2apb: qos@ff200200 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff200200 0x0 0x20>;
> +		};
> +
> +		qos_dma2ddr: qos@ff200280 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff200280 0x0 0x20>;
> +		};
> +
> +		qos_dmac: qos@ff200300 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff200300 0x0 0x20>;
> +		};
> +
> +		qos_keyreader: qos@ff200380 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff200380 0x0 0x20>;
> +		};
> +
> +		qos_cpu: qos@ff210000 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff210000 0x0 0x20>;
> +		};
> +
> +		qos_debug: qos@ff210080 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff210080 0x0 0x20>;
> +		};
> +
> +		qos_gpu_m0: qos@ff220000 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff220000 0x0 0x20>;
> +		};
> +
> +		qos_gpu_m1: qos@ff220080 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff220080 0x0 0x20>;
> +		};
> +
> +		qos_pmu_mcu: qos@ff240000 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff240000 0x0 0x20>;
> +		};
> +
> +		qos_rkvdec: qos@ff250000 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff250000 0x0 0x20>;
> +		};
> +
> +		qos_rkvenc: qos@ff260000 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff260000 0x0 0x20>;
> +		};
> +
> +		qos_gmac0: qos@ff270000 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff270000 0x0 0x20>;
> +		};
> +
> +		qos_hdcp: qos@ff270080 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff270080 0x0 0x20>;
> +		};
> +
> +		qos_jpegdec: qos@ff270100 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff270100 0x0 0x20>;
> +		};
> +
> +		qos_rga2_m0ro: qos@ff270200 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff270200 0x0 0x20>;
> +		};
> +
> +		qos_rga2_m0wo: qos@ff270280 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff270280 0x0 0x20>;
> +		};
> +
> +		qos_sdmmc0: qos@ff270300 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff270300 0x0 0x20>;
> +		};
> +
> +		qos_usb2host: qos@ff270380 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff270380 0x0 0x20>;
> +		};
> +
> +		qos_vdpp: qos@ff270480 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff270480 0x0 0x20>;
> +		};
> +
> +		qos_vop: qos@ff270500 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff270500 0x0 0x20>;
> +		};
> +
> +		qos_emmc: qos@ff280000 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff280000 0x0 0x20>;
> +		};
> +
> +		qos_fspi: qos@ff280080 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff280080 0x0 0x20>;
> +		};
> +
> +		qos_gmac1: qos@ff280100 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff280100 0x0 0x20>;
> +		};
> +
> +		qos_pcie: qos@ff280180 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff280180 0x0 0x20>;
> +		};
> +
> +		qos_sdio0: qos@ff280200 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff280200 0x0 0x20>;
> +		};
> +
> +		qos_sdio1: qos@ff280280 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff280280 0x0 0x20>;
> +		};
> +
> +		qos_tsp: qos@ff280300 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff280300 0x0 0x20>;
> +		};
> +
> +		qos_usb3otg: qos@ff280380 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff280380 0x0 0x20>;
> +		};
> +
> +		qos_vpu: qos@ff280400 {
> +			compatible = "rockchip,rk3528-qos", "syscon";
> +			reg = <0x0 0xff280400 0x0 0x20>;
> +		};

These QoS node are typically referenced from power domains so that the
PMU driver know what QoS to save/restore when a power domain is power
cycled.

Vendor kernel only reference the two qos_gpu nodes in it's power domains,
do you have any documentation or knowledge about what power domain the
remaining QoS are related to?

It would have been helpful to include PMU support to help understand the
QoS <-> PD relationship, on their own they do not tell us that much :-)

Regards,
Jonas

> +
>  		cru: clock-controller@ff4a0000 {
>  			compatible = "rockchip,rk3528-cru";
>  			reg = <0x0 0xff4a0000 0x0 0x30000>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
