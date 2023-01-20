Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFBEBC25B4E
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jan 2023 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sc1sZvCfNiwJZyj2dPy93ILK3ABFZlg40BU7+alzaxI=; b=ufAR/6BQI3io+9
	Z2+EiYZiTxORbK1AKM+zaMVf/PRYL5sEJBcCAZSp+xV9gk9QSL+a+w8++DGLMJuShTKXoF4Tw7Q+P
	x+aBnOcxL8+g0uwrVvWIgBxzuRJmGHqwOxvODaBd4wG0AryvbwNZgymoUR48wPs484tlpZkTJdEsF
	O3xil11Yzlmwnb2rKMUF9TE61d7GcOUlvYy+bcuT4pS0bfGlUtBP/B6zay1hzIekLnbnPnRhkMkzT
	gX2Rw5LYPZILXTyKAELE2V5XJO7WczWWzBUT1u/bVKyg/GCI+u8yl4yHqZbjtFeGZJLXuIZgwl3V6
	cuVoxi2miA1qwmQ39pXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIo4j-009YUS-LV; Fri, 20 Jan 2023 09:52:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pInhV-009N0G-5t; Fri, 20 Jan 2023 09:28:46 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pInhK-0002aV-GZ; Fri, 20 Jan 2023 10:28:34 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Michael Tretter <m.tretter@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Michael Tretter <m.tretter@pengutronix.de>
Subject:  Re: [PATCH RESEND 1/2] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3568-rga
Date: Fri, 20 Jan 2023 10:28:33 +0100
Message-ID: <1938419.usQuhbGJ8B@diego>
In-Reply-To: <20230119-rk3568-rga-v1-1-43d4d14365e6@pengutronix.de>
References:  <20230119-rk3568-rga-v1-0-43d4d14365e6@pengutronix.de>
 <20230119-rk3568-rga-v1-1-43d4d14365e6@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_012845_264033_D072AB13 
X-CRM114-Status: GOOD (  20.89  )
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

Am Freitag, 20. Januar 2023, 10:14:21 CET schrieb Michael Tretter:
> Add a new compatible for the rk3568 Rockchip SoC, which also features an
> RGA, which is called RGA2 in the TRM Part2. It is the same core as used
> on the rk3288, which documents the same RGA2.
> 
> Specify a new compatible for the rk3568 to be able to handle unknown
> SoC-specific differences in the driver.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

@media people: I'd guess this should go through the media-tree, while I
would pick the devicetree patch.

I can also apply this binding patch, but would need an Ack from the
media-side for it.

Thanks
Heiko

> ---
>  Documentation/devicetree/bindings/media/rockchip-rga.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> index dd645ddccb07..ea2342222408 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> @@ -21,7 +21,9 @@ properties:
>        - const: rockchip,rk3288-rga
>        - const: rockchip,rk3399-rga
>        - items:
> -          - const: rockchip,rk3228-rga
> +          - enum:
> +              - rockchip,rk3228-rga
> +              - rockchip,rk3568-rga
>            - const: rockchip,rk3288-rga
>  
>    reg:
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
