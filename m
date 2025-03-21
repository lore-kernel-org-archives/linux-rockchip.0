Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58CF7C36002
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Mar 2025 01:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/sBRFX6rZheZqSarXYOJ2OQzXZcNSqQnAyi24Le7KZA=; b=tOT8CbnPsBeY6HQr6eNtrc0Xcu
	4V0lrUXc9t5ZkUUQRmfiOhb4wnCZ5XhpCqSBzd43G54JDtDlLbTpT3O9kVTg4JSqUTa1nDVypp84n
	eurx4EqDBG64HCqEr4sy7GWCfsX//8jV4IS24SBgQ/JVhqmAXAWkHB5mIKgg36Fa/ol3U64n2fdSy
	LAfNGRHePgzwp+ndRbt4BFRpFIHd3QHEuVLmtgCFhy826zYuhGGzd9ZQrZn7q4iE+uMLPf0YpwX5m
	jIRUinqSdzJR+GIH8/Hxk+ni7B0ojLoSO0UgvCXrcu9YKs9KYdsjj04imwZYRjI6otb/VuzT4/HOw
	6+/vmhKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvQmQ-0000000Dbiy-2mu9;
	Fri, 21 Mar 2025 01:02:34 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvQOs-0000000DZdz-460o;
	Fri, 21 Mar 2025 00:38:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1742517490;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GMuBo8PBLUfzgvC250aHSwUK/V2T2NbkU69GBOnmW2k=;
	b=fLl/ZWWtMhHF3fP8xV9YZa93rMbwa0F4JQLtogL8oqHrMGi43rko/xOzhm0ZVHuuvWlH72
	lzZ1NFWA5Ghh4ZjpUL+xez9hLGhB3rVkMF4PjdiVGfumAV4g7TL4o9nvcPsa4QsDyQZfpH
	5YUvj79ZbvK+o3bbiyUhwC25tpR2ye2jtK6ZmRUEgSL8yl4FiLqfjpzSYR7CwUWc7sR9kS
	Rhh2Ngx/J5eGClE8/6j/HZIQJXQvO4p4UFD/NsF9d/nRDm+ihjwfCbmPRxElBXmRjp9+qX
	o57O6Frtcm9lx4Lm2kWc3fRj0gmgWb2aOwIFAGKa/W09P8/hnu8HThXh/stBsg==
Date: Fri, 21 Mar 2025 01:38:08 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Sam Edwards <cfsworks@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Daniel_Kukie=C5=82a?= <daniel@kukiela.pl>, Sven Rademakers
 <sven.rademakers@gmail.com>, Joshua Riek <jjriek@verizon.net>
Subject: Re: [PATCH] arm64: dts: rockchip: Allow Turing RK1 cooling fan to
 spin down
In-Reply-To: <20250315204852.1247992-1-CFSworks@gmail.com>
References: <20250315204852.1247992-1-CFSworks@gmail.com>
Message-ID: <e1cdc3a39b9201cb115b12b559899aee@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_173815_253741_A0888676 
X-CRM114-Status: GOOD (  20.20  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Sam,

On 2025-03-15 21:48, Sam Edwards wrote:
> The RK3588 thermal sensor driver only receives interrupts when a
> higher-temperature threshold is crossed; it cannot notify when the
> sensor cools back off. As a result, the driver must poll for 
> temperature
> changes to detect when the conditions for a thermal trip are no longer
> met. However, it only does so if the DT enables polling.
> 
> Before this patch, the RK1 DT did not enable polling, causing the fan 
> to
> continue running at the speed corresponding to the highest temperature
> reached.
> 
> Follow suit with similar RK3588 boards by setting a polling-delay of
> 1000ms, enabling the driver to detect when the sensor cools back off,
> allowing the fan speed to decrease as appropriate.
> 
> Fixes: 7c8ec5e6b9d6 ("arm64: dts: rockchip: Enable automatic fan
> control on Turing RK1")
> Signed-off-by: Sam Edwards <CFSworks@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
> index 6bc46734cc14..0270bffce195 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
> @@ -214,6 +214,8 @@ rgmii_phy: ethernet-phy@1 {
>  };
> 
>  &package_thermal {
> +	polling-delay = <1000>;
> +
>  	trips {
>  		package_active1: trip-active1 {
>  			temperature = <45000>;

Thanks for the patch, it's looking good to me, with some related
thoughts below.  Please, feel free to include:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

After a quick look at the RK3588 TRM Part 1, it seems possible
to actually generate additional interrupts when the TSADC channel
temperature readouts reach predefined low thresholds.  Moreover,
avoiding the polling would actually help the SoC cool down a tiny
bit faster, which makes it worth detailed investigation in my book,
despite not being used by the downstream kernel code.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
