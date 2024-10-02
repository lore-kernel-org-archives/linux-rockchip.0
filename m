Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74F6DCF6D2E
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 14:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8joLwuz51C5/s9DpqHfTDlef2951/klWKLhICux+vA=; b=giLl59guY9UvVA
	QeK6jfOkCPjpf8iTUEuQR6uK/op99VBXutIg9vNKinHxmtGl5l1YhA8HsTpX+9w5Ji10K2mUdiieG
	N/UULo/aOCMQnK8pUjduGH7yS66nXC2LTIMy0GlKNMRIe0XneYY5Jw7fyGmIXLrcoZuw+HjEucIpD
	sO9tVgycHXlc66JUFts+cxRVZSXmQ3VFipSp09JNc8ymarAK2BEFiY09aIatEOqRsDQMlyX+YnKW3
	oBFKgpL7M5iFhF7kke2NnCTWiWccF9wnaVdHI+y4ZxStBmYllbhPE4HZzf+nbTKLkeWSjLTS54qHB
	9nsL/0V3PweX5e36Tr/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sw02V-00000006JYT-13h8;
	Wed, 02 Oct 2024 14:09:15 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svzvd-00000006HOf-0GDQ
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 14:02:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 89A51339;
	Wed,  2 Oct 2024 07:02:37 -0700 (PDT)
Received: from [10.57.75.246] (unknown [10.57.75.246])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 997F33F58B;
	Wed,  2 Oct 2024 07:02:05 -0700 (PDT)
Message-ID: <2ac9bab0-2a00-44c8-bf43-2469b6d60b92@arm.com>
Date: Wed, 2 Oct 2024 15:02:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] dt-bindings: power: rockchip: add regulator
 support
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 =?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?=
 <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Chen-Yu Tsai
 <wens@csie.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, kernel@collabora.com
References: <20240919091834.83572-1-sebastian.reichel@collabora.com>
 <20240919091834.83572-5-sebastian.reichel@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20240919091834.83572-5-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_070209_185693_6E3150CF 
X-CRM114-Status: GOOD (  16.38  )
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

On 2024-09-19 10:12 am, Sebastian Reichel wrote:
> Add optional support for a voltage supply required to enable a
> power domain. The binding follows the way it is handled by the
> Mediatek binding to keep things consistent.
> 
> This will initially be used by the RK3588 GPU power domain, which
> fails to be enabled when the GPU regulator is not enabled.

Note that this applies equally to RK3399 and quite possibly others too, 
it's just that so far it's always been bodged by making the relevant 
regulator always-on (e.g. [1]).

Cheers,
Robin.

[1] https://lore.kernel.org/all/20210619121446.7802-1-knaerzche@gmail.com/

> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   .../devicetree/bindings/power/rockchip,power-controller.yaml   | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> index 0d5e999a58f1..0b4c5b174812 100644
> --- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -131,6 +131,9 @@ $defs:
>             A number of phandles to clocks that need to be enabled
>             while power domain switches state.
>   
> +      domain-supply:
> +        description: domain regulator supply.
> +
>         pm_qos:
>           $ref: /schemas/types.yaml#/definitions/phandle-array
>           items:

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
