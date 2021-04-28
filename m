Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 295FDC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 15:07:02 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 714E2613C8
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 15:07:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 714E2613C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Subject:Cc:To:
	From:Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7yWIAuFWSLvb/z9rKl5W3EV0ag3olcYkk8ZxuKJ9y+4=; b=i71nykFwgF+cXOBx/6150hqKa
	aW1eiC+PcGqnQBbfOG4NL3Y2Yo1YEwh0amNSCDNatHrwFGCbFI5/7PNd6PtPXUwGh8QJIdyWhnL0S
	du8HKluu2mb6+B5komDCeEgd7u3Jn9w4DIB0UP+eDbWuM1kfxhhkznGCMwLwfCJ4KLKNUszS62qLK
	aij8k/+RV+YKKdmzCp5QAe8u4O+sG644TL+NUWUuo73JQC6rKuOkmA+oCC7Q3/Df7gggMaOjyJ4r9
	aJmIF64PnLFqee3WHb7a4ea2QRdMUrC2gl4msBQaiM7LtCOoQNG48mqXWdbeMalK0BhABxmgSxqNp
	m4gRkUNwA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lblmA-003jVH-Of; Wed, 28 Apr 2021 15:06:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbllw-003jTZ-9s; Wed, 28 Apr 2021 15:06:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Subject:Cc:To:From:Message-ID:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=rzTK3VTNjGsr2gzcvFtbpJJYUwlSh+Jm4DWZnjqjguI=; b=fG3YXdO9mmsJHDwbCq1pDZKp0W
 nBa2vhjQEPWy3mQ1tg2Da3AD/RdoW6UE7QU6yU29wYZETrHqOrNJHXtO2NWM8+hLpofWbepW64Kep
 MN5SJAa2HuX/ynNY0x1y+kWjcT5QAjmq5Q4v/3merGm0HBcKKevlB5yIKSssLxGIaMheKwEE+isOb
 up68d5SdzWZ64txxYk5BFkVFdioZhH5EqVhTFy7VBK8m73Q+yr1KWFK24WW+9rb8PNiCivMizJl6/
 Bzfy2hsuJCM62lxB0XUNFfcFGOJF98wTeoCGP90WWeB/hBciobeV3W+9++WtfN1WUN2M3hPXM0pGy
 1VQRB/uA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbllt-00HX7j-8j; Wed, 28 Apr 2021 15:06:38 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A44FE613B1;
 Wed, 28 Apr 2021 15:06:36 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.misterjones.org)
 by disco-boy.misterjones.org with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94)
 (envelope-from <maz@kernel.org>)
 id 1lbllq-009sXy-H3; Wed, 28 Apr 2021 16:06:34 +0100
Date: Wed, 28 Apr 2021 16:06:33 +0100
Message-ID: <87h7jqo3d2.wl-maz@kernel.org>
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
Subject: Re: [PATCH v3 09/10] arm64: dts: rockchip: add core dtsi for RK3568
 SoC
In-Reply-To: <20210428135002.22528-1-cl@rock-chips.com>
References: <20210428134759.22076-1-cl@rock-chips.com>
 <20210428135002.22528-1-cl@rock-chips.com>
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
X-CRM114-CacheID: sfid-20210428_080637_736861_44FB618C 
X-CRM114-Status: GOOD (  23.17  )
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

On Wed, 28 Apr 2021 14:50:02 +0100,
<cl@rock-chips.com> wrote:
> 
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
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  779 +++++
>  2 files changed, 3890 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568.dtsi

[...]

> +	gic: interrupt-controller@fd400000 {
> +		compatible = "arm,gic-v3";
> +		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
> +		      <0x0 0xfd460000 0 0xc0000>; /* GICR */

If this SoC has 4 CPUs, that's 4 redistributors. Given that GIC600
doesn't implement VLPIs, that's 128kB per redistributors. Why is GICR
large enough for 6 CPUs here? Is that copy-pasted from another SoC?

> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-controller;
> +		#interrupt-cells = <3>;
> +		mbi-alias = <0x0 0xfd400000>;
> +		mbi-ranges = <296 24>;
> +		msi-controller;
> +	};

Glad to see that you found some spare SPIs to get MSIs going

However, the whole point of mbi-alias (aka GICA in GIC600) is to be
different from GICD and provide some isolation via an IOMMU.  If I
trust the TRM, if should be at 0xfd10000 in your implementation.

Thanks,

	M.

-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
