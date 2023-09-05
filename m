Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23945C83F3E
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Sep 2023 18:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRPwVw7F9oozqvh+XgT3ANhCxufZ3XfHP+jJJ7cijg4=; b=1DB/8PSDIbsrdA
	6j6jsCNrLnnEqXh5GIhE/715e+CK4d/GNIXHc4HAe355FNlhenOrGyP/zuJDOBQs1SOna0/Ej2wNc
	9goJRfKvczI8VRe5W4CysYmXlGQMd7sXpH9xIDpb2+szUN53SfL4JmnU73ngnjGlwePrLSZK1Rso8
	ZDSugxXJZJhCZxf8WurWrSW0AALUgGYk3xNfnZKmJATHRQg1AH0WDXDO2pnDi1Zq1mdt5+o3e8EbJ
	nKwmvLWSlFFtYGUnt0TvG3EKeojSUwuYbcam3Za4M10sssMmGW6WuQurNHZu0Ikp+IF5pm8G8BtLp
	oo9sXf4nuJKUxrVGX9ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdaZ1-006VtK-19;
	Tue, 05 Sep 2023 18:14:11 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdaYx-006Vs7-1J;
	Tue, 05 Sep 2023 18:14:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0E19AB81622;
	Tue,  5 Sep 2023 18:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8772EC433A9;
	Tue,  5 Sep 2023 18:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693937644;
	bh=EukprGs63gcH1dkK4J6/kt9pRzUKb0FoRiSL62w+Z4Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BQBHuJ/0XILzBQfiFc0erYNxhwXt0bRPrbRayhVpe9tFS5jPAHw6euTjUapt1QZr0
	 s+lbPe1OqLlGHh+oDRtNNmhkmppsvJCiT80SiIrhUF3IQ455OtcTcXaCLJNUT8y9HS
	 a2m4JQpE4+f+y7XieUiHU33xO295Wtj957ahgX4xbViGCRA9rP5G/9POuQXyggElFy
	 OjyN9lC38dv1QP4EX/LNx7Q3AgIwusoXpjQgauCiop4Gb4l+lyJvh5ipkOhA77gi5E
	 kcWa2Q2zacJTRY4HxA2MPOhmU97AOBwaujrR8ZDzwD/o1n70tLmGSmYtHhbZFsnkWd
	 Gd+sQMphnu1Ww==
Received: (nullmailer pid 3741008 invoked by uid 1000);
	Tue, 05 Sep 2023 18:14:02 -0000
Date: Tue, 5 Sep 2023 13:14:02 -0500
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, kernel@pengutronix.de, Quentin Schulz <quentin.schulz@theobroma-systems.com>, Michael Riesch <michael.riesch@wolfvision.net>, Linus Walleij <linus.walleij@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: rockchip: Add io domain
 properties
Message-ID: <20230905181402.GA3673113-robh@kernel.org>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230904115816.1237684-3-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_111407_738749_B88E8374 
X-CRM114-Status: GOOD (  23.85  )
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

On Mon, Sep 04, 2023 at 01:58:15PM +0200, Sascha Hauer wrote:
> Add rockchip,io-domains property to the Rockchip pinctrl driver. This
> list of phandles points to the IO domain device(s) the pins of the
> pinctrl driver are supplied from.

Is there an actual need for multiple IO devices with multiple pinctrl 
blocks? If not, you don't need a property, just lookup the IO domain 
node by compatible.

> 
> Also a rockchip,io-domain-boot-on property is added to pin groups
> which can be used for pin groups which themselves are needed to access
> the regulators an IO domain is driven from.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/pinctrl/rockchip,pinctrl.yaml          | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> index 10c335efe619e..92075419d29cf 100644
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> @@ -62,6 +62,11 @@ properties:
>        Required for at least rk3188 and rk3288. On the rk3368 this should
>        point to the PMUGRF syscon.
>  
> +  rockchip,io-domains:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandles to io domains
> +
>    "#address-cells":
>      enum: [1, 2]
>  
> @@ -137,7 +142,13 @@ additionalProperties:
>              - description:
>                  The phandle of a node contains the generic pinconfig options
>                  to use as described in pinctrl-bindings.txt.
> -
> +      rockchip,io-domain-boot-on:
> +        type: boolean
> +        description:
> +          If true assume that the io domain needed for this pin group has been
> +          configured correctly by the bootloader. This is needed to break cyclic
> +          dependencies introduced when a io domain needs a regulator that can be
> +          accessed through pins configured here.
>  examples:
>    - |
>      #include <dt-bindings/interrupt-controller/arm-gic.h>
> -- 
> 2.39.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
