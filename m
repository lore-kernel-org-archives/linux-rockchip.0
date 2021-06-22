Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA56BC48BE5
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:37:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76167613B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:37:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 76167613B2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VtONlJyaqENxwnpVfO1gaa9rq0aWQtMYlS2IT8cV5Xo=; b=e6vPZTrOXkdNNIc7hwBceAEQ/I
	f14tx9bfG3cqL/eFCREriEzMvd1tq7jL3+5CgBO+s9sH5w8blbak0D4TKre7AC9xyyQHNP4DO7IGb
	KMZoFEn3yQXKugUHq2H/ptA96wCosMHOVvsOOyjiSZv0zhnGygBTVqqUfr0HSrTsfE0+fThRq78Ch
	ddtlRo+77qEA4fMud1EO0t6WwDuHwUsY1ppQq1PCo/dz1TQ3uwkUe9MUqTpuwhmEQKqpyvN37Dhan
	owwmggSXDfiX12MFSE45yldMJfJVQ4yUGVN2i9qAXNnjX4NxzGnioIsxzUutGy5QtL29ecXLODg3A
	t8/IBNiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvdmQ-006i3B-Ag; Tue, 22 Jun 2021 10:37:18 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvdmJ-006hyu-Vx; Tue, 22 Jun 2021 10:37:13 +0000
Received: by mail-ej1-x62b.google.com with SMTP id ho18so33760273ejc.8;
 Tue, 22 Jun 2021 03:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/gZ/LS6jWKdbaM5oP4IgUeK3B1HtaRtMGGO5GuusjNg=;
 b=I4G89gstIc6F4n1q1VgS4P7X41iPjadoInVjmd+FwIiYDUPqRFCC4ATKncvmRVj1jL
 rSmsAgBJ9TBmioXY/Hj4FmASTj2hAM50tL48IbROmprGXfhnsaLXjyDuLWAiiepGkpPD
 s+XY1CAHVTe9atHoou/HGoGmBDVQkuMd9hZi2lhNGfAObpkTbBiILPf8JzSFMdALiYSc
 59v7+PhQD6GNrcxMzd/xLQ0MpKWY47SpaVxyGZmyJOvRM0+39NYqSe/C9ULXGBPFDsd7
 KsCJKKAr92T7GvP5C4VDhLHM/qMk2bkH+iljttwxOni2OTnrQ1buxbEp3QO1jMEKxUnS
 q8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/gZ/LS6jWKdbaM5oP4IgUeK3B1HtaRtMGGO5GuusjNg=;
 b=SeXB6o3RhF0NKhCQ6+pvRiT2qr8G8CkaDOc7pZ6rCT/6rTRhZ4UB0oySEZ5MHV4okE
 aW6N2S6q8xsT3/jVtTfmi+T0ipb5ZB85w0it7AD/2firI6Gka5AL0AdXR+5EMB1ULRvb
 HrMcdfdTycLIKm1uO2faeiad8h12pYAyXIDcZ17qFdZWgqbhTydukNy7+zxCWPhDw1AG
 xLAX8Uc0r+orPkIGPo/NAYCF96TjodzEKAyJFf1k9hpU8UJc2CpayQOiME3vhW7LFNIP
 ctwYdBeBb5rY62jGmyHP+IoeLhMumBc9Mu+pPRtRti2XRsHwsSqkw1g5QvCoYzX35iad
 UpQQ==
X-Gm-Message-State: AOAM532jIJGMHir5ztjlBTiX+P8PJolY9ucWlhGryXanD5Nd/Qw3kC3A
 veTLIs5p/bppnrY7NR/BiNA=
X-Google-Smtp-Source: ABdhPJxlnR4rNgFyoUxyrHeDp6ZOw1eK2zdP3R7GGxTrcENQmMPjFHsqvd0zZwZy9tYkIJz0Ac9KSg==
X-Received: by 2002:a17:906:dbdc:: with SMTP id
 yc28mr3267131ejb.444.1624358229781; 
 Tue, 22 Jun 2021 03:37:09 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 dd15sm4961621edb.45.2021.06.22.03.37.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Jun 2021 03:37:09 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v5 3/4] arm64: dts: rockchip: add core dtsi for RK3568 SoC
To: cl@rock-chips.com, heiko@sntech.de
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org, maz@kernel.org
References: <20210622020517.13100-1-cl@rock-chips.com>
 <20210622020517.13100-4-cl@rock-chips.com>
Message-ID: <9515154d-f521-217c-af61-7cda089fbf15@gmail.com>
Date: Tue, 22 Jun 2021 12:37:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210622020517.13100-4-cl@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_033712_088911_B3E0464E 
X-CRM114-Status: GOOD (  23.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Chris, Heiko,

On 6/22/21 4:05 AM, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> RK3568 is a high-performance and low power quad-core application processor
> designed for personal mobile internet device and AIoT equipment. This patch
> add basic core dtsi file for it.
> 
> We use scmi_clk for cortex-a55 instead of standard ARMCLK, so that
> kernel/uboot/rtos can change cpu clk with the same code in ATF, and we will
> enalbe a special high-performance PLL when high frequency is required. The
> smci_clk code is in ATF, and clkid for cpu is 0, as below:
> 
>     cpu0: cpu@0 {
>         device_type = "cpu";
>         compatible = "arm,cortex-a55";
>         reg = <0x0 0x0>;
>         clocks = <&scmi_clk 0>;
>     };
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  .../boot/dts/rockchip/rk3568-pinctrl.dtsi     | 3111 +++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  777 ++++
>  2 files changed, 3888 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> new file mode 100644
> index 000000000000..a588ca95ace2
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> @@ -0,0 +1,3111 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + */
> +
> +#include <dt-bindings/pinctrl/rockchip.h>

> +#include "rockchip-pinconf.dtsi"

Question for Heiko:

This file is put in the arm64 directory.
Is it useful for ARM as well?
Should the ARM directory have it's own or use a long include?

ARM:
#include "../../../arm64/boot/dts/rockchip/rockchip-pinconf.dtsi"

arm64:
#include "rockchip-pinconf.dtsi"

Is it complete or does it need more items?
(Who's going to change that?)

arch/arm/boot/dts/rk3066a.dtsi:373.23-375.6: ERROR (phandle_references):
/pinctrl/emmc/emmc-clk: Reference to non-existent node or label
"pcfg_pull_default"

arch/arm/boot/dts/rv1108.dtsi:645.25-654.6: ERROR (phandle_references):
/pinctrl/emmc/emmc-bus8: Reference to non-existent node or label
"pcfg_pull_up_drv_8ma"

arch/arm64/boot/dts/rockchip/px30.dtsi:1470.23-1473.6: ERROR
(phandle_references): /pinctrl/spi0/spi0-clk: Reference to non-existent
node or label "pcfg_pull_up_4ma"

arch/arm64/boot/dts/rockchip/px30.dtsi:1490.29-1493.6: ERROR
(phandle_references): /pinctrl/spi0/spi0-clk-hs: Reference to
non-existent node or label "pcfg_pull_up_8ma"

arch/arm64/boot/dts/rockchip/px30.dtsi:1589.39-1592.6: ERROR
(phandle_references): /pinctrl/pdm/pdm-clk0m0-sleep: Reference to
non-existent node or label "pcfg_input_high"

arch/arm64/boot/dts/rockchip/px30.dtsi:1903.49-1906.6: ERROR
(phandle_references): /pinctrl/lcdc/lcdc-rgb-m0-hsync-pin: Reference to
non-existent node or label "pcfg_pull_none_12ma"

etc..

> +
> +/*
> + * This file is auto generated by pin2dts tool, please keep these code
> + * by adding changes at end of this file.
> + */
> +&pinctrl {

[..]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
