Return-Path: <SRS0=/3g+=CH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EDD4C433E6
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 20:31:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1D6DB20776
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 20:31:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qd098CpZ";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iVoIE2zj"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1D6DB20776
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sWIJaNi8yvQasoMWS4CXo88xOB6EAcei0ozjIt6VYcU=; b=qd098CpZMIJySWtnRLRe5ww5b
	SryDbYOM0TRWKyzIYiemqK3AJ1x55qBJU33LtcQbilFzDdabr1fejzSPw//weEkTmX08HzgmLsMcd
	fNXPSv/xiFtFAmlvZ1ckxb07L7VOpUAlao1aDn3w7E0L0pcn5ufxKQ2d/hliVErp+FxbQOpO5Vu4U
	wBdr+fo/ZsJV5QiH+Egb03MBSCPvquMuWe5ebRMHCbkje5wyeetd73KJpXwftDFc3RFXxsOq1IEVC
	Hk9xUBn6XImD6lXCeMzahHBk2zGQS1f5kprj5kKXAiZZNFJiY/pWCuYfsgIXphVm6jvFBqQ5mBbsM
	E8+fmPJPA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kC7Vt-0005UI-G2; Sat, 29 Aug 2020 20:31:49 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kC7Vp-0005Th-T0; Sat, 29 Aug 2020 20:31:46 +0000
Received: by mail-ed1-x543.google.com with SMTP id q4so2126807eds.3;
 Sat, 29 Aug 2020 13:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tAoCr0VCeK5KcMwknjMyq6oj1L3l2+lCy1t0IF04zBc=;
 b=iVoIE2zjoHSzIAK+z94dBG3y14lZJ37XXCfKo2FMoOM65p6Yagm8YGW83fSq/BO4Lw
 5bWxjxN7srhtFDY3J5Q1IiWfcP4G31LaxWztdc7mz63QiMBtLNg49Ygc8HiGgYfwmFfV
 rc4v+RS12QGHxUZG/fK9DqUjOsR3A14/UzYURb7RxgfAAb0adA+HrUXJBEgOosA6DUB9
 piYQA3khcctdGezFgcE0CixbgaLVFM8EnJRlKQg0WDNjQSo2n8Iw5oIqXMlrE5lMatQw
 SExLpD7jrAFoG0ePEeLEjRzuChHoiRUGRoSl3X9t3eXMMbq5QfA4Hja+CCJlLchREDHw
 nwBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tAoCr0VCeK5KcMwknjMyq6oj1L3l2+lCy1t0IF04zBc=;
 b=Xi798Z+6Xnbg2wKl+sLbLZrK6P8OeVC5tWUwKtCaI7AZ0YlFkJ84lmitvWVxU+FVrs
 ubWw6rJ/Mg9f80VeHDYawka+V8S55RcXSv5tGXKG5ZszNhlazdWwGK6vRSLtXx7w2Fiw
 fTKr7l0oBQH/YGwWFUkaSO0+6WHrf8W7lGrcGbIo1uzsemndfwKE6aTnmYjGDCMiM2M2
 nkRLuwGSMwCF1DFgkF2SbbHDMm3BrWFikNcMOi2Esc4H2dofdQgBppFiQP92G7j63gQC
 67oVryVGSGauRLe6uG63D+V7XE0pgP+LiaJp7ozSorps+7B+0ykM24TPcJ24pBqtoGIB
 0nEA==
X-Gm-Message-State: AOAM5300waa7vv+qnEOTtybSrXa6FdAEK4siFyyIygb6kAQ+bhog8e6J
 R/laWNLzKH5xi8OhzvyTfFdEm5ontiw=
X-Google-Smtp-Source: ABdhPJwR+ih3tePsg9LFgIH5cWODQaSiv61g5vPSa38l0AkmEBEQ645GZAoQGieS4pSUYtigmIDT+A==
X-Received: by 2002:aa7:d68f:: with SMTP id d15mr4844255edr.69.1598733102724; 
 Sat, 29 Aug 2020 13:31:42 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 dm22sm69847edb.49.2020.08.29.13.31.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 29 Aug 2020 13:31:42 -0700 (PDT)
Subject: Re: [PATCH v2 2/7] arm64: dts: rockchip: px30: Add Engicam EDIMM2.2
 Starter Kit
To: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
References: <20200829155823.247360-1-jagan@amarulasolutions.com>
 <20200829155823.247360-3-jagan@amarulasolutions.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <25b87188-bd06-90da-b2ce-bbfdb716e00a@gmail.com>
Date: Sat, 29 Aug 2020 22:31:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200829155823.247360-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200829_163145_985951_DFD0243E 
X-CRM114-Status: GOOD (  22.05  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jagan,

On 8/29/20 5:58 PM, Jagan Teki wrote:
> Engicam EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
> Evaluation Board.
> 
> Genaral features:
> - LCD 7" C.Touch
> - microSD slot
> - Ethernet 1Gb
> - Wifi/BT
> - 2x LVDS Full HD interfaces
> - 3x USB 2.0
> - 1x USB 3.0
> - HDMI Out
> - Mini PCIe
> - MIPI CSI
> - 2x CAN
> - Audio Out
> 
> SOM's like PX30.Core needs to mount on top of this Evaluation board
> for creating complete PX30.Core EDIMM2.2 Starter Kit.
> 
> Add support for it.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2:
> - move carrier enablement nodes in carrier dtsi
> 
>  .../dts/rockchip/px30-engicam-common.dtsi     | 39 +++++++++++++++++++
>  .../dts/rockchip/px30-engicam-edimm2.2.dtsi   |  7 ++++
>  2 files changed, 46 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
> new file mode 100644
> index 000000000000..4e85c1a690e5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
> @@ -0,0 +1,39 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2020 Engicam srl
> + * Copyright (c) 2020 Amarula Solutions(India)
> + */
> +
> +/ {
> +	vcc5v0_sys: vcc5v0-sys {
> +		compatible = "regulator-fixed";

Just one of the exceptions to the sort rule...

		regulator-name = "vcc5v0_sys";	/* +5V */

> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;

> +		regulator-name = "vcc5v0_sys";	/* +5V */

Move on top of the other regulator properties.
Same goes for the regulators in px30-px30-core.dtsi.

> +	};
> +};
> +
> +&gmac {
> +	clock_in_out = "output";
> +	phy-supply = <&vcc_3v3>;	/* +3V3_SOM */
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 50000 50000>;
> +	snps,reset-gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +};
> +
> +&sdmmc {

> +	cap-mmc-highspeed;

Remove.
Board only has a micro-SD card.

> +	cap-sd-highspeed;
> +	card-detect-delay = <800>;

> +	vqmmc-supply = <&vcc_3v3>;
> +	vmmc-supply = <&vcc_3v3>;	/* +3V3_SOM */

sort

> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-0 = <&uart2m1_xfer>;
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
> new file mode 100644
> index 000000000000..cb00988953e9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
> @@ -0,0 +1,7 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2020 Engicam srl
> + * Copyright (c) 2020 Amarula Solutions(India)
> + */
> +
> +#include "px30-engicam-common.dtsi"
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
