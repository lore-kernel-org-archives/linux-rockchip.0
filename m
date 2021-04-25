Return-Path: <SRS0=ZyAL=JW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 420E4C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 10:29:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A632961396
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 10:29:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A632961396
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Subject:Cc:To:
	From:Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oci2YZvsYfBDwooImr2GvJAa/4HNGDqkEUSifpULXSE=; b=HadPsnQ0ZBRT9AuZWYeAF40Xf
	75w5b9W5UfnCfLR1oXHW3id016tZpfYleZYLRTNfObE9eoo0dywBZWyx2j+406S3dEPoOgeByFTt/
	fTdvUGyqnwRagpdGVMjpkbA1Ps1Y9mW0nXzVpjv19OPQXLpByIYm6+qjrLHGlpV1jI+mJhcTmtOV5
	m1q7yYNJ+rEItMB0EYGYxcjs6IJvurt9lrdY7HsRT23Y3qV27c1I6sz0W17IGX0RqS1UJDoHi60fD
	nLT2exbLnaqpxVwcU5pQbIZBd1dXsGjE3T7SQLCy5IGeRXfIQuQJrggxagrCuLgHCx2nns3fO/IeA
	6bA6NkA6w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lac0j-005TYf-Rk; Sun, 25 Apr 2021 10:29:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lac0Z-005TXd-Bn; Sun, 25 Apr 2021 10:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Subject:Cc:To:From:Message-ID:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=o9xG9GeXugSO2+Mpb3UUeyiGfXrRbje1ksfBfpaqrrU=; b=lpgOxbwYmbE0RLopUbfFJ3pm13
 yCVWNufQBIXk2L7WmI/iC0+oenKI0isq3tmJtZVit7Wq/XK0VBbLM1PwMyJLLNA0vclcyVKnxxj3Q
 a1air5uZS9/2OiuUIYuLt1DB0lo30BtYy11XprPXmgnexsJ6Oih5agr18T5vPUhcXHZxncb5y8MM3
 yWnlB38+P8Z+krMsNjRbNZYwU9rXmT08mpvHvpHy0AIgGaPI9L6hVhqasjd8pzD9d59uxS98UN0EM
 xU9fAjxVoatUlB92RnYXMyONsX+r+XAd5VNHnj+J7ga1hmkRNbxNwcVAxsBR//RBl/euve9M8hViW
 csv9ZDcw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lac0W-00FOuf-NA; Sun, 25 Apr 2021 10:28:58 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 089B3613B2;
 Sun, 25 Apr 2021 10:28:53 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=wait-a-minute.misterjones.org)
 by disco-boy.misterjones.org with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94)
 (envelope-from <maz@kernel.org>)
 id 1lac0Q-009JxN-VR; Sun, 25 Apr 2021 11:28:51 +0100
Date: Sun, 25 Apr 2021 11:28:49 +0100
Message-ID: <87mttmslni.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: <cl@rock-chips.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, jagan@amarulasolutions.com,
 wens@csie.org, uwe@kleine-koenig.org, mail@david-bauer.net,
 jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com,
 cnsztl@gmail.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, wim@linux-watchdog.org,
 linux@roeck-us.net, jamie@jamieiles.com, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v2 6/7] arm64: dts: rockchip: add core dtsi for RK3568 SoC
In-Reply-To: <20210425094439.25895-1-cl@rock-chips.com>
References: <20210425094216.25724-1-cl@rock-chips.com>
 <20210425094439.25895-1-cl@rock-chips.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/27.1
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: cl@rock-chips.com, heiko@sntech.de, robh+dt@kernel.org,
 jagan@amarulasolutions.com, wens@csie.org, uwe@kleine-koenig.org,
 mail@david-bauer.net, jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com, cnsztl@gmail.com,
 devicetree@vger.kernel.org, ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210425_032856_822286_6C71E40B 
X-CRM114-Status: GOOD (  23.44  )
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

As I reviewed a previous version of this series, please have the
courtesy of cc'ing me on further revisions of this series.

On Sun, 25 Apr 2021 10:44:39 +0100,
<cl@rock-chips.com> wrote:
> 
> From: Liang Chen <cl@rock-chips.com>
> 
> RK3568 is a high-performance and low power quad-core application processor
> designed for personal mobile internet device and AIoT equipments. This patch
> add basic core dtsi file for it.
> 
> We use scmi_clk for cortex-a55 instead of standard ARMCLK, so that
> kernel/uboot/rtos can change cpu clk with the same code in ATF, and we will
> enalbe a special high-performacne PLL when high frequency is required. The
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
>  .../boot/dts/rockchip/rk3568-pinctrl.dtsi     | 3119 +++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  812 +++++
>  2 files changed, 3931 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568.dtsi

[...]

> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> new file mode 100644
> index 000000000000..66cb50218ca1
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -0,0 +1,812 @@

[...]

> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_HIGH>;
> +		arm,no-tick-in-suspend;

My questions on this property still stand [1].

> +	};
> +
> +	xin24m: xin24m {
> +		compatible = "fixed-clock";
> +		clock-frequency = <24000000>;
> +		clock-output-names = "xin24m";
> +		#clock-cells = <0>;
> +	};
> +
> +	xin32k: xin32k {
> +		compatible = "fixed-clock";
> +		clock-frequency = <32768>;
> +		clock-output-names = "xin32k";
> +		pinctrl-0 = <&clk32k_out0>;
> +		pinctrl-names = "default";
> +		#clock-cells = <0>;
> +	};
> +
> +	gic: interrupt-controller@fd400000 {
> +		compatible = "arm,gic-v3";
> +		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
> +		      <0x0 0xfd460000 0 0xc0000>; /* GICR */
> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-controller;
> +		#interrupt-cells = <3>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;

My request for a full description of the GICA region still stands [1].

Thanks,

	M.

[1] https://lore.kernel.org/r/87o8e2sm1u.wl-maz@kernel.org

-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
