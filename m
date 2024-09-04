Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46E19CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 09:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbKNjUiIr3iINjYvcjNjVHjLOJJIyL/F5r7/YpbC7Wo=; b=HMbiEA/C4f/T3h
	GJ7tZl/yzqQeYyFNJc3qYhFkvqo18hm0izYkBp4XDi64eMfYSOr/u5zsIOzu2ZGAVvsWzxGpVu4iQ
	/ZRssDjupkh1rBN68YiBWmTGGfIQ5DgQiJPLpWtu3DX30Arz2Geig3bzgR1QWDzxoUnSKi9ofKw+k
	7L8kX5hwKvAx84+6oHkxeE7rxUoDrtC5V6I64jvdghuwSwQtXa7IbWtWXR7hhEG2srrJnMHi+uWmw
	IzsORKj81opmtlhM2SzM8lkbdaTv50L5oyKJIlooGLfAqBupa7UiPyt6wxbJv0RcjZbVdqAR/Bugr
	uzv4WlzsZF77WVrtusDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmhP-00000003mJQ-25NR;
	Wed, 04 Sep 2024 09:53:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slm1J-00000003bdO-1l5Y;
	Wed, 04 Sep 2024 09:09:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=WRwluVRMOa7IzLDu5O+B9iAsJQjcJHexkQ03u6Hw6+4=; b=Ky4oO3XV8dX69lb6SQW69m+Lq8
	JB1QaLV6ugb/GXc79OPlVLe9BRzMRPFo9OrNTBSR8J/Vrx8fhc0eLZnIWQmHow6mID4JqEUNTcpJN
	y7IzD1EDeH7WUmJLu1eeo0BRFWzUZ7eGB9XpZ8nA7olWBQ2etTZbJvw70eAaDReoAvoU9WJef3kK6
	9JN7y/qNhjT7rdWCEz4dMlSchmqJETe7UWx4+0O0FOgUSAzUad6tV4BkKG/v4YyfrSMWNEO4Tv8AG
	k6r++fGZsvpqGc1FArFgnNBel5b6LmhLZaOl56SJuXusTjMFM7tOvIResHsdrctZ/OXKc5lNHlN19
	sSS6ByUg==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slm1G-0006jf-Pm; Wed, 04 Sep 2024 11:09:42 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 alexandre.belloni@bootlin.com,
 Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: Re: [PATCH v2 4/8] ARM: dts: rockchip: Add watchdog node for RV1126
Date: Wed, 04 Sep 2024 11:11:27 +0200
Message-ID: <6440792.jCCqRG4XHG@diego>
In-Reply-To: <20240903105245.715899-5-karthikeyan@linumiz.com>
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
 <20240903105245.715899-5-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_020945_500752_E85CAD4B 
X-CRM114-Status: GOOD (  18.07  )
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

Am Dienstag, 3. September 2024, 12:52:41 CEST schrieb Karthikeyan Krishnasamy:
> Add watchdog node for Rockchip RV1126
> 
> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>

this needs a separate patch for adding a watchdog compatible to
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml#n33

see for example
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=dcd615ee6fd3651ab0357364c4cf65b1148a40be

Thanks
Heiko

> ---
> 
> Notes:
>     v2:
>     - No change
> 
>  arch/arm/boot/dts/rockchip/rv1126.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
> index abf442804d27..283985608428 100644
> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
> @@ -544,6 +544,14 @@ timer0: timer@ff660000 {
>  		clock-names = "pclk", "timer";
>  	};
>  
> +	wdt: watchdog@ff680000 {
> +		compatible = "snps,dw-wdt";
> +		reg = <0xff680000 0x100>;
> +		clocks = <&cru PCLK_WDT>;
> +		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
> +		status = "disabled";
> +	};
> +
>  	i2s0: i2s@ff800000 {
>  		compatible = "rockchip,rv1126-i2s-tdm";
>  		reg = <0xff800000 0x1000>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
