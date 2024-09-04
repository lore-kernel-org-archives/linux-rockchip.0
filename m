Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20D54CD3431
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 09:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhaZyonYnBqyTfL6GdmIQtZfdA4nKWEakvv5LkOm864=; b=cihd4y9W5QAfOA
	U/U0YFoAlA7YMb8jlbWw9MR39PcIFc5koMDE15Mjn3XMmnv/wIVO1YQcV3GKtBVjTlwX0PMzGpFIt
	sVWphiHA/jMdeUXNMSaMtSzCfHqQVzUX8jlCJljLOt+WWCg8aSveNqqJ+YVm6SmGvacLPihfth5dR
	YgwrOVMAVfQMDxHar+HHwmOExfU48ncsVJn0kVzI2u2Hv1C2WhQ48ssSL/fh3onJSBbBG8IYDGYi3
	2ahVaBL9PAlxoBAjJm1nfIfjmQmXFBihVsfuV7LzAuTqANjgV4Vy5Q/rMdVy8lCevzHcudi2Y4Tca
	0LGR6NyD5kZRC7XwuZgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmFy-00000003f1w-0BDn;
	Wed, 04 Sep 2024 09:24:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slljS-00000003WQJ-3Rhl;
	Wed, 04 Sep 2024 08:51:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+PEHLdA08PpGmacO7sjfbjoDVLRNrNK/UDyQKZ5It2I=; b=LbDdmHAWCqWq3XPZDDBvu8VSk5
	fcbZrsCciUUIgMyPxvou0l7wVgO9v6cvOrfiTSRf4dt3DpRxyouHBVSTirDhNLQPwiMbSHAzaENC2
	NjpMQbR63gG33QY5o2+IyOAKZXaeazEIwCDEeuP4+YueQWfpZo7mjgqyeOgUl1SeUJVNBxxob17yj
	TXYvhYnQKs7W6cb2U24dwc4icutv9QlU6h3e8gaPmABIBzyWSHm//kg6P++4QFwTq+x76HQSvmOqw
	tM8tvIKxUUf7R7kfFLVa59LOblChXMUZodBXn0sNDr+fIAvxXa7cJAVufwJXW2ZMquTjtN3oz5Y3r
	7R6BMRzQ==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slljJ-0006a3-Qe; Wed, 04 Sep 2024 10:51:09 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>,
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 David Jander <david.jander@protonic.nl>,
 Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>,
 David Jander <david@protonic.nl>
Subject: Re: [PATCH can-next v5 03/20] arm64: dts: rockchip: mecsbc: add CAN0 and CAN1
 interfaces
Date: Wed, 04 Sep 2024 10:52:54 +0200
Message-ID: <8027881.qOBuL9xsDt@diego>
In-Reply-To: <20240904-rockchip-canfd-v5-3-8ae22bcb27cc@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
 <20240904-rockchip-canfd-v5-3-8ae22bcb27cc@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_015118_937457_957AB837 
X-CRM114-Status: GOOD (  19.24  )
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

Am Mittwoch, 4. September 2024, 10:12:47 CEST schrieb Marc Kleine-Budde:
> From: David Jander <david@protonic.nl>
> 
> This patch adds support for the CAN0 and CAN1 interfaces to the board.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
> index c2dfffc638d1..052ef03694cf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
> @@ -117,6 +117,20 @@ &cpu3 {
>  	cpu-supply = <&vdd_cpu>;
>  };
>  
> +&can0 {
> +	compatible = "rockchip,rk3568v3-canfd", "rockchip,rk3568v2-canfd";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&can0m0_pins>;
> +	status = "okay";
> +};
> +
> +&can1 {
> +	compatible = "rockchip,rk3568v3-canfd", "rockchip,rk3568v2-canfd";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&can1m1_pins>;
> +	status = "okay";
> +};
> +

cpu3 > can0 ... aka alphabetical sorting of phandles

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

No need to resend for that though.


>  &gmac1 {
>  	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
>  	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
