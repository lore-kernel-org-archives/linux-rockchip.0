Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E48DFC71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 08:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4UvQBhVHXGlALCEaUmfyRotReG+kKVBDk3djp2P1NsY=; b=bVrmoFNJ3LgNCm
	5LUudJGjO0watfKpIphlYl7Xz4NNqB2oWtGzquaBG8HpiKun4cJualG7OKqMmtfWeKnsW4e8lgt42
	gHIuakEGAmOJ09OnDM995oxoseP8OKSejXugpc3xA07N3pQdxQvQyax3OoA4BdfyjRhC3pN16Dtzl
	/5MRS/SJUUjm3DTJTj94AVOKQXMRXM+wDbYfYsmEhfTr3y/EuxqylLe0+di41cjhuQ8ZzEVj2HeCz
	X84lsGLq9PSVf8ORtlsST9Nk2AQTXsuIG7hSDZXmqTccNmxnJ72uUzAN7/WLVLsL5aWp2y8Z/ydkx
	vQFfFhTvcYIilCDZBt9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRROz-00000006YNx-0iUx;
	Tue, 17 Jun 2025 08:10:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRMe-00000006Y5U-2TQE;
	Tue, 17 Jun 2025 08:08:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 567FC5C629E;
	Tue, 17 Jun 2025 08:05:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02F24C4CEE3;
	Tue, 17 Jun 2025 08:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750147695;
	bh=xSp6YzXqyFFcF2Z2Zs5t0bWps7VV8UD7jYJkKHZXM/o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jO8swg8tV7STz2bUcJ9YCtQWUWoTKiqQrzOUzXza+nsU39hVu0EUGgliDvYKP2rLc
	 6cGmSR3DT+tJa/rJcLN3NLYGKTdJ5ciOR1gUi/KmFmKUQ9qnkTa+M2U/n6uEOvRiki
	 TJ9FY3IHIzksbh2K0E/JyENQQkM0irvxW4JwPveiVplqxnC7C70NHE9b9V42ilWYrL
	 fHJei7Fs+MtBSZsyYo4ryVAWpFdvgfDT8kau8rHY9sLfuJUJzwOkQNs/NCCjgQFMn+
	 eWm482swAZI18VzqH+AMY9SC1N5VG/wZcxuv3t/0MhEWQKatRhVCfWaM3H7yY8s5h1
	 VNVR9j4o8uKEg==
Date: Tue, 17 Jun 2025 10:08:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Subject: Re: [PATCH v2 1/4] dt-bindings: mfd: rk806: allow to customize PMIC
 reset mode
Message-ID: <20250617-small-vivacious-labrador-7f0eb0@kuoka>
References: <20250605-rk8xx-rst-fun-v2-0-143d190596dd@cherry.de>
 <20250605-rk8xx-rst-fun-v2-1-143d190596dd@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250605-rk8xx-rst-fun-v2-1-143d190596dd@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_010816_710421_E33EB795 
X-CRM114-Status: GOOD (  20.64  )
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
Cc: Daniel Semkowicz <dse@thaumatec.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, Lee Jones <lee@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jun 05, 2025 at 05:41:06PM GMT, Quentin Schulz wrote:
> +  rockchip,reset-mode:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2]
> +    description:
> +      Mode to use when a reset of the PMIC is triggered.
> +
> +      The reset can be triggered either programmatically, via one of
> +      the PWRCTRL pins (provided additional configuration) or
> +      asserting RESETB pin low.
> +
> +      The following modes are supported (see also
> +      include/dt-bindings/mfd/rockchip,rk8xx.h)
> +
> +      - 0 (RK806_RESTART) restart PMU,
> +      - 1 (RK806_RESET) reset all power off reset registers and force
> +        state to switch to ACTIVE mode,
> +      - 2 (RK806_RESET_NOTIFY) same as RK806_RESET and also pull
> +        RESETB pin down for 5ms,
> +
> +      For example, some hardware may require a full restart
> +      (RK806_RESTART mode) in order to function properly as regulators
> +      are shortly interrupted in this mode.
> +

This is fine, although now points to missing restart-handler schema and
maybe this should be once made common property. But that's just
digression, nothing needed here.

>    vcc1-supply:
>      description:
>        The input supply for dcdc-reg1.
> diff --git a/include/dt-bindings/mfd/rockchip,rk8xx.h b/include/dt-bindings/mfd/rockchip,rk8xx.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..f058ed1ca661185f79738a358aa2d4f04539c590
> --- /dev/null
> +++ b/include/dt-bindings/mfd/rockchip,rk8xx.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * Device Tree defines for Rockchip RK8xx PMICs
> + *
> + * Copyright 2025 Cherry Embedded Solutions GmbH
> + *
> + * Author: Quentin Schulz <quentin.schulz@cherry.de>
> + */
> +
> +#ifndef _DT_BINDINGS_MFD_ROCKCHIP_RK8XX_H
> +#define _DT_BINDINGS_MFD_ROCKCHIP_RK8XX_H
> +
> +#define RK806_RESTART		0
> +#define RK806_RESET		1
> +#define RK806_RESET_NOTIFY	2

I do not see how this is a binding. Where do you use this in the driver
(to be a binding because otherwise you just add unused ABI)?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
