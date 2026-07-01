Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A40CBC43602
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 01:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvWfb25h9CJgx08j2A1oOHJSKOD2pEW4MR9+EB5ZLJI=; b=qd8ixuSQHI+F/6
	QaMpw9lZiuTFLyuaYuPXK4UEObNzwIPhDgySl1YkGJdWkU7VsqdCUUBT7BVQwD/+OP2ZxOnxmcoKf
	4zA7UtA+RGXMiTEUocRPf8Lbm95r5aBPs8q8iIqmG6Zd9UgyLZaeanMMv1VYb4jlOGUsmNVBKXSzX
	+nYVcKzBlWCWBsLuydlYDz1+OMBrZkg3ykTR4gQl515VfUi1jEFJMkK7cFi7Mw9sp4qTXd/Iz75Uk
	gRGI07PzRYiIdpCd6VsPY26wSR7u6g/IXOH+DMTy2t1NGQ5L14F3W7/I8uXXsrXQBNnuG4jRK3gZK
	UreSe61FcKBYav6cFATA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wek1T-00000000Sqf-00iF;
	Wed, 01 Jul 2026 01:45:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wek1R-00000000SqM-0qvv
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 01:45:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6D62D6001D;
	Wed,  1 Jul 2026 01:45:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7AC61F000E9;
	Wed,  1 Jul 2026 01:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782870350;
	bh=vS2FCRo1N9v6ZdiYKY8wR+oYYGUC31EvaCyaf5bbLwQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=ngZx6fJc90korLaSesRc5fXUEQdYVY96saS7Sdoy0ukfkgNjOWFhCePCriBcqgxt9
	 zyDbAGB+SYeBT7P5rdmPoJ3CEJsaoF+c4hUmXkZGNvjN2ZJAgCmoOKraHsiT7EqH5z
	 ZMIeCLXFgffbw90ETamDvEvKgchELWLkfovLNbU8oDssJswukR4c20FOquGY+WdYJb
	 4ks4kqwVM1VDuNGZMykpCCEZg600OwObI+WCOb+PjG+WR2cLHhaHyKEHOZqVW5L1og
	 wPCHYupCBnV5AXE+XUR7vSlWI+53ynh9ECbUlpXhhIJiqbfaXGc2vbvVf0l3h02UMY
	 AamL/3nDVDShA==
Date: Wed, 1 Jul 2026 02:45:45 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH V15 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Message-ID: <20260701024532.3ad3712e@jic23-huawei>
In-Reply-To: <20260626161230.93069-3-macroalpha82@gmail.com>
References: <20260626161230.93069-1-macroalpha82@gmail.com>
	<20260626161230.93069-3-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Message-ID: <20260701014545.CTZ5wX9OAAkKDWRJtY7lJRUJnaFoPqLcFifm-f7Vcnk@z>

On Fri, 26 Jun 2026 11:12:23 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the ICM42607 and ICM42607P inertial measurement unit.
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout. An interrupt is not required for this
> specific implementation and is not present on my test hardware
> (a 42607p).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

A follow up on that sashiko thing from v14.
I think the requirement for interrupts is nonsense and it should not
be there for the other devices supported by the binding either.

> ---
>  .../bindings/iio/imu/invensense,icm42600.yaml  | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> index 9b2af104f186..81b6e85decd5 100644
> --- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> +++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> @@ -30,6 +30,8 @@ properties:
>        - invensense,icm42600
>        - invensense,icm42602
>        - invensense,icm42605
> +      - invensense,icm42607
> +      - invensense,icm42607p
>        - invensense,icm42622
>        - invensense,icm42631
>        - invensense,icm42686
> @@ -67,10 +69,24 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - interrupts
>  
>  allOf:
>    - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - invensense,icm42600
> +              - invensense,icm42602
> +              - invensense,icm42605
> +              - invensense,icm42622
> +              - invensense,icm42631
> +              - invensense,icm42686
> +              - invensense,icm42688
> +    then:
> +      required:
> +        - interrupts

I missed this entirely until the sashiko related discussion on v14.
interrupts are almost never required for an IIO device. The only exception
I can think of is a device that only does events - and has no usecase without
interrupts, or where the interrupt is the signal - I think we have one device
where that is true.

So I think we can just drop this if block and never require interrupts.
It doesn't matter that the other driver does - that is not something we
need to reflect in the binding.

Jonathan


>  
>  unevaluatedProperties: false
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
