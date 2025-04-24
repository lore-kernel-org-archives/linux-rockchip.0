Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2741C369D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Apr 2025 17:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NoXzZmnE5Nz+tA3LbNhZuTvCOyQ62oeLyIv0NU0c5M=; b=hVzTvjpMCJuyMx
	LpI87fSoUJMMs3eR/wJlQwD6/GD6l9YjArOW2QFrZroKfmDGC0atVm3S8xJOSvX1mCfoB9pEpKvl1
	EeOWrLgRiaD2yyG1zuX1ScQU3n9ZRSSdBlEyPG+m0CmXk4mGOPsbs5SUQ8e/oRh3Ehvxdba4maD7G
	twl89iB50uFQZWiHeNlCbyQUMKD2EVYQt1EivhBQEwu/kFZlrU68aquqKDtrxvy24wrVjKCYr5ggw
	/rpwIxCyEnPS4ZccR7ibQOEv6M4j3BqxxNjfjVWvGTDNtZ5+X24bR/3wfocXcwChQkj/M+05jP1cr
	BfGEwmEv6zJzQ9CqyjGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u807e-0000000Er7a-04JW;
	Thu, 24 Apr 2025 17:12:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ztU-0000000EpTV-4A7P
	for linux-rockchip@bombadil.infradead.org;
	Thu, 24 Apr 2025 16:57:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=9CKM2cs1qGXFMlOy1JK4RKIIOdS1MYoTVq0pqbGBT8I=; b=CnSWZBvCjn84zM/I+tQU0F1bHn
	dXbUlTegEFqsaMpQsAXWNTsBvFGw9+8lRUwOTUfDbha36GZ6NTSjrN27gsqQTp5x4ZMFpzqiRmCOw
	/6waXCu1I5yb7hMHhCFjee2VPqwV/9A+yagWv8pF+2wpCcfpjwzsi3HHPyGlHfEgqWrtxxP1CEIgi
	HogFsWDJXqlgjs+5QH+gfo8BH50H2Zi+wS3jVSK/NleTwdtfTEEBuYrWBTOFlVQmhEmAoGyoO6X8R
	LXZ6HN4MAUpkkQCi2D6H9bpDNCI7epV34fmxfS+FknrpeiA04jVK08wRx+Ecxaet1K04mqJwbyXaF
	AJIiJguQ==;
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7ztR-0000000Brn0-2r05
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Apr 2025 16:57:47 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-e702cffe590so986762276.1
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Apr 2025 09:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745513863; x=1746118663; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9CKM2cs1qGXFMlOy1JK4RKIIOdS1MYoTVq0pqbGBT8I=;
        b=PPcVg+3tS19QvUjCd7UiL5lqwBulRbllnfd0WOPJPE7b1uF4OwU4TThy9KgX6pqQPv
         3ORyXbdLZTZuMjzM4K0+zOMftdAgpOr6mPXoNk85dHJui2UEq4O5blqxzFVngR+2L6ky
         eIyk6CRLUwQrTmZn7NMuuqI+BMcoP5MBBV2KeJ2lFmfkPOrjY2RWB6h9oBGO/udYSyp+
         IqDIXFpLJQ3Fd87Y09lvPhZbagI9qF/TiAGDIwidIiMmPFa3DGu2N6mJQoEjqKzLazSs
         gOCe6ftfnGZC8X8RPKUty7Lbmmqs4kUbaYCw3E6n5/WAM4N8H7kqqR5Ui1paQgLel9PW
         mMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745513863; x=1746118663;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9CKM2cs1qGXFMlOy1JK4RKIIOdS1MYoTVq0pqbGBT8I=;
        b=rc/2OTZ7cGWr3WJIiVWOPo070Re/l8RTOGcc7poNM/ZRQBI/hBGo4r7MXwuk23cn4V
         vC9bPypLsHLH2FFZmxRYP71N0Z5kDneYM7fggubVlZXNVb8edr13/EgaxWtEofsWiojl
         1JGpQ9hU+dfSQ3PO2HtvAInb8YKz/YRKy9PrFyAuj1TrikQC7x3Ud+oueLDmvlEHc8Y9
         w09fdmmrDr9cLZFc1cP32yX/ZWdjxByWaq4RCwyLPp9JW3mS0VcS+rkr/7304iKSzCv1
         Sfl3oidbbiA63xDfyMLzzimsudZaVuZBmCdaobS9doE7gz0IQOvXSLW5Ovt4hqleBoE5
         t5Cg==
X-Forwarded-Encrypted: i=1; AJvYcCVvq6t+R3DmAJ/rG7x5M8Z0rLylSwy53WMWUfpoPgZ3kfpn8ZJqLKaiwY862qMv7s+dlcp322yZlomR/pdiOA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxmeuI+m4ZWlzFEEPJqdXzt1gn8BlIvdhK5jn9KDohaB1RB/M/R
	0dW/mIAfocsn48h3jZxZf+MBl7qsJJK3jJ5LJmGVfLYOaZ9Bo1jFX5XSPYdqvMxiX4kOALV2jA3
	px5hoYv0Iewdk59KscwyI3A9VwMpJkYL3lac+r31TuqKNUijC
X-Gm-Gg: ASbGncv+8it2cW2fMrflbfgaxRjwaZsC5bD1pGPCqbY9gfcEUyQWd/Afn0q+SdBiKzv
	NCE8DkCGkdSurN2OyekhRIi8DyYKdQS3UXIxOUNA/ryLhyDYbsns1wTyEeLgxW9qvbfeDOGOLaN
	O9x5vi9nvPfOs+tRf/RESMzuo=
X-Google-Smtp-Source: AGHT+IFGTdWSdsZcdsNen5sZq4wJnWapLXpFuPlaVUGf+rGu5EnJXdabOZuRe3KyJ3ZRIkLzq1oum5ZWE02emFXzcCY=
X-Received: by 2002:a05:6902:1ac8:b0:e6d:ecbb:e530 with SMTP id
 3f1490d57ef6-e7312d44613mr185101276.27.1745513863337; Thu, 24 Apr 2025
 09:57:43 -0700 (PDT)
MIME-Version: 1.0
References: <20250415032314.44997-1-kever.yang@rock-chips.com>
In-Reply-To: <20250415032314.44997-1-kever.yang@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Apr 2025 18:57:06 +0200
X-Gm-Features: ATxdqUGgd2BtezeD6Buv4aip6IDl4W4AEEpLnidEVI-YRjiR40IiiYl0lpXZjps
Message-ID: <CAPDyKFqdx+ZmEWJeyw3hAWXYhH4ibMK96FpJ5B2wfLC6QiOOAA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: power: rockchip: Add support for
 RK3562 SoC
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	Finley Xiao <finley.xiao@rock-chips.com>, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_175745_838386_C6AE63D3 
X-CRM114-Status: GOOD (  18.98  )
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

On Tue, 15 Apr 2025 at 05:23, Kever Yang <kever.yang@rock-chips.com> wrote:
>
> From: Finley Xiao <finley.xiao@rock-chips.com>
>
> According to a description from TRM, add all the power domains.
>
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes in v4:
> - Collect review tag from Heiko
>
> Changes in v3:
> - squash the header file and the binding document
> - Update license
>
> Changes in v2:
> - rename to rockchip,rk3562-power.h
> - update the subject
> - use dual license
>
>  .../power/rockchip,power-controller.yaml      |  1 +
>  .../dt-bindings/power/rockchip,rk3562-power.h | 35 +++++++++++++++++++
>  2 files changed, 36 insertions(+)
>  create mode 100644 include/dt-bindings/power/rockchip,rk3562-power.h
>
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> index ebab98987e49..f494b7710c09 100644
> --- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -40,6 +40,7 @@ properties:
>        - rockchip,rk3366-power-controller
>        - rockchip,rk3368-power-controller
>        - rockchip,rk3399-power-controller
> +      - rockchip,rk3562-power-controller
>        - rockchip,rk3568-power-controller
>        - rockchip,rk3576-power-controller
>        - rockchip,rk3588-power-controller
> diff --git a/include/dt-bindings/power/rockchip,rk3562-power.h b/include/dt-bindings/power/rockchip,rk3562-power.h
> new file mode 100644
> index 000000000000..5182c2427a55
> --- /dev/null
> +++ b/include/dt-bindings/power/rockchip,rk3562-power.h
> @@ -0,0 +1,35 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) 2022-2024 Rockchip Electronics Co., Ltd.
> + */
> +#ifndef __DT_BINDINGS_POWER_RK3562_POWER_H__
> +#define __DT_BINDINGS_POWER_RK3562_POWER_H__
> +
> +/* VD_CORE */
> +#define RK3562_PD_CPU_0                0
> +#define RK3562_PD_CPU_1                1
> +#define RK3562_PD_CPU_2                2
> +#define RK3562_PD_CPU_3                3
> +#define RK3562_PD_CORE_ALIVE   4
> +
> +/* VD_PMU */
> +#define RK3562_PD_PMU          5
> +#define RK3562_PD_PMU_ALIVE    6
> +
> +/* VD_NPU */
> +#define RK3562_PD_NPU          7
> +
> +/* VD_GPU */
> +#define RK3562_PD_GPU          8
> +
> +/* VD_LOGIC */
> +#define RK3562_PD_DDR          9
> +#define RK3562_PD_VEPU         10
> +#define RK3562_PD_VDPU         11
> +#define RK3562_PD_VI           12
> +#define RK3562_PD_VO           13
> +#define RK3562_PD_RGA          14
> +#define RK3562_PD_PHP          15
> +#define RK3562_PD_LOGIC_ALIVE  16
> +
> +#endif
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
