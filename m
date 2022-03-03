Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1245C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 11:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9UrY2GkHrpemttQsDKfeVfdyh+RfXqDh+QuNCM4P1A=; b=njxDBzPmm9cewk
	EGo4JQK9/RNfh5WNuauLbZmSDEJXLUOtPAVUZ6fvzr8Ohr7UrcGNU42rOOuIEfIzWh+K9AS+6b6KG
	VIsJdjjWdlX1CdAyoYXkvMmw4opC/XoyeMoqlT2eBvhJwk7Xwnlvgia48IskyZeGVunO5MNELLfI2
	LhuUU2btZvw3V3Upo8/HSJz9G/Dt05ci3zHXEPXGNH7TKwuaF7kg6MDQme5Z9iC5ymXFmvB450ijb
	OyQK8TNZMGyrCtY+zVJZSHroaipxFpKn45dVsBNoCXNBgwKx7hT0Gmen1YgsWayF1DJU/wL8ASSvA
	3vQiJgqPbi223Mtj0vWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPk6K-006HHi-SW; Thu, 03 Mar 2022 11:58:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPk6H-006HH6-NO
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 11:58:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E589C1424;
 Thu,  3 Mar 2022 03:58:28 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81ACC3F70D;
 Thu,  3 Mar 2022 03:58:24 -0800 (PST)
Message-ID: <fa051752-c98a-df6f-27a3-dd4c0de1caf5@arm.com>
Date: Thu, 3 Mar 2022 11:58:24 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH 2/3 v4] dts: rockchip: Add #clock-cells value for rk805
Content-Language: en-GB
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org, mbrugger@suse.com,
 arnaud.ferraris@collabora.com, knaerzche@gmail.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
References: <20220302232612.25455-1-macroalpha82@gmail.com>
 <20220302232612.25455-3-macroalpha82@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220302232612.25455-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_035829_853260_4A15B90A 
X-CRM114-Status: GOOD (  12.33  )
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

On 2022-03-02 23:26, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Based on a brief discussion on the mailing list it was determined that
> clock-cells should be a required parameter in the event that a consumer
> of the clock gets added in an overlay.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   arch/arm/boot/dts/rv1108-elgin-r1.dts      | 1 +
>   arch/arm/boot/dts/rv1108-evb.dts           | 1 +
>   arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 1 +
>   3 files changed, 3 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rv1108-elgin-r1.dts b/arch/arm/boot/dts/rv1108-elgin-r1.dts
> index f62c9f7af79d..0c99a5934ebf 100644
> --- a/arch/arm/boot/dts/rv1108-elgin-r1.dts
> +++ b/arch/arm/boot/dts/rv1108-elgin-r1.dts
> @@ -72,6 +72,7 @@ rk805: pmic@18 {
>   		interrupt-parent = <&gpio0>;
>   		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
>   		rockchip,system-power-controller;
> +		#clock-cells = <0>;
>   
>   		vcc1-supply = <&vcc_sys>;
>   		vcc2-supply = <&vcc_sys>;
> diff --git a/arch/arm/boot/dts/rv1108-evb.dts b/arch/arm/boot/dts/rv1108-evb.dts
> index fe5fc9bf75c9..46cad7cb94bf 100644
> --- a/arch/arm/boot/dts/rv1108-evb.dts
> +++ b/arch/arm/boot/dts/rv1108-evb.dts
> @@ -85,6 +85,7 @@ rk805: pmic@18 {
>   		interrupt-parent = <&gpio0>;
>   		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
>   		rockchip,system-power-controller;
> +		#clock-cells = <0>;
>   
>   		vcc1-supply = <&vcc_sys>;
>   		vcc2-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> index de2d3e88e27f..40bf808642b9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> @@ -160,6 +160,7 @@ pmic@18 {
>   		pinctrl-0 = <&pmic_int_l>;
>   		rockchip,system-power-controller;
>   		wakeup-source;
> +		#clock-cells = <0>;
>   
>   		vcc1-supply = <&vcc_sys>;
>   		vcc2-supply = <&vcc_sys>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
