Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27CA8C25B78
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 08:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2Ki9K6fVWToRjb6FAwPTADS9uZclSwr0VQvW8dQzS8=; b=axzAgxsYvKuh3q
	E//As+KQD51A7D8DW0qS3+SXdOCjr0HNRRbYXabtVQjhy/UZya/ATe1Ct6G9hGz1fGZaZ20qt+AUf
	r8LaCrQOTXYCCb7mOqo7bsWiJh19xIVsBsGljJkMWJXpVox0dzifnbhlWsShv19s4ZgbG02y92k8y
	7r219MZkdzsx9b0zwaflUBucNH3tDY3bTWs5m9gfcGehrhczBI474I/sh2STY2CT+h1ourUNLGdeX
	3M2ptZxvOk6KdiZJud+jAeFkq+irbAu3hxsYl6OcJ8iLdpoGTwP1r5ATXd1HMTKh1+IiDrmIcYw1g
	Uhr+wpFLhpJekAzvBSrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBs39-0000000HSMf-2k5X;
	Tue, 28 May 2024 08:19:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBs36-0000000HSLT-3oRI;
	Tue, 28 May 2024 08:19:13 +0000
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBs33-0001fu-Iu; Tue, 28 May 2024 10:19:09 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: media: rockchip,vpu: Document RK3128 compatible
Date: Tue, 28 May 2024 10:19:08 +0200
Message-ID: <3639993.hdfAi7Kttb@diego>
In-Reply-To: <20240523185633.71355-2-knaerzche@gmail.com>
References: <20240523185633.71355-1-knaerzche@gmail.com>
 <20240523185633.71355-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_011912_978127_5266FF5A 
X-CRM114-Status: GOOD (  15.87  )
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

Am Donnerstag, 23. Mai 2024, 20:56:31 CEST schrieb Alex Bee:
> The integration for this SoC is similar to RK3066/RK3188.
> 
> Document it's compatible.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Media people, can you apply this patch alone from the series?

Thanks
Heiko

> ---
>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> index c57e1f488895..d1b47b14ca57 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -26,7 +26,9 @@ properties:
>            - rockchip,rk3568-vpu
>            - rockchip,rk3588-av1-vpu
>        - items:
> -          - const: rockchip,rk3188-vpu
> +          - enum:
> +              - rockchip,rk3128-vpu
> +              - rockchip,rk3188-vpu
>            - const: rockchip,rk3066-vpu
>        - items:
>            - const: rockchip,rk3228-vpu
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
