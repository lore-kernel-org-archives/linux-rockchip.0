Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 838A1CD98F2
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jun 2026 17:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qq3YYvCyLrgyUolKK1pbR2emRgHibkek61PKZKOucmg=; b=W9lGvwXKGQGJc8
	v5RGiOwXLgWfeM7OOktpgGN+GunOgAIqoWCYNvQj5CpKgzpY4zwGOP9oy8aZCYSdMwZZTb8MT6ALh
	Rxibu+XPkEAXLYRO2Q1khnmnzrnKjeZjs2Av1sFndKFLdbgMqz4daf+kjvI1CL4FXgR9NM25ndOae
	BRiRtOHcPhmvQejK/7l+NFk3RylgtYMynTWrsMH00C9O2Ni3OdR2aerxY47al8CUn7FiLjzREQwoe
	5jB3wRCrKKU/cNDBbdunV3koFJX1wACU3d1DlzDV3qE5+uPNsSD3xRKZJwu1tnird3Jr1SCSJKfJV
	mv6jQPMdgnkOZPlfWKaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbLoJ-0000000453g-1YUE;
	Sun, 21 Jun 2026 17:18:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbLoH-0000000453Z-3XSv
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Jun 2026 17:18:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 859F460051;
	Sun, 21 Jun 2026 17:18:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E6B11F00A3A;
	Sun, 21 Jun 2026 17:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782062295;
	bh=OGWHEfZZb2DOcBU3QFV2hDPwohTz7bPGX7NOarWIQ8k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=hUiDDge9qOtiRkbOIMHx6VZGGg1bjX1POvsJq5bafa4MzrdJ0TTNVnYRWnmLnriAp
	 FzEUuXJ7IGBsoUdnxzvNTo6PZKH9v01GsruGsn0oaa0SXy3HkdGGkqrf9olS1ghDxK
	 BsRTASY1gJ/wc4b7KrVatmGFMFr2Pq1ku90G0gAJeVwDz1k1lQLutzDIJ1E7kUzy20
	 q40Drb1ovZjra8mDCP4Ni4A45jzxSHxbKJwqOV9eG036TX0mLitjYxRcpG9MJR76vs
	 WMlLVMIJVokfA//YLpVHgILnM/Xt+in0Ls7eA9Yt/ElcpUS1TwzcY/4Okk4hGH0++O
	 vFOsONABDzzvg==
Date: Sun, 21 Jun 2026 18:18:04 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH V13 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Message-ID: <20260621181804.27b44942@jic23-huawei>
In-Reply-To: <20260615172554.160910-3-macroalpha82@gmail.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
	<20260615172554.160910-3-macroalpha82@gmail.com>
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

On Mon, 15 Jun 2026 12:25:45 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the ICM42607 and ICM42607P inertial measurement unit.
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout. The driver does not require an
> interrupt for these specific chip revisions.

This talks about how they are different from other parts already
supported, but I think we need something on how they are different
from each other. 

I'm kind of assuming one is a subset of the other? If that is the
case the ideal might be the more complex part falling back to the
simpler one.

Thanks,

Jonathan


> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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
>  
>  unevaluatedProperties: false
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
