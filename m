Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D7C9C00A94
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 11:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+4h3LKGs8ID1Hg1mkEkeIRLO/NNLMEakE6ByHNyMQI=; b=e48xYWnY84C9oK
	3YDOnct6aN6R8VlHK0veEI6pWGX2Z9aWd2ddoDViIXhJLEdvjwjHEYxD3b5BuhH1MVlpyWG0enFwW
	HJegmUp1Ddm27zclj6X2X0Q8jy8aSSVMMl1KIAuRcpu5R0k9FbR8YSqra+ONULI0v5vxf6Rgg7V4B
	wYlhW+gB3ECdh3WAzcsuZjLWAuv5K11l5x1m0zVLyGiarLAlnp4UVqUd8aISZggoUlU+1uBPcSJIy
	Lks5YsxBCGtU9QMKW2GOlYUtADAHjPj4H6BMrkuWL92rMwmV1kIjLb3ywFh+ukwN1rTnXrpH++6tS
	7AYIs2LQ1iCe7FiPXcyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwKJk-000000080er-0Tm7;
	Mon, 15 Apr 2024 11:16:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwKJd-000000080df-46sR;
	Mon, 15 Apr 2024 11:16:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E299060B8C;
	Mon, 15 Apr 2024 11:16:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 487CFC113CC;
	Mon, 15 Apr 2024 11:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713179760;
	bh=pS+uyKgsyii1wjRg73vGWLVmn9HUda2om5l4QvZMNPQ=;
	h=Date:Subject:List-Id:To:Cc:References:From:In-Reply-To:From;
	b=p9CguGD20UqvL+CtegaZxYrRV0MQfovjj0iJ/rNEUvEnlMliidcw1qwq9sZflSkP5
	 YntfStOgSo3hm5LodJeJ4kVHFRTMRrmvshZpBnD3LJjSu5E6nCTn3e1i11d+O0bIgt
	 vkxUFcCPd9q2c96hZASkrYmo49MsvGW+AtUTT4jl2sQtBtCb6tHB7K3IIo+L3AqZYT
	 av44M6ECMSaXKIjkj7xoWMjjS9UuvBLUS19dexS3R6kjvg2AHQJacwuO4BH9rgDb4w
	 owKwNX+6oNqVRR7xuV7uGjTSUa5WQTKIBf78w4xvF1PMECZ3pI4APEikTez0i/wcgh
	 E52+HNhFWP3zA==
Message-ID: <2fa0223f-7cac-4140-b667-886cbe3fb8f5@kernel.org>
Date: Mon, 15 Apr 2024 06:14:22 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm/arm64: dts: Drop "arm,armv8-pmuv3" compatible usage
To: Rob Herring <robh@kernel.org>, soc@kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Tsahee Zidenberg <tsahee@annapurnalabs.com>,
 Antoine Tenart <atenart@kernel.org>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Robert Richter <rric@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "Paul J. Murphy"
 <paul.j.murphy@intel.com>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?=
 <afaerber@suse.de>, Heiko Stuebner <heiko@sntech.de>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Jisheng Zhang <jszhang@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-fsd@tesla.com, Michal Simek <michal.simek@amd.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-realtek-soc@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
References: <20240412222857.3873079-1-robh@kernel.org>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20240412222857.3873079-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_041602_170091_97D62998 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 4/12/24 17:28, Rob Herring wrote:
> The "arm,armv8-pmuv3" compatible is intended only for s/w models. Primarily,
> it doesn't provide any detail on uarch specific events.
> 
> There's still remaining cases for CPUs without any corresponding PMU
> definition and for big.LITTLE systems which only have a single PMU node
> (there should be one per core type).
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> SoC Maintainers, Can you please apply this directly.
> ---
>   arch/arm/boot/dts/broadcom/bcm2711.dtsi              | 4 ++--
>   arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi    | 2 +-
>   arch/arm64/boot/dts/amazon/alpine-v2.dtsi            | 2 +-
>   arch/arm64/boot/dts/apm/apm-storm.dtsi               | 2 +-
>   arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts | 2 +-
>   arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi     | 2 +-
>   arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi  | 2 +-
>   arch/arm64/boot/dts/cavium/thunder-88xx.dtsi         | 2 +-
>   arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi        | 2 +-
>   arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi       | 2 +-
>   arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi       | 2 +-
>   arch/arm64/boot/dts/freescale/fsl-ls2080a.dtsi       | 7 +++++++
>   arch/arm64/boot/dts/freescale/fsl-ls2088a.dtsi       | 7 +++++++
>   arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi       | 5 -----
>   arch/arm64/boot/dts/freescale/imx8dxl.dtsi           | 2 +-
>   arch/arm64/boot/dts/intel/keembay-soc.dtsi           | 2 +-
>   arch/arm64/boot/dts/intel/socfpga_agilex.dtsi        | 2 +-

For SoCFPGA,

Acked-by: Dinh Nguyen <dinguyen@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
