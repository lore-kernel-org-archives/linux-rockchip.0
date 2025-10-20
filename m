Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED466CCD195
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 01:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xk6ley2r33OXZFrpV3vJjv4mSMa80juKI3YkbamnnPk=; b=h2SIBVCCsYHMSc
	CckCaKm6kwRqww4lNKXd9h3ZLdJf2rQrzvz3AC2nNA/iXWwfVtsTA7q0C2dWZ5ghu0Rwb6dbkVoA0
	UVzlgm0b4RqD4KohPvr3BuYDA/JevlqtkRDs6qyJfNrVZhF2ajCKKMhzh8SbQ+Vqxg9Da8FQtjH4H
	lmQ8AhLEbITB8rWa1fAklZoHv2zkLPJKKrBCw+qLoKfcD8s8J6R2oWhbP16y7fB+pzE939SmntX7B
	kvNlao/1WdQFOh6o/0j1WwksudTqpYwxcylUayu8ryeslccCwp64PpGrJH/OtGT4nTQIw/NFGZzwQ
	NIe8fmny8vNKKgbEZgFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAf5i-0000000BeqM-2HeV;
	Mon, 20 Oct 2025 01:53:42 +0000
Received: from mail-m32124.qiye.163.com ([220.197.32.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAf5g-0000000Bepw-1qSZ;
	Mon, 20 Oct 2025 01:53:41 +0000
Received: from [192.168.61.151] (unknown [110.83.51.2])
	by smtp.qiye.163.com (Hmail) with ESMTP id 266f5200f;
	Mon, 20 Oct 2025 09:53:35 +0800 (GMT+08:00)
Message-ID: <d70c0eb5-9aa2-47b1-8205-81b724180319@rock-chips.com>
Date: Mon, 20 Oct 2025 09:53:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Grzegorz Sterniczuk <grzegorz@sternicz.uk>,
 Dragan Simic <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
To: Tianling Shen <cnsztl@gmail.com>
References: <20251017073954.130710-1-cnsztl@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251017073954.130710-1-cnsztl@gmail.com>
X-HM-Tid: 0a99ff526ae609cckunm1697cb9843f00a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSR1PVkMYGksZSUNIGkgYTVYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKSktVQ0hVTkpVSVlXWRYaDxIVHRRZQVlPS0hVSktJSEJIQlVKS0tVSk
	JLS1kG
DKIM-Signature: a=rsa-sha256;
	b=VzOcQ5L9Hs7pSFuZJX/CkQaQxwR0raBnNyF6mYu66reDbPuhjA5vWSzWj82+r31xLB9lgVcHcBUNaD1zdl9a0V4ElbyBGyj+nu5EKR6fMNSjCB63wgPAkGS+EdknLbBbeRcCY24ki5o+bllSJEtItVg4u5Z3U4QlSfOBzKSFKlA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=uE23dvljygAYOD4lrf+KZIVsIgCT2mrCL/r5xFRmJLk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251019_185340_637204_CB328909 
X-CRM114-Status: GOOD (  14.11  )
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

Hi Tianling

On 2025/10/17 Friday 15:39, Tianling Shen wrote:
> From: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
> 
> Some NanoPC-T6 boards with A3A444 eMMC chips experience I/O errors and
> corruption when using HS400 mode. Downgrade to HS200 mode to ensure
> stable operation.

May I ask you to test another patch I just posted to see if it fixes
your issue?

https://patchwork.kernel.org/project/linux-mmc/patch/1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com/


> 
> Signed-off-by: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index fafeabe9adf9..5f63f38f7326 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> @@ -717,8 +717,7 @@ &sdhci {
>   	no-sd;
>   	non-removable;
>   	max-frequency = <200000000>;
> -	mmc-hs400-1_8v;
> -	mmc-hs400-enhanced-strobe;
> +	mmc-hs200-1_8v;
>   	status = "okay";
>   };
>   


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
