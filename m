Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72A8ECF3195
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 06:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnqxVGLsiihNx/VKYopPg6J6BsGuoSIyOdGreXrbfL4=; b=Sp8xobcxRj0nXT
	u9yIWhYz9eWFONq/gUYSAia/Cd7NefXVJYX93UOadSig1RE7mIWME05Ziim1YGkmYVDUyFJVY3e39
	dMwnFOC5OpDyfsPjXDTq/i97jrZi2DYKfwEaHnt7tZCcf8t9q9nUVUw8p9nmjiQrZeAMh1PnPHkc7
	xbv1bbfd8FK80H5XJ1EuPJgnhaZoEm5k6GgZM7V1nPM+YTfNjEZa1H/nj9vKcJ1yoqNbshPJwcxEf
	QT6oppyh1RuUFPaIzBNuVrCPWJcaGPtKPkqx5Vijyy3vH/cxxRR6I+nFGNu+mFVPaQtCUxJJ5f21Q
	SkjbTwY4QAL2MbIKN/mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svswQ-00000004wuJ-1CSN;
	Wed, 02 Oct 2024 06:34:30 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svsuo-00000004wib-1w3A;
	Wed, 02 Oct 2024 06:32:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4F38FA43754;
	Wed,  2 Oct 2024 06:32:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA61FC4CEC5;
	Wed,  2 Oct 2024 06:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727850769;
	bh=ANwIj+ZUzR6i/VHBj0MdBJN4I3sPD9eZBxis5eVt93s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kcS2/lALqEJvzuBK5e+XNOKIbO2E+NykVYLi0GRmt6Ncz1EA6spi35sOOVZZR31EA
	 kfmJotnzJKp/06z+gmwapFuqWsOHDCUypL9sedYn9IHU97liGfYW0vsAn1dPIMATjQ
	 yMMEXeV4UGaoDrF6ZKIxa+UTsWDW3bq3E85Sr/mIcjYa6v+L1GOKYq8jRNkC7QCLYr
	 aCGVoCJfKnL/XrToiIxBepFqsp486iHjh/W/HvGS5fykHGNxa8LsJAN6WfQMphdwmN
	 JWzEBocNjxv/Q//msKsJjg0vxUhkidijSi/cZEkY5hhckF9eX29KMvJnj+bKZNI8BA
	 7fQYZYozXn+vw==
Date: Wed, 2 Oct 2024 08:32:45 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: clock: Add clock ID definition for
 Rockchip RK3528
Message-ID: <gb2g7wj3nzc3euhmz7s5szms22qkuhm5yqpnyheq3zm6xf5gmr@tljctg6fpzqu>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-3-ziyao@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241001042401.31903-3-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_233250_587924_00AF262E 
X-CRM114-Status: GOOD (  15.27  )
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

On Tue, Oct 01, 2024 at 04:23:55AM +0000, Yao Zi wrote:
> There are two types of clocks in RK3528 SoC, CRU-managed and
> SCMI-managed. They are assigned independent clock IDs.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  .../dt-bindings/clock/rockchip,rk3528-cru.h   | 453 ++++++++++++++++++
>  1 file changed, 453 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rockchip,rk3528-cru.h
> 
> diff --git a/include/dt-bindings/clock/rockchip,rk3528-cru.h b/include/dt-bindings/clock/rockchip,rk3528-cru.h
> new file mode 100644
> index 000000000000..c90b25f57973
> --- /dev/null
> +++ b/include/dt-bindings/clock/rockchip,rk3528-cru.h
> @@ -0,0 +1,453 @@
> +/* SPDX-License-Identifier: (GPL-2.0-or-later OR MIT) */

Wrong license.

> +/*
> + * Copyright (c) 2022 Rockchip Electronics Co. Ltd.
> + * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
> + * Author: Joseph Chen <chenjh@rock-chips.com>
> + */
> +
> +#ifndef _DT_BINDINGS_CLK_ROCKCHIP_RK3528_H
> +#define _DT_BINDINGS_CLK_ROCKCHIP_RK3528_H
> +
> +/* cru-clocks indices */
> +#define PLL_APLL                       1

Start from 0. Just like your other - SCMI - list.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
