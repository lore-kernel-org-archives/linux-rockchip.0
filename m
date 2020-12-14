Return-Path: <SRS0=K/hu=FS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A2DC2BBCA
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 15:19:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 331EF2074B
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 15:19:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 331EF2074B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HZdakMztJibEFSnaZFFyIQTBM65knqQAc7YfT7rY1lM=; b=e7gG/vrwIB4vRShoOxUBXWZDS
	Dv1VVDoM6rm7BjKqNzrfAgZ3ibTmfb8Bh08ULPeI2N6GvD/2zUozGkUrH+B479+s0iLrAmnE4CGgv
	zwMeZSXfG5mnygmPezZDDZu4fsUn3hGMKdx/ZzASiPBT7WFN16fJFuN77V+f2WQQe8fNCLuz1muzl
	4M75RYOw2VTFnTuQleM5PccdeEuP+pBktP9if1/tp6ntfyc14ApozKYbtbSFcQRtJvzVAjVigUdWG
	rpwNF4X0q9CmEkkhNz4HrJTmJPJXgO1ICzv5j+kKti940qFl8/YRKrqM67cErNFpvqePr46CTbv3A
	LXhjKgJWg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kopcl-0000Db-UY; Mon, 14 Dec 2020 15:18:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kopch-0000CZ-T1; Mon, 14 Dec 2020 15:18:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8BF4E30E;
 Mon, 14 Dec 2020 07:18:44 -0800 (PST)
Received: from [10.57.33.60] (unknown [10.57.33.60])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A02D3F66E;
 Mon, 14 Dec 2020 07:18:42 -0800 (PST)
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: nanopi4: Move ep-gpios
 property to nanopc-t4
To: Chen-Yu Tsai <wens@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>
References: <20201118071724.4866-1-wens@kernel.org>
 <20201118071724.4866-4-wens@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1e41aefe-6875-d319-1922-210fb865631c@arm.com>
Date: Mon, 14 Dec 2020 15:18:40 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201118071724.4866-4-wens@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201214_101852_015431_8310BAC3 
X-CRM114-Status: GOOD (  22.35  )
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-11-18 07:17, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> Only the NanoPC T4 hs the PCIe reset pin routed to the SoC. For the
> NanoPi M4 family, no such signal is routed to the expansion header on
> the base board.
> 
> As the schematics for the expansion board were not released, it is
> unclear how this is handled, but the likely answer is that the signal
> is always pulled high.
> 
> Move the ep-gpios property from the common nanopi4.dtsi file to the
> board level nanopc-t4.dts file. This makes the nanopi-m4 lack ep-gpios,
> matching the board design.
> 
> A companion patch "PCI: rockchip: make ep_gpio optional" for the Linux
> driver is required, as the driver currently requires the property to be
> present.

I concur that this is a more correct description per the schematics (the 
SOM-RK3399 Dev Kit carrier board is the only other thing showing PERST# 
wired up like this), and whatever the M4 hats are doing they clearly 
aren't doing it with GPIO2_A4 either way.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Fixes: e7a095908227 ("arm64: dts: rockchip: Add devicetree for NanoPC-T4")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts | 1 +
>   arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi  | 1 -
>   2 files changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> index e0d75617bb7e..452728b82e42 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> @@ -95,6 +95,7 @@ map3 {
>   };
>   
>   &pcie0 {
> +	ep-gpios = <&gpio2 RK_PA4 GPIO_ACTIVE_HIGH>;
>   	num-lanes = <4>;
>   	vpcie3v3-supply = <&vcc3v3_sys>;
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> index 76a8b40a93c6..48ed4aaa37f3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> @@ -504,7 +504,6 @@ &pcie_phy {
>   };
>   
>   &pcie0 {
> -	ep-gpios = <&gpio2 RK_PA4 GPIO_ACTIVE_HIGH>;
>   	max-link-speed = <2>;
>   	num-lanes = <2>;
>   	vpcie0v9-supply = <&vcca0v9_s3>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
