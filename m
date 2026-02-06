Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC0ADEE6B4D
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 20:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvXy+UvYCtIdVZqvg8G8m4leCw0MVyKdJYsUqfJF44M=; b=PFNfaNXb8iMpdy
	2DflsMdPVaWG1xjIBnXV7HhIdkYRmLOAl8l2ndkKV9pxAR7v8C36dPOwpGn5Sm61sKvxK2RueGA7j
	+nc9qt89QuPaGasZ+U98PRcIz1edWjm/EC1BS4UgW5P4vmnmFIU6B3WQjiOegon+lDuFE123jIuuG
	UTiTFUhrzDbM0PRJDZsfIQEmlT6dYAmrIsujFOXk5W8z9FFT7xjWr18vOkEIFW9wZerDjmIbZOcQy
	vz0IFuxI/NWH9T1Ze7xNC7DIjaHhUtee3zEBObf+lg35pB2wKePhtnfV3dT/Np1EbztTV6H12V1qz
	HU80p3vPKYENTT+j52kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voSF0-0000000BmYP-0p3c;
	Fri, 06 Feb 2026 20:15:47 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voSEx-0000000BmXh-13Nn
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 20:15:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1770408941;
 bh=XMcaTeWAU/r1ov1V+rxzFP/RRdvWOuinPWdt2XTYrys=;
 b=JqO6crsbSIHg6AaCZQd+LZe9IOFty8k/p6tqAdage1plmGCOEvzqMFSXQM6llwJe/DUjKB4+n
 5NoWsz4MaYX2QHoh+WS6xYQmaxPgK6bd59hbWiDueJBb2adV3uqXfUbRJYGtx2KqSsZ3TxPIr73
 oxGQuVTmyUBOaIV72+hCNqtcCbbJvtUnT1aKPbLTizuNFOtPnDse1UqrKHBa42A+7xHggn/NM38
 I4Dlu5tXSWGZHct4rygBMj5E0yJng6cHzTRRNRPaLgY81BuWiJ7TsIbNQ8Qg7seNaSNRe9ZubfL
 ipx4B+R6tk9oPAAtnFUOTXjsqfF+Mnt43b0FP69EYXGQ==
X-Forward-Email-ID: 69864be7a0945f6de12e8c24
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.6.1
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <1e12c5de-7cca-460c-8e8a-cdea2b7c923a@kwiboo.se>
Date: Fri, 6 Feb 2026 21:15:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/11] dt-bindings: clk: rockchip: Add RV1103B clock
 header
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Fabio Estevam <festevam@nabladev.com>, Stephen Boyd <sboyd@kernel.org>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-3-festevam@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260206181309.2696095-3-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_121543_691776_8B31396F 
X-CRM114-Status: GOOD (  12.93  )
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

Hi Fabio,

On 2/6/2026 7:13 PM, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Add the RV1103B clock and reset IDs.
> 
> Cc: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
>  .../dt-bindings/clock/rockchip,rv1103b-cru.h  | 488 ++++++++++++++++++
>  1 file changed, 488 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rockchip,rv1103b-cru.h
> 
> diff --git a/include/dt-bindings/clock/rockchip,rv1103b-cru.h b/include/dt-bindings/clock/rockchip,rv1103b-cru.h
> new file mode 100644
> index 000000000000..92c994185354
> --- /dev/null
> +++ b/include/dt-bindings/clock/rockchip,rv1103b-cru.h
> @@ -0,0 +1,488 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
> +/*
> + * Copyright (c) 2024 Rockchip Electronics Co. Ltd.
> + * Author: Elaine Zhang <zhangqing@rock-chips.com>
> + */
> +
> +#ifndef _DT_BINDINGS_CLK_ROCKCHIP_RV1103B_H
> +#define _DT_BINDINGS_CLK_ROCKCHIP_RV1103B_H
> +
> +/* pll clocks */
> +#define PLL_GPLL				1
> +#define ARMCLK					2
> +#define PLL_DPLL				3
> +
> +/* clk (clocks) */
> +#define XIN_OSC0_HALF				5
> +#define CLK_GPLL_DIV24				6

Clock indices should start at 0 and be a continuous series without gaps.

[snip]

> +// PERICRU_SOFTRST_CON00(Offset:0xA00)
> +#define SRST_ARESETN_PERI_BIU			0x00000002
> +#define SRST_HRESETN_HPMCU_BIU			0x00000003
> +#define SRST_LSRESETN_PERI_BIU			0x00000004
> +#define SRST_PRESETN_PERI_BIU			0x00000005
> +#define SRST_PRESETN_RTC_BIU			0x00000006
> +#define SRST_HRESETN_BOOTROM			0x00000007

Reset indices should start at 0 and be a continuous series, they should
not encode register offset and bit information like downstream kernel.

Also please move the resets indices to a separate header, see most
recent Rockchip SoCs clock and reset additions, e.g. rk3528, rk3506 or
rk3562 for inspiration.

[snip]

> +#define CLK_NR_SRST				(SRST_PRESETN_CRU_PMU1 + 1)

Please drop this, not part of the binding.

Regards,
Jonas

> +#endif

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
