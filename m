Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2135ACCF9F8
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Nov 2025 14:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEuh3HsALjUMRAYUPzEEOWUKCbIVUnsUph1Mqx3xS4A=; b=MUouCCpevJF+sW
	g6zZfLtUx6jUca/P7qfA9nX1SHqXRm9UZOyvKnBfVLCoFMXZueOqaunfBAlZWM3/BivCicx60j7Gp
	ikmuwtRdcyQnSjsI4NjyRF+FHzfls9kOnPonPBjan8QaEHO+shLejxDR/e28KY8YxiggOnwBi4/ac
	70wghogTHH9gUVgiriD2VlTrm4qwJepZZMBSptK/LpuHzxqpk0pD9gIyuthuXSL/KuPKvyDlvc8Zg
	/VNtLKsiTxdt97KCatDHHpCOskGkZDkOOIhecXyiar6QCHc+l3k+6a+NsrbuxwX/SZCuL5eSDDoWG
	XGqMvQ0lhWfdUrik5irw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNUu-0000000HVUC-2nPE;
	Fri, 07 Nov 2025 14:31:28 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNUs-0000000HVTF-2oSh
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 14:31:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1762525886;
 bh=dBnEo9kQFWn16Gia7CBsD427l5/li0reZ07Ety+v/ps=;
 b=fhUg4Gj+izK5OnhZqunf0VJZ8C8ao9Df5aSejlUJM6w89icFHhr0J7ggRFixtaVW5QkPZQOjJ
 wpv4+ZHUuaNKNOKV4ZbCKSQUazPie1k31z5NP0Z0TdKTScXGLmy6E/NP9BiWllraAfRsaP5ceFL
 /NOWBcEW1M0gKAtZywzP/BI/8NEncLw873goZewK5kWbMWNl6vMKMsrvWGw+wsclZyBZdHnjH6L
 ivFKA9hHH4EIvpjXI1zcGdqKi0eRS82hjwetfSpjHezko/sdyNik8deer8ru34o70+pXVuj44Up
 ofL8x8+4CSwP56c2XwePvmpe151Z4jPMcm/PzJlfS/Cw==
X-Forward-Email-ID: 690e02ab07551ffa40a0e268
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.4.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <3be7a6e4-4025-42b4-a73f-a9d05e64191d@kwiboo.se>
Date: Fri, 7 Nov 2025 15:31:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] dt-bindings: clock, reset: Add support for rv1126b
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, sugar.zhang@rock-chips.com,
 heiko@sntech.de, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 huangtao@rock-chips.com, finley.xiao@rock-chips.com,
 Conor Dooley <conor.dooley@microchip.com>
References: <20251104030633.2721038-1-zhangqing@rock-chips.com>
 <20251104030633.2721038-3-zhangqing@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20251104030633.2721038-3-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_063126_744949_010C18BA 
X-CRM114-Status: GOOD (  13.26  )
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

Hi Elaine,

On 11/4/2025 4:06 AM, Elaine Zhang wrote:
> Add clock and reset ID defines for rv1126b.
> Also add documentation for the rv1126b CRU core.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../bindings/clock/rockchip,rv1126b-cru.yaml  |  52 +++
>  .../dt-bindings/clock/rockchip,rv1126b-cru.h  | 392 +++++++++++++++++
>  .../dt-bindings/reset/rockchip,rv1126b-cru.h  | 405 ++++++++++++++++++
>  3 files changed, 849 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126b-cru.yaml
>  create mode 100644 include/dt-bindings/clock/rockchip,rv1126b-cru.h
>  create mode 100644 include/dt-bindings/reset/rockchip,rv1126b-cru.h

[snip]

> diff --git a/include/dt-bindings/clock/rockchip,rv1126b-cru.h b/include/dt-bindings/clock/rockchip,rv1126b-cru.h
> new file mode 100644
> index 000000000000..d6040058c21f
> --- /dev/null
> +++ b/include/dt-bindings/clock/rockchip,rv1126b-cru.h
> @@ -0,0 +1,392 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
> +/*
> + * Copyright (c) 2025 Rockchip Electronics Co., Ltd.
> + * Author: Elaine Zhang <zhangqing@rock-chips.com>
> + */
> +
> +#ifndef _DT_BINDINGS_CLK_ROCKCHIP_RV1126B_H
> +#define _DT_BINDINGS_CLK_ROCKCHIP_RV1126B_H
> +
> +/* pll clocks */
> +#define PLL_GPLL				1

The clock indices should typically start at 0 not 1.

[snip]

> +#define HCLK_RKRNG_NS				362
> +#define HCLK_RKRNG_S_NS				363
> +#define CLK_AISP_PLL_SRC			364
> +
> +/* secure clks */
> +#define CLK_USER_OTPC_S				400

And the indices should typically not contain any jumps in numbers.

Regards,
Jonas

> +#define CLK_SBPI_OTPC_S				401
> +#define PCLK_OTPC_S				402
> +#define PCLK_KEY_READER_S			403
> +#define HCLK_KL_RKCE_S				404
> +#define HCLK_RKCE_S				405
> +#define PCLK_WDT_S				406
> +#define TCLK_WDT_S				407
> +#define CLK_STIMER0				408
> +#define CLK_STIMER1				409
> +#define PLK_STIMER				410
> +#define HCLK_RKRNG_S				411
> +#define CLK_PKA_RKCE_S				412
> +#define ACLK_RKCE_S				413
> +
> +#endif

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
