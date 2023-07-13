Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B639C001DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 14:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYUV6IDfjgcZRtKtRqdpFVPOsYfphPb0eis6k2ml2E8=; b=ysj/igDBz/l6DX
	gWQhaYmzusm3OJDKmSbbHyUNMI4Ga1iWcO4WwaPSs+VPOU+f3SiDhBSl/Dk/4rTHA4s8NmSosObf1
	cEZloUBkW6Pkh2FvLqFZRP+XHZ2k4NriTt6KL1OhknY8qO9bG1R1NmiRIDzhLxIXB+R+eLmE8qACL
	V72GrL51OlGpZVGAjiyTFdNDi4KUl3sCx/7tAzaiSXFF1rbAwBGksMoRC8SCvfl2zAFZQPlIj/Cv+
	1S+9CtR7jxOamTBmRlosqUWKp6zWsIummOM2HjItF+rjQRpb7H2kMkT5DhNkY/c7SoOZByJJE3mjZ
	PLHIY3uojnnMujg/CBjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxix-003dTU-1o;
	Thu, 13 Jul 2023 14:55:19 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxiu-003dSR-2c
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jul 2023 14:55:18 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-cabf1dbafc4so761096276.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jul 2023 07:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689260114; x=1691852114;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yxJReeu3wFsDEIoI+Y5EvxsHxuUj1xvYudc1q2Ogc0w=;
        b=ond3ynwi15WishNDTT+qMQTWpC87sA93J5YINYb/UQxMxZtD2l81f0u58lE6VXbpVk
         m2eTgHMocycV9opUSB5jzMXo+QW9SIxbmRfv10fDXTK8UDHm+sskKWUAfchlIaw4ZYiZ
         0+f7et0pRsFrjwhnRPex2rRL6iL6jfER52dp3tUGBJBYUoYrqYSq4j+SaQQgN0gUzSMJ
         p0u3HaguYLLz+bv2OZZ2NiBHKAjs6dHJ/X8v7bwJFIBwQbrewTqiEegnqlPaWnASV/Kt
         zASovpdUT8U93pGjLTEtpB10OsfBHfnxvuG2RF35LhZmgSrefjNNE0gH/J/BZd5QKk9D
         Wb+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689260114; x=1691852114;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yxJReeu3wFsDEIoI+Y5EvxsHxuUj1xvYudc1q2Ogc0w=;
        b=as9arj3qzFduX2ypmYrj53SuAfRiGCi5a79rCw+IS1lEMLFtbsQatJwCzzNTJDdcHe
         Mo+4t2a5UsV0O92HDMXYHYBUsnZ7WmIxT4qforoMrR+jE2x8qrRk7QVxECd2Q2OFezDB
         WQTJmvmGt95FqVUpdqg90tQmX8DbIkIGdqhIo3dJ/CcGDvuiiTDOCFxNX71y+Zj+3Xs0
         zEe7FegciOXwFFXA+f7sg1MsjOh7y/casrK2ug1+JJSgGpc47jaPmkRTUb5ZYlTGLPTL
         Mf0awXeesty8l5lxqzJPWeb3FOXSApNqWPujVnENK3uad5lzBwBUjgAVQfiqGxTOGGbL
         PLAw==
X-Gm-Message-State: ABy/qLZJriPxKXxNgp6IDNn5zRl7VSCr687GngwUviMqxYMCPT3RdmHJ
	W9hpFV0jQQDbQUClCvTAKPsUKd4X4ZF1zuoYeTmgvA==
X-Google-Smtp-Source: APBJJlG0ILTrJectunWl7ebCGzJocWBo/HnGO1eQZkCt18ndRK/0e8H6CL/4bTNR20NvglKrx3f/qqOh55pLa3q9E78=
X-Received: by 2002:a25:c0c8:0:b0:c4f:43d7:7daf with SMTP id
 c191-20020a25c0c8000000b00c4f43d77dafmr1442561ybf.1.1689260114481; Thu, 13
 Jul 2023 07:55:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230403193250.108693-1-sebastian.reichel@collabora.com> <20230403193250.108693-2-sebastian.reichel@collabora.com>
In-Reply-To: <20230403193250.108693-2-sebastian.reichel@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Thu, 13 Jul 2023 20:25:03 +0530
Message-ID: <CA+VMnFz4USPcXmQMyUB9n5EVmvQrJARDvnpO7iBrXZ8q2xcyAA@mail.gmail.com>
Subject: Re: [PATCHv2 1/2] clk: rockchip: rk3588: make gate linked clocks
 ignore unused
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Peter Geis <pgwipeout@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Vincent Legoll <vincent.legoll@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_075516_865248_471D2008 
X-CRM114-Status: GOOD (  36.38  )
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

Hi Sebastian,

On Tue, 4 Apr 2023 at 01:03, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> RK3588 has a couple of hardware blocks called Native Interface Unit
> (NIU) that gate the clocks to devices behind them. Effectively this
> means that some clocks require two parent clocks being enabled.
> Downstream implemented this by using a separate clock driver
> ("clk-link") for them, which enables the second clock using PM
> framework.
>
> In the upstream kernel we are currently missing support for the second
> parent. The information about it is in the GATE_LINK() macro as
> linkname, but that is not used. Thus the second parent clock is not
> properly enabled. So far this did not really matter, since these clocks
> are mostly required for the more advanced IP blocks, that are not yet
> supported upstream. As this is about to change we need a fix. There
> are three options available:
>
> 1. Properly implement support for having two parent clocks in the
>    clock framework.
> 2. Mark the affected clocks CLK_IGNORE_UNUSED, so that they are not
>    disabled. This wastes some power, but keeps the hack contained
>    within the clock driver. Going from this to the first solution
>    is easy once that has been implemented.
> 3. Enabling the extra clock in the consumer driver. This leaks some
>    implementation details into DT.
>
> This patch implements the second option as an intermediate solution
> until the first one is available. I used an alias for CLK_IS_CRITICAL,
> so that it's easy to see which clocks are not really critical once
> the clock framework supports a better way to implement this.
>
> Tested-by: Vincent Legoll <vincent.legoll@gmail.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/clk/rockchip/clk-rk3588.c | 42 +++++++++++++++++++------------
>  1 file changed, 26 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
> index b7ce3fbd6fa6..6994165e0395 100644
> --- a/drivers/clk/rockchip/clk-rk3588.c
> +++ b/drivers/clk/rockchip/clk-rk3588.c
> @@ -13,15 +13,25 @@
>  #include "clk.h"
>
>  /*
> - * GATE with additional linked clock. Downstream enables the linked clock
> - * (via runtime PM) whenever the gate is enabled. The downstream implementation
> - * does this via separate clock nodes for each of the linked gate clocks,
> - * which leaks parts of the clock tree into DT. It is unclear why this is
> - * actually needed and things work without it for simple use cases. Thus
> - * the linked clock is ignored for now.
> + * Recent Rockchip SoCs have a new hardware block called Native Interface
> + * Unit (NIU), which gates clocks to devices behind them. These effectively
> + * need two parent clocks.
> + *
> + * Downstream enables the linked clock via runtime PM whenever the gate is
> + * enabled. This implementation uses separate clock nodes for each of the
> + * linked gate clocks, which leaks parts of the clock tree into DT.
> + *
> + * The GATE_LINK macro instead takes the second parent via 'linkname', but
> + * ignores the information. Once the clock framework is ready to handle it, the
> + * information should be passed on here. But since these clocks are required to
> + * access multiple relevant IP blocks, such as PCIe or USB, we mark all linked
> + * clocks critical until a better solution is available. This will waste some
> + * power, but avoids leaking implementation details into DT or hanging the
> + * system.
>   */

Does it mean the clk-link topology in the downstream kernel can be
reused the same as normal clock notation?

For example, I'm trying to add HCLK_VO1 directly to VO1 syscon instead
of routing to pclk_vo1_grf(done downstream)
      vo1_grf: syscon@fd5a8000 {
               compatible = "rockchip,rk3588-vo-grf", "syscon";
               reg = <0x0 0xfd5a8000 0x0 0x100>;
             clocks = <&cru HCLK_VO1>;
      };

This seems breaking syscon for vo1_grf and observed a bus error while
accessing regmap. I remember in one of the RKDC discussion that the
double parenting of these clocks is mandatory while accessing
associated IP blocks. Any thoughts?

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
