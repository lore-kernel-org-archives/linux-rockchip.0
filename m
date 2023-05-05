Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5F85C77B7F
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 16:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ug7x6131Q1lUy9DJh9yPdsMGLfLh/Lkg8vrdznKm0nw=; b=K01WcOol86dCIG
	4ndg2CzkBin0p7sJTZ37ckIiJdlEYWBPyuuTibF8St01DF6sTU6Av7wzwlFQ7RXOnBP6mH5JN9bk8
	Rn3CxK4JWvvmwCeudtoT7NIQW3AJOGQAomT/OMh2eBAoq/ikMOEraathXjTbjHn63AY8K6SBZWg5t
	7AYeWGIiRDsCAafS6IpigNIkNuITl3OuwJxRokvd46JcLFfuEdjhe0iiGKBBD5Py/KV5tGAgNAd6g
	BSM5qvgNXKFSvRFI1T8O2O4ZbugsFWzXc7UInuxFDmElOhPnXtUQxaTdPeVZc51VEdVS3xBAgMAAE
	zJ0NjX/UxVd4CohIsEGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puyJC-00BIrK-07;
	Fri, 05 May 2023 16:29:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puyJ8-00BIqC-0Q;
	Fri, 05 May 2023 16:29:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0E93763F2C;
	Fri,  5 May 2023 16:29:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C9E2C433D2;
	Fri,  5 May 2023 16:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683304160;
	bh=o5dKlszTT+dIM41KFpp9k+CNm0HI7ObWAaaIMhE6DnM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fxWkkcz53nv/Qt2uYZVansgTtOJDzYI/GJYVecMLQ/vcD9wQhIrMWAbG9HXT4Denr
	 YsP2x1kPTMl34eIkUTJyKT6HJouqU1S/sXbtw7RB36Dptsn4AKFht4+qsqMgkMYXO4
	 IGjZoMFnWgLH2lLizyRQ61iM8GWrbNbdmPVhpZWlP811Y8X/BEAizevszPJ4wkkcV7
	 nACnMMjC0YjUZ+oJxk51LuJHUcCeZcxrxlf45teXfyieOZNVOe3XKoNfv2UN3R3K1U
	 xc9OhQDO5hWBRByv8/S5dHuEjLwlmlqD4ihVxpcHa3Fj7W9cn+UKX9XE07u4PxYS/Q
	 ubG1AH0d4QS9w==
Message-ID: <c0ee4c52-8d78-992a-22b0-911038a62b0e@kernel.org>
Date: Fri, 5 May 2023 18:29:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v4 21/21] dt-bindings: devfreq: event: convert Rockchip
 DFI binding to yaml
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-22-s.hauer@pengutronix.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230505113856.463650-22-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_092922_261246_6D6FD979 
X-CRM114-Status: GOOD (  22.88  )
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

On 05/05/2023 13:38, Sascha Hauer wrote:
> Convert the Rockchip DFI binding to yaml. While at it add the newly
> supported rk3568-dfi to the binding.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

You missed at least DT list (maybe more), so this won't be tested.
Please resend and include all necessary entries.

> ---
>  .../bindings/devfreq/event/rockchip-dfi.txt   | 18 ---------
>  .../bindings/devfreq/event/rockchip-dfi.yaml  | 39 +++++++++++++++++++

Filename matching compatibles style.

>  2 files changed, 39 insertions(+), 18 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
>  create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt b/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
> deleted file mode 100644
> index 148191b0fc158..0000000000000
> --- a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -
> -* Rockchip rk3399 DFI device
> -
> -Required properties:
> -- compatible: Must be "rockchip,rk3399-dfi".
> -- reg: physical base address of each DFI and length of memory mapped region
> -- rockchip,pmu: phandle to the syscon managing the "pmu general register files"
> -- clocks: phandles for clock specified in "clock-names" property
> -- clock-names : the name of clock used by the DFI, must be "pclk_ddr_mon";
> -
> -Example:
> -	dfi: dfi@ff630000 {
> -		compatible = "rockchip,rk3399-dfi";
> -		reg = <0x00 0xff630000 0x00 0x4000>;
> -		rockchip,pmu = <&pmugrf>;
> -		clocks = <&cru PCLK_DDR_MON>;
> -		clock-names = "pclk_ddr_mon";
> -	};
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml
> new file mode 100644
> index 0000000000000..c0ef02a2d262b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml
> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/devfreq/event/rockchip-dfi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip DFI
> +
> +maintainers:
> +  - Sascha Hauer <s.hauer@pengutronix.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rk3399-dfi
> +      - rk3568-dfi
> +      - rk3588-dfi

These are not real compatibles.

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
