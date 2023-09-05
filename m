Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0A0EC83F3E
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Sep 2023 09:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvApCCltucCwTyHbv9hlTpSdebFEk3fqyDueiCZCNhs=; b=JXVL5TiphWpU2q
	gZrIq02ZVurmJdNCer51G3B9mzTk0inYXJvx5ZWDKYCXJkrw6hCoqh/E/bde1AUKUQx7zRIfm2bum
	fX8oO3Mf74Qvaicn10kobfT9q20D7PxKMrwU6rS0ZWTu+MlH3XVDWkAutLDfRPl4mXMTfpBWRpQSQ
	0eyz/zMjmUhSQtB7bJIlnIoFi5Ev4/RzPWFvPAOYRZMw+FlvpbgUmeaFHXiLqR3UYZO2PccB9iW/c
	WOCge7k8D0xOWjU9PzI3ecOcB/hG4CLTW1wfPt/23CO1LK0OwS1frfQwIJfTjVe2XGvIvWmhNDShj
	o64pRKoS6MrEwAkETKeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdRy9-005bZq-2w;
	Tue, 05 Sep 2023 09:03:33 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdRy6-005bYd-1L;
	Tue, 05 Sep 2023 09:03:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 573A011FB;
	Tue,  5 Sep 2023 02:04:05 -0700 (PDT)
Received: from [10.57.5.181] (unknown [10.57.5.181])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 578893F7F4;
	Tue,  5 Sep 2023 02:03:25 -0700 (PDT)
Message-ID: <b4017947-9e16-7d97-a7b1-3e6964a1f7a9@arm.com>
Date: Tue, 5 Sep 2023 10:03:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: rockchip: Add io domain
 properties
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, kernel@pengutronix.de,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-3-s.hauer@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230904115816.1237684-3-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_020330_571164_29C4762C 
X-CRM114-Status: GOOD (  26.30  )
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

On 2023-09-04 12:58, Sascha Hauer wrote:
> Add rockchip,io-domains property to the Rockchip pinctrl driver. This
> list of phandles points to the IO domain device(s) the pins of the
> pinctrl driver are supplied from.
> 
> Also a rockchip,io-domain-boot-on property is added to pin groups
> which can be used for pin groups which themselves are needed to access
> the regulators an IO domain is driven from.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   .../bindings/pinctrl/rockchip,pinctrl.yaml          | 13 ++++++++++++-
>   1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> index 10c335efe619e..92075419d29cf 100644
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> @@ -62,6 +62,11 @@ properties:
>         Required for at least rk3188 and rk3288. On the rk3368 this should
>         point to the PMUGRF syscon.
>   
> +  rockchip,io-domains:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandles to io domains
> +
>     "#address-cells":
>       enum: [1, 2]
>   
> @@ -137,7 +142,13 @@ additionalProperties:
>               - description:
>                   The phandle of a node contains the generic pinconfig options
>                   to use as described in pinctrl-bindings.txt.
> -
> +      rockchip,io-domain-boot-on:

I don't think "on" is a particularly descriptive or useful property name 
for something that has no "off" state. Furthermore it's no help at all 
if the DT consumer *is* the bootloader that's expected to configure this 
in the first place. IMO it would seem a lot more sensible to have an 
integer (or enum) property which describes the actual value for the 
initial I/O domain setting. Then Linux can choose to assume the presence 
of the property at all implies that the bootloader should have set it up 
already, but also has the option of actively enforcing it as well if we 
want to.

> +        type: boolean
> +        description:
> +          If true assume that the io domain needed for this pin group has been
> +          configured correctly by the bootloader. This is needed to break cyclic
> +          dependencies introduced when a io domain needs a regulator that can be
> +          accessed through pins configured here.

This is describing a Linux implementation detail, not the binding 
itself. There's no technical reason a DT consumer couldn't already 
figure this much out from the existing topology (by observing that the 
pinctrl consumer is a grandparent of the I/O domain's supply).

Thanks,
Robin.

>   examples:
>     - |
>       #include <dt-bindings/interrupt-controller/arm-gic.h>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
