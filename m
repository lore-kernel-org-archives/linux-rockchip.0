Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26EB6C3DA41
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 08:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2ptff5e4FXsLUPKr5DezQxmC5trZ6kD0DsYecmMwnw=; b=yA+OY5TMSUN9QF
	HQUNRNKQCsGW3iq03AF1cuPJgCDuRTh46t9V9B/zwX3bGG26RlhiGv3o42gc/4YLBT/IeZk+XZcqF
	mJF8hR+vqwZ8dUC+XgNWspb0APMLSo8nd3wPguaEy6Uj7+oy1hq+efNlct29BBg9tCzeh44u9OKTq
	8tq0ggX2pZO58dHlk+UO030bD0CEbn2vJBQl7A0AJhw5f1+0tVrkLwY5RoC8vgKwJpl++XJz1RDzx
	U/Pat9WSbnLsPbdRa3vIk8EBCT+neCQQB/sIQp1oNo15KWsdtThFllvun4PC5wNThu2a5QYhx1XeX
	y8oG/rf2mf5crx4vclqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRpOx-0000000DEjj-1xHd;
	Thu, 11 Jul 2024 08:43:43 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRpOu-0000000DEhw-3pz1
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jul 2024 08:43:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1720687400;
 bh=1Q85VnghNs5hkwDn1aNHDbw1L6VAgcZyl3McRTNEi7Q=;
 b=yf6OX+Ww2wLBow47PAgktVj16q/QAQJEwX1+EQ4TiKsI3BKIDshfduZZ1aq5P97gris3Sc4zM
 v7dA3WnCPvBeQLgovi6OT/VH+VTVpYR917h/dBpGaxVBOcEm+J9/0EoEo7J91XVs87P2K8AqV+O
 SiUM0HxaVVrJ4Eg1mOzxAMJDnZOq+js8E2LktqXT8t/rzQSZpuVuBGkOk5B8JnKPQB1H2/sjLoI
 GRzSise/HR22UUMcdTOGNo86y6GdW4MxR0rlb2V0fSZeD3BbM8sM6M7uyo2D6ONGn7+6Wc0ljO8
 FZpfuyHXiiVrCJf87NRxr8nJH90l48x4mcP3zjsyJFng==
Message-ID: <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
Date: Thu, 11 Jul 2024 10:43:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4
 node
To: Anand Moon <linux.amoon@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240711060939.1128-1-linux.amoon@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240711060939.1128-1-linux.amoon@gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 668f9b244502e8d75e871b7e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_014341_256274_E7F5E36F 
X-CRM114-Status: GOOD (  19.89  )
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

Hi Anand,

On 2024-07-11 08:09, Anand Moon wrote:
> Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> signals.Each component of PCIe communication have the following control
> signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
> high-speed signals and communicate with other PCIe devices.
> Used by root complex to endpoint depending on the power state.
> 
> PERST is referred to as a fundamental reset. PERST should be held low
> until all the power rails in the system and the reference clock are stable.
> A transition from low to high in this signal usually indicates the
> beginning of link initialization.
> 
> WAKE signal is an active-low signal that is used to return the PCIe
> interface to an active state when in a low-power state.
> 
> CLKREQ signal is also an active-low signal and is used to request the
> reference clock.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> V2: Update the commit messge to describe the changs.
>     use pinctl group as its pre define in pinctl dtsi
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 2e7512676b7e..ab3a20986c6a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -301,7 +301,7 @@ &pcie30phy {
>  
>  &pcie3x4 {
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie3_rst>;
> +	pinctrl-0 = <&pcie30x4m1_pins>;

Use of the existing pcie30x4m1_pins group may not be fully accurate for
the PERST pin. The use of reset-gpios indicate that the PERST pin is
used with GPIO function and the driver will implicitly change the
function from perstn_m1 to GPIO. So this may not be best representation
of the hw, hence my initial suggestion, something like:

	pcie30x4_pins: pcie30x4-pins {
		rockchip,pins =
			<4 RK_PB4 4 &pcfg_pull_none>,
			<4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>,
			<4 RK_PB5 4 &pcfg_pull_none>;
	};

Similar change should probably also be done for pcie2x1l0 and pcie2x1l2,
not just pcie3x4.

Regards,
Jonas

>  	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>  	vpcie3v3-supply = <&vcc3v3_pcie30>;
>  	status = "okay";
> @@ -341,10 +341,6 @@ pcie2_2_rst: pcie2-2-rst {
>  	};
>  
>  	pcie3 {
> -		pcie3_rst: pcie3-rst {
> -			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
>  		pcie3_vcc3v3_en: pcie3-vcc3v3-en {
>  			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
> 
> base-commit: 34afb82a3c67f869267a26f593b6f8fc6bf35905


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
