Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9688C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 12:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgAWwI+tgw3oecTHBWbICQcBxctZypyeKcwRoi+hubA=; b=ZEErW0pUV/MfOJ
	B4+GxZ16IFdwzBWuJZRVQxSqcmU5vygQGusSQI8y+diWLVfq/1oHan3MbveDJPhfZq5vt0hOEbQ9S
	WzvYOgMkX7/cmjvSkDXX9Re1y1k5oqbHQFZ5CImRzyM6Mr03jtQfyR6Ucw6vZCq3CtKuILoU2Hqws
	Y75VyOPd3xMjS5fg/L3pit8V+KqYdFnkaTx+3ZO4b9rK/PX8FsRqVcMYrKV4tiVnuO35JWIhcDNCJ
	GlqbIiZHd0EtbnF377jQWTofgQb//JMCpGY/hMVypRda0GXGMTkb/V+IZe6GpDQkto5aJmxYUkpaS
	CrsB/7p9J7hjTItDk4pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRv6J-008To0-BG; Wed, 09 Mar 2022 12:07:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRv5v-008TcK-LZ; Wed, 09 Mar 2022 12:07:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AAD71688;
 Wed,  9 Mar 2022 04:07:06 -0800 (PST)
Received: from [10.57.41.254] (unknown [10.57.41.254])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A75E3FA4D;
 Wed,  9 Mar 2022 04:07:04 -0800 (PST)
Message-ID: <7aa79c15-a758-1e9d-2e53-6dd03d4611b7@arm.com>
Date: Wed, 9 Mar 2022 12:06:59 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v7 11/24] dt-bindings: display: rockchip: dw-hdmi: Add
 additional clock
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh@kernel.org>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-12-s.hauer@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220225075150.2729401-12-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_040707_837197_09B3E908 
X-CRM114-Status: GOOD (  15.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 2022-02-25 07:51, Sascha Hauer wrote:
> The rk3568 HDMI has an additional clock that needs to be enabled for the
> HDMI controller to work. The purpose of that clock is not clear. It is
> named "hclk" in the downstream driver, so use the same name.

Further to the clarification of the underlying purpose on the other 
thread, I suggest we call the new clock "niu" and describe it as 
something like "Additional clock required to ungate the bus interface on 
certain SoCs".

Cheers,
Robin.

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
> 
> Notes:
>      Changes since v4:
>      - Add Robs Ack
> 
>   .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 38ebb69830287..67a76f51637a7 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -44,12 +44,13 @@ properties:
>       items:
>         - {}
>         - {}
> -      # The next three clocks are all optional, but shall be specified in this
> +      # The next four clocks are all optional, but shall be specified in this
>         # order when present.
>         - description: The HDMI CEC controller main clock
>         - description: Power for GRF IO
>         - description: External clock for some HDMI PHY (old clock name, deprecated)
>         - description: External clock for some HDMI PHY (new name)
> +      - description: hclk
>   
>     clock-names:
>       minItems: 2
> @@ -61,13 +62,17 @@ properties:
>             - grf
>             - vpll
>             - ref
> +          - hclk
>         - enum:
>             - grf
>             - vpll
>             - ref
> +          - hclk
>         - enum:
>             - vpll
>             - ref
> +          - hclk
> +      - const: hclk
>   
>     ddc-i2c-bus:
>       $ref: /schemas/types.yaml#/definitions/phandle

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
