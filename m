Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53A5BC54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 11:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vdEQVunbG2UosMQeLdvT6RuBOg77ClQbj5lG2wjvrk=; b=XCZH8l0aGfJenh
	QHZlQozqlNuGfbo0xFHSXCh7gh+Q0Bvz3D+9FhptDyo9+uLkcHZQivyO5zPrub2sISaXm8FnW2brx
	GIX/Oo1ziMjFkEqOu2F8TE9An1D1eCOmgt70EB2zf0JsPojEShpCPfvWuFANYIC+1J3cHLtOm/A7e
	vv9ysh+BsmWH6dC44mAP9AHWd9m9orgpaCKeHXtfiEejRll3XcTVd/KYXMR6WGIYoMEALnkf1jE/e
	/UiYXw0xhk856QwxCQ0MGdayiYgcTgduMz4YsPwsJShzmytw/SbX8122cSxL6fNAi8ei64okcLwan
	1IDGkZi8T2f4GYr4ps9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVt1r-005afp-5U; Wed, 07 Sep 2022 11:15:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVt1o-005ae3-AA; Wed, 07 Sep 2022 11:15:33 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oVt1l-0005Fi-L1; Wed, 07 Sep 2022 13:15:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lee Jones <lee@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCHv3 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register compatible
Date: Wed, 07 Sep 2022 13:15:28 +0200
Message-ID: <29963448.43St1lv6Oq@diego>
In-Reply-To: <20220906143825.199089-5-sebastian.reichel@collabora.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com> <20220906143825.199089-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_041532_387096_21A54BAA 
X-CRM114-Status: GOOD (  12.60  )
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

Am Dienstag, 6. September 2022, 16:38:23 CEST schrieb Sebastian Reichel:
> Document rk3588 compatible for QoS registers.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index c10f0b577268..5369a56b8be1 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -59,6 +59,7 @@ properties:
>                - rockchip,rk3368-qos
>                - rockchip,rk3399-qos
>                - rockchip,rk3568-qos
> +              - rockchip,rk3588-qos
>                - samsung,exynos3-sysreg
>                - samsung,exynos4-sysreg
>                - samsung,exynos5-sysreg
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
