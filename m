Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21B0DC531DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Aug 2024 14:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yToDeLbx/agatsF8bAhkH5ZIDDCJCSn6IiEknhd6h38=; b=Iq1ButH4Qhj8ct+wNLIRwYJaMT
	h9pr3NURk3zzGBSqwdvVQcGgO634BTTbcl1XIyXi8NqE6p9izID2p5JF+oXVWkLWp+FWx68Jz7BRJ
	bQfSCgT8ooQ3neOKF1utd7Gq6Kg7kKlWq+AJfta7eQeiIccv5obxxm/STuBeepFOdCLEJOlfjfNBl
	wJ3byAiuUk+aLMl46qo4spBTG/oTnyaOHIWpbHOXNnJz9FpQIZTr1qicrMR/ElOnhU46Ws09I0cvT
	K9HzjsV7gy1J3xICdkThZKVtazdOaOo1wZkUgJSk/GylWL4lii37C3rWxnaWQQ8VB4b55tO+iMADV
	Sd4nNRQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgPr0-00000005YCM-1n3j;
	Tue, 20 Aug 2024 14:28:58 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgPqF-00000005Xms-08wl;
	Tue, 20 Aug 2024 14:28:13 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724164088;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9lfYG8mLMZ0ToEvfuDohOV6aiGyWEujUFWVDSC8D4ic=;
	b=ZkmOkAzx5YgLBlN0MF2JuKRo4gFfSBd7vX2rvvXuZL42jDBVELJnS9jK0H+Y8dduyFGbJy
	iK7fGLYfh41uP/+Xu8HeVbszC/OW+ROrVDC0vSGHFGls2LUgnYXe95ImNBKXIhPh/CZKhX
	IO3u0N7QbRf7+sdw5gBWqFVfkagCqT8gSXY39Yn/cn/fCwpVJSBpNdzR1NkNyPyEpmylnM
	ppZYZvTHcNI49BZez2pJpNYBwt9eMHE73rTKY+MIcaa3WXPzTAXCpFb61M/+qozADXgZ9g
	S85XQMEcoNzU/ClrIs+4nJ2LCRo0LpuVQcCvZmzOG/Fvl76pdMHx25SxgXWiIQ==
Date: Tue, 20 Aug 2024 16:28:07 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: disable display subsystem only
 for Radxa E25
In-Reply-To: <20240820120020.469375-1-amadeus@jmu.edu.cn>
References: <20240820120020.469375-1-amadeus@jmu.edu.cn>
Message-ID: <16c70a037d912ec88eb9c082f35100c6@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_072811_612712_986D3C18 
X-CRM114-Status: GOOD (  12.80  )
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

Hello Chukun,

On 2024-08-20 14:00, Chukun Pan wrote:
> The SoM board has reserved HDMI output, while the Radxa E25
> is not connected. So disable the display subsystem only for
> Radxa E25.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>

Looking good to me, thanks for the patch.  The carrier board is what's
responsible for exposing the actual HDMI port from the SoM.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 4 ----
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 4 ++++
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> index 45b03dcbbad4..19d309654bdb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> @@ -108,10 +108,6 @@ &cpu3 {
>  	cpu-supply = <&vdd_cpu>;
>  };
> 
> -&display_subsystem {
> -	status = "disabled";
> -};
> -
>  &gpu {
>  	mali-supply = <&vdd_gpu>;
>  	status = "okay";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> index 72ad74c38a2b..84a0789fad96 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> @@ -103,6 +103,10 @@ &combphy1 {
>  	phy-supply = <&vcc3v3_pcie30x1>;
>  };
> 
> +&display_subsystem {
> +	status = "disabled";
> +};
> +
>  &pcie2x1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pcie20_reset_h>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
