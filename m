Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37C91C67861
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Apr 2024 15:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WF5Z6l8rrmSMdY2sdpKheC13HdEsGZPjz0eN26kcSk=; b=n+0g46iCTJT17+
	NFBXrVgand3MqKkYyfKgBdI8U7PM4Lw6APoXtoneotFWkyfHTsaaNcn17I3evuWHBQWeavbDVqH3s
	H4NDyGaJa/YF/imO0m+aW3mvHyXP8wsx040BSlc33cJL2vqKCQ2iHVb/G6w62NUeX/RNe9alSBhZT
	RHILDKzEIWxIH45noTD9lPimDXHY7Oabvlmp6RxeLeiUllnJ9ax5o3bu29FJIbhw1p4WODdgk5V4q
	WrzsaCLm5BVgKnqAQcgKpRBDy44dbEiMoDByaFb475jA2OApDNlMOIzueK94B6anDj/KcZsY4sOMo
	4L7fAgvnQSMEpC0zU9Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtqYf-0000000FyGK-1hNk;
	Mon, 08 Apr 2024 15:05:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtqYZ-0000000FyES-37Ih;
	Mon, 08 Apr 2024 15:05:14 +0000
Received: from i5e8616c3.versanet.de ([94.134.22.195] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rtqYK-0007Xz-Fd; Mon, 08 Apr 2024 17:04:56 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>, Jonas Karlman <jonas@kwiboo.se>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable onboard spi flash for rock-3a
Date: Mon, 08 Apr 2024 17:04:55 +0200
Message-ID: <3066222.xgJ6IN8ObU@diego>
In-Reply-To: <b32c284e-f3ec-44b0-abbd-7fa403bc9870@kwiboo.se>
References: <20240408124005.182565-1-amadeus@jmu.edu.cn>
 <421ab43b-ff92-41c6-9904-3c7681c926be@kwiboo.se>
 <b32c284e-f3ec-44b0-abbd-7fa403bc9870@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_080511_997819_9F8DC6FE 
X-CRM114-Status: GOOD (  22.94  )
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

Am Montag, 8. April 2024, 16:56:59 CEST schrieb Jonas Karlman:
> On 2024-04-08 16:44, Jonas Karlman wrote:
> > On 2024-04-08 14:40, Chukun Pan wrote:
> >> There is a mx25u12835f spi flash on this board, enable it.
> >>
> >> [    2.525805] spi-nor spi4.0: mx25u12835f (16384 Kbytes)
> >>
> >> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 12 ++++++++++++
> >>  1 file changed, 12 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> >> index a5e974ea659e..d8738cc47c73 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> >> @@ -757,6 +757,18 @@ &sdmmc2 {
> >>  	status = "okay";
> >>  };
> >>  
> >> +&sfc {
> > 
> > This is missing:
> > 
> > 	#address-cells = <1>;
> > 	#size-cells = <0>;
> > 
> >> +	status = "okay";
> >> +
> >> +	flash@0 {
> >> +		compatible = "jedec,spi-nor";
> >> +		reg = <0x0>;
> >> +		spi-max-frequency = <50000000>;
> > 
> > At least in U-Boot the spi clock only support 24, 100 or 200 mhz and I
> > am pretty sure the spi flash support 100mhz, so I would suggest you test
> > with 100mhz, same as used on other rk356x boards.
> 
> Sorry, looked at spi clock instead of sfc clock.
> sfc clock support 24, 50, 75, 100, 125 and 150 mhz.

I think in some previous discussion the agreement was that the node
should specify the max frequency the flash supports and have the
controller worry about its own clock ranges.

Though in this case the 50MHz for the flash even matches the clock
frequency supported by the sfc



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
