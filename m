Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAE53C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 14:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TQcnrJ2UTUuYCCZHWxjcH2H+UaAS2Kj/2yOzepPS6A=; b=2wBeFSUOr7XYSU
	VE5Wr/u7ykTgHallh1eI7E1IUMeamx+pmVqxjWdNeXPc/2wnExjJlGmwNAWhagF/3ygXYUDo8Xvsb
	WS0cmeGgaM7K4qv3fVLtAzItjsvd56OJAWjoBUdpz04WmayHBVri6Pty/M0zMBlymRZTgqDqWlxB1
	czWwkhPAz15E2v7aBwW9vRJv1X2YceIT+NmQXi5dkhC+Dy2HnAHp9XezPjUAyMwbTiCrEkCJ+ZNCy
	lLwB/zliYx74GV+qS4sk5lkVs6XbIoGm6erUlq5qfwzbnST0DHa8PisOwq+8B+9kO05BiXdxa4rUK
	TLTJzelxU388JRWryhLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkniz-00EQJp-Bg; Sat, 30 Apr 2022 14:05:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkniv-00EQIh-PQ; Sat, 30 Apr 2022 14:05:27 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1nknid-0001W7-8u; Sat, 30 Apr 2022 16:05:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Frank Wunderlich <linux@fw-web.de>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Sean Wang <sean.wang@mediatek.com>, Landen Chao <Landen.Chao@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: Re: [RFC v2 4/4] arm64: dts: rockchip: Add mt7531 dsa node to
 BPI-R2-Pro board
Date: Sat, 30 Apr 2022 16:05:06 +0200
Message-ID: <3557249.iIbC2pHGDl@phil>
In-Reply-To: <20220430130347.15190-5-linux@fw-web.de>
References: <20220430130347.15190-1-linux@fw-web.de>
 <20220430130347.15190-5-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_070525_874748_5DEC5FA2 
X-CRM114-Status: GOOD (  16.66  )
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

Am Samstag, 30. April 2022, 15:03:47 CEST schrieb Frank Wunderlich:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add Device Tree node for mt7531 switch connected to gmac0.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v2:
> - drop status=disabled
> ---
>  .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index ed2f2bd9a016..f0ffbe818170 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> @@ -437,6 +437,54 @@ &i2c5 {
>  	status = "disabled";
>  };
>  
> +&mdio0 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	switch@0 {
> +		compatible = "mediatek,mt7531";
> +		reg = <0>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@1 {
> +				reg = <1>;
> +				label = "lan0";
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +				label = "lan1";
> +			};
> +
> +			port@3 {
> +				reg = <3>;
> +				label = "lan2";
> +			};
> +
> +			port@4 {
> +				reg = <4>;
> +				label = "lan3";
> +			};
> +
> +			port@5 {
> +				reg = <5>;
> +				label = "cpu";
> +				ethernet = <&gmac0>;
> +				phy-mode = "rgmii";
- phy-mode: String, the following values are acceptable for port labeled
	"cpu":
	If compatible mediatek,mt7530 or mediatek,mt7621 is set,
	must be either "trgmii" or "rgmii"
	If compatible mediatek,mt7531 is set,
	must be either "sgmii", "1000base-x" or "2500base-x"

So I guess the phy-mode needs to change?


Heiko

> +
> +				fixed-link {
> +					speed = <1000>;
> +					full-duplex;
> +					pause;
> +				};
> +			};
> +		};
> +	};
> +};
> +
>  &mdio1 {
>  	rgmii_phy1: ethernet-phy@0 {
>  		compatible = "ethernet-phy-ieee802.3-c22";
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
