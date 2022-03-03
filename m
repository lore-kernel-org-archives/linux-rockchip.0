Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E96BC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 11:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7c3vu/NaKbFj70P3Rdtmas/udyvPYg2cHX+SILQdKA=; b=1CTWbS/0L6qYB0
	71jaDWwX8MxpP7mgCkNsbyKXTMYjIPEDoXc2lPSf9+7R88nSRRv3XtjIkPVMrZedQNASVb/0Vfqzs
	QTVoHis7/L4pQsqsAuls1q4nO+KOO9RuZ2SEvULI57BzOol9fUoW3AfHVgSPJcGVZhZOaEdJIjHsh
	xklUabq2f41RAY9mKBF9S4U+nx4fL5gqPHSuVfb565D3RTp73Wq4y2z8bhNyz8GsmfCBO0c4zTID9
	WYiQ/pTf1Smhr9ocrnIhkwAFgaFHzAzYdqEJwKZfu6EFLdx+Q7VNTv/VbFS2atsgqt0Kfd/FiVgyh
	xqKKTfngfu0898/T5gag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPk5n-006HB7-4y; Thu, 03 Mar 2022 11:57:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPk5k-006H9t-1w
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 11:57:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5BBF1424;
 Thu,  3 Mar 2022 03:57:54 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 917F93F70D;
 Thu,  3 Mar 2022 03:57:51 -0800 (PST)
Message-ID: <7ebbc850-a6ca-ce77-aa1b-d8c30172f752@arm.com>
Date: Thu, 3 Mar 2022 11:57:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH 1/3 v4] arm64: dts: rockchip: Remove vcc13 and vcc14 for
 rk808
Content-Language: en-GB
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org, mbrugger@suse.com,
 arnaud.ferraris@collabora.com, knaerzche@gmail.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
References: <20220302232612.25455-1-macroalpha82@gmail.com>
 <20220302232612.25455-2-macroalpha82@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220302232612.25455-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_035756_186064_EBE9A4DE 
X-CRM114-Status: GOOD (  10.90  )
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
> The Rockchip rk808 Power Management IC does not have a vcc13 or a
> vcc14. The schematics for at least the Pinebook Pro suggest this is
> actually vcc1 and vcc2, and may be an artifact from the reference
> design schematic).

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 --
>   arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi      | 2 --
>   2 files changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index c2f021a1a18f..20f71317d7ab 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -472,8 +472,6 @@ rk808: pmic@1b {
>   		vcc10-supply = <&vcc_sysin>;
>   		vcc11-supply = <&vcc_sysin>;
>   		vcc12-supply = <&vcc3v3_sys>;
> -		vcc13-supply = <&vcc_sysin>;
> -		vcc14-supply = <&vcc_sysin>;
>   
>   		regulators {
>   			/* rk3399 center logic supply */
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index d1aaf8e83391..0e45cc2d195b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -310,8 +310,6 @@ rk808: pmic@1b {
>   		vcc10-supply = <&vcc3v3_sys>;
>   		vcc11-supply = <&vcc3v3_sys>;
>   		vcc12-supply = <&vcc3v3_sys>;
> -		vcc13-supply = <&vcc3v3_sys>;
> -		vcc14-supply = <&vcc3v3_sys>;
>   		vddio-supply = <&vcc_3v0>;
>   
>   		regulators {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
