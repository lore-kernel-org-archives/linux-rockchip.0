Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4579DC5472C
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Aug 2024 07:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GlE2EDoG8b1oMApwbhNn4o7y7F9m/tCp1ecGjp5mLc=; b=P1XKL17nPF6XJa
	h8JSVsx12SVIr5tLtGAetMeoT+qNZCii7IReqVp9tQiZkvcaSZqqiIuCnxlKVsUSaJj048ydVB1Ti
	6GF1lwEgWh6qlMzNreEshGPKB9JfNtoJN72xGZrfersbFZUDeEWjG+qVsL8K9ioWUVPCKVbV+PDXh
	RDLc6y3ox+fOq2qoDeYmo/AuPqNToyXkzX0q/lJG34H+MKyPQX6ME5Qr5FbT8/dekIozufMFJdZ9X
	1V/DtR9aajLKwH0FEW67bFBj9dgqVB6jnZaQUmsaWgCQ9z1rP1+EuOs5R80fFSj818C5nZwBrhXZ7
	rGqqvAdKapI4tH+ODYyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shlXD-00000001l7e-1E2j;
	Sat, 24 Aug 2024 07:50:07 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shlXA-00000001l7A-32xZ;
	Sat, 24 Aug 2024 07:50:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AE2B3A413AA;
	Sat, 24 Aug 2024 07:49:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4310FC32781;
	Sat, 24 Aug 2024 07:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724485803;
	bh=Nv0/3MgPrEAyNKOaS42IrvhRzQWnn1NPBjKVsO0g2CU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NU6FsG/Z8+3HTOXQscGhuRxz3D8QondwUnlJ5cqQVlXk5s2iGrPesO5jfCDDCpd3y
	 Alr/J03o0SqGxtuQQ2MfVJtO8tmXJTeJdx+sssHs85tNfVE1YwOsBLHQOUNcbxaaI0
	 Iz6O6vIVi6KEDKIJ+LAL9WsZ8Td29Jz96ZO9s67Q8YJ4CiFLHx9PmlG9t8qnFKtNR1
	 18Xfl0CMSj62OhXv9mQnZPl7NFlc1yQ3fT8op+1Y3QG/4HyjF+ea42jWUaP6tK4IhQ
	 7UlEmWmox5b53R5n3gCMYHTZCMRRBo48mrod0jvLR64xUYd/JvIH9xXdE2K9F8PcOq
	 QgngRgRquBnOA==
Date: Sat, 24 Aug 2024 09:49:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Andi Shyti <andi.shyti@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Lee Jones <lee@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Guenter Roeck <linux@roeck-us.net>, Chris Morgan <macromorgan@hotmail.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, Chukun Pan <amadeus@jmu.edu.cn>, 
	Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>, 
	Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>, Ondrej Jirman <megi@xff.cz>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Alexey Charkov <alchark@gmail.com>, Elon Zhang <zhangzj@rock-chips.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Liang Chen <cl@rock-chips.com>, 
	Jisheng Zhang <jszhang@kernel.org>, Jamie Iles <jamie@jamieiles.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 07/12] dt-bindings: mmc: Add support for rk3576 eMMC
Message-ID: <m5ua5jnbv4u36glqt2qrps35asuqfycxedgjrfhodi5bvs2r2h@xvy4qxt4gx74>
References: <20240823150057.56141-1-detlev.casanova@collabora.com>
 <20240823150057.56141-8-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823150057.56141-8-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_005004_917703_4B3AB3CD 
X-CRM114-Status: GOOD (  16.37  )
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

On Fri, Aug 23, 2024 at 10:52:34AM -0400, Detlev Casanova wrote:
> The device is compatible with rk3588, so add an entry for the 2
> compatibles together.
> 
> The rk3576 device has a power-domain that needs to be on for the eMMC to
> be used. Add it as a requirement.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml      | 32 +++++++++++++------
>  1 file changed, 23 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index 4d3031d9965f3..7d5e388587027 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -12,16 +12,29 @@ maintainers:
>  
>  allOf:
>    - $ref: mmc-controller.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3576-dwcmshc
> +    then:
> +      properties:
> +        power-domains:
> +          minItems: 1

Plaese move the allOf: after the required: block. It grows too much with
such if:then: and that's not the most important part of binding we need
to see first.

With above change:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
