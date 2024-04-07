Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2471CD128A
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Apr 2024 10:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xbszt/QRTnsVSR1OD/SHy4aqzHaD5olLZaW0piVCorI=; b=vuFwHZNdK1F7UbLZeDZzznI/+9
	bmLSZ329AqpU/dE/kgS/gzugdWJQ35ZLk6dcL5mMe5Kd59CV1IKPYMfR+GEMhaLSQAl744K8IZ498
	XYuiAFhqyEhtpLRJNmxWWzMNI2l13BCnHdUEEiH+JpmuKNg2u9jjE0DB00Xts5U9wmMxLrR+uFiLi
	IkH2COcLvlxWjhZBLaFRHxrocmbmBnlTBYaAAzmGkvkvPtjlusaQZslmTIy7r7qZlu0SjQBS4Bpej
	5MXG96LyfW/iq1CS5gucafDwN4YnSgs9tvTWCMAkEKqkPon73wlv1//kdsmJ++a2ETkiD/6ZSuxrm
	3DY5H7XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtPre-0000000CM0F-36W8;
	Sun, 07 Apr 2024 10:35:06 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtPra-0000000CLye-01QF;
	Sun, 07 Apr 2024 10:35:04 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712486097;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nnkgjIAGlSsg32B6HsyGYPTLxAnBFcSJIms9CJisy9s=;
	b=Nn+4xQw3yv23dlcKZOZ6Ve/hbS9IzxAqXaAJwREqZ4veh/oceQyKaB2e6qr3AQYnJdp8p/
	oCQ3r2AhXkqxg+GituD+jyl8ScN2g3DyQPYuucPhkEE0xP8JlfnjvBE3ULmXs1/0RQ4k/Y
	2Dwk2X3l5u5BNllRUKGo8c/zhZbkIRFfydWNgBiTqbnHxWlMXtlW53S/eqze3vSBAMWlcN
	DQlwvukxpvETalmwV7v5ZVeTqhIfMcZxsjqSicPzzt79jW52aH4BxcE7rgtR83ogP4gb0P
	SxapiRGdDB4M3oKBSD3QTpKazV0nPRHNl5AczVDiH0k2ltmDXPmtxaIBhKhiTg==
Date: Sun, 07 Apr 2024 12:34:57 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: drop redundant
 bus-scan-delay-ms in Pinebook
In-Reply-To: <20240407102854.38672-2-krzysztof.kozlowski@linaro.org>
References: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
 <20240407102854.38672-2-krzysztof.kozlowski@linaro.org>
Message-ID: <87f751ad473b0fb221357bafff00d462@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_033502_568668_79FECA13 
X-CRM114-Status: GOOD (  12.41  )
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

Hello Krzysztof,

On 2024-04-07 12:28, Krzysztof Kozlowski wrote:
> There is no "bus-scan-delay-ms" property in the PCI bindings or Linux
> driver, so assume this was copied from downstream.  This fixes
> dtbs_check warning:
> 
>   rk3399-pinebook-pro.dtb: pcie@f8000000: Unevaluated properties are
> not allowed ('bus-scan-delay-ms' was unexpected)

Please note that it's been already deleted. [1]

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=43853e843aa6c3d47ff2b0cce898318839483d05

> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index 054c6a4d1a45..294eb2de263d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -779,7 +779,6 @@ &pcie_phy {
>  };
> 
>  &pcie0 {
> -	bus-scan-delay-ms = <1000>;
>  	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
>  	num-lanes = <4>;
>  	pinctrl-names = "default";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
