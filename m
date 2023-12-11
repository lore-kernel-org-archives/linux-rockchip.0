Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1010CC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 12:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ObXm8i+HH4HNzvesfFyoTZWNnipuPwj6Nr5/U0x8JGc=; b=S1tJLLB+xkrG7u
	Tf7vIzXrLQiTNlB/qippGLEjqueK/P2ZO6GoJXzL2FMbY6N8WD5BcUBtnDrvyrwn84HWvRBMPE2GY
	R/FHv3cHDWVmyXYQdGUfnBMULPOsmMd9TUds2dGO1YDPf6sCYkGahs2ynzhFrcGjt56IwApUcbHAR
	EWo6GgTUYG5uXuSHEjNUzH/MUnnD75SoPPUcdyZo0J4T21OczYyVP7JkZ8gC8KWrUGtj5WRaBa2oT
	q6G8RSS4/oenncaEYq3xxfx1HGiAZQhYiGr579NKsNVj28NQUnQDZSoNXgG8SakgckNIDp+wYwQVi
	Q+Ml3tr0G71UJKGTxLOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCfO7-004rA6-1j;
	Mon, 11 Dec 2023 12:27:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCfO1-004r8m-2n;
	Mon, 11 Dec 2023 12:27:53 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rCfNp-00087M-1j; Mon, 11 Dec 2023 13:27:37 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andy Yan <andyshrk@163.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
Date: Mon, 11 Dec 2023 13:27:36 +0100
Message-ID: <3203387.BEx9A2HvPv@diego>
In-Reply-To: <20231211105023.1779786-1-andyshrk@163.com>
References: <20231211104915.1779476-1-andyshrk@163.com>
 <20231211105023.1779786-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_042749_928872_9B8285AE 
X-CRM114-Status: GOOD (  16.00  )
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

Hi Andy,

Am Montag, 11. Dezember 2023, 11:50:23 CET schrieb Andy Yan:
> Add Cool Pi CM5 EVB, a board powered by RK3588
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

I just realized your mention of this being a som + baseboard combination
in the previous version.

In that case the compatible really should reflect that.

      - description: Cool Pi Compute Module 5(CM5) EVB
        items:
          - const: coolpi,pi-cm5-evb
          - const: coolpi,pi-cm5
          - const: rockchip,rk3588

Similar to how all the other som + baseboard combinations do it
(Edgeble neural modules, engicam px30, Thebroma-SoMs).


Thanks
Heiko

> ---
> 
> (no changes since v2)
> 
> Changes in v2:
> - change board compatible from "CoolPi CM5 EVB" to "coolpi,pi-cm5-evb"
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 11d03035f3db..4da83bbd642a 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -95,6 +95,11 @@ properties:
>            - const: chipspark,rayeager-px2
>            - const: rockchip,rk3066a
>  
> +      - description: Cool Pi Compute Module 5(CM5) EVB
> +        items:
> +          - const: coolpi,pi-cm5-evb
> +          - const: rockchip,rk3588
> +
>        - description: Cool Pi 4 Model B
>          items:
>            - const: coolpi,pi-4b
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
