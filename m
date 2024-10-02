Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9939CF3195
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 06:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1Y83l+vebwzdfqYNlaDP3iWydqcrRlI+Nn+vi/7Spo=; b=1YyUNKLPD90c/R
	Es3wYcliL3s2dyisxydPRLNvCZF9YK7/RzCzFFqYyCPRfqYtjVH25CuF2AZrm4+kQDquTLnWQXP6L
	VSq60z0KdrKVDD1GhpEhef4/0RWq+Oe/QP8P7Zf6t1r2Rd5iL1QM8gb5kajyyItlBDDERRWHpIHJ4
	bngRcwCv8QCjnoyYlG1hPHnr112GcXpU/ZanNqoc1WzfAeKaMo9yS5J4mO4JU9dwk95tUqT6qNDRv
	5ppR3DjELip9b/v8OeQw6x2GqWRGNP82J+NmcCql5VVkFJ4k//xEzZf4+JNrgmdkkvbVEUYOM/bPA
	wZrXLEyyCzHkY4lbfEyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svsvD-00000004wmW-3cDp;
	Wed, 02 Oct 2024 06:33:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svsty-00000004wbe-1dYk;
	Wed, 02 Oct 2024 06:31:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 53A4D5C5659;
	Wed,  2 Oct 2024 06:31:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 772A8C4CEC5;
	Wed,  2 Oct 2024 06:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727850717;
	bh=9mmW3A2mka4fNt/DPUrZkJU0+CpxJBPkqAKENYhBKAc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ncjxFHpx/tAa4VQQ8d79hb9t2wUz7dmGIZW2H4jvEE60uM3oQHdkcFfVTe1TXMvJl
	 2Kl8Mah5jmcZB2bgz2anaOGDTzpe5K3iWEWJxWrxwQLaNWJzGjCj8O2di1Bj40TE/p
	 TWzpfvThAKFGjkPLfzEr/om80Q12qI8DFW+cEuyCyH+Uf0biGtDyiGqDNy+T0kZeO5
	 mfB+6Codfjz54tYG7w5wvSl37MdPP9eMgYVmtmIhXR/U870cZN5bNVY228Axq/LhlI
	 XyaZkgyTpSdrruh3Mm5oVYvRzRVYHpA8FLBG/iip20UIX5NLYV362N//KSKc8lpZTn
	 IzUS+iwXIPj4A==
Date: Wed, 2 Oct 2024 08:31:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 2/8] dt-bindings: reset: Add reset ID definition for
 Rockchip RK3528
Message-ID: <kg7lh6gafeegmljsygukhfjiztx5wbothngtxrcreccao3itpy@f4bxf4w346ky>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-4-ziyao@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241001042401.31903-4-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_233158_566630_D2E2C0F3 
X-CRM114-Status: GOOD (  15.61  )
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

On Tue, Oct 01, 2024 at 04:23:56AM +0000, Yao Zi wrote:
> Similar to previous Rockchip generations, reset IDs for RK3528 SoC
> are register offsets.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  .../dt-bindings/reset/rockchip,rk3528-cru.h   | 292 ++++++++++++++++++
>  1 file changed, 292 insertions(+)
>  create mode 100644 include/dt-bindings/reset/rockchip,rk3528-cru.h
> 
> diff --git a/include/dt-bindings/reset/rockchip,rk3528-cru.h b/include/dt-bindings/reset/rockchip,rk3528-cru.h
> new file mode 100644
> index 000000000000..1f8c0d38bb88
> --- /dev/null
> +++ b/include/dt-bindings/reset/rockchip,rk3528-cru.h
> @@ -0,0 +1,292 @@
> +/* SPDX-License-Identifier: (GPL-2.0-or-later OR MIT) */


Wrong license, run checkpatch.

Also, as Conor noted, this should eb squashed with device binding.

> +/*
> + * Copyright (c) 2022 Rockchip Electronics Co. Ltd.
> + * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
> + * Author: Joseph Chen <chenjh@rock-chips.com>
> + */
> +
> +#ifndef _DT_BINDINGS_RESET_ROCKCHIP_RK3528_H
> +#define _DT_BINDINGS_RESET_ROCKCHIP_RK3528_H
> +
> +// CRU_SOFTRST_CON03 (Offset: 0xA0C)
> +#define SRST_CORE0_PO			0x00000030
> +#define SRST_CORE1_PO			0x00000031
> +#define SRST_CORE2_PO			0x00000032
> +#define SRST_CORE3_PO			0x00000033
> +#define SRST_CORE0			0x00000034
> +#define SRST_CORE1			0x00000035
> +#define SRST_CORE2			0x00000036
> +#define SRST_CORE3			0x00000037
> +#define SRST_NL2			0x00000038
> +#define SRST_CORE_BIU			0x00000039
> +#define SRST_CORE_CRYPTO		0x0000003A
> +
> +// CRU_SOFTRST_CON05 (Offset: 0xA14)
> +#define SRST_P_DBG			0x0000005D
> +#define SRST_POT_DBG			0x0000005E
> +#define SRST_NT_DBG			0x0000005F

What are all these? Registers? Not a binding.

Binding constants are numerical values from 0, incremented by one,
serving as abstraction layer between DTS and driver.

None of these here are bindings.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
