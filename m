Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80EAFC52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 09:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwjcpAKhqlSvWa/HLvA4/ggjzPl2wlXff6h3wNtcg5A=; b=RH1UMCzMx11ojN
	zW7PBkAYEDPw36ot/FuaNRxNWkljDrYge7imxj8zScphcQj8RLpSstKujOVMSJdGz7iR/S/qPAxYa
	mxiAvJAYkyR6PMGJkUUQ0ZmB/0YSHkkdbgIBrdYJBmr3N6nhT1RQkwhr765sAJCbnYSEg9IOB5FZd
	0QyI5ao65oL+v54lTwP6X/vgXOFk40gtYv8DZicXs7zzMMYfMbKvglowJMUq7b1cSaa4qHN3Hgykj
	vVokRb49I3aL725nmCo3YbVtHlaegwDMZHcMl14ThdHPWJdA4GClj23iDHCKN/gJSwnvmxIKUMnrb
	a3j1cebXsULVfGRjULvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQvP-0000000GC2c-0tBT;
	Fri, 23 Aug 2024 09:49:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQud-0000000GBqL-064t;
	Fri, 23 Aug 2024 09:48:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nYMPr8WyjPeQWRWVZs2WMwxKYUMtLVmh6JMdsc9vbyA=; b=aFalVEegxwCLNqld3X5vkG1HsK
	EYWFqDLp26dS1grO0wAxG8dhG1/2CnBU/TD7SbwVEnWo0YBtSekR8q0BtuY2CIFEF8VM5BIjYPmEh
	D8o2fEQZI2GxD8OY1/1x//Wc2N9qNyLD+OPfGNviL6EEbd8INkuZ4k+Q/6x3albeZftISnBNUbWSU
	PsGBBFB85gnwLEmYsDDHHODWsZ5s0miwSTLNp8xfq5Tz0kIV6/vEyGgM/M965Yy5d+0sCcSt1lSPL
	62r38r6OSWSK6MEhWlRoYO99nfspsiUH7w5S+oRDiChQHzfDBGwx29f0kheWFrP1CfBEseqVkf+Qo
	LOYdfaMQ==;
Received: from i5e861933.versanet.de ([94.134.25.51] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1shQuX-0003xF-Hz; Fri, 23 Aug 2024 11:48:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: pinctrl: Add rk3576 pinctrl support
Date: Fri, 23 Aug 2024 11:49:30 +0200
Message-ID: <22692139.hxa6pUQ8Du@diego>
In-Reply-To: <20240822195706.920567-4-detlev.casanova@collabora.com>
References: <20240822195706.920567-1-detlev.casanova@collabora.com>
 <20240822195706.920567-4-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_024855_097904_37C22B8C 
X-CRM114-Status: GOOD (  14.98  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Linus Walleij <linus.walleij@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Shresth Prasad <shresthprasad7@gmail.com>, devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 22. August 2024, 21:53:38 CEST schrieb Detlev Casanova:
> Add the compatible string for the rk3576 SoC.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> index 20e806dce1ec..6a23d845f1f2 100644
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> @@ -45,6 +45,7 @@ properties:
>        - rockchip,rk3368-pinctrl
>        - rockchip,rk3399-pinctrl
>        - rockchip,rk3568-pinctrl
> +      - rockchip,rk3576-pinctrl
>        - rockchip,rk3588-pinctrl
>        - rockchip,rv1108-pinctrl
>        - rockchip,rv1126-pinctrl
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
