Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F097CC52D6F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 14:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oenK3+IVyRUm7PUnMDgsbpxHSTvulu88QJcPaUWANwo=; b=4GhcsCTNHOZG6i
	iHYTExwDdW0PEUFsYxiJW7aLOilnbXKmuB4V3GsojLdaTPEAv7evfOXPyuXdDit2+7WYOXlrU+2sE
	2isNJHMs3Ac+/rcCAW9DtmXoYS+vHIrwHCESuxCvWF/UZEqeoHP83qfBUnVvCr5GPK3z6SjYhNpJg
	49UP6QWmhL9Y7IkzDN2t0zTlpzXdyxAg+sCWZ3h1bpnw78/lgb9JR65s9CU+w22z8C6uKcx43Tn8x
	rb6GYpd1AG9yusqWE8hp9El/+UtImmBPtb6KTKDsQyK/fu77X0TwjmgRiGEjZ2dhmCO78pMmKKMLu
	Am+nnMdiiGed7nLqJPMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZtNp-000000096W7-0189;
	Fri, 02 Aug 2024 14:35:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZtMH-000000096Kv-1VXD;
	Fri, 02 Aug 2024 14:35:22 +0000
Received: from i53875a76.versanet.de ([83.135.90.118] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sZtM9-0002uP-Ce; Fri, 02 Aug 2024 16:34:09 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Sugar Zhang <sugar.zhang@rock-chips.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH 2/3] clk: rockchip: Add dt-binding header for rk3576
Date: Fri, 02 Aug 2024 16:34:07 +0200
Message-ID: <4084310.iTQEcLzFEP@diego>
In-Reply-To: <20240802141816.288337-3-detlev.casanova@collabora.com>
References: <20240802141816.288337-1-detlev.casanova@collabora.com>
 <20240802141816.288337-3-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_073417_433498_8CA5A991 
X-CRM114-Status: GOOD (  20.16  )
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

Hi Detlev,

Am Freitag, 2. August 2024, 16:12:49 CEST schrieb Detlev Casanova:
> From: Elaine Zhang <zhangqing@rock-chips.com>
> 
> Add the dt-bindings header for the rk3576, that gets shared between
> the clock controller and the clock references in the dts.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../dt-bindings/clock/rockchip,rk3576-cru.h   | 1149 +++++++++++++++++
>  1 file changed, 1149 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h
> 
> diff --git a/include/dt-bindings/clock/rockchip,rk3576-cru.h b/include/dt-bindings/clock/rockchip,rk3576-cru.h
> new file mode 100644
> index 0000000000000..19d25f082dc57
> --- /dev/null
> +++ b/include/dt-bindings/clock/rockchip,rk3576-cru.h
> @@ -0,0 +1,1149 @@

> +#define CLK_NR_CLKS			(ACLK_KLAD + 1)

this needs to go please. Take a look at how Sebastian got rid of needed
that max-constant for rk3588.

[...]

> +#define SRST_H_VEPU1			1267
> +#define SRST_A_VEPU1			1268
> +#define SRST_VEPU1_CORE			1269
> +
> +/********Name=PHPPHYSOFTRST_CON00,Offset=0x8A00********/
> +#define SRST_P_PHPPHY_CRU		131073
> +#define SRST_P_APB2ASB_SLV_CHIP_TOP	131075
> +#define SRST_P_PCIE2_COMBOPHY0		131077
> +#define SRST_P_PCIE2_COMBOPHY0_GRF	131078
> +#define SRST_P_PCIE2_COMBOPHY1		131079
> +#define SRST_P_PCIE2_COMBOPHY1_GRF	131080

this seems to lump together different components and with that creates
these gaps. I.e. I really don't think the phpphy in these registers is part
of the core CRU.

That huge memory length of 0x5c000 in your dt-binding is also a good
indicator that this needs to have more separation and not span multiple
devices.

> +/********Name=PHPPHYSOFTRST_CON01,Offset=0x8A04********/
> +#define SRST_PCIE0_PIPE_PHY		131093
> +#define SRST_PCIE1_PIPE_PHY		131096
> +
> +/********Name=SECURENSSOFTRST_CON00,Offset=0x10A00********/
> +#define SRST_H_CRYPTO_NS		262147
> +#define SRST_H_TRNG_NS			262148
> +#define SRST_P_OTPC_NS			262152
> +#define SRST_OTPC_NS			262153
> +
> +/********Name=PMU1SOFTRST_CON00,Offset=0x20A00********/
> +#define SRST_P_HDPTX_GRF		524288

same here, that is also most likely not part of the CRU but a different block.
Other socs already implement separate clock controllers for different
parts, so please take a look there.


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
