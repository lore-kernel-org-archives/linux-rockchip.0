Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D5DECAC5A7
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 16:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VA8QhRj3Vth9EW6XTqGcPG4djdmNAu0FDsPduE4cQao=; b=ReWN839W3j8xYo
	wW6S5gjPEj8qfbJvFIqFI7sG4djLbHY5E/hDEHjBhloWBSJwDxddzM8QOM9ilES6vQwWSsrU7lM6V
	e0cvwAq42r5i7vCl/VP0KNKXNOqDFnn3G1iIeunO25o6SS4VuhDXFAwpaovnEEXMokbFfyAubSLzi
	QQdpbywC+qNNwtoD0g3tZ159ZvGq66ozbzrpSIAnTGPrafH/4T8eaRjUnw4vTMW2mzRs2NqUOAt5u
	WyYjJ2YWQeLUJIt0jp2ZFn09JRMVMZ591abicH6XsnFaGD/4qOMryFDhpuWhAWy2bXpPFtzNAiXJz
	W1vXKrXet205hukaENEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1pIa-0000000BKaf-0232;
	Thu, 25 Sep 2025 16:58:28 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1pIW-0000000BKXI-2I5R
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Sep 2025 16:58:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1758819502;
 bh=dO7rc3cmOaRYh8vW051GrFKq6chUM5fRR/SwUUFClf4=;
 b=CGqAg9YK9znc+xMPTf3lS9W7lYcBmRn2USoDIBjmpwZNN3XtF0cJKdR+gXoUaXXtZk2xjzCBs
 A+W7N93Dx1G8YVPpC7Uaik6an53Tr7SJ+T2HWBbzo09WH+uQwC4g7G5EEi/lXx9+IpQu5K+DtJj
 dNv09TmfcxVY5gXKNE0Bymkiu+pWXMqftS5eb+olgVubS/nUh2Idgj445x8HjSX0mcfMnFpGcly
 ElT+/DpJwBhxrMbzGM07SOrkAP418LnTU6IV1rbWNvo48Xp0CL/ihiodORvYb9vxBuujI7ED+5I
 tRZMw1Rk0uiklvGNJ4wbiEvbZh9gXWnp9dQetBlukjYg==
X-Forward-Email-ID: 68d574a2af9b5343f17d00e7
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.2.14
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <da752790-da17-4d26-b9b2-8240b38b3276@kwiboo.se>
Date: Thu, 25 Sep 2025 18:58:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] arm64: dts: rockchip: Fix the 1Ghz ethernet on Qnap
 TS433
To: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew@lunn.ch>
Cc: "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "ukleinek@debian.org" <ukleinek@debian.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
References: <20250925092923.2184187-1-heiko@sntech.de>
 <20250925092923.2184187-3-heiko@sntech.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250925092923.2184187-3-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_095824_870348_EE13E25E 
X-CRM114-Status: GOOD (  27.64  )
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

Hi Heiko,

On 9/25/2025 11:29 AM, Heiko Stuebner wrote:
> While I want to remember that the dwmac on the TS433 was working at some
> point, it seems I had my network always connected to the 2.5G nic after
> that "point". And testing now revealed that the gmac does not actually
> manages to transfer data.
> 
> Currently the gmac is set to rgmii-id with no rx-/tx-delay values set
> which makes the driver use default values. Setting the delays to 0
> also does not provide a working interface.
> 
> The vendor kernel is running with phy-mode set to rgmii and delays of
>     tx_delay = 0x3c, rx_delay = 0x2f
> 
> As Andrew points out often, those delay values "are magic" and rgmii-id
> should definitly be used "with small values" for delays, if really needed.
> 
> The Rockchip vendor-kernel actually contains additional code in the dwmac
> driver to use the loopback function of a phy to find a window of usable
> delay values. Code can be found for example on [0] and the process is
> described in a document called "Rockchip GMAC RGMII Delayline Guide"
> which has made its way onto the internet in a lot of places [1].
> 
> So I used this process, with the interface set to rgmii-id to get values
> for this mode, which are in face lower than the ones for rgmii with
>     tx_delay = 0x21, rx_delay = 0x15
> and results in a working interface on the dwmac.
> 
> [0] https://github.com/armbian/linux-rockchip/blob/rk-6.1-rkr6.1/drivers/net/ethernet/stmicro/stmmac/dwmac-rk-tool.c
> [1] https://gitlab.com/firefly-linux/docs/-/blob/rk356x/firefly/Common/GMAC/Rockchip_Developer_Guide_Linux_GMAC_RGMII_Delayline_EN.pdf
> 
> Cc: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> index 5656554ca284..e8af92a011d6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> @@ -257,6 +257,8 @@ &gmac0_tx_bus2
>  		     &gmac0_rx_bus2
>  		     &gmac0_rgmii_clk
>  		     &gmac0_rgmii_bus>;
> +	rx_delay = <0x15>;
> +	tx_delay = <0x21>;

I do not understand why defining rx/tx_delay would change anything.

Setting these should currently not have any effect on the driver code
when phy-mode=rgmii-id is used, see below (next-20250924, dwmac-rk.c):


	switch (bsp_priv->phy_iface) {
	case PHY_INTERFACE_MODE_RGMII:
		dev_info(dev, "init for RGMII\n");
		bsp_priv->ops->set_to_rgmii(bsp_priv, bsp_priv->tx_delay,
					    bsp_priv->rx_delay);
		break;
	case PHY_INTERFACE_MODE_RGMII_ID:
		dev_info(dev, "init for RGMII_ID\n");
		bsp_priv->ops->set_to_rgmii(bsp_priv, 0, 0);
		break;


I have played around with a few patches that changes this and apply the
rx/tx_delay for rgmii-id modes (both Linux and U-Boot), see top of [2]
for Linux patches. Will try to get them on ML in a few days.

Currently, rk3588-firefly-itx-3588j.dts is the only RK board that define
rx/tx_delay and use rgmii-id mode, would be good to not define any more
rgmii-id + rx/tx_delay combo to reduce impact of a possible future
driver change.

[2] https://github.com/Kwiboo/linux-rockchip/commits/next-20250924-rk3528/

Regards,
Jonas

>  	status = "okay";
>  };
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
